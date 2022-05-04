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
	.file	"EeePCfg.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	COM0PCIe_Element_funcs
	.section	.data.rel,"aw"
	.align	2
	.type	COM0PCIe_Element_funcs, %object
	.size	COM0PCIe_Element_funcs, 16
COM0PCIe_Element_funcs:
	.word	COM0PCIe_Element
	.word	GenClear_Element
	.word	COM0PCIe_Help
	.word	No_Default_Txt
	.global	SMBIOS_CE_Element_funcs
	.align	2
	.type	SMBIOS_CE_Element_funcs, %object
	.size	SMBIOS_CE_Element_funcs, 16
SMBIOS_CE_Element_funcs:
	.word	SMBIOS_CE_Element
	.word	GenClear_Element
	.word	SMBIOS_CE_Help
	.word	No_Default_Txt
	.global	SmbiosStructureTypesTokens
	.section	.rodata
	.align	2
.LC0:
	.ascii	"BIOS_INFORMATION\000"
	.align	2
.LC1:
	.ascii	"SYSTEM_INFORMATION\000"
	.align	2
.LC2:
	.ascii	"BASE_BOARD_(OR_MODULE)_INFORMATION\000"
	.align	2
.LC3:
	.ascii	"SYSTEM_ENCLOSURE_OR_CHASSIS\000"
	.align	2
.LC4:
	.ascii	"PROCESSOR_INFORMATION\000"
	.align	2
.LC5:
	.ascii	"MEMORY_CONTROLLER_INFORMATION\000"
	.align	2
.LC6:
	.ascii	"MEMORY_MODULE_INFORMATION\000"
	.align	2
.LC7:
	.ascii	"CACHE_INFORMATION\000"
	.align	2
.LC8:
	.ascii	"PORT_CONNECTOR_INFORMATION\000"
	.align	2
.LC9:
	.ascii	"SYSTEM_SLOTS\000"
	.align	2
.LC10:
	.ascii	"ON_BOARD_DEVICES_INFORMATION\000"
	.align	2
.LC11:
	.ascii	"OEM_STRINGS\000"
	.align	2
.LC12:
	.ascii	"SYSTEM_CONFIGURATION_OPTIONS\000"
	.align	2
.LC13:
	.ascii	"BIOS_LANGUAGE_INFORMATION\000"
	.align	2
.LC14:
	.ascii	"GROUP_ASSOCIATIONS\000"
	.align	2
.LC15:
	.ascii	"SYSTEM_EVENT_LOG\000"
	.align	2
.LC16:
	.ascii	"PHYSICAL_MEMORY_ARRAY\000"
	.align	2
.LC17:
	.ascii	"MEMORY_DEVICE\000"
	.align	2
.LC18:
	.ascii	"32_BIT_MEMORY_ERROR_INFORMATION\000"
	.align	2
.LC19:
	.ascii	"MEMORY_ARRAY_MAPPED_ADDRESS\000"
	.align	2
.LC20:
	.ascii	"MEMORY_DEVICE_MAPPED_ADDRESS\000"
	.align	2
.LC21:
	.ascii	"BUILT_IN_POINTING_DEVICE\000"
	.align	2
.LC22:
	.ascii	"PORTABLE_BATTERY\000"
	.align	2
.LC23:
	.ascii	"SYSTEM_RESET\000"
	.align	2
.LC24:
	.ascii	"HARDWARE_SECURITY\000"
	.align	2
.LC25:
	.ascii	"SYSTEM_POWER_CONTROLS\000"
	.align	2
.LC26:
	.ascii	"VOLTAGE_PROBE\000"
	.align	2
.LC27:
	.ascii	"COOLING_DEVICE\000"
	.align	2
.LC28:
	.ascii	"TEMPERATURE_PROBE\000"
	.align	2
.LC29:
	.ascii	"ELECTRICAL_CURRENT_PROBE\000"
	.align	2
.LC30:
	.ascii	"OUT_OF_BAND_REMOTE_ACCESS\000"
	.align	2
.LC31:
	.ascii	"BOOT_INTEGRITY_SERVICES_(BIS)_ENTRY_POINT\000"
	.align	2
.LC32:
	.ascii	"SYSTEM_BOOT_INFORMATION\000"
	.align	2
.LC33:
	.ascii	"64_BIT_MEMORY_ERROR_INFORMATION\000"
	.align	2
.LC34:
	.ascii	"MANAGEMENT_DEVICE\000"
	.align	2
.LC35:
	.ascii	"MANAGEMENT_DEVICE_COMPONENT\000"
	.align	2
.LC36:
	.ascii	"MANAGEMENT_DEVICE_THRESHOLD_DATA\000"
	.align	2
.LC37:
	.ascii	"MEMORY_CHANNEL\000"
	.align	2
.LC38:
	.ascii	"IPMI_DEVICE_INFORMATION\000"
	.align	2
.LC39:
	.ascii	"SYSTEM_POWER_SUPPLY\000"
	.align	2
.LC40:
	.ascii	"INACTIVE\000"
	.align	2
.LC41:
	.ascii	"END_OF_TABLE\000"
	.section	.data.rel.local,"aw"
	.align	2
	.type	SmbiosStructureTypesTokens, %object
	.size	SmbiosStructureTypesTokens, 336
SmbiosStructureTypesTokens:
	.word	.LC0
	.word	0
	.word	.LC1
	.word	1
	.word	.LC2
	.word	2
	.word	.LC3
	.word	3
	.word	.LC4
	.word	4
	.word	.LC5
	.word	5
	.word	.LC6
	.word	6
	.word	.LC7
	.word	7
	.word	.LC8
	.word	8
	.word	.LC9
	.word	9
	.word	.LC10
	.word	10
	.word	.LC11
	.word	11
	.word	.LC12
	.word	12
	.word	.LC13
	.word	13
	.word	.LC14
	.word	14
	.word	.LC15
	.word	15
	.word	.LC16
	.word	16
	.word	.LC17
	.word	17
	.word	.LC18
	.word	18
	.word	.LC19
	.word	19
	.word	.LC20
	.word	20
	.word	.LC21
	.word	21
	.word	.LC22
	.word	22
	.word	.LC23
	.word	23
	.word	.LC24
	.word	24
	.word	.LC25
	.word	25
	.word	.LC26
	.word	26
	.word	.LC27
	.word	27
	.word	.LC28
	.word	28
	.word	.LC29
	.word	29
	.word	.LC30
	.word	30
	.word	.LC31
	.word	31
	.word	.LC32
	.word	32
	.word	.LC33
	.word	33
	.word	.LC34
	.word	34
	.word	.LC35
	.word	35
	.word	.LC36
	.word	36
	.word	.LC37
	.word	37
	.word	.LC38
	.word	38
	.word	.LC39
	.word	39
	.word	.LC40
	.word	126
	.word	.LC41
	.word	127
	.global	SmbiosStructureTypesTL
	.align	2
	.type	SmbiosStructureTypesTL, %object
	.size	SmbiosStructureTypesTL, 8
SmbiosStructureTypesTL:
	.word	42
	.word	SmbiosStructureTypesTokens
	.global	SmbiosBoardTypesTokens
	.section	.rodata
	.align	2
.LC42:
	.ascii	"Unknown\000"
	.align	2
.LC43:
	.ascii	"Other\000"
	.align	2
.LC44:
	.ascii	"ServerBlade\000"
	.align	2
.LC45:
	.ascii	"ConnectivitySwitch\000"
	.align	2
.LC46:
	.ascii	"SystemManagementModule\000"
	.align	2
.LC47:
	.ascii	"ProcessorModule\000"
	.align	2
.LC48:
	.ascii	"IO_Module\000"
	.align	2
.LC49:
	.ascii	"Memory_Module\000"
	.align	2
.LC50:
	.ascii	"DaughterBoard\000"
	.align	2
.LC51:
	.ascii	"Motherboard\000"
	.align	2
.LC52:
	.ascii	"ProcessorMemory_Module\000"
	.align	2
.LC53:
	.ascii	"Interconnect_Board\000"
	.section	.data.rel.local
	.align	2
	.type	SmbiosBoardTypesTokens, %object
	.size	SmbiosBoardTypesTokens, 96
SmbiosBoardTypesTokens:
	.word	.LC42
	.word	0
	.word	.LC43
	.word	1
	.word	.LC44
	.word	2
	.word	.LC45
	.word	3
	.word	.LC46
	.word	4
	.word	.LC47
	.word	5
	.word	.LC48
	.word	6
	.word	.LC49
	.word	7
	.word	.LC50
	.word	8
	.word	.LC51
	.word	9
	.word	.LC52
	.word	10
	.word	.LC53
	.word	11
	.global	SmbiosBoardTypesTL
	.align	2
	.type	SmbiosBoardTypesTL, %object
	.size	SmbiosBoardTypesTL, 8
SmbiosBoardTypesTL:
	.word	12
	.word	SmbiosBoardTypesTokens
	.section	.rodata
	.align	2
.LC54:
	.ascii	"SMBios Contained Element Description\012  Format:\012"
	.ascii	"    Element Type, Minimum Count, Maximum Count\012 "
	.ascii	" Examples:\012    SYSTEM_POWER_SUPPLY,  1, 1\012   "
	.ascii	" ServerBlade        ,  1, 5\012  Element Type Token"
	.ascii	"s:\012\000"
	.align	2
.LC55:
	.ascii	"     %s\012\000"
	.align	2
.LC56:
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
.LFB1:
	.file 1 "/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/linux/../EeePCfg.c"
	.loc 1 116 1
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
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 118 7
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 120 8
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	ldr	r2, .L7
.LPIC0:
	add	r2, pc, r2
	mov	r1, r3
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 120 6
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 128 8
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 128 3
	b	.L2
.L3:
	.loc 1 129 10 discriminator 3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r1, r2, r3
	ldr	r3, .L7+4
.LPIC1:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	ldr	r2, .L7+8
.LPIC2:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 129 8 discriminator 3
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 128 49 discriminator 3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	.loc 1 128 12 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #11
	bls	.L3
	.loc 1 132 8
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 132 3
	b	.L4
.L5:
	.loc 1 133 10 discriminator 3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r1, r2, r3
	ldr	r3, .L7+12
.LPIC3:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	ldr	r2, .L7+16
.LPIC4:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 133 8 discriminator 3
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 132 53 discriminator 3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	.loc 1 132 12 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #41
	bls	.L5
	.loc 1 136 8
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	ldr	r2, .L7+20
.LPIC5:
	add	r2, pc, r2
	mov	r1, r3
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 136 6
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 141 10
	mov	r3, #0
	.loc 1 142 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC54-(.LPIC0+8)
	.word	SmbiosBoardTypesTokens-(.LPIC1+8)
	.word	.LC55-(.LPIC2+8)
	.word	SmbiosStructureTypesTokens-(.LPIC3+8)
	.word	.LC55-(.LPIC4+8)
	.word	.LC56-(.LPIC5+8)
	.cfi_endproc
.LFE1:
	.size	SMBIOS_CE_Help, .-SMBIOS_CE_Help
	.section	.rodata
	.align	2
.LC57:
	.ascii	"SMBIOS_CE_Element = Unknown Token, %s\012\000"
	.align	2
.LC58:
	.ascii	"SMBIOS_CE_Element = Invalid MinCount, %s\012\000"
	.align	2
.LC59:
	.ascii	"SMBIOS_CE_Element = Invalid MaxCount, %s\012\000"
	.text
	.align	2
	.global	SMBIOS_CE_Element
	.syntax unified
	.arm
	.fpu vfpv3
	.type	SMBIOS_CE_Element, %function
SMBIOS_CE_Element:
.LFB2:
	.loc 1 150 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #56
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	.loc 1 150 1
	ldr	r2, .L20
.LPIC11:
	add	r2, pc, r2
	ldr	r3, .L20+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 151 16
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 152 16
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-32]
	.loc 1 155 12
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-28]
	.loc 1 158 15
	mov	r1, #44
	ldr	r0, [fp, #-28]
	bl	strchr(PLT)
	str	r0, [fp, #-24]
	.loc 1 159 5
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L10
	.loc 1 160 15
	mvn	r3, #3840
	str	r3, [fp, #-36]
	.loc 1 161 5
	b	.L11
.L10:
	.loc 1 163 15
	ldr	r3, [fp, #-24]
	add	r2, r3, #1
	str	r2, [fp, #-24]
	.loc 1 163 17
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 165 15
	mov	r1, #44
	ldr	r0, [fp, #-24]
	bl	strchr(PLT)
	str	r0, [fp, #-20]
	.loc 1 166 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L12
	.loc 1 167 15
	mvn	r3, #3840
	str	r3, [fp, #-36]
	.loc 1 168 5
	b	.L11
.L12:
	.loc 1 170 15
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 170 17
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 172 14
	sub	r3, fp, #40
	mov	r2, r3
	ldr	r1, [fp, #-28]
	ldr	r3, .L20+8
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	GetTokenValueStrip(PLT)
	str	r0, [fp, #-36]
	.loc 1 177 5
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L13
	.loc 1 178 16
	sub	r3, fp, #40
	mov	r2, r3
	ldr	r1, [fp, #-28]
	ldr	r3, .L20+12
.LPIC7:
	add	r3, pc, r3
	mov	r0, r3
	bl	GetTokenValueStrip(PLT)
	str	r0, [fp, #-36]
	b	.L14
.L13:
	.loc 1 184 13
	ldr	r3, [fp, #-40]
	orr	r3, r3, #128
	str	r3, [fp, #-40]
.L14:
	.loc 1 186 5
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L15
	.loc 1 187 5
	ldr	r1, [fp, #-56]
	ldr	r3, .L20+16
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 188 5
	b	.L11
.L15:
	.loc 1 191 14
	mov	r1, #0
	ldr	r0, [fp, #-24]
	bl	ulConvertStr2NumEx(PLT)
	str	r0, [fp, #-16]
	.loc 1 192 14
	mov	r1, #0
	ldr	r0, [fp, #-20]
	bl	ulConvertStr2NumEx(PLT)
	str	r0, [fp, #-12]
	.loc 1 193 5
	ldr	r3, [fp, #-16]
	cmp	r3, #255
	bls	.L16
	.loc 1 194 5
	ldr	r1, [fp, #-24]
	ldr	r3, .L20+20
.LPIC9:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 195 15
	mvn	r3, #3840
	str	r3, [fp, #-36]
	.loc 1 196 5
	b	.L11
.L16:
	.loc 1 198 5
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bls	.L17
	.loc 1 199 5
	ldr	r1, [fp, #-20]
	ldr	r3, .L20+24
.LPIC10:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 200 15
	mvn	r3, #3840
	str	r3, [fp, #-36]
	.loc 1 201 5
	b	.L11
.L17:
	.loc 1 205 28
	ldr	r3, [fp, #-40]
	uxtb	r2, r3
	.loc 1 205 27
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	.loc 1 206 23
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	.loc 1 206 22
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #1]
	.loc 1 207 23
	ldr	r3, [fp, #-12]
	uxtb	r2, r3
	.loc 1 207 22
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #2]
.L11:
	.loc 1 216 10
	ldr	r3, [fp, #-36]
	.loc 1 150 1
	ldr	r1, .L20+28
.LPIC12:
	add	r1, pc, r1
	.loc 1 217 1
	ldr	r2, .L20+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L19
	bl	__stack_chk_fail(PLT)
.L19:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L21:
	.align	2
.L20:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	__stack_chk_guard(GOT)
	.word	SmbiosStructureTypesTL-(.LPIC6+8)
	.word	SmbiosBoardTypesTL-(.LPIC7+8)
	.word	.LC57-(.LPIC8+8)
	.word	.LC58-(.LPIC9+8)
	.word	.LC59-(.LPIC10+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+8)
	.cfi_endproc
.LFE2:
	.size	SMBIOS_CE_Element, .-SMBIOS_CE_Element
	.global	PCIeLaneWidths
	.section	.rodata
	.align	2
.LC60:
	.ascii	"x1\000"
	.align	2
.LC61:
	.ascii	"x2\000"
	.align	2
.LC62:
	.ascii	"x4\000"
	.align	2
.LC63:
	.ascii	"x8\000"
	.align	2
.LC64:
	.ascii	"x16\000"
	.align	2
.LC65:
	.ascii	"x32\000"
	.section	.data.rel.local
	.align	2
	.type	PCIeLaneWidths, %object
	.size	PCIeLaneWidths, 48
PCIeLaneWidths:
	.word	.LC60
	.word	1
	.word	.LC61
	.word	2
	.word	.LC62
	.word	3
	.word	.LC63
	.word	4
	.word	.LC64
	.word	5
	.word	.LC65
	.word	6
	.global	PCIeLaneWidthsTL
	.align	2
	.type	PCIeLaneWidthsTL, %object
	.size	PCIeLaneWidthsTL, 8
PCIeLaneWidthsTL:
	.word	6
	.word	PCIeLaneWidths
	.global	PCIeGeneration
	.section	.rodata
	.align	2
.LC66:
	.ascii	"Gen1\000"
	.align	2
.LC67:
	.ascii	"Gen2\000"
	.align	2
.LC68:
	.ascii	"Gen3\000"
	.section	.data.rel.local
	.align	2
	.type	PCIeGeneration, %object
	.size	PCIeGeneration, 24
PCIeGeneration:
	.word	.LC66
	.word	0
	.word	.LC67
	.word	1
	.word	.LC68
	.word	2
	.global	PCIeGenerationTL
	.align	2
	.type	PCIeGenerationTL, %object
	.size	PCIeGenerationTL, 8
PCIeGenerationTL:
	.word	3
	.word	PCIeGeneration
	.section	.rodata
	.align	2
.LC69:
	.ascii	"COM0 PCIe Port Description\012  Format:\012    Star"
	.ascii	"ting Lane, Link Width, PCIe Generation\012  Example"
	.ascii	"s:\012     0,   x1, Gen1\012    16,  x16, Gen2\012 "
	.ascii	" Starting Lanes:\012    0 - 31      \012  Link Widt"
	.ascii	"hs Tokens:\012\000"
	.align	2
.LC70:
	.ascii	"  Generations Tokens:\012\000"
	.text
	.align	2
	.global	COM0PCIe_Help
	.syntax unified
	.arm
	.fpu vfpv3
	.type	COM0PCIe_Help, %function
COM0PCIe_Help:
.LFB3:
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
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 247 7
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 249 8
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	ldr	r2, .L28
.LPIC13:
	add	r2, pc, r2
	mov	r1, r3
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 249 6
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 259 8
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 259 3
	b	.L23
.L24:
	.loc 1 260 5 discriminator 3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r1, r2, r3
	ldr	r3, .L28+4
.LPIC14:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	ldr	r2, .L28+8
.LPIC15:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	.loc 1 259 41 discriminator 3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L23:
	.loc 1 259 12 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	bls	.L24
	.loc 1 262 8
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r3, r2, r3
	ldr	r2, .L28+12
.LPIC16:
	add	r2, pc, r2
	mov	r1, r3
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 262 6
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 263 8
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 263 3
	b	.L25
.L26:
	.loc 1 264 10 discriminator 3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r0, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	sub	r1, r2, r3
	ldr	r3, .L28+16
.LPIC17:
	add	r3, pc, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, lsl #3]
	ldr	r2, .L28+20
.LPIC18:
	add	r2, pc, r2
	bl	EApiSprintfA(PLT)
	mov	r2, r0
	.loc 1 264 8 discriminator 3
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	.loc 1 263 41 discriminator 3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L25:
	.loc 1 263 12 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #2
	bls	.L26
	.loc 1 266 10
	mov	r3, #0
	.loc 1 267 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L29:
	.align	2
.L28:
	.word	.LC69-(.LPIC13+8)
	.word	PCIeLaneWidths-(.LPIC14+8)
	.word	.LC55-(.LPIC15+8)
	.word	.LC70-(.LPIC16+8)
	.word	PCIeGeneration-(.LPIC17+8)
	.word	.LC55-(.LPIC18+8)
	.cfi_endproc
.LFE3:
	.size	COM0PCIe_Help, .-COM0PCIe_Help
	.section	.rodata
	.align	2
.LC71:
	.ascii	"COM0PCIe_Element\000"
	.align	2
.LC72:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePCfg.c\000"
	.align	2
.LC73:
	.ascii	"pElementDesc->Instances.stElementSize < sizeof(unsi"
	.ascii	"gned long)\000"
	.align	2
.LC74:
	.ascii	"%s\012\000"
	.align	2
.LC75:
	.ascii	"COM0PCIe_Element = Invalid Starting Lane, %s\012\000"
	.align	2
.LC76:
	.ascii	"COM0PCIe_Element = Unknown Token, %s\012\000"
	.align	2
.LC77:
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
.LFB4:
	.loc 1 275 1
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
	.loc 1 275 1
	ldr	r2, .L42
.LPIC29:
	add	r2, pc, r2
	ldr	r3, .L42+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 276 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 279 18
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-24]
	.loc 1 280 3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	mov	r2, r3
	mov	r1, #0
	ldr	r0, [fp, #-44]
	bl	memset(PLT)
	.loc 1 281 3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	cmp	r3, #3
	bhi	.L31
	.loc 1 281 3 is_stmt 0 discriminator 1
	ldr	r3, .L42+8
.LPIC19:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L42+12
.LPIC20:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #281
	ldr	r2, .L42+16
.LPIC21:
	add	r2, pc, r2
	ldr	r1, .L42+20
.LPIC22:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-28]
	b	.L34
.L31:
	.loc 1 287 12 is_stmt 1
	mov	r1, #44
	ldr	r0, [fp, #-24]
	bl	strchr(PLT)
	str	r0, [fp, #-20]
	.loc 1 288 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L33
	.loc 1 289 15
	mvn	r3, #3840
	str	r3, [fp, #-28]
	.loc 1 290 5
	b	.L34
.L33:
	.loc 1 292 12
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	.loc 1 292 14
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 294 10
	mov	r1, #44
	ldr	r0, [fp, #-20]
	bl	strchr(PLT)
	str	r0, [fp, #-16]
	.loc 1 295 5
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L35
	.loc 1 296 15
	mvn	r3, #3840
	str	r3, [fp, #-28]
	.loc 1 297 5
	b	.L34
.L35:
	.loc 1 299 10
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	.loc 1 299 12
	mov	r2, #0
	strb	r2, [r3]
	.loc 1 301 18
	mov	r1, #0
	ldr	r0, [fp, #-24]
	bl	ulConvertStr2NumEx(PLT)
	str	r0, [fp, #-12]
	.loc 1 302 5
	ldr	r3, [fp, #-12]
	cmp	r3, #31
	bls	.L36
	.loc 1 303 5
	ldr	r1, [fp, #-24]
	ldr	r3, .L42+24
.LPIC23:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 304 15
	mvn	r3, #3840
	str	r3, [fp, #-28]
	.loc 1 305 5
	b	.L34
.L36:
	.loc 1 308 14
	sub	r3, fp, #36
	mov	r2, r3
	ldr	r1, [fp, #-20]
	ldr	r3, .L42+28
.LPIC24:
	add	r3, pc, r3
	mov	r0, r3
	bl	GetTokenValueStrip(PLT)
	str	r0, [fp, #-28]
	.loc 1 313 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L37
	.loc 1 314 5
	ldr	r1, [fp, #-20]
	ldr	r3, .L42+32
.LPIC25:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 315 5
	b	.L34
.L37:
	.loc 1 318 14
	sub	r3, fp, #32
	mov	r2, r3
	ldr	r1, [fp, #-16]
	ldr	r3, .L42+36
.LPIC26:
	add	r3, pc, r3
	mov	r0, r3
	bl	GetTokenValueStrip(PLT)
	str	r0, [fp, #-28]
	.loc 1 323 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L38
	.loc 1 324 5
	ldr	r1, [fp, #-16]
	ldr	r3, .L42+40
.LPIC27:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 325 5
	b	.L34
.L38:
	.loc 1 327 35
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	.loc 1 327 24
	mov	r2, #1
	lsl	r3, r2, r3
	.loc 1 327 40
	sub	r3, r3, #1
	mov	r2, r3
	.loc 1 327 20
	ldr	r3, [fp, #-12]
	and	r3, r3, r2
	.loc 1 327 5
	cmp	r3, #0
	beq	.L39
	.loc 1 328 5
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-24]
	ldr	r3, .L42+44
.LPIC28:
	add	r3, pc, r3
	mov	r0, r3
	bl	printf(PLT)
	.loc 1 329 15
	mvn	r3, #3840
	str	r3, [fp, #-28]
	.loc 1 330 5
	b	.L34
.L39:
	.loc 1 332 47
	ldr	r3, [fp, #-12]
	lsl	r2, r3, #16
	.loc 1 332 61
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #8
	.loc 1 332 52
	orr	r2, r2, r3
	.loc 1 332 65
	ldr	r3, [fp, #-32]
	orr	r2, r2, r3
	.loc 1 332 31
	ldr	r3, [fp, #-44]
	str	r2, [r3]
.L32:
.L34:
	.loc 1 338 10
	ldr	r3, [fp, #-28]
	.loc 1 275 1
	ldr	r1, .L42+48
.LPIC30:
	add	r1, pc, r1
	.loc 1 339 1
	ldr	r2, .L42+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L41
	bl	__stack_chk_fail(PLT)
.L41:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L43:
	.align	2
.L42:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC29+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC73-(.LPIC19+8)
	.word	.LC74-(.LPIC20+8)
	.word	.LC71-(.LPIC21+8)
	.word	.LC72-(.LPIC22+8)
	.word	.LC75-(.LPIC23+8)
	.word	PCIeLaneWidthsTL-(.LPIC24+8)
	.word	.LC76-(.LPIC25+8)
	.word	PCIeGenerationTL-(.LPIC26+8)
	.word	.LC76-(.LPIC27+8)
	.word	.LC77-(.LPIC28+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+8)
	.cfi_endproc
.LFE4:
	.size	COM0PCIe_Element, .-COM0PCIe_Element
	.global	SasTokens
	.section	.rodata
	.align	2
.LC78:
	.ascii	"NotImplemented\000"
	.align	2
.LC79:
	.ascii	"SAS\000"
	.align	2
.LC80:
	.ascii	"SATA\000"
	.section	.data.rel.local
	.align	2
	.type	SasTokens, %object
	.size	SasTokens, 24
SasTokens:
	.word	.LC78
	.word	0
	.word	.LC79
	.word	3
	.word	.LC80
	.word	1
	.global	SasTL
	.align	2
	.type	SasTL, %object
	.size	SasTL, 8
SasTL:
	.word	3
	.word	SasTokens
	.global	ImpNotImpTokens
	.section	.rodata
	.align	2
.LC81:
	.ascii	"Implemented\000"
	.section	.data.rel.local
	.align	2
	.type	ImpNotImpTokens, %object
	.size	ImpNotImpTokens, 16
ImpNotImpTokens:
	.word	.LC78
	.word	0
	.word	.LC81
	.word	1
	.global	ImpNotImpTL
	.align	2
	.type	ImpNotImpTL, %object
	.size	ImpNotImpTL, 8
ImpNotImpTL:
	.word	2
	.word	ImpNotImpTokens
	.global	DDI1Tokens
	.section	.rodata
	.align	2
.LC82:
	.ascii	"eDisplayPort\000"
	.align	2
.LC83:
	.ascii	"DisplayPort\000"
	.align	2
.LC84:
	.ascii	"HDMI/DVI\000"
	.align	2
.LC85:
	.ascii	"SDVO\000"
	.section	.data.rel.local
	.align	2
	.type	DDI1Tokens, %object
	.size	DDI1Tokens, 40
DDI1Tokens:
	.word	.LC78
	.word	0
	.word	.LC82
	.word	1
	.word	.LC83
	.word	2
	.word	.LC84
	.word	3
	.word	.LC85
	.word	4
	.global	DDI1TL
	.align	2
	.type	DDI1TL, %object
	.size	DDI1TL, 8
DDI1TL:
	.word	5
	.word	DDI1Tokens
	.global	DDI2Tokens
	.align	2
	.type	DDI2Tokens, %object
	.size	DDI2Tokens, 32
DDI2Tokens:
	.word	.LC78
	.word	0
	.word	.LC82
	.word	1
	.word	.LC83
	.word	2
	.word	.LC84
	.word	3
	.global	DDI2TL
	.align	2
	.type	DDI2TL, %object
	.size	DDI2TL, 8
DDI2TL:
	.word	4
	.word	DDI2Tokens
	.global	DisplayInterfaceTokens
	.section	.rodata
	.align	2
.LC86:
	.ascii	"LVDS\000"
	.align	2
.LC87:
	.ascii	"SDVOB\000"
	.align	2
.LC88:
	.ascii	"SDVOC\000"
	.align	2
.LC89:
	.ascii	"DDI1\000"
	.align	2
.LC90:
	.ascii	"DDI2\000"
	.align	2
.LC91:
	.ascii	"DDI3\000"
	.section	.data.rel.local
	.align	2
	.type	DisplayInterfaceTokens, %object
	.size	DisplayInterfaceTokens, 48
DisplayInterfaceTokens:
	.word	.LC86
	.word	2
	.word	.LC87
	.word	3
	.word	.LC88
	.word	4
	.word	.LC89
	.word	5
	.word	.LC90
	.word	6
	.word	.LC91
	.word	7
	.global	DisplayInterfaceTL
	.align	2
	.type	DisplayInterfaceTL, %object
	.size	DisplayInterfaceTL, 8
DisplayInterfaceTL:
	.word	6
	.word	DisplayInterfaceTokens
	.global	I2CBusTokens
	.section	.rodata
	.align	2
.LC92:
	.ascii	"I2C\000"
	.align	2
.LC93:
	.ascii	"SMB\000"
	.align	2
.LC94:
	.ascii	"CRT\000"
	.section	.data.rel.local
	.align	2
	.type	I2CBusTokens, %object
	.size	I2CBusTokens, 72
I2CBusTokens:
	.word	.LC92
	.word	0
	.word	.LC93
	.word	1
	.word	.LC86
	.word	2
	.word	.LC89
	.word	3
	.word	.LC90
	.word	4
	.word	.LC91
	.word	5
	.word	.LC87
	.word	6
	.word	.LC88
	.word	7
	.word	.LC94
	.word	8
	.global	I2CBusTL
	.align	2
	.type	I2CBusTL, %object
	.size	I2CBusTL, 8
I2CBusTL:
	.word	9
	.word	I2CBusTokens
	.global	StandardExtendedTokens
	.section	.rodata
	.align	2
.LC95:
	.ascii	"Extended\000"
	.align	2
.LC96:
	.ascii	"Standard\000"
	.section	.data.rel.local
	.align	2
	.type	StandardExtendedTokens, %object
	.size	StandardExtendedTokens, 16
StandardExtendedTokens:
	.word	.LC95
	.word	1
	.word	.LC96
	.word	0
	.global	StandardExtendedTL
	.align	2
	.type	StandardExtendedTL, %object
	.size	StandardExtendedTL, 8
StandardExtendedTL:
	.word	2
	.word	StandardExtendedTokens
	.global	SmbiosModuleFeatureFlagsTokens
	.section	.rodata
	.align	2
.LC97:
	.ascii	"IS_Motherboard\000"
	.align	2
.LC98:
	.ascii	"REQUIRES_DAUGHTER\000"
	.align	2
.LC99:
	.ascii	"REMOVABLE\000"
	.align	2
.LC100:
	.ascii	"REPLACEABLE\000"
	.align	2
.LC101:
	.ascii	"HOT_SWAP_CAPABLE\000"
	.section	.data.rel.local
	.align	2
	.type	SmbiosModuleFeatureFlagsTokens, %object
	.size	SmbiosModuleFeatureFlagsTokens, 40
SmbiosModuleFeatureFlagsTokens:
	.word	.LC97
	.word	1
	.word	.LC98
	.word	2
	.word	.LC99
	.word	4
	.word	.LC100
	.word	8
	.word	.LC101
	.word	16
	.global	SmbiSmbiosModuleFeatureFlagsTL
	.align	2
	.type	SmbiSmbiosModuleFeatureFlagsTL, %object
	.size	SmbiSmbiosModuleFeatureFlagsTL, 8
SmbiSmbiosModuleFeatureFlagsTL:
	.word	5
	.word	SmbiosModuleFeatureFlagsTokens
	.global	SmbiosChassisTypesTokens
	.section	.rodata
	.align	2
.LC102:
	.ascii	"Desktop\000"
	.align	2
.LC103:
	.ascii	"Low_Profile_Desktop\000"
	.align	2
.LC104:
	.ascii	"Pizza_Box\000"
	.align	2
.LC105:
	.ascii	"Mini_Tower\000"
	.align	2
.LC106:
	.ascii	"Tower\000"
	.align	2
.LC107:
	.ascii	"Portable\000"
	.align	2
.LC108:
	.ascii	"Laptop\000"
	.align	2
.LC109:
	.ascii	"Notebook\000"
	.align	2
.LC110:
	.ascii	"Hand_Held\000"
	.align	2
.LC111:
	.ascii	"Docking_Station\000"
	.align	2
.LC112:
	.ascii	"All_In_One\000"
	.align	2
.LC113:
	.ascii	"Sub_Notebook\000"
	.align	2
.LC114:
	.ascii	"Space_saving_Lunch_Box\000"
	.align	2
.LC115:
	.ascii	"Main_Server_Chassis\000"
	.align	2
.LC116:
	.ascii	"Expansion_Chassis\000"
	.align	2
.LC117:
	.ascii	"SubChassis\000"
	.align	2
.LC118:
	.ascii	"Bus_Expansion_Chassis\000"
	.align	2
.LC119:
	.ascii	"Peripheral_Chassis\000"
	.align	2
.LC120:
	.ascii	"RAID_Chassis\000"
	.align	2
.LC121:
	.ascii	"Rack_Mount_Chassis\000"
	.align	2
.LC122:
	.ascii	"Sealed_case_PC\000"
	.align	2
.LC123:
	.ascii	"Multi_system_chassis\000"
	.section	.data.rel.local
	.align	2
	.type	SmbiosChassisTypesTokens, %object
	.size	SmbiosChassisTypesTokens, 192
SmbiosChassisTypesTokens:
	.word	.LC43
	.word	1
	.word	.LC42
	.word	2
	.word	.LC102
	.word	3
	.word	.LC103
	.word	4
	.word	.LC104
	.word	5
	.word	.LC105
	.word	6
	.word	.LC106
	.word	7
	.word	.LC107
	.word	8
	.word	.LC108
	.word	9
	.word	.LC109
	.word	10
	.word	.LC110
	.word	11
	.word	.LC111
	.word	12
	.word	.LC112
	.word	13
	.word	.LC113
	.word	14
	.word	.LC114
	.word	15
	.word	.LC115
	.word	17
	.word	.LC116
	.word	18
	.word	.LC117
	.word	19
	.word	.LC118
	.word	20
	.word	.LC119
	.word	21
	.word	.LC120
	.word	22
	.word	.LC121
	.word	23
	.word	.LC122
	.word	24
	.word	.LC123
	.word	25
	.global	SmbiosChassisTypesTL
	.align	2
	.type	SmbiosChassisTypesTL, %object
	.size	SmbiosChassisTypesTL, 8
SmbiosChassisTypesTL:
	.word	24
	.word	SmbiosChassisTypesTokens
	.global	ValidHandles
	.data
	.align	2
	.type	ValidHandles, %object
	.size	ValidHandles, 12
ValidHandles:
	.word	57344
	.word	65535
	.word	1
	.global	ValidHandlesDesc
	.section	.data.rel.local
	.align	2
	.type	ValidHandlesDesc, %object
	.size	ValidHandlesDesc, 8
ValidHandlesDesc:
	.word	1
	.word	ValidHandles
	.global	IRQTokens
	.section	.rodata
	.align	2
.LC124:
	.ascii	"Auto\000"
	.align	2
.LC125:
	.ascii	"No_IRQ\000"
	.align	2
.LC126:
	.ascii	"IRQ3\000"
	.align	2
.LC127:
	.ascii	"IRQ4\000"
	.align	2
.LC128:
	.ascii	"IRQ5\000"
	.align	2
.LC129:
	.ascii	"IRQ6\000"
	.align	2
.LC130:
	.ascii	"IRQ7\000"
	.align	2
.LC131:
	.ascii	"IRQ8\000"
	.align	2
.LC132:
	.ascii	"IRQ9\000"
	.align	2
.LC133:
	.ascii	"IRQ10\000"
	.align	2
.LC134:
	.ascii	"IRQ11\000"
	.align	2
.LC135:
	.ascii	"IRQ12\000"
	.align	2
.LC136:
	.ascii	"IRQ13\000"
	.align	2
.LC137:
	.ascii	"IRQ14\000"
	.align	2
.LC138:
	.ascii	"IRQ15\000"
	.section	.data.rel.local
	.align	2
	.type	IRQTokens, %object
	.size	IRQTokens, 120
IRQTokens:
	.word	.LC124
	.word	0
	.word	.LC125
	.word	1
	.word	.LC126
	.word	3
	.word	.LC127
	.word	4
	.word	.LC128
	.word	5
	.word	.LC129
	.word	6
	.word	.LC130
	.word	7
	.word	.LC131
	.word	8
	.word	.LC132
	.word	9
	.word	.LC133
	.word	10
	.word	.LC134
	.word	11
	.word	.LC135
	.word	12
	.word	.LC136
	.word	13
	.word	.LC137
	.word	14
	.word	.LC138
	.word	15
	.global	IRQTL
	.align	2
	.type	IRQTL, %object
	.size	IRQTL, 8
IRQTL:
	.word	15
	.word	IRQTokens
	.global	COM0_SMBIOS_Module
	.data
	.align	2
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
	.global	COM0_SMBIOS_Carrier
	.align	2
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
	.global	COM0_SMBIOS_System
	.align	2
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
	.global	COM0_SMBIOS_Chassis
	.align	2
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
	.global	EeeP_LFP0_Cfg
	.bss
	.align	2
	.type	EeeP_LFP0_Cfg, %object
	.size	EeeP_LFP0_Cfg, 20
EeeP_LFP0_Cfg:
	.space	20
	.global	EeeP_LFP1_Cfg
	.align	2
	.type	EeeP_LFP1_Cfg, %object
	.size	EeeP_LFP1_Cfg, 20
EeeP_LFP1_Cfg:
	.space	20
	.global	EeeP_LFP2_Cfg
	.align	2
	.type	EeeP_LFP2_Cfg, %object
	.size	EeeP_LFP2_Cfg, 20
EeeP_LFP2_Cfg:
	.space	20
	.global	EeeP_LFP3_Cfg
	.align	2
	.type	EeeP_LFP3_Cfg, %object
	.size	EeeP_LFP3_Cfg, 20
EeeP_LFP3_Cfg:
	.space	20
	.global	EeeP_VendorBlock0_Cfg
	.align	2
	.type	EeeP_VendorBlock0_Cfg, %object
	.size	EeeP_VendorBlock0_Cfg, 20
EeeP_VendorBlock0_Cfg:
	.space	20
	.global	EeeP_VendorBlock1_Cfg
	.align	2
	.type	EeeP_VendorBlock1_Cfg, %object
	.size	EeeP_VendorBlock1_Cfg, 20
EeeP_VendorBlock1_Cfg:
	.space	20
	.global	EeeP_VendorBlock2_Cfg
	.align	2
	.type	EeeP_VendorBlock2_Cfg, %object
	.size	EeeP_VendorBlock2_Cfg, 20
EeeP_VendorBlock2_Cfg:
	.space	20
	.global	EeeP_VendorBlock3_Cfg
	.align	2
	.type	EeeP_VendorBlock3_Cfg, %object
	.size	EeeP_VendorBlock3_Cfg, 20
EeeP_VendorBlock3_Cfg:
	.space	20
	.global	EeeP_VendorBlock4_Cfg
	.align	2
	.type	EeeP_VendorBlock4_Cfg, %object
	.size	EeeP_VendorBlock4_Cfg, 20
EeeP_VendorBlock4_Cfg:
	.space	20
	.global	EeeP_VendorBlock5_Cfg
	.align	2
	.type	EeeP_VendorBlock5_Cfg, %object
	.size	EeeP_VendorBlock5_Cfg, 20
EeeP_VendorBlock5_Cfg:
	.space	20
	.global	EeeP_VendorBlock6_Cfg
	.align	2
	.type	EeeP_VendorBlock6_Cfg, %object
	.size	EeeP_VendorBlock6_Cfg, 20
EeeP_VendorBlock6_Cfg:
	.space	20
	.global	EeeP_CustomBlock0_Cfg
	.align	2
	.type	EeeP_CustomBlock0_Cfg, %object
	.size	EeeP_CustomBlock0_Cfg, 20
EeeP_CustomBlock0_Cfg:
	.space	20
	.global	EeeP_CustomBlock1_Cfg
	.align	2
	.type	EeeP_CustomBlock1_Cfg, %object
	.size	EeeP_CustomBlock1_Cfg, 20
EeeP_CustomBlock1_Cfg:
	.space	20
	.global	EeeP_CustomBlock2_Cfg
	.align	2
	.type	EeeP_CustomBlock2_Cfg, %object
	.size	EeeP_CustomBlock2_Cfg, 20
EeeP_CustomBlock2_Cfg:
	.space	20
	.global	EeeP_CustomBlock3_Cfg
	.align	2
	.type	EeeP_CustomBlock3_Cfg, %object
	.size	EeeP_CustomBlock3_Cfg, 20
EeeP_CustomBlock3_Cfg:
	.space	20
	.global	EeeP_CustomBlock4_Cfg
	.align	2
	.type	EeeP_CustomBlock4_Cfg, %object
	.size	EeeP_CustomBlock4_Cfg, 20
EeeP_CustomBlock4_Cfg:
	.space	20
	.global	EeeP_CustomBlock5_Cfg
	.align	2
	.type	EeeP_CustomBlock5_Cfg, %object
	.size	EeeP_CustomBlock5_Cfg, 20
EeeP_CustomBlock5_Cfg:
	.space	20
	.global	EeeP_CustomBlock6_Cfg
	.align	2
	.type	EeeP_CustomBlock6_Cfg, %object
	.size	EeeP_CustomBlock6_Cfg, 20
EeeP_CustomBlock6_Cfg:
	.space	20
	.global	EeePExtI2CDevice0
	.align	2
	.type	EeePExtI2CDevice0, %object
	.size	EeePExtI2CDevice0, 16
EeePExtI2CDevice0:
	.space	16
	.global	EeePExtI2CDevice1
	.align	2
	.type	EeePExtI2CDevice1, %object
	.size	EeePExtI2CDevice1, 16
EeePExtI2CDevice1:
	.space	16
	.global	EeePI2CDevice
	.align	2
	.type	EeePI2CDevice, %object
	.size	EeePI2CDevice, 16
EeePI2CDevice:
	.space	16
	.global	COM0R20_CB_cgf
	.align	2
	.type	COM0R20_CB_cgf, %object
	.size	COM0R20_CB_cgf, 148
COM0R20_CB_cgf:
	.space	148
	.global	COM0R20_M_cgf
	.align	2
	.type	COM0R20_M_cgf, %object
	.size	COM0R20_M_cgf, 10
COM0R20_M_cgf:
	.space	10
	.global	COM0R20_ECard0_cgf
	.align	2
	.type	COM0R20_ECard0_cgf, %object
	.size	COM0R20_ECard0_cgf, 44
COM0R20_ECard0_cgf:
	.space	44
	.global	COM0R20_ECard1_cgf
	.data
	.align	2
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
	.global	COM0R20_SER_cgf
	.bss
	.align	2
	.type	COM0R20_SER_cgf, %object
	.size	COM0R20_SER_cgf, 20
COM0R20_SER_cgf:
	.space	20
	.global	EeePExpHdr_cgf
	.align	2
	.type	EeePExpHdr_cgf, %object
	.size	EeePExpHdr_cgf, 12
EeePExpHdr_cgf:
	.space	12
	.global	ValidMinSize
	.data
	.align	2
	.type	ValidMinSize, %object
	.size	ValidMinSize, 12
ValidMinSize:
	.word	0
	.word	131068
	.word	1
	.global	ValidMinSizeDesc
	.section	.data.rel.local
	.align	2
	.type	ValidMinSizeDesc, %object
	.size	ValidMinSizeDesc, 8
ValidMinSizeDesc:
	.word	1
	.word	ValidMinSize
	.global	SmbiosModuleDesc
	.section	.rodata
	.align	2
.LC139:
	.ascii	"InsideCRC\000"
	.align	2
.LC140:
	.ascii	"MinBlockSize\000"
	.align	2
.LC141:
	.ascii	"BlockFillChar\000"
	.align	2
.LC142:
	.ascii	"Manufacturer\000"
	.align	2
.LC143:
	.ascii	"Product\000"
	.align	2
.LC144:
	.ascii	"Version\000"
	.align	2
.LC145:
	.ascii	"SerialNumber\000"
	.align	2
.LC146:
	.ascii	"AssetTag\000"
	.align	2
.LC147:
	.ascii	"FeatureFlag\000"
	.align	2
.LC148:
	.ascii	"Location\000"
	.align	2
.LC149:
	.ascii	"LocationHandle\000"
	.align	2
.LC150:
	.ascii	"BoardType\000"
	.align	2
.LC151:
	.ascii	"Handles\000"
	.section	.data.rel
	.align	2
	.type	SmbiosModuleDesc, %object
	.size	SmbiosModuleDesc, 728
SmbiosModuleDesc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC142
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
	.word	.LC143
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
	.word	.LC144
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
	.word	.LC145
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
	.word	.LC146
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
	.word	.LC147
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
	.word	.LC148
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
	.word	.LC149
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
	.word	.LC150
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
	.word	.LC151
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
	.global	SmbiosCarrierDesc
	.align	2
	.type	SmbiosCarrierDesc, %object
	.size	SmbiosCarrierDesc, 728
SmbiosCarrierDesc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC142
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
	.word	.LC143
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
	.word	.LC144
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
	.word	.LC145
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
	.word	.LC146
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
	.word	.LC147
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
	.word	.LC148
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
	.word	.LC149
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
	.word	.LC150
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
	.word	.LC151
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
	.global	SmbiosSystemDesc
	.section	.rodata
	.align	2
.LC152:
	.ascii	"UUID\000"
	.align	2
.LC153:
	.ascii	"SKU_Number\000"
	.align	2
.LC154:
	.ascii	"Family\000"
	.section	.data.rel
	.align	2
	.type	SmbiosSystemDesc, %object
	.size	SmbiosSystemDesc, 560
SmbiosSystemDesc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC142
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
	.word	.LC143
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
	.word	.LC144
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
	.word	.LC145
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
	.word	.LC152
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
	.word	.LC153
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
	.word	.LC154
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
	.global	SmbiosChassisDesc
	.section	.rodata
	.align	2
.LC155:
	.ascii	"Type\000"
	.align	2
.LC156:
	.ascii	"OEM\000"
	.align	2
.LC157:
	.ascii	"Height\000"
	.align	2
.LC158:
	.ascii	"NumPowerCords\000"
	.align	2
.LC159:
	.ascii	"CElements\000"
	.section	.data.rel
	.align	2
	.type	SmbiosChassisDesc, %object
	.size	SmbiosChassisDesc, 672
SmbiosChassisDesc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC142
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
	.word	.LC155
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
	.word	.LC144
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
	.word	.LC145
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
	.word	.LC146
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
	.word	.LC156
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
	.word	.LC157
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
	.word	.LC158
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
	.word	.LC159
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
	.global	LFPData0Desc
	.section	.rodata
	.align	2
.LC160:
	.ascii	"Interface\000"
	.align	2
.LC161:
	.ascii	"FileName\000"
	.section	.data.rel
	.align	2
	.type	LFPData0Desc, %object
	.size	LFPData0Desc, 280
LFPData0Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC160
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
	.word	.LC161
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
	.global	LFPData1Desc
	.align	2
	.type	LFPData1Desc, %object
	.size	LFPData1Desc, 280
LFPData1Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC160
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
	.word	.LC161
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
	.global	LFPData2Desc
	.align	2
	.type	LFPData2Desc, %object
	.size	LFPData2Desc, 280
LFPData2Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC160
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
	.word	.LC161
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
	.global	LFPData3Desc
	.align	2
	.type	LFPData3Desc, %object
	.size	LFPData3Desc, 280
LFPData3Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC160
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
	.word	.LC161
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
	.global	VendorBlock0Desc
	.section	.rodata
	.align	2
.LC162:
	.ascii	"VendorId\000"
	.align	2
.LC163:
	.ascii	"VendorSpecificBlockId\000"
	.section	.data.rel
	.align	2
	.type	VendorBlock0Desc, %object
	.size	VendorBlock0Desc, 336
VendorBlock0Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock1Desc
	.align	2
	.type	VendorBlock1Desc, %object
	.size	VendorBlock1Desc, 336
VendorBlock1Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock2Desc
	.align	2
	.type	VendorBlock2Desc, %object
	.size	VendorBlock2Desc, 336
VendorBlock2Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock3Desc
	.align	2
	.type	VendorBlock3Desc, %object
	.size	VendorBlock3Desc, 336
VendorBlock3Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock4Desc
	.align	2
	.type	VendorBlock4Desc, %object
	.size	VendorBlock4Desc, 336
VendorBlock4Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock5Desc
	.align	2
	.type	VendorBlock5Desc, %object
	.size	VendorBlock5Desc, 336
VendorBlock5Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	VendorBlock6Desc
	.align	2
	.type	VendorBlock6Desc, %object
	.size	VendorBlock6Desc, 336
VendorBlock6Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC162
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
	.word	.LC163
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
	.word	.LC161
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
	.global	CustomBlock0Desc
	.section	.rodata
	.align	2
.LC164:
	.ascii	"BlockId\000"
	.section	.data.rel
	.align	2
	.type	CustomBlock0Desc, %object
	.size	CustomBlock0Desc, 280
CustomBlock0Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock1Desc
	.align	2
	.type	CustomBlock1Desc, %object
	.size	CustomBlock1Desc, 280
CustomBlock1Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock2Desc
	.align	2
	.type	CustomBlock2Desc, %object
	.size	CustomBlock2Desc, 280
CustomBlock2Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock3Desc
	.align	2
	.type	CustomBlock3Desc, %object
	.size	CustomBlock3Desc, 280
CustomBlock3Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock4Desc
	.align	2
	.type	CustomBlock4Desc, %object
	.size	CustomBlock4Desc, 280
CustomBlock4Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock5Desc
	.align	2
	.type	CustomBlock5Desc, %object
	.size	CustomBlock5Desc, 280
CustomBlock5Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	CustomBlock6Desc
	.align	2
	.type	CustomBlock6Desc, %object
	.size	CustomBlock6Desc, 280
CustomBlock6Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC164
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
	.word	.LC161
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
	.global	EEPDeviceSizeTokens
	.section	.rodata
	.align	2
.LC165:
	.ascii	"256Bytes\000"
	.align	2
.LC166:
	.ascii	"512Bytes\000"
	.align	2
.LC167:
	.ascii	"1KBytes\000"
	.align	2
.LC168:
	.ascii	"2KBytes\000"
	.align	2
.LC169:
	.ascii	"4KBytes\000"
	.align	2
.LC170:
	.ascii	"8KBytes\000"
	.align	2
.LC171:
	.ascii	"16KBytes\000"
	.align	2
.LC172:
	.ascii	"32KBytes\000"
	.align	2
.LC173:
	.ascii	"64KBytes\000"
	.align	2
.LC174:
	.ascii	"128KBytes\000"
	.align	2
.LC175:
	.ascii	"256KBytes\000"
	.align	2
.LC176:
	.ascii	"512KBytes\000"
	.align	2
.LC177:
	.ascii	"2Kbits\000"
	.align	2
.LC178:
	.ascii	"4Kbits\000"
	.align	2
.LC179:
	.ascii	"8Kbits\000"
	.align	2
.LC180:
	.ascii	"16Kbits\000"
	.align	2
.LC181:
	.ascii	"32Kbits\000"
	.align	2
.LC182:
	.ascii	"64Kbits\000"
	.align	2
.LC183:
	.ascii	"128Kbits\000"
	.align	2
.LC184:
	.ascii	"256Kbits\000"
	.align	2
.LC185:
	.ascii	"512Kbits\000"
	.align	2
.LC186:
	.ascii	"1Mbits\000"
	.align	2
.LC187:
	.ascii	"2Mbits\000"
	.align	2
.LC188:
	.ascii	"4Mbits\000"
	.section	.data.rel.local
	.align	2
	.type	EEPDeviceSizeTokens, %object
	.size	EEPDeviceSizeTokens, 192
EEPDeviceSizeTokens:
	.word	.LC165
	.word	0
	.word	.LC166
	.word	1
	.word	.LC167
	.word	2
	.word	.LC168
	.word	3
	.word	.LC169
	.word	4
	.word	.LC170
	.word	5
	.word	.LC171
	.word	6
	.word	.LC172
	.word	7
	.word	.LC173
	.word	8
	.word	.LC174
	.word	9
	.word	.LC175
	.word	10
	.word	.LC176
	.word	11
	.word	.LC177
	.word	0
	.word	.LC178
	.word	1
	.word	.LC179
	.word	2
	.word	.LC180
	.word	3
	.word	.LC181
	.word	4
	.word	.LC182
	.word	5
	.word	.LC183
	.word	6
	.word	.LC184
	.word	7
	.word	.LC185
	.word	8
	.word	.LC186
	.word	9
	.word	.LC187
	.word	10
	.word	.LC188
	.word	11
	.global	EEPDeviceSizeTL
	.align	2
	.type	EEPDeviceSizeTL, %object
	.size	EEPDeviceSizeTL, 8
EEPDeviceSizeTL:
	.word	24
	.word	EEPDeviceSizeTokens
	.global	EeePEEPWriteLenTokens
	.section	.rodata
	.align	2
.LC189:
	.ascii	"1\000"
	.align	2
.LC190:
	.ascii	"8\000"
	.align	2
.LC191:
	.ascii	"16\000"
	.align	2
.LC192:
	.ascii	"32\000"
	.align	2
.LC193:
	.ascii	"64\000"
	.align	2
.LC194:
	.ascii	"128\000"
	.align	2
.LC195:
	.ascii	"256\000"
	.align	2
.LC196:
	.ascii	"512\000"
	.section	.data.rel.local
	.align	2
	.type	EeePEEPWriteLenTokens, %object
	.size	EeePEEPWriteLenTokens, 64
EeePEEPWriteLenTokens:
	.word	.LC189
	.word	0
	.word	.LC190
	.word	1
	.word	.LC191
	.word	2
	.word	.LC192
	.word	3
	.word	.LC193
	.word	4
	.word	.LC194
	.word	5
	.word	.LC195
	.word	6
	.word	.LC196
	.word	7
	.global	EeePEEPWriteLenTL
	.align	2
	.type	EeePEEPWriteLenTL, %object
	.size	EeePEEPWriteLenTL, 8
EeePEEPWriteLenTL:
	.word	8
	.word	EeePEEPWriteLenTokens
	.global	ExtI2CDevice0Desc
	.section	.rodata
	.align	2
.LC197:
	.ascii	"DeviceBus\000"
	.align	2
.LC198:
	.ascii	"DeviceAddr\000"
	.align	2
.LC199:
	.ascii	"DeviceType\000"
	.align	2
.LC200:
	.ascii	"DeviceSize\000"
	.section	.data.rel
	.align	2
	.type	ExtI2CDevice0Desc, %object
	.size	ExtI2CDevice0Desc, 392
ExtI2CDevice0Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC197
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
	.word	.LC198
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
	.word	.LC199
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
	.word	.LC200
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
	.global	ExtI2CDevice1Desc
	.align	2
	.type	ExtI2CDevice1Desc, %object
	.size	ExtI2CDevice1Desc, 392
ExtI2CDevice1Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC197
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
	.word	.LC198
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
	.word	.LC199
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
	.word	.LC200
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
	.global	ValidUsbHSRange
	.data
	.align	2
	.type	ValidUsbHSRange, %object
	.size	ValidUsbHSRange, 12
ValidUsbHSRange:
	.word	0
	.word	8
	.word	1
	.global	ValidUsbHSRangeDesc
	.section	.data.rel.local
	.align	2
	.type	ValidUsbHSRangeDesc, %object
	.size	ValidUsbHSRangeDesc, 8
ValidUsbHSRangeDesc:
	.word	1
	.word	ValidUsbHSRange
	.global	ValidUsbSSRange
	.data
	.align	2
	.type	ValidUsbSSRange, %object
	.size	ValidUsbSSRange, 12
ValidUsbSSRange:
	.word	0
	.word	4
	.word	1
	.global	ValidUsbSSRangeDesc
	.section	.data.rel.local
	.align	2
	.type	ValidUsbSSRangeDesc, %object
	.size	ValidUsbSSRangeDesc, 8
ValidUsbSSRangeDesc:
	.word	1
	.word	ValidUsbSSRange
	.global	ValidModuleTypes
	.data
	.align	2
	.type	ValidModuleTypes, %object
	.size	ValidModuleTypes, 24
ValidModuleTypes:
	.word	0
	.word	6
	.word	1
	.word	10
	.word	10
	.word	1
	.global	ValidModuleTypesDesc
	.section	.data.rel.local
	.align	2
	.type	ValidModuleTypesDesc, %object
	.size	ValidModuleTypesDesc, 8
ValidModuleTypesDesc:
	.word	2
	.word	ValidModuleTypes
	.global	COM0R20_CB_Desc
	.section	.rodata
	.align	2
.LC201:
	.ascii	"EepDeviceType\000"
	.align	2
.LC202:
	.ascii	"EepDeviceSize\000"
	.align	2
.LC203:
	.ascii	"WriteLength\000"
	.align	2
.LC204:
	.ascii	"DeviceId\000"
	.align	2
.LC205:
	.ascii	"DeviceFlav\000"
	.align	2
.LC206:
	.ascii	"RevId\000"
	.align	2
.LC207:
	.ascii	"CBType\000"
	.align	2
.LC208:
	.ascii	"SpecRevision\000"
	.align	2
.LC209:
	.ascii	"USBHSCount\000"
	.align	2
.LC210:
	.ascii	"USBSSCount\000"
	.align	2
.LC211:
	.ascii	"SASPort0\000"
	.align	2
.LC212:
	.ascii	"SASPort1\000"
	.align	2
.LC213:
	.ascii	"SASPort2\000"
	.align	2
.LC214:
	.ascii	"SASPort3\000"
	.align	2
.LC215:
	.ascii	"GBE0\000"
	.align	2
.LC216:
	.ascii	"GBE1\000"
	.align	2
.LC217:
	.ascii	"GBE2\000"
	.align	2
.LC218:
	.ascii	"WAKE0\000"
	.align	2
.LC219:
	.ascii	"WAKE1\000"
	.align	2
.LC220:
	.ascii	"SUS\000"
	.align	2
.LC221:
	.ascii	"BatLow\000"
	.align	2
.LC222:
	.ascii	"THRMP\000"
	.align	2
.LC223:
	.ascii	"EBROM\000"
	.align	2
.LC224:
	.ascii	"WDT\000"
	.align	2
.LC225:
	.ascii	"AC97/HDA\000"
	.align	2
.LC226:
	.ascii	"SSC\000"
	.align	2
.LC227:
	.ascii	"SDIO\000"
	.align	2
.LC228:
	.ascii	"LID\000"
	.align	2
.LC229:
	.ascii	"Sleep\000"
	.align	2
.LC230:
	.ascii	"FAN0\000"
	.align	2
.LC231:
	.ascii	"SER0\000"
	.align	2
.LC232:
	.ascii	"SER1\000"
	.align	2
.LC233:
	.ascii	"DDI0\000"
	.align	2
.LC234:
	.ascii	"PCIePorts\000"
	.section	.data.rel
	.align	2
	.type	COM0R20_CB_Desc, %object
	.size	COM0R20_CB_Desc, 2128
COM0R20_CB_Desc:
	.word	2
	.word	.LC201
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
	.word	.LC202
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
	.word	.LC203
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
	.word	.LC162
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
	.word	.LC204
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
	.word	.LC205
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
	.word	.LC206
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
	.word	.LC207
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
	.word	.LC208
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
	.word	.LC209
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
	.word	.LC210
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
	.word	.LC211
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
	.word	.LC212
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
	.word	.LC213
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
	.word	.LC214
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
	.word	.LC215
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
	.word	.LC216
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
	.word	.LC217
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
	.word	.LC218
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
	.word	.LC219
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
	.word	.LC220
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
	.word	.LC221
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
	.word	.LC222
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
	.word	.LC223
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
	.word	.LC224
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
	.word	.LC225
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
	.word	.LC226
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
	.word	.LC227
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
	.word	.LC228
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
	.word	.LC229
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
	.word	.LC230
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
	.word	.LC231
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
	.word	.LC232
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
	.word	.LC233
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
	.word	.LC89
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
	.word	.LC90
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
	.word	.LC91
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
	.word	.LC234
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
	.global	COM0R20_M_Desc
	.section	.rodata
	.align	2
.LC235:
	.ascii	"MType\000"
	.section	.data.rel
	.align	2
	.type	COM0R20_M_Desc, %object
	.size	COM0R20_M_Desc, 504
COM0R20_M_Desc:
	.word	2
	.word	.LC201
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
	.word	.LC202
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
	.word	.LC203
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
	.word	.LC162
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
	.word	.LC204
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
	.word	.LC205
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
	.word	.LC206
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
	.word	.LC235
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
	.word	.LC208
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
	.global	EeePExpHdr_Desc
	.align	2
	.type	EeePExpHdr_Desc, %object
	.size	EeePExpHdr_Desc, 392
EeePExpHdr_Desc:
	.word	2
	.word	.LC201
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
	.word	.LC202
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
	.word	.LC203
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
	.word	.LC162
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
	.word	.LC204
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
	.word	.LC205
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
	.word	.LC206
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
	.global	ValidCOM0PCIePort
	.data
	.align	2
	.type	ValidCOM0PCIePort, %object
	.size	ValidCOM0PCIePort, 12
ValidCOM0PCIePort:
	.word	0
	.word	31
	.word	1
	.global	ValidCOM0PCIePortDesc
	.section	.data.rel.local
	.align	2
	.type	ValidCOM0PCIePortDesc, %object
	.size	ValidCOM0PCIePortDesc, 8
ValidCOM0PCIePortDesc:
	.word	1
	.word	ValidCOM0PCIePort
	.global	ValidCOM0USBPort
	.data
	.align	2
	.type	ValidCOM0USBPort, %object
	.size	ValidCOM0USBPort, 12
ValidCOM0USBPort:
	.word	0
	.word	7
	.word	1
	.global	ValidCOM0USBPortDesc
	.section	.data.rel.local
	.align	2
	.type	ValidCOM0USBPortDesc, %object
	.size	ValidCOM0USBPortDesc, 8
ValidCOM0USBPortDesc:
	.word	1
	.word	ValidCOM0USBPort
	.global	COM0R20_ExpCard0Desc
	.section	.rodata
	.align	2
.LC236:
	.ascii	"COM0_PCIe_Port\000"
	.align	2
.LC237:
	.ascii	"COM0_USB_Port\000"
	.align	2
.LC238:
	.ascii	"SwitchPFA\000"
	.section	.data.rel
	.align	2
	.type	COM0R20_ExpCard0Desc, %object
	.size	COM0R20_ExpCard0Desc, 336
COM0R20_ExpCard0Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC236
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
	.word	.LC237
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
	.word	.LC238
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
	.global	COM0R20_ExpCard1Desc
	.align	2
	.type	COM0R20_ExpCard1Desc, %object
	.size	COM0R20_ExpCard1Desc, 336
COM0R20_ExpCard1Desc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC236
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
	.word	.LC237
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
	.word	.LC238
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
	.global	ValidIOAddrPort
	.data
	.align	2
	.type	ValidIOAddrPort, %object
	.size	ValidIOAddrPort, 12
ValidIOAddrPort:
	.word	512
	.word	65528
	.word	1
	.global	ValidIOAddrPortDesc
	.section	.data.rel.local
	.align	2
	.type	ValidIOAddrPortDesc, %object
	.size	ValidIOAddrPortDesc, 8
ValidIOAddrPortDesc:
	.word	1
	.word	ValidIOAddrPort
	.global	COM0R20_SerialPortsDesc
	.section	.rodata
	.align	2
.LC239:
	.ascii	"SER0_IOADDRESS\000"
	.align	2
.LC240:
	.ascii	"SER0_IRQ\000"
	.align	2
.LC241:
	.ascii	"SER1_IOADDRESS\000"
	.align	2
.LC242:
	.ascii	"SER1_IRQ\000"
	.section	.data.rel
	.align	2
	.type	COM0R20_SerialPortsDesc, %object
	.size	COM0R20_SerialPortsDesc, 392
COM0R20_SerialPortsDesc:
	.word	2
	.word	.LC139
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
	.word	.LC140
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
	.word	.LC141
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
	.word	.LC239
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
	.word	.LC240
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
	.word	.LC241
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
	.word	.LC242
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
	.section	.rodata
	.align	2
.LC243:
	.ascii	"TB \000"
	.align	2
.LC244:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"PCIePorts\", CfgElementNode)\000"
	.align	2
.LC245:
	.ascii	"Com0\000"
	.align	2
.LC246:
	.ascii	"HandleCOM0R20CBHeaderBlock\000"
	.align	2
.LC247:
	.ascii	"i2>=ARRAY_SIZE(pCOM0R20_CB_cgf->aulPCIePorts)\000"
	.text
	.align	2
	.global	HandleCOM0R20CBHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20CBHeaderBlock, %function
HandleCOM0R20CBHeaderBlock:
.LFB5:
	.loc 1 1036 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #72
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	.loc 1 1036 1
	ldr	r2, .L55
.LPIC41:
	add	r2, pc, r2
	ldr	r3, .L55+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1037 16
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 1038 17
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-32]
	.loc 1 1040 21
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-28]
	.loc 1 1043 3
	sub	r1, fp, #52
	mov	r3, #2
	ldr	r2, .L55+8
.LPIC31:
	add	r2, pc, r2
	ldr	r0, [fp, #-56]
	bl	GetElementDesc(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L45
	.loc 1 1043 3 is_stmt 0 discriminator 1
	ldr	r3, .L55+12
.LPIC32:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L55+16
.LPIC33:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1043
	ldr	r2, .L55+20
.LPIC34:
	add	r2, pc, r2
	ldr	r1, .L55+24
.LPIC35:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L46
.L45:
	.loc 1 1044 17 is_stmt 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #6
	.loc 1 1044 3
	mov	r2, #43
	mov	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	.loc 1 1046 62
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1046 31
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #5]
	.loc 1 1048 17
	ldr	r3, [fp, #-32]
	add	r3, r3, #6
	.loc 1 1048 3
	mov	r2, #4
	ldr	r1, .L55+28
.LPIC36:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1050 39
	ldr	r3, [fp, #-32]
	add	r2, r3, #10
	.loc 1 1050 3
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3, #2]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1051 39
	ldr	r3, [fp, #-32]
	add	r2, r3, #12
	.loc 1 1051 3
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1052 59
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	.loc 1 1052 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #14]
	.loc 1 1053 54
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 1 1053 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #15]
	.loc 1 1055 55
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	.loc 1 1055 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #16]
	.loc 1 1056 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	.loc 1 1056 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #17]
	.loc 1 1058 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #10]	@ zero_extendqisi2
	.loc 1 1058 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #18]
	.loc 1 1060 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #11]	@ zero_extendqisi2
	.loc 1 1060 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #19]
	.loc 1 1062 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	.loc 1 1062 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #20]
	.loc 1 1064 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #13]	@ zero_extendqisi2
	.loc 1 1064 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #21]
	.loc 1 1065 56
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	.loc 1 1065 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #22]
	.loc 1 1068 53
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #15]	@ zero_extendqisi2
	.loc 1 1068 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #23]
	.loc 1 1069 53
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #16]	@ zero_extendqisi2
	.loc 1 1069 28
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #24]
	.loc 1 1071 19
	ldr	r3, [fp, #-52]
	.loc 1 1071 30
	ldr	r3, [r3, #12]
	.loc 1 1071 5
	cmp	r3, #0
	beq	.L54
.LBB2:
	.loc 1 1078 24
	ldr	r3, [fp, #-52]
	.loc 1 1078 10
	ldr	r3, [r3, #12]
	str	r3, [fp, #-48]
	.loc 1 1079 19
	ldr	r3, [fp, #-28]
	add	r3, r3, #20
	str	r3, [fp, #-40]
	.loc 1 1077 5
	b	.L47
.L51:
	.loc 1 1084 18
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	.loc 1 1084 17
	lsr	r3, r3, #16
	str	r3, [fp, #-24]
	.loc 1 1085 20
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	.loc 1 1085 31
	lsr	r3, r3, #8
	.loc 1 1085 17
	uxtb	r3, r3
	str	r3, [fp, #-20]
	.loc 1 1086 44
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	.loc 1 1086 31
	mov	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	.loc 1 1086 17
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	.loc 1 1087 30
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	.loc 1 1087 17
	uxtb	r3, r3
	str	r3, [fp, #-12]
	.loc 1 1088 13
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-44]
	.loc 1 1088 7
	b	.L48
.L50:
	.loc 1 1089 9
	ldr	r3, [fp, #-44]
	cmp	r3, #31
	bls	.L49
	.loc 1 1089 9 is_stmt 0 discriminator 1
	ldr	r3, .L55+32
.LPIC37:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L55+36
.LPIC38:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #3840
	str	r3, [sp]
	movw	r3, #1089
	ldr	r2, .L55+40
.LPIC39:
	add	r2, pc, r2
	ldr	r1, .L55+44
.LPIC40:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #3840
	str	r3, [fp, #-36]
	b	.L46
.L49:
	.loc 1 1097 28 is_stmt 1 discriminator 2
	ldr	r3, [fp, #-44]
	lsr	r3, r3, #2
	.loc 1 1097 31 discriminator 2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldrb	r1, [r2, #25]	@ zero_extendqisi2
	.loc 1 1097 44 discriminator 2
	ldr	r2, [fp, #-44]
	and	r2, r2, #3
	.loc 1 1097 47 discriminator 2
	lsl	r2, r2, #1
	.loc 1 1097 38 discriminator 2
	ldr	r0, [fp, #-12]
	lsl	r2, r0, r2
	.loc 1 1097 31 discriminator 2
	uxtb	r2, r2
	orr	r2, r1, r2
	uxtb	r1, r2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #25]
	.loc 1 1101 28 discriminator 2
	ldr	r3, [fp, #-44]
	lsr	r3, r3, #1
	.loc 1 1101 31 discriminator 2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldrb	r1, [r2, #33]	@ zero_extendqisi2
	.loc 1 1101 49 discriminator 2
	ldr	r2, [fp, #-44]
	and	r2, r2, #1
	.loc 1 1101 52 discriminator 2
	lsl	r2, r2, #2
	.loc 1 1101 43 discriminator 2
	ldr	r0, [fp, #-20]
	lsl	r2, r0, r2
	.loc 1 1101 31 discriminator 2
	uxtb	r2, r2
	orr	r2, r1, r2
	uxtb	r1, r2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #33]
	.loc 1 1088 40 discriminator 2
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L48:
	.loc 1 1088 27 discriminator 1
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L50
	.loc 1 1081 10
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	.loc 1 1081 23
	ldr	r3, [fp, #-40]
	add	r3, r3, #4
	str	r3, [fp, #-40]
.L47:
	.loc 1 1080 9
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L51
.L54:
.LBE2:
	.loc 1 1106 1
	nop
.L46:
	.loc 1 1107 10
	mov	r3, #0
	.loc 1 1036 1
	ldr	r1, .L55+48
.LPIC42:
	add	r1, pc, r1
	.loc 1 1108 1
	ldr	r2, .L55+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L53
	bl	__stack_chk_fail(PLT)
.L53:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L56:
	.align	2
.L55:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC41+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC234-(.LPIC31+8)
	.word	.LC244-(.LPIC32+8)
	.word	.LC74-(.LPIC33+8)
	.word	.LC243-(.LPIC34+8)
	.word	.LC72-(.LPIC35+8)
	.word	.LC245-(.LPIC36+8)
	.word	.LC247-(.LPIC37+8)
	.word	.LC74-(.LPIC38+8)
	.word	.LC246-(.LPIC39+8)
	.word	.LC72-(.LPIC40+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC42+8)
	.cfi_endproc
.LFE5:
	.size	HandleCOM0R20CBHeaderBlock, .-HandleCOM0R20CBHeaderBlock
	.section	.rodata
	.align	2
.LC248:
	.ascii	"coM0\000"
	.text
	.align	2
	.global	HandleCOM0R20MHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleCOM0R20MHeaderBlock, %function
HandleCOM0R20MHeaderBlock:
.LFB6:
	.loc 1 1114 1
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
	.loc 1 1115 16
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	.loc 1 1116 20
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-8]
	.loc 1 1119 17
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	.loc 1 1119 3
	mov	r2, #12
	mov	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	.loc 1 1120 61
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1120 31
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #5]
	.loc 1 1122 17
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	.loc 1 1122 3
	mov	r2, #4
	ldr	r1, .L59
.LPIC43:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1124 39
	ldr	r3, [fp, #-12]
	add	r2, r3, #10
	.loc 1 1124 3
	ldr	r3, [fp, #-8]
	ldrh	r3, [r3, #2]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1125 39
	ldr	r3, [fp, #-12]
	add	r2, r3, #12
	.loc 1 1125 3
	ldr	r3, [fp, #-8]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1126 58
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	.loc 1 1126 28
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #14]
	.loc 1 1127 48
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 1 1127 23
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #15]
	.loc 1 1129 42
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	.loc 1 1129 17
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #16]
	.loc 1 1130 46
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	.loc 1 1130 19
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #17]
	.loc 1 1132 10
	mov	r3, #0
	.loc 1 1133 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L60:
	.align	2
.L59:
	.word	.LC248-(.LPIC43+8)
	.cfi_endproc
.LFE6:
	.size	HandleCOM0R20MHeaderBlock, .-HandleCOM0R20MHeaderBlock
	.section	.rodata
	.align	2
.LC249:
	.ascii	"EXP1\000"
	.text
	.align	2
	.global	HandleEeePExpEepHeaderBlock
	.syntax unified
	.arm
	.fpu vfpv3
	.type	HandleEeePExpEepHeaderBlock, %function
HandleEeePExpEepHeaderBlock:
.LFB7:
	.loc 1 1140 1
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
	.loc 1 1141 14
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	.loc 1 1142 19
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-8]
	.loc 1 1143 10
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-12]
	.loc 1 1146 17
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	.loc 1 1146 3
	mov	r2, #10
	mov	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	.loc 1 1147 59
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1147 31
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #5]
	.loc 1 1149 17
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	.loc 1 1149 3
	mov	r2, #4
	ldr	r1, .L63
.LPIC44:
	add	r1, pc, r1
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1151 39
	ldr	r3, [fp, #-12]
	add	r2, r3, #10
	.loc 1 1151 3
	ldr	r3, [fp, #-8]
	ldrh	r3, [r3, #2]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1152 39
	ldr	r3, [fp, #-12]
	add	r2, r3, #12
	.loc 1 1152 3
	ldr	r3, [fp, #-8]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1153 65
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	.loc 1 1153 28
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #14]
	.loc 1 1154 55
	ldr	r3, [fp, #-8]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 1 1154 23
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #15]
	.loc 1 1156 10
	mov	r3, #0
	.loc 1 1157 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L64:
	.align	2
.L63:
	.word	.LC249-(.LPIC44+8)
	.cfi_endproc
.LFE7:
	.size	HandleEeePExpEepHeaderBlock, .-HandleEeePExpEepHeaderBlock
	.section	.rodata
	.align	2
.LC250:
	.ascii	"HandleSmbiosChassisBlock\000"
	.align	2
.LC251:
	.ascii	"(pvBuffer==NULL)\000"
	.align	2
.LC252:
	.ascii	"(*pvBuffer==NULL)\000"
	.align	2
.LC253:
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
.LFB8:
	.loc 1 1167 1
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #40
	str	r0, [fp, #-16]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, r1
	strb	r3, [fp, #-17]
	.loc 1 1168 16
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 1169 16
	ldr	r0, [fp, #-28]
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-28]
	.loc 1 1170 3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L66
	.loc 1 1170 3 is_stmt 0 discriminator 1
	ldr	r3, .L73
.LPIC45:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L73+4
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1170
	ldr	r2, .L73+8
.LPIC47:
	add	r2, pc, r2
	ldr	r1, .L73+12
.LPIC48:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-8]
	b	.L67
.L66:
	.loc 1 1176 5 is_stmt 1
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcs	.L68
	.loc 1 1177 17
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
.L68:
	.loc 1 1179 13
	ldr	r0, [fp, #-28]
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	.loc 1 1179 12
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	.loc 1 1180 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L69
	.loc 1 1180 3 is_stmt 0 discriminator 1
	ldr	r3, .L73+16
.LPIC49:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L73+20
.LPIC50:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #2
	str	r3, [sp]
	movw	r3, #1180
	ldr	r2, .L73+24
.LPIC51:
	add	r2, pc, r2
	ldr	r1, .L73+28
.LPIC52:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #2
	str	r3, [fp, #-8]
	b	.L67
.L69:
	.loc 1 1185 5 is_stmt 1
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bls	.L70
	.loc 1 1186 12
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	.loc 1 1186 5
	ldr	r3, [fp, #-24]
	add	r0, r2, r3
	ldrb	r1, [fp, #4]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	mov	r2, r3
	bl	memset(PLT)
.L70:
	.loc 1 1188 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	mov	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	.loc 1 1189 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r2, [fp, #-28]
	mov	r0, r3
	bl	SetDynBlockHeader(PLT)
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L72
	.loc 1 1189 3 is_stmt 0 discriminator 1
	ldr	r3, .L73+32
.LPIC53:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L73+36
.LPIC54:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	movw	r3, #1189
	ldr	r2, .L73+40
.LPIC55:
	add	r2, pc, r2
	ldr	r1, .L73+44
.LPIC56:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L67
.L72:
	.loc 1 1190 1 is_stmt 1
	nop
.L67:
	.loc 1 1191 10
	ldr	r3, [fp, #-8]
	.loc 1 1192 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L74:
	.align	2
.L73:
	.word	.LC251-(.LPIC45+8)
	.word	.LC74-(.LPIC46+8)
	.word	.LC250-(.LPIC47+8)
	.word	.LC72-(.LPIC48+8)
	.word	.LC252-(.LPIC49+8)
	.word	.LC74-(.LPIC50+8)
	.word	.LC250-(.LPIC51+8)
	.word	.LC72-(.LPIC52+8)
	.word	.LC253-(.LPIC53+8)
	.word	.LC74-(.LPIC54+8)
	.word	.LC243-(.LPIC55+8)
	.word	.LC72-(.LPIC56+8)
	.cfi_endproc
.LFE8:
	.size	DBlockAllocWrap, .-DBlockAllocWrap
	.section	.rodata
	.align	2
.LC254:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_EXP_EEPRO"
	.ascii	"M, stBlockLength, pExtI2C_cgf->aulMinSize[0], pExtI"
	.ascii	"2C_cgf->au8FillChar[0] )\000"
	.align	2
.LC255:
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
.LFB9:
	.loc 1 1200 1
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
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	.loc 1 1200 1
	ldr	r2, .L82
.LPIC65:
	add	r2, pc, r2
	ldr	r3, .L82+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1201 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 1202 27
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 1203 18
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 1204 23
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-16]
	.loc 1 1205 24
	mov	r0, #7
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-12]
	.loc 1 1207 3
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	sub	r0, fp, #28
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-12]
	mov	r1, #241
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L76
	.loc 1 1207 3 is_stmt 0 discriminator 1
	ldr	r3, .L82+8
.LPIC57:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L82+12
.LPIC58:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	movw	r3, #1207
	ldr	r2, .L82+16
.LPIC59:
	add	r2, pc, r2
	ldr	r1, .L82+20
.LPIC60:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L77
.L76:
	.loc 1 1214 10 is_stmt 1
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	.loc 1 1217 32
	ldr	r3, [fp, #-20]
	add	r2, r3, #3
	.loc 1 1217 3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1219 43
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	.loc 1 1219 23
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #5]
	.loc 1 1221 50
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	.loc 1 1221 23
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #6]
	.loc 1 1223 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, #0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-36]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L81
	.loc 1 1223 3 is_stmt 0 discriminator 1
	ldr	r3, .L82+24
.LPIC61:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L82+28
.LPIC62:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	movw	r3, #1223
	ldr	r2, .L82+32
.LPIC63:
	add	r2, pc, r2
	ldr	r1, .L82+36
.LPIC64:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L77
.L81:
	.loc 1 1225 1 is_stmt 1
	nop
.L77:
	.loc 1 1226 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L78
	.loc 1 1226 15 discriminator 1
	ldr	r0, [fp, #-20]
	bl	free(PLT)
.L78:
	.loc 1 1227 10
	ldr	r3, [fp, #-24]
	.loc 1 1200 1
	ldr	r1, .L82+40
.LPIC66:
	add	r1, pc, r1
	.loc 1 1228 1
	ldr	r2, .L82+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L80
	bl	__stack_chk_fail(PLT)
.L80:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L83:
	.align	2
.L82:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC65+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC254-(.LPIC57+8)
	.word	.LC74-(.LPIC58+8)
	.word	.LC243-(.LPIC59+8)
	.word	.LC72-(.LPIC60+8)
	.word	.LC255-(.LPIC61+8)
	.word	.LC74-(.LPIC62+8)
	.word	.LC243-(.LPIC63+8)
	.word	.LC72-(.LPIC64+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC66+8)
	.cfi_endproc
.LFE9:
	.size	HandleEeePExpI2CBlock, .-HandleEeePExpI2CBlock
	.section	.rodata
	.align	2
.LC256:
	.ascii	"DBlockAllocWrap( &pdHeader, COM0R20_BLOCK_ID_SERIO_"
	.ascii	"DESC, stBlockLength, pCOM0Serial_cgf->aulMinSize[0]"
	.ascii	", pCOM0Serial_cgf->au8FillChar[0] )\000"
	.align	2
.LC257:
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
.LFB10:
	.loc 1 1236 1
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
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	.loc 1 1236 1
	ldr	r2, .L91
.LPIC75:
	add	r2, pc, r2
	ldr	r3, .L91+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1237 16
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 1238 21
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 1239 18
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 1240 21
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-16]
	.loc 1 1241 24
	mov	r0, #8
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-12]
	.loc 1 1244 3
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	sub	r0, fp, #28
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-12]
	mov	r1, #225
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L85
	.loc 1 1244 3 is_stmt 0 discriminator 1
	ldr	r3, .L91+8
.LPIC67:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L91+12
.LPIC68:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	movw	r3, #1244
	ldr	r2, .L91+16
.LPIC69:
	add	r2, pc, r2
	ldr	r1, .L91+20
.LPIC70:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L85:
	.loc 1 1251 10 is_stmt 1
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	.loc 1 1253 32
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	.loc 1 1253 3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1254 32
	ldr	r3, [fp, #-20]
	add	r2, r3, #6
	.loc 1 1254 3
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1256 47
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	.loc 1 1256 19
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #3]
	.loc 1 1258 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r2, #0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-36]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L90
	.loc 1 1258 3 is_stmt 0 discriminator 1
	ldr	r3, .L91+24
.LPIC71:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L91+28
.LPIC72:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	movw	r3, #1258
	ldr	r2, .L91+32
.LPIC73:
	add	r2, pc, r2
	ldr	r1, .L91+36
.LPIC74:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L86
.L90:
	.loc 1 1260 1 is_stmt 1
	nop
.L86:
	.loc 1 1261 5
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L87
	.loc 1 1261 15 discriminator 1
	ldr	r0, [fp, #-20]
	bl	free(PLT)
.L87:
	.loc 1 1262 10
	ldr	r3, [fp, #-24]
	.loc 1 1236 1
	ldr	r1, .L91+40
.LPIC76:
	add	r1, pc, r1
	.loc 1 1263 1
	ldr	r2, .L91+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L89
	bl	__stack_chk_fail(PLT)
.L89:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L92:
	.align	2
.L91:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC75+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC256-(.LPIC67+8)
	.word	.LC74-(.LPIC68+8)
	.word	.LC243-(.LPIC69+8)
	.word	.LC72-(.LPIC70+8)
	.word	.LC257-(.LPIC71+8)
	.word	.LC74-(.LPIC72+8)
	.word	.LC243-(.LPIC73+8)
	.word	.LC72-(.LPIC74+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC76+8)
	.cfi_endproc
.LFE10:
	.size	HandleCOM0R20SerialCfgBlock, .-HandleCOM0R20SerialCfgBlock
	.section	.rodata
	.align	2
.LC258:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"SwitchPFA\", CfgElementNode)\000"
	.align	2
.LC259:
	.ascii	"DBlockAllocWrap( &pdHeader, COM0R20_BLOCK_ID_EXP_CA"
	.ascii	"RD_DESC, stBlockLength, pCOM0ExpCard_cgf->aulMinSiz"
	.ascii	"e[0], pCOM0ExpCard_cgf->au8FillChar[0] )\000"
	.align	2
.LC260:
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
.LFB11:
	.loc 1 1271 1
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
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	.loc 1 1271 1
	ldr	r2, .L103
.LPIC90:
	add	r2, pc, r2
	ldr	r3, .L103+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1272 16
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 1273 21
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 1274 18
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 1275 21
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-16]
	.loc 1 1281 3
	sub	r1, fp, #40
	mov	r3, #2
	ldr	r2, .L103+8
.LPIC77:
	add	r2, pc, r2
	ldr	r0, [fp, #-48]
	bl	GetElementDesc(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L94
	.loc 1 1281 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+12
.LPIC78:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+16
.LPIC79:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1281
	ldr	r2, .L103+20
.LPIC80:
	add	r2, pc, r2
	ldr	r1, .L103+24
.LPIC81:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L95
.L94:
	.loc 1 1282 30 is_stmt 1
	ldr	r3, [fp, #-40]
	.loc 1 1282 16
	ldr	r3, [r3, #12]
	str	r3, [fp, #-28]
	.loc 1 1283 17
	ldr	r3, [fp, #-28]
	add	r3, r3, #5
	mov	r0, r3
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-12]
	.loc 1 1289 3
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #36]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	sub	r0, fp, #44
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-12]
	mov	r1, #224
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L96
	.loc 1 1289 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+28
.LPIC82:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+32
.LPIC83:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1289
	ldr	r2, .L103+36
.LPIC84:
	add	r2, pc, r2
	ldr	r1, .L103+40
.LPIC85:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L95
.L96:
	.loc 1 1296 10 is_stmt 1
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-32]
	.loc 1 1298 61
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1298 29
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #3]
	.loc 1 1299 59
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	.loc 1 1299 29
	ldr	r3, [fp, #-32]
	strb	r2, [r3, #4]
	.loc 1 1303 27
	ldr	r3, [fp, #-32]
	add	r3, r3, #5
	str	r3, [fp, #-24]
	.loc 1 1304 29
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-20]
	.loc 1 1302 3
	b	.L97
.L98:
	.loc 1 1310 25
	ldr	r3, [fp, #-20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1310 24
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	.loc 1 1306 27
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	.loc 1 1307 29
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L97:
	.loc 1 1305 22
	ldr	r3, [fp, #-28]
	sub	r2, r3, #1
	str	r2, [fp, #-28]
	.loc 1 1305 9
	cmp	r3, #0
	bne	.L98
	.loc 1 1313 22
	ldr	r3, [fp, #-24]
	mvn	r2, #0
	strb	r2, [r3]
	.loc 1 1315 3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	mov	r2, #0
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-52]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L102
	.loc 1 1315 3 is_stmt 0 discriminator 1
	ldr	r3, .L103+44
.LPIC86:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L103+48
.LPIC87:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1315
	ldr	r2, .L103+52
.LPIC88:
	add	r2, pc, r2
	ldr	r1, .L103+56
.LPIC89:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L95
.L102:
	.loc 1 1317 1 is_stmt 1
	nop
.L95:
	.loc 1 1318 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L99
	.loc 1 1318 15 discriminator 1
	ldr	r0, [fp, #-32]
	bl	free(PLT)
.L99:
	.loc 1 1319 10
	ldr	r3, [fp, #-36]
	.loc 1 1271 1
	ldr	r1, .L103+60
.LPIC91:
	add	r1, pc, r1
	.loc 1 1320 1
	ldr	r2, .L103+4
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
.L104:
	.align	2
.L103:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC90+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC238-(.LPIC77+8)
	.word	.LC258-(.LPIC78+8)
	.word	.LC74-(.LPIC79+8)
	.word	.LC243-(.LPIC80+8)
	.word	.LC72-(.LPIC81+8)
	.word	.LC259-(.LPIC82+8)
	.word	.LC74-(.LPIC83+8)
	.word	.LC243-(.LPIC84+8)
	.word	.LC72-(.LPIC85+8)
	.word	.LC260-(.LPIC86+8)
	.word	.LC74-(.LPIC87+8)
	.word	.LC243-(.LPIC88+8)
	.word	.LC72-(.LPIC89+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC91+8)
	.cfi_endproc
.LFE11:
	.size	HandleCOM0R20ExpCardCfgBlock, .-HandleCOM0R20ExpCardCfgBlock
	.section	.rodata
	.align	2
.LC261:
	.ascii	"GetElementDesc((CfgNodeGen_t*)pDesc, (CfgNodeGen_t*"
	.ascii	"*)&pElementsDesc, \"CElements\", CfgElementNode)\000"
	.align	2
.LC262:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosChassis_cgf->aulMinSize[0], pS"
	.ascii	"mbiosChassis_cgf->au8FillChar[0] )\000"
	.align	2
.LC263:
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
.LFB12:
	.loc 1 1339 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #72
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	.loc 1 1339 1
	ldr	r2, .L122
.LPIC105:
	add	r2, pc, r2
	ldr	r3, .L122+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1340 16
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 1342 18
	mov	r3, #0
	str	r3, [fp, #-52]
	.loc 1 1344 20
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-20]
	.loc 1 1345 10
	mov	r3, #24
	str	r3, [fp, #-16]
	.loc 1 1346 10
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 1352 3
	sub	r1, fp, #48
	mov	r3, #2
	ldr	r2, .L122+8
.LPIC92:
	add	r2, pc, r2
	ldr	r0, [fp, #-56]
	bl	GetElementDesc(PLT)
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L106
	.loc 1 1352 3 is_stmt 0 discriminator 1
	ldr	r3, .L122+12
.LPIC93:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L122+16
.LPIC94:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	movw	r3, #1352
	ldr	r2, .L122+20
.LPIC95:
	add	r2, pc, r2
	ldr	r1, .L122+24
.LPIC96:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L107
.L106:
	.loc 1 1354 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L108
	.loc 1 1354 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L108:
	.loc 1 1355 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L109
	.loc 1 1355 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L109:
	.loc 1 1356 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L110
	.loc 1 1356 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L110:
	.loc 1 1357 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L111
	.loc 1 1357 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L111:
	.loc 1 1359 33 is_stmt 1
	ldr	r3, [fp, #-48]
	.loc 1 1359 44
	ldr	r2, [r3, #12]
	.loc 1 1359 54
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	.loc 1 1359 18
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	.loc 1 1360 18
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-36]
	.loc 1 1361 20
	ldr	r0, [fp, #-36]
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-36]
	.loc 1 1363 18
	ldr	r3, [fp, #-16]
	sub	r3, r3, #3
	str	r3, [fp, #-16]
	.loc 1 1364 3
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #36]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	sub	r0, fp, #52
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-36]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L112
	.loc 1 1364 3 is_stmt 0 discriminator 1
	ldr	r3, .L122+28
.LPIC97:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L122+32
.LPIC98:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	movw	r3, #1364
	ldr	r2, .L122+36
.LPIC99:
	add	r2, pc, r2
	ldr	r1, .L122+40
.LPIC100:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L107
.L112:
	.loc 1 1371 10 is_stmt 1
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-12]
	.loc 1 1373 60
	ldr	r3, [fp, #-20]
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	.loc 1 1373 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #8]
	.loc 1 1374 37
	ldr	r3, [fp, #-12]
	add	r2, r3, #16
	.loc 1 1374 80
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #24]
	.loc 1 1374 3
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set32BitValue_BE(PLT)
	.loc 1 1375 55
	ldr	r3, [fp, #-20]
	ldrb	r2, [r3, #28]	@ zero_extendqisi2
	.loc 1 1375 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #20]
	.loc 1 1376 62
	ldr	r3, [fp, #-20]
	ldrb	r2, [r3, #29]	@ zero_extendqisi2
	.loc 1 1376 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #21]
	.loc 1 1377 48
	ldr	r3, [fp, #-48]
	.loc 1 1377 59
	ldr	r3, [r3, #12]
	.loc 1 1377 26
	uxtb	r2, r3
	.loc 1 1377 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #22]
	.loc 1 1378 25
	ldr	r3, [fp, #-12]
	mov	r2, #3
	strb	r2, [r3, #23]
	.loc 1 1380 18
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	.loc 1 1380 10
	str	r3, [fp, #-40]
	.loc 1 1381 18
	ldr	r3, [fp, #-12]
	add	r3, r3, #24
	str	r3, [fp, #-32]
	.loc 1 1382 18
	ldr	r3, [fp, #-20]
	add	r3, r3, #41
	str	r3, [fp, #-28]
	.loc 1 1379 3
	b	.L113
.L114:
	.loc 1 1389 15
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	ldrh	r1, [r2]	@ unaligned
	ldrb	r2, [r2, #2]
	strh	r1, [r3]	@ unaligned
	strb	r2, [r3, #2]
	.loc 1 1384 10
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	.loc 1 1385 18
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	str	r3, [fp, #-32]
	.loc 1 1386 18
	ldr	r3, [fp, #-28]
	add	r3, r3, #3
	str	r3, [fp, #-28]
.L113:
	.loc 1 1383 9
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L114
	.loc 1 1392 15
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	.loc 1 1393 4
	mov	r3, #0
	str	r3, [fp, #-40]
	.loc 1 1395 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L115
	.loc 1 1395 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L115:
	.loc 1 1396 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L116
	.loc 1 1396 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L116:
	.loc 1 1397 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L117
	.loc 1 1397 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L117:
	.loc 1 1398 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L118
	.loc 1 1398 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #11]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L118:
	.loc 1 1401 23 is_stmt 1
	ldr	r3, [fp, #-12]
	mov	r2, #3
	strb	r2, [r3, #3]
	.loc 1 1402 26
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	.loc 1 1402 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #4]
	.loc 1 1403 47
	ldr	r3, [fp, #-12]
	add	r2, r3, #5
	.loc 1 1403 3
	ldr	r3, [fp, #-20]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1405 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #32]
	mov	r2, #0
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-60]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L119
	.loc 1 1405 3 is_stmt 0 discriminator 1
	ldr	r3, .L122+44
.LPIC101:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L122+48
.LPIC102:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	movw	r3, #1405
	ldr	r2, .L122+52
.LPIC103:
	add	r2, pc, r2
	ldr	r1, .L122+56
.LPIC104:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L107
.L119:
	.loc 1 1406 3 is_stmt 1
	ldr	r0, [fp, #-12]
	bl	free(PLT)
	.loc 1 1407 10
	mov	r3, #0
	str	r3, [fp, #-12]
.L107:
	.loc 1 1410 10
	ldr	r3, [fp, #-44]
	.loc 1 1339 1
	ldr	r1, .L122+60
.LPIC106:
	add	r1, pc, r1
	.loc 1 1411 1
	ldr	r2, .L122+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L121
	bl	__stack_chk_fail(PLT)
.L121:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L123:
	.align	2
.L122:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC105+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC159-(.LPIC92+8)
	.word	.LC261-(.LPIC93+8)
	.word	.LC74-(.LPIC94+8)
	.word	.LC243-(.LPIC95+8)
	.word	.LC72-(.LPIC96+8)
	.word	.LC262-(.LPIC97+8)
	.word	.LC74-(.LPIC98+8)
	.word	.LC243-(.LPIC99+8)
	.word	.LC72-(.LPIC100+8)
	.word	.LC263-(.LPIC101+8)
	.word	.LC74-(.LPIC102+8)
	.word	.LC243-(.LPIC103+8)
	.word	.LC72-(.LPIC104+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC106+8)
	.cfi_endproc
.LFE12:
	.size	HandleSmbiosChassisBlock, .-HandleSmbiosChassisBlock
	.section	.rodata
	.align	2
.LC264:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosSystem_cgf->aulMinSize[0], pSm"
	.ascii	"biosSystem_cgf->au8FillChar[0] )\000"
	.align	2
.LC265:
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
.LFB13:
	.loc 1 1418 1
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
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	.loc 1 1418 1
	ldr	r2, .L142
.LPIC115:
	add	r2, pc, r2
	ldr	r3, .L142+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1419 16
	mov	r3, #0
	str	r3, [fp, #-36]
	.loc 1 1421 18
	mov	r3, #0
	str	r3, [fp, #-40]
	.loc 1 1423 19
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-20]
	.loc 1 1424 10
	mov	r3, #30
	str	r3, [fp, #-16]
	.loc 1 1425 10
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 1428 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L125
	.loc 1 1428 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L125:
	.loc 1 1429 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L126
	.loc 1 1429 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L126:
	.loc 1 1430 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L127
	.loc 1 1430 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L127:
	.loc 1 1431 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L128
	.loc 1 1431 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L128:
	.loc 1 1432 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L129
	.loc 1 1432 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L129:
	.loc 1 1433 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L130
	.loc 1 1433 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L130:
	.loc 1 1435 18 is_stmt 1
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-28]
	.loc 1 1436 20
	ldr	r0, [fp, #-28]
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-28]
	.loc 1 1438 18
	ldr	r3, [fp, #-16]
	sub	r3, r3, #3
	str	r3, [fp, #-16]
	.loc 1 1440 3
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	sub	r0, fp, #40
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-28]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L131
	.loc 1 1440 3 is_stmt 0 discriminator 1
	ldr	r3, .L142+8
.LPIC107:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L142+12
.LPIC108:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, #1440
	ldr	r2, .L142+16
.LPIC109:
	add	r2, pc, r2
	ldr	r1, .L142+20
.LPIC110:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L132
.L131:
	.loc 1 1447 10 is_stmt 1
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-12]
	.loc 1 1450 16
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	ip, r2, #11
	add	lr, r3, #20
	ldmia	lr!, {r0, r1, r2, r3}
	str	r0, [ip]	@ unaligned
	str	r1, [ip, #4]	@ unaligned
	str	r2, [ip, #8]	@ unaligned
	str	r3, [ip, #12]	@ unaligned
	.loc 1 1452 16
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	.loc 1 1453 15
	ldr	r3, [fp, #-24]
	add	r3, r3, #30
	str	r3, [fp, #-24]
	.loc 1 1454 4
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 1456 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L133
	.loc 1 1456 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L133:
	.loc 1 1457 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L134
	.loc 1 1457 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L134:
	.loc 1 1458 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L135
	.loc 1 1458 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L135:
	.loc 1 1459 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L136
	.loc 1 1459 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L136:
	.loc 1 1460 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L137
	.loc 1 1460 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #36]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #36]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L137:
	.loc 1 1461 3 is_stmt 1
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L138
	.loc 1 1461 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #29]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #52]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #52]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L138:
	.loc 1 1463 23 is_stmt 1
	ldr	r3, [fp, #-12]
	mov	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1464 26
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	.loc 1 1464 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #4]
	.loc 1 1465 47
	ldr	r3, [fp, #-12]
	add	r2, r3, #5
	.loc 1 1465 3
	ldr	r3, [fp, #-20]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1467 3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #40]
	mov	r2, #0
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-52]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L139
	.loc 1 1467 3 is_stmt 0 discriminator 1
	ldr	r3, .L142+24
.LPIC111:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L142+28
.LPIC112:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	movw	r3, #1467
	ldr	r2, .L142+32
.LPIC113:
	add	r2, pc, r2
	ldr	r1, .L142+36
.LPIC114:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L132
.L139:
	.loc 1 1468 3 is_stmt 1
	ldr	r0, [fp, #-12]
	bl	free(PLT)
	.loc 1 1469 10
	mov	r3, #0
	str	r3, [fp, #-12]
.L132:
	.loc 1 1472 10
	ldr	r3, [fp, #-36]
	.loc 1 1418 1
	ldr	r1, .L142+40
.LPIC116:
	add	r1, pc, r1
	.loc 1 1473 1
	ldr	r2, .L142+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L141
	bl	__stack_chk_fail(PLT)
.L141:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L143:
	.align	2
.L142:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC115+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC264-(.LPIC107+8)
	.word	.LC74-(.LPIC108+8)
	.word	.LC243-(.LPIC109+8)
	.word	.LC72-(.LPIC110+8)
	.word	.LC265-(.LPIC111+8)
	.word	.LC74-(.LPIC112+8)
	.word	.LC243-(.LPIC113+8)
	.word	.LC72-(.LPIC114+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC116+8)
	.cfi_endproc
.LFE13:
	.size	HandleSmbiosSystemBlock, .-HandleSmbiosSystemBlock
	.section	.rodata
	.align	2
.LC266:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_SMBIOS, s"
	.ascii	"tBlockLength, pSmbiosModule_cgf->aulMinSize[0], pSm"
	.ascii	"biosModule_cgf->au8FillChar[0] )\000"
	.align	2
.LC267:
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
.LFB14:
	.loc 1 1481 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #80
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	.loc 1 1481 1
	ldr	r2, .L166
.LPIC125:
	add	r2, pc, r2
	ldr	r3, .L166+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	.loc 1 1482 16
	mov	r3, #0
	str	r3, [fp, #-52]
	.loc 1 1484 18
	mov	r3, #0
	str	r3, [fp, #-56]
	.loc 1 1486 19
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-24]
	.loc 1 1487 10
	mov	r3, #18
	str	r3, [fp, #-20]
	.loc 1 1488 10
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 1493 37
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #28]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #20]
	ldr	r1, [fp, #-64]
	ldr	r1, [r1, #12]
	sub	r1, r1, #1
	mul	r3, r1, r3
	.loc 1 1493 23
	add	r3, r2, r3
	str	r3, [fp, #-16]
	.loc 1 1496 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L145
	.loc 1 1496 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L145:
	.loc 1 1497 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L146
	.loc 1 1497 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L146:
	.loc 1 1498 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L147
	.loc 1 1498 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L147:
	.loc 1 1499 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L148
	.loc 1 1499 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L148:
	.loc 1 1500 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L149
	.loc 1 1500 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L149:
	.loc 1 1501 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L150
	.loc 1 1501 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L150:
	.loc 1 1503 44 is_stmt 1
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	.loc 1 1503 54
	lsl	r3, r3, #1
	.loc 1 1503 18
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	.loc 1 1504 18
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-44]
	.loc 1 1505 20
	ldr	r0, [fp, #-44]
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-44]
	.loc 1 1507 18
	ldr	r3, [fp, #-20]
	sub	r3, r3, #3
	str	r3, [fp, #-20]
	.loc 1 1509 3
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	sub	r0, fp, #56
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-44]
	mov	r1, #208
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L151
	.loc 1 1509 3 is_stmt 0 discriminator 1
	ldr	r3, .L166+8
.LPIC117:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L166+12
.LPIC118:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-52]
	str	r3, [sp]
	movw	r3, #1509
	ldr	r2, .L166+16
.LPIC119:
	add	r2, pc, r2
	ldr	r1, .L166+20
.LPIC120:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L152
.L151:
	.loc 1 1516 10 is_stmt 1
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-12]
	.loc 1 1518 26
	ldr	r3, [fp, #-12]
	mov	r2, #0
	strb	r2, [r3, #12]
	.loc 1 1520 10
	mov	r3, #5
	str	r3, [fp, #-48]
	.loc 1 1521 20
	ldr	r3, [fp, #-24]
	add	r3, r3, #24
	str	r3, [fp, #-32]
	.loc 1 1519 3
	b	.L153
.L154:
	.loc 1 1527 28
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3, #12]	@ zero_extendqisi2
	.loc 1 1527 30
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1527 28
	orr	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #12]
	.loc 1 1523 10
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	.loc 1 1524 20
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L153:
	.loc 1 1522 9
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L154
	.loc 1 1529 40
	ldr	r3, [fp, #-12]
	add	r2, r3, #14
	.loc 1 1529 3
	ldr	r3, [fp, #-24]
	ldrh	r3, [r3, #36]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1530 67
	ldr	r3, [fp, #-24]
	ldrb	r2, [r3, #38]	@ zero_extendqisi2
	.loc 1 1530 26
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #16]
	.loc 1 1531 60
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	.loc 1 1531 27
	uxtb	r2, r3
	.loc 1 1531 26
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #17]
	.loc 1 1533 18
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #17]	@ zero_extendqisi2
	.loc 1 1533 10
	str	r3, [fp, #-48]
	.loc 1 1534 18
	ldr	r3, [fp, #-12]
	add	r3, r3, #18
	str	r3, [fp, #-40]
	.loc 1 1535 21
	ldr	r3, [fp, #-24]
	add	r3, r3, #50
	str	r3, [fp, #-36]
	.loc 1 1532 3
	b	.L155
.L156:
	.loc 1 1542 36
	ldr	r2, [fp, #-40]
	.loc 1 1542 5
	ldr	r3, [fp, #-36]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1537 10
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	.loc 1 1538 18
	ldr	r3, [fp, #-40]
	add	r3, r3, #2
	str	r3, [fp, #-40]
	.loc 1 1539 21
	ldr	r3, [fp, #-36]
	add	r3, r3, #2
	str	r3, [fp, #-36]
.L155:
	.loc 1 1536 9
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L156
	.loc 1 1545 15
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-28]
	.loc 1 1546 4
	mov	r3, #0
	str	r3, [fp, #-48]
	.loc 1 1548 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L157
	.loc 1 1548 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #7]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L157:
	.loc 1 1549 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L158
	.loc 1 1549 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L158:
	.loc 1 1550 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L159
	.loc 1 1550 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L159:
	.loc 1 1551 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L160
	.loc 1 1551 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L160:
	.loc 1 1552 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L161
	.loc 1 1552 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #11]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L161:
	.loc 1 1553 3 is_stmt 1
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L162
	.loc 1 1553 3 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #13]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	strcpy(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
.L162:
	.loc 1 1556 23 is_stmt 1
	ldr	r3, [fp, #-12]
	mov	r2, #2
	strb	r2, [r3, #3]
	.loc 1 1557 26
	ldr	r3, [fp, #-20]
	uxtb	r2, r3
	.loc 1 1557 25
	ldr	r3, [fp, #-12]
	strb	r2, [r3, #4]
	.loc 1 1558 47
	ldr	r3, [fp, #-12]
	add	r2, r3, #5
	.loc 1 1558 3
	ldr	r3, [fp, #-24]
	ldrh	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1560 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #40]
	mov	r2, #0
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-68]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L163
	.loc 1 1560 3 is_stmt 0 discriminator 1
	ldr	r3, .L166+24
.LPIC121:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L166+28
.LPIC122:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-52]
	str	r3, [sp]
	movw	r3, #1560
	ldr	r2, .L166+32
.LPIC123:
	add	r2, pc, r2
	ldr	r1, .L166+36
.LPIC124:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L152
.L163:
	.loc 1 1561 3 is_stmt 1
	ldr	r0, [fp, #-12]
	bl	free(PLT)
	.loc 1 1562 10
	mov	r3, #0
	str	r3, [fp, #-12]
.L152:
	.loc 1 1565 10
	ldr	r3, [fp, #-52]
	.loc 1 1481 1
	ldr	r1, .L166+40
.LPIC126:
	add	r1, pc, r1
	.loc 1 1566 1
	ldr	r2, .L166+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L165
	bl	__stack_chk_fail(PLT)
.L165:
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L167:
	.align	2
.L166:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC125+8)
	.word	__stack_chk_guard(GOT)
	.word	.LC266-(.LPIC117+8)
	.word	.LC74-(.LPIC118+8)
	.word	.LC243-(.LPIC119+8)
	.word	.LC72-(.LPIC120+8)
	.word	.LC267-(.LPIC121+8)
	.word	.LC74-(.LPIC122+8)
	.word	.LC243-(.LPIC123+8)
	.word	.LC72-(.LPIC124+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC126+8)
	.cfi_endproc
.LFE14:
	.size	HandleSmbiosModuleBlock, .-HandleSmbiosModuleBlock
	.section	.rodata
	.align	2
.LC268:
	.ascii	"ERROR: Opening %s\012\000"
	.align	2
.LC269:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_VENDOR_SP"
	.ascii	"ECIFIC, stBlockLength, pVendorBlock->aulMinSize[0],"
	.ascii	" pVendorBlock->au8FillChar[0] )\000"
	.align	2
.LC270:
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
.LFB15:
	.loc 1 1574 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #60
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	ldr	r4, .L176
.LPIC127:
	add	r4, pc, r4
	.loc 1 1574 1
	ldr	r2, .L176+4
.LPIC137:
	add	r2, pc, r2
	ldr	r3, .L176+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 1575 16
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 1577 18
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 1581 22
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-28]
	.loc 1 1582 54
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	.loc 1 1582 14
	sub	r2, fp, #36
	sub	r1, fp, #40
	mov	r0, r3
	bl	ReadBinaryFile(PLT)
	str	r0, [fp, #-32]
	.loc 1 1583 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L169
	.loc 1 1584 9
	ldr	r3, .L176+12
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, .L176+16
.LPIC128:
	add	r3, pc, r3
	mov	r1, r3
	bl	fprintf(PLT)
	.loc 1 1585 16
	ldr	r3, [fp, #-32]
	b	.L174
.L169:
	.loc 1 1587 17
	ldr	r3, [fp, #-36]
	add	r3, r3, #6
	mov	r0, r3
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-24]
	.loc 1 1589 3
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	sub	r0, fp, #44
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-24]
	mov	r1, #240
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L171
	.loc 1 1589 3 is_stmt 0 discriminator 1
	ldr	r3, .L176+20
.LPIC129:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L176+24
.LPIC130:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #1589
	ldr	r2, .L176+28
.LPIC131:
	add	r2, pc, r2
	ldr	r1, .L176+32
.LPIC132:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L172
.L171:
	.loc 1 1596 10 is_stmt 1
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-20]
	.loc 1 1598 32
	ldr	r3, [fp, #-20]
	add	r2, r3, #3
	.loc 1 1598 78
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3, #4]
	.loc 1 1598 3
	mov	r1, r3
	mov	r0, r2
	bl	EeeP_Set16BitValue_BE(PLT)
	.loc 1 1599 50
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3, #17]	@ zero_extendqisi2
	.loc 1 1599 23
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #5]
	.loc 1 1600 3
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-36]
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1606 3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	mov	r2, #0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-52]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L173
	.loc 1 1606 3 is_stmt 0 discriminator 1
	ldr	r3, .L176+36
.LPIC133:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L176+40
.LPIC134:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #1606
	ldr	r2, .L176+44
.LPIC135:
	add	r2, pc, r2
	ldr	r1, .L176+48
.LPIC136:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L172
.L173:
	.loc 1 1607 3 is_stmt 1
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 1608 15
	mov	r3, #0
	str	r3, [fp, #-40]
	.loc 1 1609 3
	ldr	r0, [fp, #-20]
	bl	free(PLT)
	.loc 1 1610 10
	mov	r3, #0
	str	r3, [fp, #-20]
.L172:
	.loc 1 1613 10
	ldr	r3, [fp, #-32]
.L174:
	.loc 1 1574 1 discriminator 1
	ldr	r1, .L176+52
.LPIC138:
	add	r1, pc, r1
	.loc 1 1614 1 discriminator 1
	ldr	r2, .L176+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L175
	.loc 1 1614 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L175:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L177:
	.align	2
.L176:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC127+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC137+8)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC268-(.LPIC128+8)
	.word	.LC269-(.LPIC129+8)
	.word	.LC74-(.LPIC130+8)
	.word	.LC243-(.LPIC131+8)
	.word	.LC72-(.LPIC132+8)
	.word	.LC270-(.LPIC133+8)
	.word	.LC74-(.LPIC134+8)
	.word	.LC243-(.LPIC135+8)
	.word	.LC72-(.LPIC136+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC138+8)
	.cfi_endproc
.LFE15:
	.size	HandleVendorBlock, .-HandleVendorBlock
	.section	.rodata
	.align	2
.LC271:
	.ascii	"DBlockAllocWrap( &pdHeader, EEEP_BLOCK_ID_LFP, stBl"
	.ascii	"ockLength, pLfpBlock->aulMinSize[0], pLfpBlock->au8"
	.ascii	"FillChar[0] )\000"
	.align	2
.LC272:
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
.LFB16:
	.loc 1 1622 1 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #60
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	ldr	r4, .L186
.LPIC139:
	add	r4, pc, r4
	.loc 1 1622 1
	ldr	r2, .L186+4
.LPIC149:
	add	r2, pc, r2
	ldr	r3, .L186+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 1623 16
	mov	r3, #0
	str	r3, [fp, #-32]
	.loc 1 1625 18
	mov	r3, #0
	str	r3, [fp, #-44]
	.loc 1 1629 14
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-28]
	.loc 1 1630 51
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	.loc 1 1630 14
	sub	r2, fp, #36
	sub	r1, fp, #40
	mov	r0, r3
	bl	ReadBinaryFile(PLT)
	str	r0, [fp, #-32]
	.loc 1 1631 5
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L179
	.loc 1 1632 9
	ldr	r3, .L186+12
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, .L186+16
.LPIC140:
	add	r3, pc, r3
	mov	r1, r3
	bl	fprintf(PLT)
	.loc 1 1633 16
	ldr	r3, [fp, #-32]
	b	.L184
.L179:
	.loc 1 1635 17
	ldr	r3, [fp, #-36]
	add	r3, r3, #4
	mov	r0, r3
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-24]
	.loc 1 1637 3
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	sub	r0, fp, #44
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-24]
	mov	r1, #209
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L181
	.loc 1 1637 3 is_stmt 0 discriminator 1
	ldr	r3, .L186+20
.LPIC141:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L186+24
.LPIC142:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #1637
	ldr	r2, .L186+28
.LPIC143:
	add	r2, pc, r2
	ldr	r1, .L186+32
.LPIC144:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L182
.L181:
	.loc 1 1644 10 is_stmt 1
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-20]
	.loc 1 1646 45
	ldr	r3, [fp, #-28]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 1646 21
	ldr	r3, [fp, #-20]
	strb	r2, [r3, #3]
	.loc 1 1648 18
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	.loc 1 1648 3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-36]
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1650 3
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	mov	r2, #0
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-52]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L183
	.loc 1 1650 3 is_stmt 0 discriminator 1
	ldr	r3, .L186+36
.LPIC145:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L186+40
.LPIC146:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp]
	movw	r3, #1650
	ldr	r2, .L186+44
.LPIC147:
	add	r2, pc, r2
	ldr	r1, .L186+48
.LPIC148:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L182
.L183:
	.loc 1 1651 3 is_stmt 1
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 1652 3
	ldr	r0, [fp, #-20]
	bl	free(PLT)
	.loc 1 1653 10
	mov	r3, #0
	str	r3, [fp, #-20]
.L182:
	.loc 1 1656 10
	ldr	r3, [fp, #-32]
.L184:
	.loc 1 1622 1 discriminator 1
	ldr	r1, .L186+52
.LPIC150:
	add	r1, pc, r1
	.loc 1 1657 1 discriminator 1
	ldr	r2, .L186+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L185
	.loc 1 1657 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L185:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L187:
	.align	2
.L186:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC139+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC149+8)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC268-(.LPIC140+8)
	.word	.LC271-(.LPIC141+8)
	.word	.LC74-(.LPIC142+8)
	.word	.LC243-(.LPIC143+8)
	.word	.LC72-(.LPIC144+8)
	.word	.LC272-(.LPIC145+8)
	.word	.LC74-(.LPIC146+8)
	.word	.LC243-(.LPIC147+8)
	.word	.LC72-(.LPIC148+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC150+8)
	.cfi_endproc
.LFE16:
	.size	HandleLFPDescBlock, .-HandleLFPDescBlock
	.section	.rodata
	.align	2
.LC273:
	.ascii	"DBlockAllocWrap( &pHeader, pCustomBlock->au8BlockId"
	.ascii	"[0], stBlockLength, pCustomBlock->aulMinSize[0], pC"
	.ascii	"ustomBlock->au8FillChar[0] )\000"
	.align	2
.LC274:
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
.LFB17:
	.loc 1 1665 1 is_stmt 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #8
	.cfi_def_cfa 11, 4
	sub	sp, sp, #60
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	ldr	r4, .L196
.LPIC151:
	add	r4, pc, r4
	.loc 1 1665 1
	ldr	r2, .L196+4
.LPIC161:
	add	r2, pc, r2
	ldr	r3, .L196+8
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	.loc 1 1666 16
	mov	r3, #0
	str	r3, [fp, #-28]
	.loc 1 1667 18
	mov	r3, #0
	str	r3, [fp, #-40]
	.loc 1 1671 22
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-24]
	.loc 1 1672 54
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	.loc 1 1672 14
	sub	r2, fp, #32
	sub	r1, fp, #36
	mov	r0, r3
	bl	ReadBinaryFile(PLT)
	str	r0, [fp, #-28]
	.loc 1 1673 5
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L189
	.loc 1 1674 9
	ldr	r3, .L196+12
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, .L196+16
.LPIC152:
	add	r3, pc, r3
	mov	r1, r3
	bl	fprintf(PLT)
	.loc 1 1675 16
	ldr	r3, [fp, #-28]
	b	.L194
.L189:
	.loc 1 1677 17
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	mov	r0, r3
	bl	EeePAlignLength(PLT)
	str	r0, [fp, #-20]
	.loc 1 1679 3
	ldr	r3, [fp, #-24]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	sub	r0, fp, #40
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-20]
	bl	DBlockAllocWrap(PLT)
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L191
	.loc 1 1679 3 is_stmt 0 discriminator 1
	ldr	r3, .L196+20
.LPIC153:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L196+24
.LPIC154:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-28]
	str	r3, [sp]
	movw	r3, #1679
	ldr	r2, .L196+28
.LPIC155:
	add	r2, pc, r2
	ldr	r1, .L196+32
.LPIC156:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L192
.L191:
	.loc 1 1687 11 is_stmt 1
	ldr	r3, [fp, #-40]
	.loc 1 1687 3
	add	r3, r3, #3
	ldr	r1, [fp, #-36]
	ldr	r2, [fp, #-32]
	mov	r0, r3
	bl	memcpy(PLT)
	.loc 1 1689 3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #8]
	mov	r2, #0
	ldr	r0, [fp, #-52]
	bl	EeePAddBlock(PLT)
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L193
	.loc 1 1689 3 is_stmt 0 discriminator 1
	ldr	r3, .L196+36
.LPIC157:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L196+40
.LPIC158:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-28]
	str	r3, [sp]
	movw	r3, #1689
	ldr	r2, .L196+44
.LPIC159:
	add	r2, pc, r2
	ldr	r1, .L196+48
.LPIC160:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L192
.L193:
	.loc 1 1690 3 is_stmt 1
	ldr	r3, [fp, #-36]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 1691 3
	ldr	r3, [fp, #-40]
	mov	r0, r3
	bl	free(PLT)
	.loc 1 1692 10
	mov	r3, #0
	str	r3, [fp, #-40]
.L192:
	.loc 1 1695 10
	ldr	r3, [fp, #-28]
.L194:
	.loc 1 1665 1 discriminator 1
	ldr	r1, .L196+52
.LPIC162:
	add	r1, pc, r1
	.loc 1 1696 1 discriminator 1
	ldr	r2, .L196+8
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L195
	.loc 1 1696 1 is_stmt 0
	bl	__stack_chk_fail(PLT)
.L195:
	mov	r0, r3
	sub	sp, fp, #8
	.cfi_def_cfa 13, 12
	@ sp needed
	pop	{r4, fp, pc}
.L197:
	.align	2
.L196:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC151+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC161+8)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC268-(.LPIC152+8)
	.word	.LC273-(.LPIC153+8)
	.word	.LC74-(.LPIC154+8)
	.word	.LC243-(.LPIC155+8)
	.word	.LC72-(.LPIC156+8)
	.word	.LC274-(.LPIC157+8)
	.word	.LC74-(.LPIC158+8)
	.word	.LC243-(.LPIC159+8)
	.word	.LC72-(.LPIC160+8)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC162+8)
	.cfi_endproc
.LFE17:
	.size	HandleCustomBlock, .-HandleCustomBlock
	.global	COM0R20_CB_CfgDesc
	.section	.rodata
	.align	2
.LC275:
	.ascii	"COM0R20_CB\000"
	.align	2
.LC276:
	.ascii	"SmbiosCarrier\000"
	.align	2
.LC277:
	.ascii	"SmbiosSystem\000"
	.align	2
.LC278:
	.ascii	"SmbiosChassis\000"
	.align	2
.LC279:
	.ascii	"LFPData0\000"
	.align	2
.LC280:
	.ascii	"LFPData1\000"
	.align	2
.LC281:
	.ascii	"ExtI2CDevice0\000"
	.align	2
.LC282:
	.ascii	"ExtI2CDevice1\000"
	.align	2
.LC283:
	.ascii	"COM0R20_Exp0Card\000"
	.align	2
.LC284:
	.ascii	"COM0R20_Exp1Card\000"
	.align	2
.LC285:
	.ascii	"COM0R20_SerialPorts\000"
	.align	2
.LC286:
	.ascii	"VendorBlock0\000"
	.align	2
.LC287:
	.ascii	"VendorBlock1\000"
	.align	2
.LC288:
	.ascii	"VendorBlock2\000"
	.align	2
.LC289:
	.ascii	"VendorBlock3\000"
	.align	2
.LC290:
	.ascii	"VendorBlock4\000"
	.align	2
.LC291:
	.ascii	"VendorBlock5\000"
	.align	2
.LC292:
	.ascii	"VendorBlock6\000"
	.align	2
.LC293:
	.ascii	"CustomBlock0\000"
	.align	2
.LC294:
	.ascii	"CustomBlock1\000"
	.align	2
.LC295:
	.ascii	"CustomBlock2\000"
	.align	2
.LC296:
	.ascii	"CustomBlock3\000"
	.align	2
.LC297:
	.ascii	"CustomBlock4\000"
	.align	2
.LC298:
	.ascii	"CustomBlock5\000"
	.align	2
.LC299:
	.ascii	"CustomBlock6\000"
	.section	.data.rel.local
	.align	2
	.type	COM0R20_CB_CfgDesc, %object
	.size	COM0R20_CB_CfgDesc, 1400
COM0R20_CB_CfgDesc:
	.word	1
	.word	.LC275
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
	.word	.LC276
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
	.word	.LC277
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
	.word	.LC278
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
	.word	.LC279
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
	.word	.LC280
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
	.word	.LC281
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
	.word	.LC282
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
	.word	.LC283
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
	.word	.LC284
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
	.word	.LC285
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
	.word	.LC286
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
	.word	.LC287
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
	.word	.LC288
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
	.word	.LC289
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
	.word	.LC290
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
	.word	.LC291
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
	.word	.LC292
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
	.word	.LC293
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
	.word	.LC294
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
	.word	.LC295
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
	.word	.LC296
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
	.word	.LC297
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
	.word	.LC298
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
	.word	.LC299
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
	.global	COM0R20_M_CfgDesc
	.section	.rodata
	.align	2
.LC300:
	.ascii	"COM0R20_M\000"
	.align	2
.LC301:
	.ascii	"SmbiosModule\000"
	.section	.data.rel.local
	.align	2
	.type	COM0R20_M_CfgDesc, %object
	.size	COM0R20_M_CfgDesc, 1008
COM0R20_M_CfgDesc:
	.word	1
	.word	.LC300
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
	.word	.LC301
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
	.word	.LC279
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
	.word	.LC280
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
	.word	.LC286
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
	.word	.LC287
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
	.word	.LC288
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
	.word	.LC289
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
	.word	.LC290
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
	.word	.LC291
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
	.word	.LC292
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
	.word	.LC293
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
	.word	.LC294
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
	.word	.LC295
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
	.word	.LC296
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
	.word	.LC297
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
	.word	.LC298
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
	.word	.LC299
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
	.global	EeePExpEEP_CfgDesc
	.section	.rodata
	.align	2
.LC302:
	.ascii	"EeePExpEEP\000"
	.section	.data.rel.local
	.align	2
	.type	EeePExpEEP_CfgDesc, %object
	.size	EeePExpEEP_CfgDesc, 1400
EeePExpEEP_CfgDesc:
	.word	1
	.word	.LC302
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
	.word	.LC276
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
	.word	.LC277
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
	.word	.LC278
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
	.word	.LC279
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
	.word	.LC280
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
	.word	.LC281
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
	.word	.LC282
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
	.word	.LC283
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
	.word	.LC284
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
	.word	.LC285
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
	.word	.LC286
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
	.word	.LC287
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
	.word	.LC288
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
	.word	.LC289
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
	.word	.LC290
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
	.word	.LC291
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
	.word	.LC292
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
	.word	.LC293
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
	.word	.LC294
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
	.word	.LC295
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
	.word	.LC296
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
	.word	.LC297
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
	.word	.LC298
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
	.word	.LC299
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
	.section	.rodata
	.align	2
.LC303:
	.ascii	"EeeP_CreateEEPROMImage\000"
	.align	2
.LC304:
	.ascii	"(cszCfgFileName==NULL)\000"
	.align	2
.LC305:
	.ascii	"(pCfgBlockDesc==NULL)\000"
	.align	2
.LC306:
	.ascii	"(pu8DevDesc==NULL)\000"
	.align	2
.LC307:
	.ascii	"(stCfgBlockCnt==0)\000"
	.align	2
.LC308:
	.ascii	"(stHeaderSize==0)\000"
	.align	2
.LC309:
	.ascii	"ParseCfgFile(cszCfgFileName, pCfgBlockDesc, stCfgBl"
	.ascii	"ockCnt)\000"
	.align	2
.LC310:
	.ascii	"EeePCreateNewBuffer(pBHandel, 256<<(*pu8DevDesc&EEE"
	.ascii	"P_DEVICE_SIZE_MASK), stHeaderSize, EEEP_INIT_INCLUD"
	.ascii	"E_CRC)\000"
	.align	2
.LC311:
	.ascii	"pDesc->Handler(pDesc, *pBHandel)\000"
	.align	2
.LC312:
	.ascii	"EeePSetCRC(*pBHandel)\000"
	.align	2
.LC313:
	.ascii	"CleanStruct(pCfgBlockDesc, stCfgBlockCnt)\000"
	.text
	.align	2
	.global	EeeP_CreateEEPROMImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEEPROMImage, %function
EeeP_CreateEEPROMImage:
.LFB18:
	.loc 1 1787 1 is_stmt 1
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
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
	.loc 1 1788 16
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 1792 3
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L199
	.loc 1 1792 3 is_stmt 0 discriminator 1
	ldr	r3, .L213
.LPIC163:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+4
.LPIC164:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	mov	r3, #1792
	ldr	r2, .L213+8
.LPIC165:
	add	r2, pc, r2
	ldr	r1, .L213+12
.LPIC166:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L200
.L199:
	.loc 1 1797 3 is_stmt 1
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L201
	.loc 1 1797 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+16
.LPIC167:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+20
.LPIC168:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1797
	ldr	r2, .L213+24
.LPIC169:
	add	r2, pc, r2
	ldr	r1, .L213+28
.LPIC170:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L200
.L201:
	.loc 1 1802 3 is_stmt 1
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L202
	.loc 1 1802 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+32
.LPIC171:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+36
.LPIC172:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1802
	ldr	r2, .L213+40
.LPIC173:
	add	r2, pc, r2
	ldr	r1, .L213+44
.LPIC174:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L200
.L202:
	.loc 1 1807 3 is_stmt 1
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L203
	.loc 1 1807 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+48
.LPIC175:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+52
.LPIC176:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1807
	ldr	r2, .L213+56
.LPIC177:
	add	r2, pc, r2
	ldr	r1, .L213+60
.LPIC178:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L200
.L203:
	.loc 1 1812 3 is_stmt 1
	ldr	r3, [fp, #8]
	cmp	r3, #0
	bne	.L204
	.loc 1 1812 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+64
.LPIC179:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+68
.LPIC180:
	add	r3, pc, r3
	str	r3, [sp, #4]
	mvn	r3, #256
	str	r3, [sp]
	movw	r3, #1812
	ldr	r2, .L213+72
.LPIC181:
	add	r2, pc, r2
	ldr	r1, .L213+76
.LPIC182:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	mvn	r3, #256
	str	r3, [fp, #-16]
	b	.L200
.L204:
	.loc 1 1820 3 is_stmt 1
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-28]
	bl	ParseCfgFile(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L205
	.loc 1 1820 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+80
.LPIC183:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+84
.LPIC184:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #1820
	ldr	r2, .L213+88
.LPIC185:
	add	r2, pc, r2
	ldr	r1, .L213+92
.LPIC186:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L200
.L205:
	.loc 1 1824 3 is_stmt 1
	ldr	r3, [fp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #15
	mov	r2, #256
	lsl	r3, r2, r3
	mov	r1, r3
	mov	r3, #1
	ldr	r2, [fp, #8]
	ldr	r0, [fp, #-24]
	bl	EeePCreateNewBuffer(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L206
	.loc 1 1824 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+96
.LPIC187:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+100
.LPIC188:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	mov	r3, #1824
	ldr	r2, .L213+104
.LPIC189:
	add	r2, pc, r2
	ldr	r1, .L213+108
.LPIC190:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L200
.L206:
	.loc 1 1828 8 is_stmt 1
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-8]
	.loc 1 1828 29
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-12]
	.loc 1 1828 3
	b	.L207
.L209:
	.loc 1 1829 13
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #40]
	.loc 1 1829 7
	cmp	r3, #0
	beq	.L208
	.loc 1 1829 30 discriminator 1
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #48]
	.loc 1 1829 22 discriminator 1
	cmp	r3, #0
	beq	.L208
	.loc 1 1830 7
	ldr	r3, [fp, #-12]
	ldr	r3, [r3, #48]
	ldr	r2, [fp, #-24]
	ldr	r2, [r2]
	mov	r1, r2
	ldr	r0, [fp, #-12]
	blx	r3
.LVL0:
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L208
	.loc 1 1830 7 is_stmt 0 discriminator 1
	ldr	r3, .L213+112
.LPIC191:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+116
.LPIC192:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #1830
	ldr	r2, .L213+120
.LPIC193:
	add	r2, pc, r2
	ldr	r1, .L213+124
.LPIC194:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L200
.L208:
	.loc 1 1828 49 is_stmt 1 discriminator 2
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	.loc 1 1828 58 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #56
	str	r3, [fp, #-12]
.L207:
	.loc 1 1828 45 discriminator 1
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L209
	.loc 1 1832 3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	EeePSetCRC(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L210
	.loc 1 1832 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+128
.LPIC195:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+132
.LPIC196:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #1832
	ldr	r2, .L213+136
.LPIC197:
	add	r2, pc, r2
	ldr	r1, .L213+140
.LPIC198:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L200
.L210:
	.loc 1 1836 3 is_stmt 1
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	CleanStruct(PLT)
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L212
	.loc 1 1836 3 is_stmt 0 discriminator 1
	ldr	r3, .L213+144
.LPIC199:
	add	r3, pc, r3
	str	r3, [sp, #8]
	ldr	r3, .L213+148
.LPIC200:
	add	r3, pc, r3
	str	r3, [sp, #4]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	movw	r3, #1836
	ldr	r2, .L213+152
.LPIC201:
	add	r2, pc, r2
	ldr	r1, .L213+156
.LPIC202:
	add	r1, pc, r1
	mov	r0, #69
	bl	siFormattedMessage_SC(PLT)
	b	.L200
.L212:
	.loc 1 1838 1 is_stmt 1
	nop
.L200:
	.loc 1 1839 10
	ldr	r3, [fp, #-16]
	.loc 1 1840 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L214:
	.align	2
.L213:
	.word	.LC304-(.LPIC163+8)
	.word	.LC74-(.LPIC164+8)
	.word	.LC303-(.LPIC165+8)
	.word	.LC72-(.LPIC166+8)
	.word	.LC305-(.LPIC167+8)
	.word	.LC74-(.LPIC168+8)
	.word	.LC303-(.LPIC169+8)
	.word	.LC72-(.LPIC170+8)
	.word	.LC306-(.LPIC171+8)
	.word	.LC74-(.LPIC172+8)
	.word	.LC303-(.LPIC173+8)
	.word	.LC72-(.LPIC174+8)
	.word	.LC307-(.LPIC175+8)
	.word	.LC74-(.LPIC176+8)
	.word	.LC303-(.LPIC177+8)
	.word	.LC72-(.LPIC178+8)
	.word	.LC308-(.LPIC179+8)
	.word	.LC74-(.LPIC180+8)
	.word	.LC303-(.LPIC181+8)
	.word	.LC72-(.LPIC182+8)
	.word	.LC309-(.LPIC183+8)
	.word	.LC74-(.LPIC184+8)
	.word	.LC243-(.LPIC185+8)
	.word	.LC72-(.LPIC186+8)
	.word	.LC310-(.LPIC187+8)
	.word	.LC74-(.LPIC188+8)
	.word	.LC243-(.LPIC189+8)
	.word	.LC72-(.LPIC190+8)
	.word	.LC311-(.LPIC191+8)
	.word	.LC74-(.LPIC192+8)
	.word	.LC243-(.LPIC193+8)
	.word	.LC72-(.LPIC194+8)
	.word	.LC312-(.LPIC195+8)
	.word	.LC74-(.LPIC196+8)
	.word	.LC243-(.LPIC197+8)
	.word	.LC72-(.LPIC198+8)
	.word	.LC313-(.LPIC199+8)
	.word	.LC74-(.LPIC200+8)
	.word	.LC243-(.LPIC201+8)
	.word	.LC72-(.LPIC202+8)
	.cfi_endproc
.LFE18:
	.size	EeeP_CreateEEPROMImage, .-EeeP_CreateEEPROMImage
	.align	2
	.global	EeeP_CreateCOM0R20_CBImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_CBImage, %function
EeeP_CreateCOM0R20_CBImage:
.LFB19:
	.loc 1 1846 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
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
	.loc 1 1847 10
	mov	r3, #49
	str	r3, [sp, #4]
	ldr	r3, .L217
.LPIC203:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #25
	ldr	r2, .L217+4
.LPIC204:
	add	r2, pc, r2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EeeP_CreateEEPROMImage(PLT)
	mov	r3, r0
	.loc 1 1855 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L218:
	.align	2
.L217:
	.word	COM0R20_CB_cgf-(.LPIC203+8)
	.word	COM0R20_CB_CfgDesc-(.LPIC204+8)
	.cfi_endproc
.LFE19:
	.size	EeeP_CreateCOM0R20_CBImage, .-EeeP_CreateCOM0R20_CBImage
	.align	2
	.global	EeeP_CreateCOM0R20_MEEPImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_MEEPImage, %function
EeeP_CreateCOM0R20_MEEPImage:
.LFB20:
	.loc 1 1861 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
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
	.loc 1 1862 10
	mov	r3, #18
	str	r3, [sp, #4]
	ldr	r3, .L221
.LPIC205:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #18
	ldr	r2, .L221+4
.LPIC206:
	add	r2, pc, r2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EeeP_CreateEEPROMImage(PLT)
	mov	r3, r0
	.loc 1 1870 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L222:
	.align	2
.L221:
	.word	COM0R20_M_cgf-(.LPIC205+8)
	.word	COM0R20_M_CfgDesc-(.LPIC206+8)
	.cfi_endproc
.LFE20:
	.size	EeeP_CreateCOM0R20_MEEPImage, .-EeeP_CreateCOM0R20_MEEPImage
	.align	2
	.global	EeeP_CreateEeePExtEEPImage
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEeePExtEEPImage, %function
EeeP_CreateEeePExtEEPImage:
.LFB21:
	.loc 1 1876 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
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
	.loc 1 1877 10
	mov	r3, #16
	str	r3, [sp, #4]
	ldr	r3, .L225
.LPIC207:
	add	r3, pc, r3
	str	r3, [sp]
	mov	r3, #25
	ldr	r2, .L225+4
.LPIC208:
	add	r2, pc, r2
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	EeeP_CreateEEPROMImage(PLT)
	mov	r3, r0
	.loc 1 1885 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L226:
	.align	2
.L225:
	.word	EeePExpHdr_cgf-(.LPIC207+8)
	.word	EeePExpEEP_CfgDesc-(.LPIC208+8)
	.cfi_endproc
.LFE21:
	.size	EeeP_CreateEeePExtEEPImage, .-EeeP_CreateEeePExtEEPImage
	.align	2
	.global	EeeP_CreateCOM0R20_CBCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_CBCfg, %function
EeeP_CreateCOM0R20_CBCfg:
.LFB22:
	.loc 1 1891 1
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
	str	r0, [fp, #-8]
	.loc 1 1892 11
	ldr	r2, [fp, #-8]
	mov	r1, #25
	ldr	r3, .L229
.LPIC209:
	add	r3, pc, r3
	mov	r0, r3
	bl	PrintCfgFile(PLT)
	mov	r3, r0
	.loc 1 1897 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L230:
	.align	2
.L229:
	.word	COM0R20_CB_CfgDesc-(.LPIC209+8)
	.cfi_endproc
.LFE22:
	.size	EeeP_CreateCOM0R20_CBCfg, .-EeeP_CreateCOM0R20_CBCfg
	.align	2
	.global	EeeP_CreateCOM0R20_MEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateCOM0R20_MEEPCfg, %function
EeeP_CreateCOM0R20_MEEPCfg:
.LFB23:
	.loc 1 1903 1
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
	str	r0, [fp, #-8]
	.loc 1 1904 11
	ldr	r2, [fp, #-8]
	mov	r1, #18
	ldr	r3, .L233
.LPIC210:
	add	r3, pc, r3
	mov	r0, r3
	bl	PrintCfgFile(PLT)
	mov	r3, r0
	.loc 1 1909 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L234:
	.align	2
.L233:
	.word	COM0R20_M_CfgDesc-(.LPIC210+8)
	.cfi_endproc
.LFE23:
	.size	EeeP_CreateCOM0R20_MEEPCfg, .-EeeP_CreateCOM0R20_MEEPCfg
	.align	2
	.global	EeeP_CreateEeePExtEEPCfg
	.syntax unified
	.arm
	.fpu vfpv3
	.type	EeeP_CreateEeePExtEEPCfg, %function
EeeP_CreateEeePExtEEPCfg:
.LFB24:
	.loc 1 1915 1
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
	str	r0, [fp, #-8]
	.loc 1 1916 11
	ldr	r2, [fp, #-8]
	mov	r1, #25
	ldr	r3, .L237
.LPIC211:
	add	r3, pc, r3
	mov	r0, r3
	bl	PrintCfgFile(PLT)
	mov	r3, r0
	.loc 1 1921 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L238:
	.align	2
.L237:
	.word	EeePExpEEP_CfgDesc-(.LPIC211+8)
	.cfi_endproc
.LFE24:
	.size	EeeP_CreateEeePExtEEPCfg, .-EeeP_CreateEeePExtEEPCfg
.Letext0:
	.file 2 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/bits/alltypes.h"
	.file 3 "../../../include/EApi.h"
	.file 4 "../RangeFunc.h"
	.file 5 "../TokenFunc.h"
	.file 6 "../CfgParse.h"
	.file 7 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdio.h"
	.file 8 "../../../include/EeeP.h"
	.file 9 "../../../include/COM0EEP.h"
	.file 10 "../EeePDB.h"
	.file 11 "../EeePCfg.h"
	.file 12 "../BinFuncs.h"
	.file 13 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/string.h"
	.file 14 "../EeePApp.h"
	.file 15 "/home/hkh/buildroot-2022.02/output/host/arm-buildroot-linux-musleabihf/sysroot/usr/include/stdlib.h"
	.file 16 "../../include/DbgChk.h"
	.file 17 "../Str2Value.h"
	.file 18 "../../include/EApiAHStr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3269
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x27
	.4byte	.LASF596
	.byte	0xc
	.4byte	.LASF597
	.4byte	.LASF598
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x17
	.4byte	0x26
	.uleb128 0xe
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x26
	.uleb128 0x17
	.4byte	0x32
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x13
	.byte	0x8
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2
	.2byte	0x134
	.byte	0x8
	.4byte	0x75
	.uleb128 0x1a
	.ascii	"__x\000"
	.byte	0x2
	.2byte	0x134
	.byte	0x18
	.4byte	0x75
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x17
	.4byte	0x75
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x139
	.byte	0x19
	.4byte	0x58
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x13
	.byte	0x8
	.byte	0x4
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	0x81
	.uleb128 0x17
	.4byte	0x97
	.uleb128 0x22
	.4byte	0x97
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x7
	.byte	0x3e
	.byte	0x14
	.4byte	0x9c
	.uleb128 0xe
	.4byte	.LASF7
	.byte	0x2
	.byte	0x30
	.byte	0x18
	.4byte	0x26
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.4byte	.LASF8
	.uleb128 0x13
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0xe
	.4byte	.LASF10
	.byte	0x2
	.byte	0x72
	.byte	0x19
	.4byte	0xd8
	.uleb128 0x13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x2
	.byte	0x77
	.byte	0x19
	.4byte	0xeb
	.uleb128 0x13
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7c
	.byte	0x19
	.4byte	0x26
	.uleb128 0x13
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0x75
	.uleb128 0x17
	.4byte	0x105
	.uleb128 0x7
	.4byte	0x7c
	.uleb128 0x22
	.4byte	0x10f
	.uleb128 0x17
	.4byte	0x10f
	.uleb128 0x13
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0xe
	.4byte	.LASF17
	.byte	0x3
	.byte	0x91
	.byte	0x12
	.4byte	0xf2
	.uleb128 0x7
	.4byte	0x8e
	.uleb128 0x7
	.4byte	0x13b
	.uleb128 0x2a
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0xc
	.byte	0x4
	.byte	0x26
	.byte	0x10
	.4byte	0x171
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x27
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x28
	.byte	0x10
	.4byte	0x26
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x29
	.byte	0x10
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2e
	.byte	0x2
	.4byte	0x13c
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x8
	.byte	0x4
	.byte	0x2f
	.byte	0x10
	.4byte	0x1a5
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x4
	.byte	0x30
	.byte	0x12
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x4
	.byte	0x31
	.byte	0x12
	.4byte	0x1a5
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x171
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x4
	.byte	0x32
	.byte	0x2
	.4byte	0x17d
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x8
	.byte	0x5
	.byte	0x27
	.byte	0x10
	.4byte	0x1de
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x28
	.byte	0x12
	.4byte	0x105
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x29
	.byte	0x12
	.4byte	0x11e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x5
	.byte	0x2a
	.byte	0x2
	.4byte	0x1b6
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x8
	.byte	0x5
	.byte	0x2c
	.byte	0x10
	.4byte	0x212
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x2d
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x2e
	.byte	0x10
	.4byte	0x212
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x1de
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x5
	.byte	0x2f
	.byte	0x2
	.4byte	0x1ea
	.uleb128 0x17
	.4byte	0x217
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x6
	.byte	0x2a
	.byte	0x1
	.4byte	0x234
	.uleb128 0x18
	.4byte	0x43
	.4byte	0x24d
	.uleb128 0x4
	.4byte	0x136
	.uleb128 0x4
	.4byte	0x136
	.uleb128 0x4
	.4byte	0x136
	.byte	0
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x1c
	.byte	0x6
	.byte	0x32
	.byte	0x10
	.4byte	0x2b6
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x6
	.byte	0x33
	.byte	0xb
	.4byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x6
	.byte	0x34
	.byte	0xb
	.4byte	0x32
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x6
	.byte	0x35
	.byte	0xb
	.4byte	0x32
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x36
	.byte	0xb
	.4byte	0x43
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.4byte	0x8e
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x6
	.byte	0x3c
	.byte	0x15
	.4byte	0x2b6
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0x3d
	.byte	0xb
	.4byte	0x8e
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.4byte	0x228
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x6
	.byte	0x3e
	.byte	0x2
	.4byte	0x24d
	.uleb128 0x2b
	.4byte	.LASF130
	.byte	0x7
	.byte	0x4
	.4byte	0x26
	.byte	0x6
	.byte	0x44
	.byte	0xe
	.4byte	0x2e6
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0x47
	.byte	0x2
	.4byte	0x2c7
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x38
	.byte	0x6
	.byte	0x4a
	.byte	0x10
	.4byte	0x368
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x6
	.byte	0x4b
	.byte	0xf
	.4byte	0x2e6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x6
	.byte	0x4c
	.byte	0x11
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0x4d
	.byte	0x11
	.4byte	0x26
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0x4e
	.byte	0x11
	.4byte	0x2bb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x6
	.byte	0x4f
	.byte	0x11
	.4byte	0x32
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x6
	.byte	0x50
	.byte	0x11
	.4byte	0x32
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x6
	.byte	0x51
	.byte	0x11
	.4byte	0x8e
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0x52
	.byte	0x11
	.4byte	0x8e
	.byte	0x34
	.byte	0
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x6
	.byte	0x53
	.byte	0x2
	.4byte	0x2f2
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x10
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.4byte	0x3b6
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x6
	.byte	0x60
	.byte	0x12
	.4byte	0x44a
	.byte	0
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x6
	.byte	0x61
	.byte	0x12
	.4byte	0x463
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x6
	.byte	0x62
	.byte	0x12
	.4byte	0x481
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x49f
	.byte	0xc
	.byte	0
	.uleb128 0x18
	.4byte	0x125
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0x105
	.byte	0
	.uleb128 0x7
	.4byte	0x3d4
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x38
	.byte	0x6
	.byte	0x56
	.byte	0x10
	.4byte	0x44a
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x6
	.byte	0x57
	.byte	0xf
	.4byte	0x2e6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x6
	.byte	0x58
	.byte	0x10
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0x59
	.byte	0x11
	.4byte	0x26
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x6
	.byte	0x5c
	.byte	0x10
	.4byte	0x2bb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x6
	.byte	0x5d
	.byte	0xa
	.4byte	0x32
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x6
	.byte	0x5e
	.byte	0xa
	.4byte	0x32
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x4a4
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x6
	.byte	0x65
	.byte	0x14
	.4byte	0x8e
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.4byte	0x3b6
	.uleb128 0x18
	.4byte	0x125
	.4byte	0x463
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x8e
	.byte	0
	.uleb128 0x7
	.4byte	0x44f
	.uleb128 0x18
	.4byte	0x125
	.4byte	0x481
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x105
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x7
	.4byte	0x468
	.uleb128 0x18
	.4byte	0x125
	.4byte	0x49f
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x7
	.4byte	0x486
	.uleb128 0x7
	.4byte	0x374
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x6
	.byte	0x66
	.byte	0x2
	.4byte	0x3d4
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x6
	.byte	0x6a
	.byte	0x1b
	.4byte	0x374
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xc
	.byte	0x6
	.byte	0x6c
	.byte	0x10
	.4byte	0x4f6
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6d
	.byte	0x10
	.4byte	0x26
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6e
	.byte	0x10
	.4byte	0x26
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6f
	.byte	0x10
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	.LASF77
	.byte	0x6
	.byte	0x70
	.byte	0x2
	.4byte	0x4c1
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0x8e
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x6
	.byte	0x8f
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x6
	.byte	0x91
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x6
	.byte	0x94
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x6
	.byte	0x95
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x6
	.byte	0x96
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x6
	.byte	0x97
	.byte	0x14
	.4byte	0x4b5
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x6
	.byte	0x9a
	.byte	0x1b
	.4byte	0x1aa
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x6
	.byte	0x9b
	.byte	0x1b
	.4byte	0x1aa
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x6
	.byte	0x9c
	.byte	0x1b
	.4byte	0x1aa
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x6
	.byte	0x9e
	.byte	0x19
	.4byte	0x217
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x38
	.byte	0x6
	.byte	0xa0
	.byte	0x10
	.4byte	0x608
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x6
	.byte	0xa1
	.byte	0xf
	.4byte	0x2e6
	.byte	0
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x6
	.byte	0xa2
	.byte	0x11
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0xa3
	.byte	0x11
	.4byte	0x26
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0xa6
	.byte	0x12
	.4byte	0x2bb
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0x6
	.byte	0xa7
	.byte	0x12
	.4byte	0x32
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x6
	.byte	0xa9
	.byte	0x12
	.4byte	0x32
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x6
	.byte	0xaa
	.byte	0x15
	.4byte	0x621
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0xab
	.byte	0x19
	.4byte	0x8e
	.byte	0x34
	.byte	0
	.uleb128 0x18
	.4byte	0x125
	.4byte	0x61c
	.uleb128 0x4
	.4byte	0x61c
	.uleb128 0x4
	.4byte	0x8e
	.byte	0
	.uleb128 0x7
	.4byte	0x592
	.uleb128 0x7
	.4byte	0x608
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x6
	.byte	0xac
	.byte	0x2
	.4byte	0x592
	.uleb128 0x2c
	.4byte	.LASF122
	.byte	0x38
	.byte	0x6
	.byte	0xae
	.byte	0xf
	.4byte	0x662
	.uleb128 0x2d
	.ascii	"Gen\000"
	.byte	0x6
	.byte	0xaf
	.byte	0x12
	.4byte	0x368
	.uleb128 0x23
	.4byte	.LASF95
	.byte	0xb0
	.byte	0x12
	.4byte	0x626
	.uleb128 0x23
	.4byte	.LASF96
	.byte	0xb1
	.byte	0x14
	.4byte	0x4a9
	.byte	0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x6
	.byte	0xb3
	.byte	0x2
	.4byte	0x632
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x6
	.byte	0xdb
	.byte	0x15
	.4byte	0x4f6
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x6
	.byte	0xdc
	.byte	0x15
	.4byte	0x4f6
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x6
	.byte	0x8
	.byte	0x6b
	.byte	0x10
	.4byte	0x6d5
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0x8
	.byte	0x6c
	.byte	0x11
	.4byte	0xcc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0x8
	.byte	0x73
	.byte	0x11
	.4byte	0x6d5
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x8
	.byte	0x75
	.byte	0x11
	.4byte	0xcc
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0x8
	.byte	0x7f
	.byte	0x11
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x8
	.byte	0x83
	.byte	0x11
	.4byte	0xcc
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x6e5
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x8
	.byte	0xa6
	.byte	0x2
	.4byte	0x686
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x6
	.byte	0x8
	.byte	0xb2
	.byte	0x10
	.4byte	0x733
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x8
	.byte	0xb3
	.byte	0x11
	.4byte	0x6d5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF109
	.byte	0x8
	.byte	0xb4
	.byte	0x11
	.4byte	0x6d5
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x8
	.byte	0xb5
	.byte	0x11
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x8
	.byte	0xb6
	.byte	0x11
	.4byte	0xcc
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x8
	.byte	0xb7
	.byte	0x2
	.4byte	0x6f1
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x10
	.byte	0x8
	.byte	0xbe
	.byte	0x10
	.4byte	0x774
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x8
	.byte	0xbf
	.byte	0x11
	.4byte	0x6e5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x774
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x8
	.byte	0xc2
	.byte	0x11
	.4byte	0x733
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x784
	.uleb128 0xa
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x8
	.byte	0xc3
	.byte	0x2
	.4byte	0x73f
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x3
	.byte	0x8
	.byte	0xcc
	.byte	0x10
	.4byte	0x7b8
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x8
	.byte	0xcd
	.byte	0xf
	.4byte	0xcc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x8
	.byte	0xce
	.byte	0xf
	.4byte	0x6d5
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0x8
	.byte	0xd2
	.byte	0x2
	.4byte	0x790
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x100
	.4byte	0x7e3
	.uleb128 0x1c
	.ascii	"b\000"
	.2byte	0x101
	.4byte	0x6d5
	.uleb128 0x1c
	.ascii	"n\000"
	.2byte	0x102
	.4byte	0xdf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x103
	.byte	0x2
	.4byte	0x7c4
	.uleb128 0x24
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x104
	.4byte	0x80f
	.uleb128 0x1c
	.ascii	"b\000"
	.2byte	0x105
	.4byte	0x774
	.uleb128 0x1c
	.ascii	"n\000"
	.2byte	0x106
	.4byte	0xf2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x107
	.byte	0x2
	.4byte	0x7f0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x82c
	.uleb128 0xa
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x10
	.byte	0x8
	.2byte	0x10c
	.byte	0x10
	.4byte	0x85f
	.uleb128 0x1a
	.ascii	"a\000"
	.byte	0x8
	.2byte	0x10d
	.byte	0x12
	.4byte	0x80f
	.byte	0
	.uleb128 0x1a
	.ascii	"b\000"
	.byte	0x8
	.2byte	0x10e
	.byte	0x12
	.4byte	0x85f
	.byte	0x4
	.uleb128 0x1a
	.ascii	"c\000"
	.byte	0x8
	.2byte	0x10f
	.byte	0x12
	.4byte	0x81c
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x7e3
	.4byte	0x86f
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x110
	.byte	0x2
	.4byte	0x82c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x112
	.byte	0x17
	.4byte	0x7e3
	.uleb128 0x1f
	.4byte	.LASF131
	.4byte	0x26
	.2byte	0x118
	.4byte	0x995
	.uleb128 0x5
	.4byte	.LASF132
	.byte	0
	.uleb128 0x5
	.4byte	.LASF133
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF134
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF135
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF136
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF141
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF142
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF143
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF145
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF146
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0xf
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF149
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF150
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF151
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF152
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF154
	.byte	0x16
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0x17
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x19
	.uleb128 0x5
	.4byte	.LASF158
	.byte	0x1a
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0x1b
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF161
	.byte	0x1d
	.uleb128 0x5
	.4byte	.LASF162
	.byte	0x1e
	.uleb128 0x5
	.4byte	.LASF163
	.byte	0x1f
	.uleb128 0x5
	.4byte	.LASF164
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0x21
	.uleb128 0x5
	.4byte	.LASF166
	.byte	0x22
	.uleb128 0x5
	.4byte	.LASF167
	.byte	0x23
	.uleb128 0x5
	.4byte	.LASF168
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x25
	.uleb128 0x5
	.4byte	.LASF170
	.byte	0x26
	.uleb128 0x5
	.4byte	.LASF171
	.byte	0x27
	.uleb128 0x5
	.4byte	.LASF172
	.byte	0x7e
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x7f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x8
	.2byte	0x144
	.byte	0x11
	.4byte	0xcc
	.uleb128 0xd
	.4byte	.LASF175
	.byte	0x7
	.byte	0x8
	.2byte	0x146
	.byte	0x10
	.4byte	0x9e9
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x147
	.byte	0x16
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x148
	.byte	0x16
	.4byte	0x995
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x149
	.byte	0x16
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x150
	.byte	0x16
	.4byte	0x87c
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x154
	.byte	0x2
	.4byte	0x9a2
	.uleb128 0xd
	.4byte	.LASF181
	.byte	0x1e
	.byte	0x8
	.2byte	0x15b
	.byte	0x10
	.4byte	0xa83
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x15c
	.byte	0x15
	.4byte	0x9e9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x15d
	.byte	0xd
	.4byte	0xcc
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x15e
	.byte	0xd
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x15f
	.byte	0xd
	.4byte	0xcc
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x160
	.byte	0xd
	.4byte	0xcc
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x8
	.2byte	0x161
	.byte	0x10
	.4byte	0x86f
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x162
	.byte	0xd
	.4byte	0xcc
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x163
	.byte	0xd
	.4byte	0xcc
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x164
	.byte	0xd
	.4byte	0xcc
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x165
	.byte	0x2
	.4byte	0x9f6
	.uleb128 0x1f
	.4byte	.LASF192
	.4byte	0x26
	.2byte	0x16d
	.4byte	0xae8
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0
	.uleb128 0x5
	.4byte	.LASF194
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF195
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF196
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF197
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF199
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF200
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF201
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF202
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF203
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF204
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x17b
	.byte	0x11
	.4byte	0xcc
	.uleb128 0xd
	.4byte	.LASF206
	.byte	0x14
	.byte	0x8
	.2byte	0x17c
	.byte	0x10
	.4byte	0xbac
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x17d
	.byte	0x15
	.4byte	0x9e9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x17e
	.byte	0xd
	.4byte	0xcc
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x8
	.2byte	0x17f
	.byte	0xd
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x180
	.byte	0xd
	.4byte	0xcc
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x181
	.byte	0xd
	.4byte	0xcc
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0x8
	.2byte	0x182
	.byte	0xd
	.4byte	0xcc
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x8
	.2byte	0x183
	.byte	0xd
	.4byte	0xcc
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0x8
	.2byte	0x19c
	.byte	0xd
	.4byte	0xcc
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0x8
	.2byte	0x19d
	.byte	0x14
	.4byte	0x87c
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0x8
	.2byte	0x19e
	.byte	0x19
	.4byte	0xae8
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x8
	.2byte	0x19f
	.byte	0xd
	.4byte	0xcc
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0x8
	.2byte	0x1a3
	.byte	0x14
	.4byte	0xbac
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.4byte	0x87c
	.4byte	0xbbc
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x1a4
	.byte	0x2
	.4byte	0xaf5
	.uleb128 0xd
	.4byte	.LASF216
	.byte	0x3
	.byte	0x8
	.2byte	0x1ae
	.byte	0x10
	.4byte	0xc02
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x1af
	.byte	0xb
	.4byte	0xcc
	.byte	0
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x1b3
	.byte	0xb
	.4byte	0xcc
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x1b9
	.byte	0xb
	.4byte	0xcc
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x1be
	.byte	0x2
	.4byte	0xbc9
	.uleb128 0x1f
	.4byte	.LASF221
	.4byte	0x26
	.2byte	0x1bf
	.4byte	0xcaf
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF223
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF229
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF233
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF234
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF235
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF236
	.byte	0xf
	.uleb128 0x5
	.4byte	.LASF237
	.byte	0x11
	.uleb128 0x5
	.4byte	.LASF238
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF239
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF240
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF241
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF242
	.byte	0x16
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x17
	.uleb128 0x5
	.4byte	.LASF244
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF245
	.byte	0x19
	.byte	0
	.uleb128 0xb
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x1d9
	.byte	0x11
	.4byte	0xcc
	.uleb128 0xd
	.4byte	.LASF247
	.byte	0x1b
	.byte	0x8
	.2byte	0x1db
	.byte	0x10
	.4byte	0xd81
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x1dc
	.byte	0x15
	.4byte	0x9e9
	.byte	0
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x1dd
	.byte	0xd
	.4byte	0xcc
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x1de
	.byte	0x14
	.4byte	0xcaf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x1df
	.byte	0xd
	.4byte	0xcc
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x1e0
	.byte	0xd
	.4byte	0xcc
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF248
	.byte	0x8
	.2byte	0x1e1
	.byte	0xd
	.4byte	0xcc
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x1e2
	.byte	0xd
	.4byte	0x774
	.byte	0xc
	.uleb128 0x1a
	.ascii	"OEM\000"
	.byte	0x8
	.2byte	0x1e3
	.byte	0x13
	.4byte	0x80f
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF249
	.byte	0x8
	.2byte	0x1e6
	.byte	0xd
	.4byte	0xcc
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x1e9
	.byte	0xd
	.4byte	0xcc
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF251
	.byte	0x8
	.2byte	0x1ed
	.byte	0xd
	.4byte	0xcc
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF252
	.byte	0x8
	.2byte	0x1ee
	.byte	0xd
	.4byte	0xcc
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF253
	.byte	0x8
	.2byte	0x1ef
	.byte	0x11
	.4byte	0xd81
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.4byte	0xc02
	.4byte	0xd91
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF254
	.byte	0x8
	.2byte	0x1f0
	.byte	0x2
	.4byte	0xcbc
	.uleb128 0xd
	.4byte	.LASF255
	.byte	0x5
	.byte	0x8
	.2byte	0x1f7
	.byte	0x10
	.4byte	0xdd7
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x1f8
	.byte	0x13
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF256
	.byte	0x8
	.2byte	0x1f9
	.byte	0xf
	.4byte	0xcc
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF257
	.byte	0x8
	.2byte	0x200
	.byte	0xf
	.4byte	0xdd7
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xde7
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF258
	.byte	0x8
	.2byte	0x206
	.byte	0x2
	.4byte	0xd9e
	.uleb128 0xd
	.4byte	.LASF259
	.byte	0x6
	.byte	0x8
	.2byte	0x20c
	.byte	0x10
	.4byte	0xe2d
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x20d
	.byte	0x13
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x20e
	.byte	0x13
	.4byte	0x6d5
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF260
	.byte	0x8
	.2byte	0x212
	.byte	0x13
	.4byte	0xcc
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF261
	.byte	0x8
	.2byte	0x214
	.byte	0x2
	.4byte	0xdf4
	.uleb128 0xd
	.4byte	.LASF262
	.byte	0x7
	.byte	0x8
	.2byte	0x21c
	.byte	0x10
	.4byte	0xe81
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x21d
	.byte	0x13
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF263
	.byte	0x8
	.2byte	0x21e
	.byte	0x13
	.4byte	0x6d5
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF264
	.byte	0x8
	.2byte	0x21f
	.byte	0x13
	.4byte	0xcc
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x229
	.byte	0x13
	.4byte	0xcc
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF265
	.byte	0x8
	.2byte	0x23f
	.byte	0x2
	.4byte	0xe3a
	.uleb128 0x11
	.4byte	.LASF266
	.byte	0x31
	.byte	0x9
	.byte	0x77
	.byte	0x10
	.4byte	0xf49
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x9
	.byte	0x78
	.byte	0x11
	.4byte	0x6e5
	.byte	0
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x9
	.byte	0x79
	.byte	0x11
	.4byte	0x774
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x9
	.byte	0x7b
	.byte	0x11
	.4byte	0x733
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF267
	.byte	0x9
	.byte	0x7c
	.byte	0x11
	.4byte	0xcc
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF103
	.byte	0x9
	.byte	0x7d
	.byte	0x11
	.4byte	0xcc
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0x9
	.byte	0x86
	.byte	0x11
	.4byte	0xcc
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0x9
	.byte	0x97
	.byte	0x11
	.4byte	0xcc
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF270
	.byte	0x9
	.byte	0xc8
	.byte	0x11
	.4byte	0xcc
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF271
	.byte	0x9
	.byte	0xe0
	.byte	0x11
	.4byte	0xcc
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x10f
	.byte	0x11
	.4byte	0xcc
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x13a
	.byte	0x11
	.4byte	0x6d5
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF274
	.byte	0x9
	.2byte	0x17c
	.byte	0x11
	.4byte	0x81c
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF275
	.byte	0x9
	.2byte	0x18d
	.byte	0x11
	.4byte	0xf49
	.byte	0x21
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0xf59
	.uleb128 0xa
	.4byte	0x26
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x1a5
	.byte	0x2
	.4byte	0xe8e
	.uleb128 0xd
	.4byte	.LASF277
	.byte	0x12
	.byte	0x9
	.2byte	0x1ff
	.byte	0x10
	.4byte	0xfbb
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x200
	.byte	0x11
	.4byte	0x6e5
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x201
	.byte	0x11
	.4byte	0x774
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x203
	.byte	0x11
	.4byte	0x733
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF278
	.byte	0x9
	.2byte	0x204
	.byte	0x11
	.4byte	0xcc
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x205
	.byte	0x11
	.4byte	0xcc
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x212
	.byte	0x2
	.4byte	0xf66
	.uleb128 0xd
	.4byte	.LASF280
	.byte	0x6
	.byte	0x9
	.2byte	0x21c
	.byte	0x10
	.4byte	0x100f
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x21d
	.byte	0x14
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF282
	.byte	0x9
	.2byte	0x21e
	.byte	0xd
	.4byte	0xcc
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x21f
	.byte	0xd
	.4byte	0xcc
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x22d
	.byte	0xd
	.4byte	0xdd7
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x23a
	.byte	0x2
	.4byte	0xfc8
	.uleb128 0xd
	.4byte	.LASF286
	.byte	0x8
	.byte	0x9
	.2byte	0x241
	.byte	0x10
	.4byte	0x1063
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x242
	.byte	0x14
	.4byte	0x7b8
	.byte	0
	.uleb128 0x1
	.4byte	.LASF287
	.byte	0x9
	.2byte	0x243
	.byte	0xd
	.4byte	0xcc
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x26c
	.byte	0xd
	.4byte	0x6d5
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x279
	.byte	0xd
	.4byte	0x6d5
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x286
	.byte	0x2
	.4byte	0x101c
	.uleb128 0xe
	.4byte	.LASF291
	.byte	0xa
	.byte	0x25
	.byte	0x10
	.4byte	0x8e
	.uleb128 0x7
	.4byte	0x7b8
	.uleb128 0xc
	.4byte	.LASF292
	.byte	0xb
	.byte	0x45
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF293
	.byte	0xb
	.byte	0x46
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF294
	.byte	0xb
	.byte	0x47
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF295
	.byte	0xb
	.byte	0x48
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF296
	.byte	0xb
	.byte	0x49
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF297
	.byte	0xb
	.byte	0x4a
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF298
	.byte	0xb
	.byte	0x4b
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF299
	.byte	0xb
	.byte	0x4c
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF300
	.byte	0xb
	.byte	0x4d
	.byte	0x18
	.4byte	0x217
	.uleb128 0xc
	.4byte	.LASF301
	.byte	0xb
	.byte	0x4e
	.byte	0x18
	.4byte	0x217
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1104
	.uleb128 0x2e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF302
	.byte	0xb
	.byte	0x50
	.byte	0x14
	.4byte	0x10f9
	.uleb128 0xc
	.4byte	.LASF303
	.byte	0xb
	.byte	0x51
	.byte	0x14
	.4byte	0x10f9
	.uleb128 0x20
	.4byte	0x54a
	.byte	0x2d
	.byte	0xd
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0PCIe_Element_funcs
	.uleb128 0x1b
	.4byte	.LASF304
	.byte	0x2e
	.byte	0xd
	.4byte	0x4b5
	.uleb128 0x5
	.byte	0x3
	.4byte	SMBIOS_CE_Element_funcs
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x114a
	.uleb128 0xa
	.4byte	0x26
	.byte	0x29
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF305
	.byte	0x30
	.byte	0xe
	.4byte	0x113a
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosStructureTypesTokens
	.uleb128 0x20
	.4byte	0x1081
	.byte	0x5c
	.byte	0x1
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosStructureTypesTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1178
	.uleb128 0xa
	.4byte	0x26
	.byte	0xb
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF306
	.byte	0x5e
	.byte	0xe
	.4byte	0x1168
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosBoardTypesTokens
	.uleb128 0x20
	.4byte	0x108d
	.byte	0x6c
	.byte	0x1
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosBoardTypesTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x11a6
	.uleb128 0xa
	.4byte	0x26
	.byte	0x5
	.byte	0
	.uleb128 0x25
	.4byte	0x1110
	.byte	0xdd
	.4byte	0x1196
	.uleb128 0x5
	.byte	0x3
	.4byte	PCIeLaneWidths
	.uleb128 0x1b
	.4byte	.LASF307
	.byte	0xe5
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	PCIeLaneWidthsTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x11d7
	.uleb128 0xa
	.4byte	0x26
	.byte	0x2
	.byte	0
	.uleb128 0x25
	.4byte	0x1104
	.byte	0xe7
	.4byte	0x11c7
	.uleb128 0x5
	.byte	0x3
	.4byte	PCIeGeneration
	.uleb128 0x1b
	.4byte	.LASF308
	.byte	0xec
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	PCIeGenerationTL
	.uleb128 0x2
	.4byte	.LASF309
	.2byte	0x157
	.byte	0xe
	.4byte	0x11c7
	.uleb128 0x5
	.byte	0x3
	.4byte	SasTokens
	.uleb128 0x15
	.4byte	0x10ed
	.2byte	0x15c
	.uleb128 0x5
	.byte	0x3
	.4byte	SasTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1227
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF310
	.2byte	0x15e
	.byte	0xe
	.4byte	0x1217
	.uleb128 0x5
	.byte	0x3
	.4byte	ImpNotImpTokens
	.uleb128 0x15
	.4byte	0x10e1
	.2byte	0x162
	.uleb128 0x5
	.byte	0x3
	.4byte	ImpNotImpTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1256
	.uleb128 0xa
	.4byte	0x26
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF311
	.2byte	0x164
	.byte	0xe
	.4byte	0x1246
	.uleb128 0x5
	.byte	0x3
	.4byte	DDI1Tokens
	.uleb128 0x15
	.4byte	0x10c9
	.2byte	0x16b
	.uleb128 0x5
	.byte	0x3
	.4byte	DDI1TL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1285
	.uleb128 0xa
	.4byte	0x26
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF312
	.2byte	0x16d
	.byte	0xe
	.4byte	0x1275
	.uleb128 0x5
	.byte	0x3
	.4byte	DDI2Tokens
	.uleb128 0x2
	.4byte	.LASF313
	.2byte	0x173
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	DDI2TL
	.uleb128 0x2
	.4byte	.LASF314
	.2byte	0x175
	.byte	0xe
	.4byte	0x1196
	.uleb128 0x5
	.byte	0x3
	.4byte	DisplayInterfaceTokens
	.uleb128 0x15
	.4byte	0x10d5
	.2byte	0x17d
	.uleb128 0x5
	.byte	0x3
	.4byte	DisplayInterfaceTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x12d8
	.uleb128 0xa
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF315
	.2byte	0x17f
	.byte	0xe
	.4byte	0x12c8
	.uleb128 0x5
	.byte	0x3
	.4byte	I2CBusTokens
	.uleb128 0x15
	.4byte	0x10bd
	.2byte	0x18a
	.uleb128 0x5
	.byte	0x3
	.4byte	I2CBusTL
	.uleb128 0x2
	.4byte	.LASF316
	.2byte	0x18c
	.byte	0xe
	.4byte	0x1217
	.uleb128 0x5
	.byte	0x3
	.4byte	StandardExtendedTokens
	.uleb128 0x2
	.4byte	.LASF317
	.2byte	0x190
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	StandardExtendedTL
	.uleb128 0x2
	.4byte	.LASF318
	.2byte	0x194
	.byte	0xe
	.4byte	0x1246
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosModuleFeatureFlagsTokens
	.uleb128 0x15
	.4byte	0x1099
	.2byte	0x19b
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiSmbiosModuleFeatureFlagsTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x134a
	.uleb128 0xa
	.4byte	0x26
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF319
	.2byte	0x19d
	.byte	0xe
	.4byte	0x133a
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosChassisTypesTokens
	.uleb128 0x15
	.4byte	0x10a5
	.2byte	0x1b7
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosChassisTypesTL
	.uleb128 0x9
	.4byte	0x171
	.4byte	0x1379
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF320
	.2byte	0x1b9
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidHandles
	.uleb128 0x2
	.4byte	.LASF321
	.2byte	0x1bc
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidHandlesDesc
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x13ad
	.uleb128 0xa
	.4byte	0x26
	.byte	0xe
	.byte	0
	.uleb128 0x2
	.4byte	.LASF322
	.2byte	0x1be
	.byte	0xe
	.4byte	0x139d
	.uleb128 0x5
	.byte	0x3
	.4byte	IRQTokens
	.uleb128 0x15
	.4byte	0x10b1
	.2byte	0x1cf
	.uleb128 0x5
	.byte	0x3
	.4byte	IRQTL
	.uleb128 0xd
	.4byte	.LASF323
	.byte	0x5c
	.byte	0x1
	.2byte	0x1d1
	.byte	0x10
	.4byte	0x149f
	.uleb128 0x1
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1d2
	.byte	0x11
	.4byte	0x149f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1d3
	.byte	0x11
	.4byte	0x14af
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1d4
	.byte	0x11
	.4byte	0x14af
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1d5
	.byte	0x11
	.4byte	0x14af
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1d6
	.byte	0x11
	.4byte	0x14af
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x1d7
	.byte	0x11
	.4byte	0x14af
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x1d8
	.byte	0x11
	.4byte	0x14bf
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x1d9
	.byte	0x11
	.4byte	0x14af
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x1da
	.byte	0x11
	.4byte	0x149f
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x1db
	.byte	0x11
	.4byte	0xdd7
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x1dc
	.byte	0x11
	.4byte	0x14cf
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x1dd
	.byte	0x11
	.4byte	0x14cf
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x1de
	.byte	0x11
	.4byte	0xdd7
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x1df
	.byte	0x11
	.4byte	0x14df
	.byte	0x32
	.byte	0
	.uleb128 0x9
	.4byte	0xdf
	.4byte	0x14af
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x105
	.4byte	0x14bf
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x14cf
	.uleb128 0xa
	.4byte	0x26
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x11e
	.4byte	0x14df
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xdf
	.4byte	0x14ef
	.uleb128 0xa
	.4byte	0x26
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x1e0
	.byte	0x2
	.4byte	0x13cc
	.uleb128 0x2
	.4byte	.LASF339
	.2byte	0x1e2
	.byte	0x10
	.4byte	0x14ef
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0_SMBIOS_Module
	.uleb128 0x2
	.4byte	.LASF340
	.2byte	0x1e3
	.byte	0x10
	.4byte	0x14ef
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0_SMBIOS_Carrier
	.uleb128 0xd
	.4byte	.LASF341
	.byte	0x38
	.byte	0x1
	.2byte	0x1e6
	.byte	0x10
	.4byte	0x15c9
	.uleb128 0x1
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1e7
	.byte	0x11
	.4byte	0x149f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1e8
	.byte	0x11
	.4byte	0x14af
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1e9
	.byte	0x11
	.4byte	0x14af
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1ea
	.byte	0x11
	.4byte	0x14af
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1eb
	.byte	0x11
	.4byte	0x14af
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x1ec
	.byte	0x11
	.4byte	0x15c9
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x1ed
	.byte	0x11
	.4byte	0x14af
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x1ee
	.byte	0x11
	.4byte	0x14cf
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x1ef
	.byte	0x11
	.4byte	0x14cf
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x1f0
	.byte	0x11
	.4byte	0xdd7
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x1f1
	.byte	0x11
	.4byte	0x14af
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.4byte	0x86f
	.4byte	0x15d9
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x1f2
	.byte	0x2
	.4byte	0x1520
	.uleb128 0x2
	.4byte	.LASF346
	.2byte	0x1f4
	.byte	0x10
	.4byte	0x15d9
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0_SMBIOS_System
	.uleb128 0xd
	.4byte	.LASF347
	.byte	0x68
	.byte	0x1
	.2byte	0x1f6
	.byte	0x10
	.4byte	0x16bd
	.uleb128 0x1
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x1f7
	.byte	0x11
	.4byte	0x149f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x1f8
	.byte	0x11
	.4byte	0x14af
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x1f9
	.byte	0x11
	.4byte	0xdd7
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1fa
	.byte	0x11
	.4byte	0x14af
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1fb
	.byte	0x11
	.4byte	0x14af
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x1fc
	.byte	0x11
	.4byte	0x14af
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x1fd
	.byte	0x11
	.4byte	0x16bd
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x1fe
	.byte	0x11
	.4byte	0xdd7
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x1ff
	.byte	0x11
	.4byte	0xdd7
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x200
	.byte	0x11
	.4byte	0x14cf
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x201
	.byte	0x11
	.4byte	0x14cf
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x202
	.byte	0x11
	.4byte	0xdd7
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x203
	.byte	0x11
	.4byte	0x16cd
	.byte	0x29
	.byte	0
	.uleb128 0x9
	.4byte	0xf2
	.4byte	0x16cd
	.uleb128 0xa
	.4byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xc02
	.4byte	0x16dd
	.uleb128 0xa
	.4byte	0x26
	.byte	0x13
	.byte	0
	.uleb128 0xb
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x204
	.byte	0x2
	.4byte	0x15f8
	.uleb128 0x2
	.4byte	.LASF354
	.2byte	0x206
	.byte	0x11
	.4byte	0x16dd
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0_SMBIOS_Chassis
	.uleb128 0xd
	.4byte	.LASF355
	.byte	0x14
	.byte	0x1
	.2byte	0x208
	.byte	0x10
	.4byte	0x1751
	.uleb128 0x1
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x209
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x20a
	.byte	0x11
	.4byte	0x14af
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x20b
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x20c
	.byte	0x11
	.4byte	0x14cf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x20d
	.byte	0x11
	.4byte	0xdd7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x20e
	.byte	0x2
	.4byte	0x16fc
	.uleb128 0x2
	.4byte	.LASF359
	.2byte	0x210
	.byte	0xb
	.4byte	0x1751
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_LFP0_Cfg
	.uleb128 0x2
	.4byte	.LASF360
	.2byte	0x211
	.byte	0xb
	.4byte	0x1751
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_LFP1_Cfg
	.uleb128 0x2
	.4byte	.LASF361
	.2byte	0x212
	.byte	0xb
	.4byte	0x1751
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_LFP2_Cfg
	.uleb128 0x2
	.4byte	.LASF362
	.2byte	0x213
	.byte	0xb
	.4byte	0x1751
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_LFP3_Cfg
	.uleb128 0xd
	.4byte	.LASF363
	.byte	0x14
	.byte	0x1
	.2byte	0x215
	.byte	0x10
	.4byte	0x1809
	.uleb128 0x1
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x216
	.byte	0x11
	.4byte	0x14af
	.byte	0
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x217
	.byte	0x11
	.4byte	0x149f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x218
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x219
	.byte	0x11
	.4byte	0x14cf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x21a
	.byte	0x11
	.4byte	0xdd7
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x21b
	.byte	0x11
	.4byte	0xdd7
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x21c
	.byte	0x2
	.4byte	0x17a6
	.uleb128 0x2
	.4byte	.LASF367
	.2byte	0x21e
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock0_Cfg
	.uleb128 0x2
	.4byte	.LASF368
	.2byte	0x21f
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock1_Cfg
	.uleb128 0x2
	.4byte	.LASF369
	.2byte	0x220
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock2_Cfg
	.uleb128 0x2
	.4byte	.LASF370
	.2byte	0x221
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock3_Cfg
	.uleb128 0x2
	.4byte	.LASF371
	.2byte	0x222
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock4_Cfg
	.uleb128 0x2
	.4byte	.LASF372
	.2byte	0x223
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock5_Cfg
	.uleb128 0x2
	.4byte	.LASF373
	.2byte	0x224
	.byte	0x13
	.4byte	0x1809
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_VendorBlock6_Cfg
	.uleb128 0xd
	.4byte	.LASF374
	.byte	0x14
	.byte	0x1
	.2byte	0x226
	.byte	0x10
	.4byte	0x18e9
	.uleb128 0x1
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x227
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x228
	.byte	0x11
	.4byte	0x14af
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x229
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x22a
	.byte	0x11
	.4byte	0x14cf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x22b
	.byte	0x11
	.4byte	0xdd7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x22c
	.byte	0x2
	.4byte	0x1894
	.uleb128 0x2
	.4byte	.LASF377
	.2byte	0x22e
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock0_Cfg
	.uleb128 0x2
	.4byte	.LASF378
	.2byte	0x22f
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock1_Cfg
	.uleb128 0x2
	.4byte	.LASF379
	.2byte	0x230
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock2_Cfg
	.uleb128 0x2
	.4byte	.LASF380
	.2byte	0x231
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock3_Cfg
	.uleb128 0x2
	.4byte	.LASF381
	.2byte	0x232
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock4_Cfg
	.uleb128 0x2
	.4byte	.LASF382
	.2byte	0x233
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock5_Cfg
	.uleb128 0x2
	.4byte	.LASF383
	.2byte	0x234
	.byte	0x13
	.4byte	0x18e9
	.uleb128 0x5
	.byte	0x3
	.4byte	EeeP_CustomBlock6_Cfg
	.uleb128 0xd
	.4byte	.LASF384
	.byte	0x10
	.byte	0x1
	.2byte	0x236
	.byte	0x10
	.4byte	0x19d7
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x237
	.byte	0x11
	.4byte	0x149f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x238
	.byte	0x11
	.4byte	0xdd7
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x239
	.byte	0x11
	.4byte	0xdd7
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x23a
	.byte	0x11
	.4byte	0x14cf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x23b
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x23c
	.byte	0x11
	.4byte	0xdd7
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x23d
	.byte	0x2
	.4byte	0x1974
	.uleb128 0x2
	.4byte	.LASF389
	.2byte	0x23f
	.byte	0x14
	.4byte	0x19d7
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExtI2CDevice0
	.uleb128 0x2
	.4byte	.LASF390
	.2byte	0x240
	.byte	0x14
	.4byte	0x19d7
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExtI2CDevice1
	.uleb128 0xd
	.4byte	.LASF391
	.byte	0x10
	.byte	0x1
	.2byte	0x242
	.byte	0x10
	.4byte	0x1a4f
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x243
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x244
	.byte	0x11
	.4byte	0x14cf
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x245
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x246
	.byte	0x11
	.4byte	0xdd7
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x247
	.byte	0x2
	.4byte	0x1a08
	.uleb128 0x2
	.4byte	.LASF393
	.2byte	0x249
	.byte	0x11
	.4byte	0x1a4f
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePI2CDevice
	.uleb128 0xd
	.4byte	.LASF394
	.byte	0x94
	.byte	0x1
	.2byte	0x24b
	.byte	0x10
	.4byte	0x1b4f
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x24c
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x24d
	.byte	0x11
	.4byte	0x149f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x24e
	.byte	0x11
	.4byte	0x149f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x24f
	.byte	0x11
	.4byte	0xdd7
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x250
	.byte	0x11
	.4byte	0xdd7
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x251
	.byte	0x11
	.4byte	0xdd7
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x252
	.byte	0x11
	.4byte	0xdd7
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x253
	.byte	0x11
	.4byte	0xdd7
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x254
	.byte	0x11
	.4byte	0xdd7
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x255
	.byte	0x11
	.4byte	0xdd7
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x256
	.byte	0x11
	.4byte	0xdd7
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x257
	.byte	0x11
	.4byte	0xdd7
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x258
	.byte	0x11
	.4byte	0xdd7
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x259
	.byte	0x11
	.4byte	0xdd7
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x25a
	.byte	0x11
	.4byte	0x1b4f
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x11e
	.4byte	0x1b5f
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x25b
	.byte	0x2
	.4byte	0x1a6e
	.uleb128 0x2
	.4byte	.LASF409
	.2byte	0x25d
	.byte	0x12
	.4byte	0x1b5f
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_CB_cgf
	.uleb128 0xd
	.4byte	.LASF410
	.byte	0xa
	.byte	0x1
	.2byte	0x25f
	.byte	0x10
	.4byte	0x1bef
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x260
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x261
	.byte	0x11
	.4byte	0x149f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x262
	.byte	0x11
	.4byte	0x149f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x263
	.byte	0x11
	.4byte	0xdd7
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x264
	.byte	0x11
	.4byte	0xdd7
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x265
	.byte	0x11
	.4byte	0xdd7
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x266
	.byte	0x11
	.4byte	0xdd7
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x267
	.byte	0x2
	.4byte	0x1b7e
	.uleb128 0x2
	.4byte	.LASF413
	.2byte	0x269
	.byte	0x11
	.4byte	0x1bef
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_M_cgf
	.uleb128 0xd
	.4byte	.LASF414
	.byte	0x2c
	.byte	0x1
	.2byte	0x26b
	.byte	0x10
	.4byte	0x1c71
	.uleb128 0x1
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x26c
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x26d
	.byte	0x11
	.4byte	0xdd7
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x26e
	.byte	0x11
	.4byte	0x1c71
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x26f
	.byte	0x11
	.4byte	0x14cf
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x270
	.byte	0x11
	.4byte	0x14cf
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x271
	.byte	0x11
	.4byte	0xdd7
	.byte	0x28
	.byte	0
	.uleb128 0x9
	.4byte	0xcc
	.4byte	0x1c81
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x272
	.byte	0x2
	.4byte	0x1c0e
	.uleb128 0x2
	.4byte	.LASF419
	.2byte	0x274
	.byte	0x11
	.4byte	0x1c81
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_ECard0_cgf
	.uleb128 0x2
	.4byte	.LASF420
	.2byte	0x275
	.byte	0x11
	.4byte	0x1c81
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_ECard1_cgf
	.uleb128 0xd
	.4byte	.LASF421
	.byte	0x14
	.byte	0x1
	.2byte	0x277
	.byte	0x10
	.4byte	0x1d15
	.uleb128 0x1
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x278
	.byte	0x11
	.4byte	0x149f
	.byte	0
	.uleb128 0x1
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x279
	.byte	0x11
	.4byte	0xdd7
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x27a
	.byte	0x11
	.4byte	0x149f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x27b
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x27c
	.byte	0x11
	.4byte	0x14cf
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x27d
	.byte	0x11
	.4byte	0xdd7
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x27e
	.byte	0x2
	.4byte	0x1cb2
	.uleb128 0x2
	.4byte	.LASF426
	.2byte	0x280
	.byte	0x12
	.4byte	0x1d15
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_SER_cgf
	.uleb128 0xd
	.4byte	.LASF427
	.byte	0xc
	.byte	0x1
	.2byte	0x282
	.byte	0x10
	.4byte	0x1d97
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x283
	.byte	0x11
	.4byte	0xdd7
	.byte	0
	.uleb128 0x1
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x284
	.byte	0x11
	.4byte	0x149f
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x285
	.byte	0x11
	.4byte	0x149f
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x286
	.byte	0x11
	.4byte	0xdd7
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x287
	.byte	0x11
	.4byte	0xdd7
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x288
	.byte	0x11
	.4byte	0x14cf
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x289
	.byte	0x2
	.4byte	0x1d34
	.uleb128 0x2
	.4byte	.LASF429
	.2byte	0x28b
	.byte	0x10
	.4byte	0x1d97
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpHdr_cgf
	.uleb128 0x2
	.4byte	.LASF430
	.2byte	0x28c
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidMinSize
	.uleb128 0x2
	.4byte	.LASF431
	.2byte	0x28f
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidMinSizeDesc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x1dea
	.uleb128 0xa
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF432
	.2byte	0x293
	.byte	0x12
	.4byte	0x1dda
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosModuleDesc
	.uleb128 0x2
	.4byte	.LASF433
	.2byte	0x2a2
	.byte	0x12
	.4byte	0x1dda
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosCarrierDesc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x1e1e
	.uleb128 0xa
	.4byte	0x26
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF434
	.2byte	0x2b1
	.byte	0x12
	.4byte	0x1e0e
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosSystemDesc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x1e40
	.uleb128 0xa
	.4byte	0x26
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF435
	.2byte	0x2be
	.byte	0x12
	.4byte	0x1e30
	.uleb128 0x5
	.byte	0x3
	.4byte	SmbiosChassisDesc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x1e62
	.uleb128 0xa
	.4byte	0x26
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF436
	.2byte	0x2cd
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	LFPData0Desc
	.uleb128 0x2
	.4byte	.LASF437
	.2byte	0x2d4
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	LFPData1Desc
	.uleb128 0x2
	.4byte	.LASF438
	.2byte	0x2db
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	LFPData2Desc
	.uleb128 0x2
	.4byte	.LASF439
	.2byte	0x2e2
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	LFPData3Desc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x1eba
	.uleb128 0xa
	.4byte	0x26
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF440
	.2byte	0x2ea
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock0Desc
	.uleb128 0x2
	.4byte	.LASF441
	.2byte	0x2f2
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock1Desc
	.uleb128 0x2
	.4byte	.LASF442
	.2byte	0x2fa
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock2Desc
	.uleb128 0x2
	.4byte	.LASF443
	.2byte	0x302
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock3Desc
	.uleb128 0x2
	.4byte	.LASF444
	.2byte	0x30a
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock4Desc
	.uleb128 0x2
	.4byte	.LASF445
	.2byte	0x312
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock5Desc
	.uleb128 0x2
	.4byte	.LASF446
	.2byte	0x31a
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	VendorBlock6Desc
	.uleb128 0x2
	.4byte	.LASF447
	.2byte	0x323
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock0Desc
	.uleb128 0x2
	.4byte	.LASF448
	.2byte	0x32a
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock1Desc
	.uleb128 0x2
	.4byte	.LASF449
	.2byte	0x331
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock2Desc
	.uleb128 0x2
	.4byte	.LASF450
	.2byte	0x338
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock3Desc
	.uleb128 0x2
	.4byte	.LASF451
	.2byte	0x33f
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock4Desc
	.uleb128 0x2
	.4byte	.LASF452
	.2byte	0x346
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock5Desc
	.uleb128 0x2
	.4byte	.LASF453
	.2byte	0x34d
	.byte	0x12
	.4byte	0x1e52
	.uleb128 0x5
	.byte	0x3
	.4byte	CustomBlock6Desc
	.uleb128 0x2
	.4byte	.LASF454
	.2byte	0x354
	.byte	0xe
	.4byte	0x133a
	.uleb128 0x5
	.byte	0x3
	.4byte	EEPDeviceSizeTokens
	.uleb128 0x2
	.4byte	.LASF455
	.2byte	0x36e
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	EEPDeviceSizeTL
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x1fea
	.uleb128 0xa
	.4byte	0x26
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF456
	.2byte	0x370
	.byte	0xe
	.4byte	0x1fda
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePEEPWriteLenTokens
	.uleb128 0x2
	.4byte	.LASF457
	.2byte	0x37a
	.byte	0x1
	.4byte	0x217
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePEEPWriteLenTL
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x201e
	.uleb128 0xa
	.4byte	0x26
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF458
	.2byte	0x37d
	.byte	0x12
	.4byte	0x200e
	.uleb128 0x5
	.byte	0x3
	.4byte	ExtI2CDevice0Desc
	.uleb128 0x2
	.4byte	.LASF459
	.2byte	0x386
	.byte	0x12
	.4byte	0x200e
	.uleb128 0x5
	.byte	0x3
	.4byte	ExtI2CDevice1Desc
	.uleb128 0x2
	.4byte	.LASF460
	.2byte	0x390
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidUsbHSRange
	.uleb128 0x2
	.4byte	.LASF461
	.2byte	0x393
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidUsbHSRangeDesc
	.uleb128 0x2
	.4byte	.LASF462
	.2byte	0x395
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidUsbSSRange
	.uleb128 0x2
	.4byte	.LASF463
	.2byte	0x398
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidUsbSSRangeDesc
	.uleb128 0x9
	.4byte	0x171
	.4byte	0x209a
	.uleb128 0xa
	.4byte	0x26
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF464
	.2byte	0x39a
	.byte	0xf
	.4byte	0x208a
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidModuleTypes
	.uleb128 0x2
	.4byte	.LASF465
	.2byte	0x39e
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidModuleTypesDesc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x20ce
	.uleb128 0xa
	.4byte	0x26
	.byte	0x25
	.byte	0
	.uleb128 0x2
	.4byte	.LASF466
	.2byte	0x3a0
	.byte	0x12
	.4byte	0x20be
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_CB_Desc
	.uleb128 0x9
	.4byte	0x4a9
	.4byte	0x20f0
	.uleb128 0xa
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.4byte	.LASF467
	.2byte	0x3c8
	.byte	0x12
	.4byte	0x20e0
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_M_Desc
	.uleb128 0x2
	.4byte	.LASF468
	.2byte	0x3d3
	.byte	0x12
	.4byte	0x200e
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpHdr_Desc
	.uleb128 0x2
	.4byte	.LASF469
	.2byte	0x3dc
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidCOM0PCIePort
	.uleb128 0x2
	.4byte	.LASF470
	.2byte	0x3df
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidCOM0PCIePortDesc
	.uleb128 0x2
	.4byte	.LASF471
	.2byte	0x3e1
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidCOM0USBPort
	.uleb128 0x2
	.4byte	.LASF472
	.2byte	0x3e4
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidCOM0USBPortDesc
	.uleb128 0x2
	.4byte	.LASF473
	.2byte	0x3e6
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_ExpCard0Desc
	.uleb128 0x2
	.4byte	.LASF474
	.2byte	0x3ef
	.byte	0x12
	.4byte	0x1eaa
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_ExpCard1Desc
	.uleb128 0x2
	.4byte	.LASF475
	.2byte	0x3f8
	.byte	0xf
	.4byte	0x1369
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidIOAddrPort
	.uleb128 0x2
	.4byte	.LASF476
	.2byte	0x3fb
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x5
	.byte	0x3
	.4byte	ValidIOAddrPortDesc
	.uleb128 0x2
	.4byte	.LASF477
	.2byte	0x3fd
	.byte	0x12
	.4byte	0x200e
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_SerialPortsDesc
	.uleb128 0x9
	.4byte	0x626
	.4byte	0x21c6
	.uleb128 0xa
	.4byte	0x26
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.4byte	.LASF478
	.2byte	0x6a3
	.byte	0x10
	.4byte	0x21b6
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_CB_CfgDesc
	.uleb128 0x9
	.4byte	0x626
	.4byte	0x21e8
	.uleb128 0xa
	.4byte	0x26
	.byte	0x11
	.byte	0
	.uleb128 0x2
	.4byte	.LASF479
	.2byte	0x6bf
	.byte	0x10
	.4byte	0x21d8
	.uleb128 0x5
	.byte	0x3
	.4byte	COM0R20_M_CfgDesc
	.uleb128 0x2
	.4byte	.LASF480
	.2byte	0x6d4
	.byte	0x10
	.4byte	0x21b6
	.uleb128 0x5
	.byte	0x3
	.4byte	EeePExpEEP_CfgDesc
	.uleb128 0xf
	.4byte	.LASF481
	.byte	0x6
	.byte	0xdf
	.byte	0x1
	.4byte	0x125
	.4byte	0x222c
	.uleb128 0x4
	.4byte	0x222c
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0x97
	.byte	0
	.uleb128 0x7
	.4byte	0x626
	.uleb128 0xf
	.4byte	.LASF482
	.byte	0x6
	.byte	0xe6
	.byte	0x1
	.4byte	0x125
	.4byte	0x224c
	.uleb128 0x4
	.4byte	0x222c
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF483
	.byte	0xa
	.byte	0x89
	.byte	0x1
	.4byte	0x125
	.4byte	0x2262
	.uleb128 0x4
	.4byte	0x1070
	.byte	0
	.uleb128 0xf
	.4byte	.LASF484
	.byte	0xa
	.byte	0x66
	.byte	0x1
	.4byte	0x125
	.4byte	0x2287
	.uleb128 0x4
	.4byte	0x2287
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0x32
	.uleb128 0x4
	.4byte	0xf2
	.byte	0
	.uleb128 0x7
	.4byte	0x1070
	.uleb128 0xf
	.4byte	.LASF485
	.byte	0x6
	.byte	0xec
	.byte	0x1
	.4byte	0x125
	.4byte	0x22ac
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x222c
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF486
	.byte	0x7
	.byte	0x6c
	.byte	0x5
	.4byte	0x43
	.4byte	0x22c8
	.uleb128 0x4
	.4byte	0xa1
	.uleb128 0x4
	.4byte	0x114
	.uleb128 0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF487
	.byte	0xc
	.byte	0xab
	.byte	0x1
	.4byte	0x125
	.4byte	0x22e8
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x131
	.uleb128 0x4
	.4byte	0x22e8
	.byte	0
	.uleb128 0x7
	.4byte	0x32
	.uleb128 0xf
	.4byte	.LASF488
	.byte	0xd
	.byte	0x1f
	.byte	0x7
	.4byte	0x105
	.4byte	0x2308
	.uleb128 0x4
	.4byte	0x105
	.uleb128 0x4
	.4byte	0x10f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF490
	.byte	0xe
	.byte	0x5c
	.byte	0x1
	.4byte	0x231f
	.uleb128 0x4
	.4byte	0x231f
	.uleb128 0x4
	.4byte	0xf2
	.byte	0
	.uleb128 0x7
	.4byte	0xcc
	.uleb128 0xf
	.4byte	.LASF489
	.byte	0xd
	.byte	0x34
	.byte	0x8
	.4byte	0x32
	.4byte	0x233a
	.uleb128 0x4
	.4byte	0x10f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF491
	.byte	0xf
	.byte	0x29
	.byte	0x6
	.4byte	0x234c
	.uleb128 0x4
	.4byte	0x8e
	.byte	0
	.uleb128 0xf
	.4byte	.LASF492
	.byte	0xa
	.byte	0x81
	.byte	0x1
	.4byte	0x125
	.4byte	0x2371
	.uleb128 0x4
	.4byte	0x1070
	.uleb128 0x4
	.4byte	0x136
	.uleb128 0x4
	.4byte	0x131
	.uleb128 0x4
	.4byte	0x2d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF493
	.byte	0xa
	.byte	0x4f
	.byte	0x1
	.4byte	0x125
	.4byte	0x2391
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0xcc
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF494
	.byte	0xf
	.byte	0x26
	.byte	0x7
	.4byte	0x8e
	.4byte	0x23a7
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF495
	.byte	0xa
	.byte	0x3a
	.byte	0x1
	.4byte	0x32
	.4byte	0x23bd
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0x21
	.4byte	.LASF496
	.byte	0xe
	.byte	0x53
	.byte	0x1
	.4byte	0x23d4
	.uleb128 0x4
	.4byte	0x231f
	.uleb128 0x4
	.4byte	0xdf
	.byte	0
	.uleb128 0xf
	.4byte	.LASF497
	.byte	0xd
	.byte	0x19
	.byte	0x7
	.4byte	0x8e
	.4byte	0x23f4
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0x136
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF498
	.byte	0x6
	.byte	0xf3
	.byte	0x1
	.4byte	0x125
	.4byte	0x2419
	.uleb128 0x4
	.4byte	0x2419
	.uleb128 0x4
	.4byte	0x241e
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x2e6
	.byte	0
	.uleb128 0x7
	.4byte	0x662
	.uleb128 0x7
	.4byte	0x2419
	.uleb128 0xf
	.4byte	.LASF499
	.byte	0x10
	.byte	0x3e
	.byte	0x1
	.4byte	0x43
	.4byte	0x2453
	.uleb128 0x4
	.4byte	0x75
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x125
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF500
	.byte	0xd
	.byte	0x1b
	.byte	0x7
	.4byte	0x8e
	.4byte	0x2473
	.uleb128 0x4
	.4byte	0x8e
	.uleb128 0x4
	.4byte	0x43
	.uleb128 0x4
	.4byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LASF501
	.byte	0x11
	.byte	0x2b
	.byte	0x1
	.4byte	0x11e
	.4byte	0x248e
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x248e
	.byte	0
	.uleb128 0x7
	.4byte	0x105
	.uleb128 0xf
	.4byte	.LASF502
	.byte	0x7
	.byte	0x6b
	.byte	0x5
	.4byte	0x43
	.4byte	0x24aa
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF503
	.byte	0x5
	.byte	0x57
	.byte	0x1
	.4byte	0x125
	.4byte	0x24ca
	.uleb128 0x4
	.4byte	0x24ca
	.uleb128 0x4
	.4byte	0x105
	.uleb128 0x4
	.4byte	0x24cf
	.byte	0
	.uleb128 0x7
	.4byte	0x223
	.uleb128 0x7
	.4byte	0x11e
	.uleb128 0xf
	.4byte	.LASF504
	.byte	0xd
	.byte	0x2b
	.byte	0x7
	.4byte	0x105
	.4byte	0x24ef
	.uleb128 0x4
	.4byte	0x10f
	.uleb128 0x4
	.4byte	0x43
	.byte	0
	.uleb128 0xf
	.4byte	.LASF505
	.byte	0x12
	.byte	0x6c
	.byte	0x1
	.4byte	0x43
	.4byte	0x2510
	.uleb128 0x4
	.4byte	0x10a
	.uleb128 0x4
	.4byte	0x3e
	.uleb128 0x4
	.4byte	0x119
	.uleb128 0x1d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF506
	.byte	0x6
	.byte	0xd5
	.byte	0x15
	.4byte	0x125
	.4byte	0x2530
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x97
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0xf
	.4byte	.LASF507
	.byte	0x6
	.byte	0xca
	.byte	0x12
	.4byte	0x125
	.4byte	0x254b
	.uleb128 0x4
	.4byte	0x3cf
	.uleb128 0x4
	.4byte	0x8e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF508
	.2byte	0x778
	.4byte	0x125
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2574
	.uleb128 0x8
	.4byte	.LASF510
	.2byte	0x779
	.byte	0x1d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF509
	.2byte	0x76c
	.4byte	0x125
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x259d
	.uleb128 0x8
	.4byte	.LASF510
	.2byte	0x76d
	.byte	0x1d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF511
	.2byte	0x760
	.4byte	0x125
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25c6
	.uleb128 0x8
	.4byte	.LASF510
	.2byte	0x761
	.byte	0x1d
	.4byte	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF512
	.2byte	0x750
	.4byte	0x125
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25fe
	.uleb128 0x8
	.4byte	.LASF513
	.2byte	0x751
	.byte	0x1d
	.4byte	0x2287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF514
	.2byte	0x752
	.byte	0x1d
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF515
	.2byte	0x741
	.4byte	0x125
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2636
	.uleb128 0x8
	.4byte	.LASF513
	.2byte	0x742
	.byte	0x1d
	.4byte	0x2287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF514
	.2byte	0x743
	.byte	0x1d
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF516
	.2byte	0x732
	.4byte	0x125
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x266e
	.uleb128 0x8
	.4byte	.LASF513
	.2byte	0x733
	.byte	0x1d
	.4byte	0x2287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x8
	.4byte	.LASF514
	.2byte	0x734
	.byte	0x1d
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.4byte	.LASF517
	.2byte	0x6f3
	.4byte	0x125
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2718
	.uleb128 0x8
	.4byte	.LASF513
	.2byte	0x6f4
	.byte	0x1d
	.4byte	0x2287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF514
	.2byte	0x6f5
	.byte	0x1d
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF518
	.2byte	0x6f6
	.byte	0x1d
	.4byte	0x222c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF519
	.2byte	0x6f7
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.4byte	.LASF520
	.2byte	0x6f8
	.byte	0x1d
	.4byte	0x231f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.4byte	.LASF521
	.2byte	0x6f9
	.byte	0x1d
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x6fc
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF523
	.2byte	0x6fd
	.byte	0x13
	.4byte	0x222c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.ascii	"i\000"
	.2byte	0x6fe
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x72e
	.4byte	.L200
	.byte	0
	.uleb128 0x10
	.4byte	.LASF524
	.2byte	0x67d
	.4byte	0x125
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27b5
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x67e
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x67f
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x682
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x683
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF527
	.2byte	0x684
	.byte	0x9
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF528
	.2byte	0x685
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x686
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF530
	.2byte	0x687
	.byte	0x16
	.4byte	0x27b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x69e
	.4byte	.L192
	.byte	0
	.uleb128 0x7
	.4byte	0x18e9
	.uleb128 0x10
	.4byte	.LASF532
	.2byte	0x652
	.4byte	0x125
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2866
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x653
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x654
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x657
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x658
	.byte	0x17
	.4byte	0x2866
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x659
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF527
	.2byte	0x65a
	.byte	0x9
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF528
	.2byte	0x65b
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x65c
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF534
	.2byte	0x65d
	.byte	0xe
	.4byte	0x286b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x677
	.4byte	.L182
	.byte	0
	.uleb128 0x7
	.4byte	0xde7
	.uleb128 0x7
	.4byte	0x1751
	.uleb128 0x10
	.4byte	.LASF535
	.2byte	0x622
	.4byte	0x125
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x291c
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x623
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x624
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x627
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x628
	.byte	0x17
	.4byte	0x291c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x629
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF527
	.2byte	0x62a
	.byte	0x9
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF528
	.2byte	0x62b
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x62c
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF536
	.2byte	0x62d
	.byte	0x16
	.4byte	0x2921
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x64c
	.4byte	.L172
	.byte	0
	.uleb128 0x7
	.4byte	0xe2d
	.uleb128 0x7
	.4byte	0x1809
	.uleb128 0x10
	.4byte	.LASF537
	.2byte	0x5c5
	.4byte	0x125
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a1d
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x5c6
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x5c7
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x5ca
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x5cb
	.byte	0x15
	.4byte	0x2a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x5cc
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.ascii	"i\000"
	.2byte	0x5cd
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF538
	.2byte	0x5ce
	.byte	0x13
	.4byte	0x2a22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF539
	.2byte	0x5cf
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x5d0
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF540
	.2byte	0x5d1
	.byte	0x13
	.4byte	0x2a27
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF541
	.2byte	0x5d2
	.byte	0x12
	.4byte	0x2a2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF542
	.2byte	0x5d3
	.byte	0x12
	.4byte	0x231f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF543
	.2byte	0x5d4
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF544
	.2byte	0x5d5
	.byte	0x17
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x61c
	.4byte	.L152
	.byte	0
	.uleb128 0x7
	.4byte	0xbbc
	.uleb128 0x7
	.4byte	0x14ef
	.uleb128 0x7
	.4byte	0x87c
	.uleb128 0x7
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0x4a9
	.uleb128 0x10
	.4byte	.LASF545
	.2byte	0x586
	.4byte	0x125
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2aef
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x587
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x588
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x58b
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x58c
	.byte	0x15
	.4byte	0x2aef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x58d
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.ascii	"i\000"
	.2byte	0x58e
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF546
	.2byte	0x58f
	.byte	0x13
	.4byte	0x2af4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF539
	.2byte	0x590
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x591
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF543
	.2byte	0x592
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x5bf
	.4byte	.L132
	.byte	0
	.uleb128 0x7
	.4byte	0xa83
	.uleb128 0x7
	.4byte	0x15d9
	.uleb128 0x10
	.4byte	.LASF547
	.2byte	0x537
	.4byte	0x125
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bdf
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x538
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x539
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x53c
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x53d
	.byte	0x16
	.4byte	0x2bdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x53e
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.ascii	"i\000"
	.2byte	0x53f
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF548
	.2byte	0x540
	.byte	0x14
	.4byte	0x2be4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF539
	.2byte	0x541
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x542
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF540
	.2byte	0x543
	.byte	0x10
	.4byte	0x2be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF549
	.2byte	0x544
	.byte	0x10
	.4byte	0x2be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF543
	.2byte	0x545
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF544
	.2byte	0x546
	.byte	0x17
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x581
	.4byte	.L107
	.byte	0
	.uleb128 0x7
	.4byte	0xd91
	.uleb128 0x7
	.4byte	0x16dd
	.uleb128 0x7
	.4byte	0xc02
	.uleb128 0x10
	.4byte	.LASF550
	.2byte	0x4f3
	.4byte	0x125
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2cb8
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x4f4
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x4f5
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x4f8
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x4f9
	.byte	0x15
	.4byte	0x2cb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x4fa
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF551
	.2byte	0x4fb
	.byte	0x15
	.4byte	0x2cbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF544
	.2byte	0x4fc
	.byte	0x17
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF552
	.2byte	0x4fd
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x4fe
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF553
	.2byte	0x4ff
	.byte	0xc
	.4byte	0x231f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF554
	.2byte	0x500
	.byte	0xc
	.4byte	0x231f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x525
	.4byte	.L95
	.byte	0
	.uleb128 0x7
	.4byte	0x100f
	.uleb128 0x7
	.4byte	0x1c81
	.uleb128 0x10
	.4byte	.LASF555
	.2byte	0x4d0
	.4byte	0x125
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d50
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x4d1
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x4d2
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x4d5
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x4d6
	.byte	0x15
	.4byte	0x2d50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x4d7
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF556
	.2byte	0x4d8
	.byte	0x15
	.4byte	0x2d55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x4d9
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x4ec
	.4byte	.L86
	.byte	0
	.uleb128 0x7
	.4byte	0x1063
	.uleb128 0x7
	.4byte	0x1d15
	.uleb128 0x10
	.4byte	.LASF557
	.2byte	0x4ac
	.4byte	0x125
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2de8
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x4ad
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x4ae
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x4b1
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x4b2
	.byte	0x1b
	.4byte	0x2de8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF533
	.2byte	0x4b3
	.byte	0x12
	.4byte	0x107c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF558
	.2byte	0x4b4
	.byte	0x17
	.4byte	0x2ded
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF529
	.2byte	0x4b5
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x4c9
	.4byte	.L77
	.byte	0
	.uleb128 0x7
	.4byte	0xe81
	.uleb128 0x7
	.4byte	0x19d7
	.uleb128 0x10
	.4byte	.LASF559
	.2byte	0x488
	.4byte	0x125
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e71
	.uleb128 0x8
	.4byte	.LASF560
	.2byte	0x489
	.byte	0x14
	.4byte	0x2e71
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF561
	.2byte	0x48a
	.byte	0x13
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x8
	.4byte	.LASF529
	.2byte	0x48b
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.4byte	.LASF562
	.2byte	0x48c
	.byte	0x13
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x8
	.4byte	.LASF563
	.2byte	0x48d
	.byte	0x13
	.4byte	0xcc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x490
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x4a6
	.4byte	.L67
	.byte	0
	.uleb128 0x7
	.4byte	0x107c
	.uleb128 0x10
	.4byte	.LASF564
	.2byte	0x470
	.4byte	0x125
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ecc
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x471
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x472
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x475
	.byte	0xe
	.4byte	0x2ecc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF565
	.2byte	0x476
	.byte	0x13
	.4byte	0x2ed1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x7
	.4byte	0x784
	.uleb128 0x7
	.4byte	0x1d97
	.uleb128 0x10
	.4byte	.LASF566
	.2byte	0x456
	.4byte	0x125
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f2c
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x457
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x458
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x45b
	.byte	0x10
	.4byte	0x2f2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF567
	.2byte	0x45c
	.byte	0x14
	.4byte	0x2f31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x7
	.4byte	0xfbb
	.uleb128 0x7
	.4byte	0x1bef
	.uleb128 0x10
	.4byte	.LASF568
	.2byte	0x408
	.4byte	0x125
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3025
	.uleb128 0x8
	.4byte	.LASF523
	.2byte	0x409
	.byte	0x1c
	.4byte	0x61c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.4byte	.LASF525
	.2byte	0x40a
	.byte	0x17
	.4byte	0x1070
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x40d
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF526
	.2byte	0x40e
	.byte	0x11
	.4byte	0x3025
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.ascii	"i\000"
	.2byte	0x40f
	.byte	0xa
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.ascii	"i2\000"
	.2byte	0x40f
	.byte	0xd
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.4byte	.LASF569
	.2byte	0x410
	.byte	0x15
	.4byte	0x302a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF544
	.2byte	0x411
	.byte	0x17
	.4byte	0x2a31
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x452
	.4byte	.L46
	.uleb128 0x2f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x3
	.4byte	.LASF570
	.2byte	0x430
	.byte	0x14
	.4byte	0x24cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.4byte	.LASF571
	.2byte	0x431
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF572
	.2byte	0x432
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF573
	.2byte	0x433
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF574
	.2byte	0x434
	.byte	0x13
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0xf59
	.uleb128 0x7
	.4byte	0x1b5f
	.uleb128 0x10
	.4byte	.LASF575
	.2byte	0x10e
	.4byte	0x125
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30f5
	.uleb128 0x8
	.4byte	.LASF576
	.2byte	0x10f
	.byte	0x1f
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.4byte	.LASF577
	.2byte	0x110
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.4byte	.LASF578
	.2byte	0x111
	.byte	0x14
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.4byte	.LASF522
	.2byte	0x114
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.4byte	.LASF579
	.2byte	0x115
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.4byte	.LASF580
	.2byte	0x115
	.byte	0x1b
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.4byte	.LASF581
	.2byte	0x115
	.byte	0x26
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.4byte	.LASF582
	.2byte	0x116
	.byte	0x11
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3
	.4byte	.LASF583
	.2byte	0x116
	.byte	0x21
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.4byte	.LASF574
	.2byte	0x116
	.byte	0x2a
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF531
	.2byte	0x150
	.4byte	.L32
	.uleb128 0x12
	.4byte	.LASF584
	.2byte	0x151
	.4byte	.L34
	.byte	0
	.uleb128 0x26
	.4byte	.LASF585
	.byte	0xf0
	.4byte	0x125
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3152
	.uleb128 0x14
	.4byte	.LASF576
	.byte	0xf1
	.byte	0x24
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF586
	.byte	0xf2
	.byte	0x11
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF587
	.byte	0xf3
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0xf6
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.ascii	"len\000"
	.byte	0xf7
	.byte	0x7
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x26
	.4byte	.LASF588
	.byte	0x91
	.4byte	0x125
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3211
	.uleb128 0x14
	.4byte	.LASF576
	.byte	0x92
	.byte	0x1f
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.4byte	.LASF589
	.byte	0x93
	.byte	0xd
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.4byte	.LASF578
	.byte	0x94
	.byte	0xd
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.4byte	.LASF522
	.byte	0x97
	.byte	0x10
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF577
	.byte	0x98
	.byte	0x10
	.4byte	0x2be9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.4byte	.LASF590
	.byte	0x99
	.byte	0x9
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF591
	.byte	0x99
	.byte	0x15
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF592
	.byte	0x99
	.byte	0x23
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF593
	.byte	0x9a
	.byte	0x11
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.4byte	.LASF594
	.byte	0x9a
	.byte	0x1b
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF595
	.byte	0x9a
	.byte	0x27
	.4byte	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LASF531
	.byte	0x1
	.byte	0xd7
	.byte	0x1
	.4byte	.L11
	.byte	0
	.uleb128 0x31
	.4byte	.LASF599
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.4byte	0x125
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF576
	.byte	0x70
	.byte	0x24
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF586
	.byte	0x71
	.byte	0x11
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF587
	.byte	0x72
	.byte	0x12
	.4byte	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x75
	.byte	0x10
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1e
	.ascii	"len\000"
	.byte	0x76
	.byte	0x7
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2c
	.uleb128 0x17
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x31
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
.LASF113:
	.ascii	"Exp_EEP_s\000"
.LASF117:
	.ascii	"Exp_EEP_t\000"
.LASF156:
	.ascii	"SMBIOS_TypeHARDWARE_SECURITY\000"
.LASF4:
	.ascii	"size_t\000"
.LASF60:
	.ascii	"Handler\000"
.LASF214:
	.ascii	"Handles\000"
.LASF561:
	.ascii	"u8BlockId\000"
.LASF473:
	.ascii	"COM0R20_ExpCard0Desc\000"
.LASF385:
	.ascii	"au16Addr\000"
.LASF534:
	.ascii	"pLfpBlock\000"
.LASF537:
	.ascii	"HandleSmbiosModuleBlock\000"
.LASF456:
	.ascii	"EeePEEPWriteLenTokens\000"
.LASF471:
	.ascii	"ValidCOM0USBPort\000"
.LASF267:
	.ascii	"CBType\000"
.LASF560:
	.ascii	"pvBuffer\000"
.LASF342:
	.ascii	"aUUID\000"
.LASF337:
	.ascii	"au16Handles\000"
.LASF426:
	.ascii	"COM0R20_SER_cgf\000"
.LASF599:
	.ascii	"SMBIOS_CE_Help\000"
.LASF480:
	.ascii	"EeePExpEEP_CfgDesc\000"
.LASF596:
	.ascii	"GNU C99 11.2.0 -mcpu=cortex-a9 -mfloat-abi=hard -mf"
	.ascii	"pu=vfpv3 -mabi=aapcs-linux -mtls-dialect=gnu -marm "
	.ascii	"-march=armv7-a+mp+sec+vfpv3 -g -O0 -std=gnu99 -fsta"
	.ascii	"ck-protector-strong -fPIE\000"
.LASF550:
	.ascii	"HandleCOM0R20ExpCardCfgBlock\000"
.LASF373:
	.ascii	"EeeP_VendorBlock6_Cfg\000"
.LASF219:
	.ascii	"MaxNum\000"
.LASF391:
	.ascii	"EeePI2CDevice_s\000"
.LASF392:
	.ascii	"EeePI2CDevice_t\000"
.LASF454:
	.ascii	"EEPDeviceSizeTokens\000"
.LASF297:
	.ascii	"I2CBusTL\000"
.LASF477:
	.ascii	"COM0R20_SerialPortsDesc\000"
.LASF294:
	.ascii	"SmbiSmbiosModuleFeatureFlagsTL\000"
.LASF249:
	.ascii	"Height\000"
.LASF236:
	.ascii	"SMBIOS_ChassisType_Space_saving_Lunch_Box\000"
.LASF130:
	.ascii	"NodeTypes_e\000"
.LASF44:
	.ascii	"pCmpContext\000"
.LASF36:
	.ascii	"CompareFunction_t\000"
.LASF248:
	.ascii	"AssetTagNumber\000"
.LASF262:
	.ascii	"EeePExtI2CDeviceDesc_s\000"
.LASF265:
	.ascii	"EeePExtI2CDeviceDesc_t\000"
.LASF591:
	.ascii	"pszMinCount\000"
.LASF48:
	.ascii	"NodeTypes_t\000"
.LASF103:
	.ascii	"SpecRev\000"
.LASF291:
	.ascii	"EeePHandel_t\000"
.LASF206:
	.ascii	"EeePModuleInfo_s\000"
.LASF215:
	.ascii	"EeePModuleInfo_t\000"
.LASF419:
	.ascii	"COM0R20_ECard0_cgf\000"
.LASF21:
	.ascii	"uiUpperLimit\000"
.LASF19:
	.ascii	"NumberRange_s\000"
.LASF23:
	.ascii	"NumberRange_t\000"
.LASF128:
	.ascii	"EeePGUID_t\000"
.LASF478:
	.ascii	"COM0R20_CB_CfgDesc\000"
.LASF475:
	.ascii	"ValidIOAddrPort\000"
.LASF91:
	.ascii	"CfgBlockDesc_s\000"
.LASF94:
	.ascii	"CfgBlockDesc_t\000"
.LASF270:
	.ascii	"LanDesc\000"
.LASF407:
	.ascii	"aulPCIePorts\000"
.LASF421:
	.ascii	"COM0R20_SERIAL_s\000"
.LASF227:
	.ascii	"SMBIOS_ChassisType_Mini_Tower\000"
.LASF17:
	.ascii	"EApiStatus_t\000"
.LASF495:
	.ascii	"EeePAlignLength\000"
.LASF111:
	.ascii	"RevId\000"
.LASF340:
	.ascii	"COM0_SMBIOS_Carrier\000"
.LASF573:
	.ascii	"uiEndPort\000"
.LASF198:
	.ascii	"SMBIOS_BoardType_ProcessorModule\000"
.LASF326:
	.ascii	"aszProduct\000"
.LASF580:
	.ascii	"pszWidth\000"
.LASF438:
	.ascii	"LFPData2Desc\000"
.LASF424:
	.ascii	"au16SER1_IOADDRESS\000"
.LASF271:
	.ascii	"MiscIo1\000"
.LASF272:
	.ascii	"MiscIo2\000"
.LASF539:
	.ascii	"stHeaderLength\000"
.LASF170:
	.ascii	"SMBIOS_TypeIPMI_DEVICE_INFORMATION\000"
.LASF197:
	.ascii	"SMBIOS_BoardType_SystemManagementModule\000"
.LASF193:
	.ascii	"SMBIOS_BoardType_Unknown\000"
.LASF164:
	.ascii	"SMBIOS_TypeSYSTEM_BOOT_INFORMATION\000"
.LASF422:
	.ascii	"au16SER0_IOADDRESS\000"
.LASF547:
	.ascii	"HandleSmbiosChassisBlock\000"
.LASF559:
	.ascii	"DBlockAllocWrap\000"
.LASF29:
	.ascii	"pszTokenList\000"
.LASF202:
	.ascii	"SMBIOS_BoardType_Motherboard\000"
.LASF583:
	.ascii	"uiWidth\000"
.LASF175:
	.ascii	"EeePSmbiosHdr_s\000"
.LASF180:
	.ascii	"EeePSmbiosHdr_t\000"
.LASF567:
	.ascii	"pCOM0R20_M_cgf\000"
.LASF445:
	.ascii	"VendorBlock5Desc\000"
.LASF1:
	.ascii	"long int\000"
.LASF336:
	.ascii	"au8FillChar\000"
.LASF362:
	.ascii	"EeeP_LFP3_Cfg\000"
.LASF464:
	.ascii	"ValidModuleTypes\000"
.LASF516:
	.ascii	"EeeP_CreateCOM0R20_CBImage\000"
.LASF47:
	.ascii	"CfgElementNode\000"
.LASF331:
	.ascii	"aszLocation\000"
.LASF148:
	.ascii	"SMBIOS_TypePHYSICAL_MEMORY_ARRAY\000"
.LASF275:
	.ascii	"LaneMap\000"
.LASF40:
	.ascii	"stElementSize\000"
.LASF293:
	.ascii	"SmbiosBoardTypesTL\000"
.LASF584:
	.ascii	"ErrorExit\000"
.LASF152:
	.ascii	"SMBIOS_TypeMEMORY_DEVICE_MAPPED_ADDRESS\000"
.LASF145:
	.ascii	"SMBIOS_TypeBIOS_LANGUAGE_INFORMATION\000"
.LASF446:
	.ascii	"VendorBlock6Desc\000"
.LASF363:
	.ascii	"EeePVendorBlock_s\000"
.LASF366:
	.ascii	"EeePVendorBlock_t\000"
.LASF556:
	.ascii	"pCOM0Serial_cgf\000"
.LASF343:
	.ascii	"aszSKU_Number\000"
.LASF492:
	.ascii	"EeePAddBlock\000"
.LASF525:
	.ascii	"BHandel\000"
.LASF278:
	.ascii	"MType\000"
.LASF53:
	.ascii	"Elements\000"
.LASF409:
	.ascii	"COM0R20_CB_cgf\000"
.LASF329:
	.ascii	"aszAssetTag\000"
.LASF172:
	.ascii	"SMBIOS_TypeINACTIVE\000"
.LASF382:
	.ascii	"EeeP_CustomBlock5_Cfg\000"
.LASF200:
	.ascii	"SMBIOS_BoardType_Memory_Module\000"
.LASF469:
	.ascii	"ValidCOM0PCIePort\000"
.LASF259:
	.ascii	"EeePVendBlockHdr_s\000"
.LASF261:
	.ascii	"EeePVendBlockHdr_t\000"
.LASF323:
	.ascii	"SmbiosModule_s\000"
.LASF338:
	.ascii	"SmbiosModule_t\000"
.LASF115:
	.ascii	"GenId\000"
.LASF8:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF169:
	.ascii	"SMBIOS_TypeMEMORY_CHANNEL\000"
.LASF264:
	.ascii	"DeviceBus\000"
.LASF18:
	.ascii	"_IO_FILE\000"
.LASF320:
	.ascii	"ValidHandles\000"
.LASF546:
	.ascii	"pSmbiosSystem_cgf\000"
.LASF39:
	.ascii	"stTotalCnt\000"
.LASF143:
	.ascii	"SMBIOS_TypeOEM_STRINGS\000"
.LASF281:
	.ascii	"DBHdr\000"
.LASF490:
	.ascii	"EeeP_Set32BitValue_BE\000"
.LASF398:
	.ascii	"au8CBType\000"
.LASF11:
	.ascii	"unsigned char\000"
.LASF484:
	.ascii	"EeePCreateNewBuffer\000"
.LASF232:
	.ascii	"SMBIOS_ChassisType_Hand_Held\000"
.LASF25:
	.ascii	"stRangeCount\000"
.LASF74:
	.ascii	"uiMinLength\000"
.LASF563:
	.ascii	"u8FillChar\000"
.LASF284:
	.ascii	"SwitchDevFuncAddr\000"
.LASF201:
	.ascii	"SMBIOS_BoardType_DaughterBoard\000"
.LASF535:
	.ascii	"HandleVendorBlock\000"
.LASF171:
	.ascii	"SMBIOS_TypeSYSTEM_POWER_SUPPLY\000"
.LASF292:
	.ascii	"SmbiosStructureTypesTL\000"
.LASF282:
	.ascii	"ExpressCardNumber\000"
.LASF194:
	.ascii	"SMBIOS_BoardType_Other\000"
.LASF82:
	.ascii	"SpecRev_Element_funcs\000"
.LASF126:
	.ascii	"EeePuint32u_t\000"
.LASF125:
	.ascii	"EeePuint32u_u\000"
.LASF120:
	.ascii	"DBlockLength\000"
.LASF20:
	.ascii	"uiLowerLimit\000"
.LASF346:
	.ascii	"COM0_SMBIOS_System\000"
.LASF528:
	.ascii	"stFileSize\000"
.LASF41:
	.ascii	"Flags\000"
.LASF24:
	.ascii	"NumberRangeDesc_s\000"
.LASF27:
	.ascii	"NumberRangeDesc_t\000"
.LASF3:
	.ascii	"char\000"
.LASF315:
	.ascii	"I2CBusTokens\000"
.LASF146:
	.ascii	"SMBIOS_TypeGROUP_ASSOCIATIONS\000"
.LASF437:
	.ascii	"LFPData1Desc\000"
.LASF87:
	.ascii	"UINT8RangeDesc\000"
.LASF158:
	.ascii	"SMBIOS_TypeVOLTAGE_PROBE\000"
.LASF427:
	.ascii	"EeeP_Exp_Hdr_s\000"
.LASF116:
	.ascii	"DevId\000"
.LASF355:
	.ascii	"EeePLFP_s\000"
.LASF358:
	.ascii	"EeePLFP_t\000"
.LASF530:
	.ascii	"pCustomBlock\000"
.LASF532:
	.ascii	"HandleLFPDescBlock\000"
.LASF451:
	.ascii	"CustomBlock4Desc\000"
.LASF310:
	.ascii	"ImpNotImpTokens\000"
.LASF173:
	.ascii	"SMBIOS_TypeEND_OF_TABLE\000"
.LASF408:
	.ascii	"COM0R20_CB_HDR_t\000"
.LASF166:
	.ascii	"SMBIOS_TypeMANAGEMENT_DEVICE\000"
.LASF70:
	.ascii	"pExtraInfo\000"
.LASF344:
	.ascii	"aszFamily\000"
.LASF414:
	.ascii	"COM0R20_ECard_s\000"
.LASF444:
	.ascii	"VendorBlock4Desc\000"
.LASF93:
	.ascii	"stFound\000"
.LASF579:
	.ascii	"pszStartingLane\000"
.LASF361:
	.ascii	"EeeP_LFP2_Cfg\000"
.LASF256:
	.ascii	"Interface\000"
.LASF501:
	.ascii	"ulConvertStr2NumEx\000"
.LASF431:
	.ascii	"ValidMinSizeDesc\000"
.LASF460:
	.ascii	"ValidUsbHSRange\000"
.LASF553:
	.ascii	"pSwitchDevFuncAddr\000"
.LASF488:
	.ascii	"strcpy\000"
.LASF88:
	.ascii	"UINT16RangeDesc\000"
.LASF400:
	.ascii	"au8USBDesc\000"
.LASF314:
	.ascii	"DisplayInterfaceTokens\000"
.LASF75:
	.ascii	"uiMaxLength\000"
.LASF545:
	.ascii	"HandleSmbiosSystemBlock\000"
.LASF341:
	.ascii	"SmbiosSystem_s\000"
.LASF273:
	.ascii	"DDIDesc\000"
.LASF61:
	.ascii	"Clean\000"
.LASF298:
	.ascii	"DDI1TL\000"
.LASF585:
	.ascii	"COM0PCIe_Help\000"
.LASF396:
	.ascii	"au8DeviceFlav\000"
.LASF255:
	.ascii	"EeePLFPDataBlock_s\000"
.LASF258:
	.ascii	"EeePLFPDataBlock_t\000"
.LASF381:
	.ascii	"EeeP_CustomBlock4_Cfg\000"
.LASF372:
	.ascii	"EeeP_VendorBlock5_Cfg\000"
.LASF494:
	.ascii	"malloc\000"
.LASF76:
	.ascii	"uiPreserveTrailingSpaces\000"
.LASF541:
	.ascii	"pu16Handles2\000"
.LASF184:
	.ascii	"ProductName\000"
.LASF592:
	.ascii	"pszMaxCount\000"
.LASF405:
	.ascii	"au8DDI1\000"
.LASF371:
	.ascii	"EeeP_VendorBlock4_Cfg\000"
.LASF483:
	.ascii	"EeePSetCRC\000"
.LASF228:
	.ascii	"SMBIOS_ChassisType_Tower\000"
.LASF502:
	.ascii	"printf\000"
.LASF354:
	.ascii	"COM0_SMBIOS_Chassis\000"
.LASF347:
	.ascii	"SmbiosChassis_s\000"
.LASF353:
	.ascii	"SmbiosChassis_t\000"
.LASF554:
	.ascii	"pu8SwitchDevFuncAddr\000"
.LASF176:
	.ascii	"CDBHdr\000"
.LASF393:
	.ascii	"EeePI2CDevice\000"
.LASF63:
	.ascii	"Default\000"
.LASF364:
	.ascii	"au16VendorId\000"
.LASF552:
	.ascii	"stElementCnt\000"
.LASF136:
	.ascii	"SMBIOS_TypePROCESSOR_INFORMATION\000"
.LASF384:
	.ascii	"EeePExtI2CDevice_s\000"
.LASF52:
	.ascii	"cuiRequired\000"
.LASF388:
	.ascii	"EeePExtI2CDevice_t\000"
.LASF154:
	.ascii	"SMBIOS_TypePORTABLE_BATTERY\000"
.LASF527:
	.ascii	"pvFileBuffer\000"
.LASF62:
	.ascii	"Help\000"
.LASF457:
	.ascii	"EeePEEPWriteLenTL\000"
.LASF395:
	.ascii	"au16DeviceId\000"
.LASF564:
	.ascii	"HandleEeePExpEepHeaderBlock\000"
.LASF243:
	.ascii	"SMBIOS_ChassisType_Rack_Mount_Chassis\000"
.LASF250:
	.ascii	"NumPowerCords\000"
.LASF59:
	.ascii	"Handlers_s\000"
.LASF72:
	.ascii	"Handlers_t\000"
.LASF244:
	.ascii	"SMBIOS_ChassisType_Sealed_case_PC\000"
.LASF455:
	.ascii	"EEPDeviceSizeTL\000"
.LASF26:
	.ascii	"pNumberRange\000"
.LASF107:
	.ascii	"EeePUDId_s\000"
.LASF112:
	.ascii	"EeePUDId_t\000"
.LASF216:
	.ascii	"CCElement_s\000"
.LASF220:
	.ascii	"CCElement_t\000"
.LASF423:
	.ascii	"au8SER_IRQ\000"
.LASF485:
	.ascii	"ParseCfgFile\000"
.LASF162:
	.ascii	"SMBIOS_TypeOUT_OF_BAND_REMOTE_ACCESS\000"
.LASF161:
	.ascii	"SMBIOS_TypeELECTRICAL_CURRENT_PROBE\000"
.LASF151:
	.ascii	"SMBIOS_TypeMEMORY_ARRAY_MAPPED_ADDRESS\000"
.LASF207:
	.ascii	"Product\000"
.LASF16:
	.ascii	"long unsigned int\000"
.LASF119:
	.ascii	"DBlockId\000"
.LASF83:
	.ascii	"PNPID_Element_funcs\000"
.LASF34:
	.ascii	"pTokenList\000"
.LASF252:
	.ascii	"CElementSize\000"
.LASF334:
	.ascii	"aulInsideCrc\000"
.LASF100:
	.ascii	"EeePCmn_s\000"
.LASF106:
	.ascii	"EeePCmn_t\000"
.LASF598:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux\000"
.LASF67:
	.ascii	"stBitOffset\000"
.LASF436:
	.ascii	"LFPData0Desc\000"
.LASF64:
	.ascii	"CfgElementDesc_s\000"
.LASF71:
	.ascii	"CfgElementDesc_t\000"
.LASF140:
	.ascii	"SMBIOS_TypePORT_CONNECTOR_INFORMATION\000"
.LASF394:
	.ascii	"COM0R20_CB_HDR_s\000"
.LASF96:
	.ascii	"Element\000"
.LASF217:
	.ascii	"ElementType\000"
.LASF581:
	.ascii	"pszGen\000"
.LASF468:
	.ascii	"EeePExpHdr_Desc\000"
.LASF299:
	.ascii	"DisplayInterfaceTL\000"
.LASF138:
	.ascii	"SMBIOS_TypeMEMORY_MODULE_INFORMATION\000"
.LASF450:
	.ascii	"CustomBlock3Desc\000"
.LASF7:
	.ascii	"uintptr_t\000"
.LASF386:
	.ascii	"au8Bus\000"
.LASF229:
	.ascii	"SMBIOS_ChassisType_Portable\000"
.LASF514:
	.ascii	"cszCfgFileName\000"
.LASF443:
	.ascii	"VendorBlock3Desc\000"
.LASF73:
	.ascii	"StringDesc_s\000"
.LASF77:
	.ascii	"StringDesc_t\000"
.LASF157:
	.ascii	"SMBIOS_TypeSYSTEM_POWER_CONTROLS\000"
.LASF360:
	.ascii	"EeeP_LFP1_Cfg\000"
.LASF104:
	.ascii	"BlkOffset\000"
.LASF105:
	.ascii	"DeviceDesc\000"
.LASF558:
	.ascii	"pExtI2C_cgf\000"
.LASF515:
	.ascii	"EeeP_CreateCOM0R20_MEEPImage\000"
.LASF295:
	.ascii	"SmbiosChassisTypesTL\000"
.LASF499:
	.ascii	"siFormattedMessage_SC\000"
.LASF189:
	.ascii	"SKU_Number\000"
.LASF428:
	.ascii	"EeeP_Exp_Hdr_t\000"
.LASF542:
	.ascii	"pu8Handles2\000"
.LASF247:
	.ascii	"EeePChassisInfo_s\000"
.LASF574:
	.ascii	"uiGen\000"
.LASF181:
	.ascii	"EeePSystemInfo_s\000"
.LASF191:
	.ascii	"EeePSystemInfo_t\000"
.LASF325:
	.ascii	"aszManuf\000"
.LASF351:
	.ascii	"au8NumPowerCords\000"
.LASF37:
	.ascii	"IndxDesc_s\000"
.LASF45:
	.ascii	"IndxDesc_t\000"
.LASF565:
	.ascii	"pEeePExp_cgf\000"
.LASF2:
	.ascii	"long long int\000"
.LASF254:
	.ascii	"EeePChassisInfo_t\000"
.LASF380:
	.ascii	"EeeP_CustomBlock3_Cfg\000"
.LASF50:
	.ascii	"NodeType\000"
.LASF28:
	.ascii	"TokenDesc_s\000"
.LASF31:
	.ascii	"TokenDesc_t\000"
.LASF185:
	.ascii	"Version\000"
.LASF356:
	.ascii	"au8Interface\000"
.LASF370:
	.ascii	"EeeP_VendorBlock3_Cfg\000"
.LASF538:
	.ascii	"pSmbiosModule_cgf\000"
.LASF54:
	.ascii	"stReserved0\000"
.LASF55:
	.ascii	"stReserved1\000"
.LASF226:
	.ascii	"SMBIOS_ChassisType_Pizza_Box\000"
.LASF6:
	.ascii	"double\000"
.LASF68:
	.ascii	"stBitLength\000"
.LASF234:
	.ascii	"SMBIOS_ChassisType_All_In_One\000"
.LASF65:
	.ascii	"pcszElementName\000"
.LASF327:
	.ascii	"aszVersion\000"
.LASF288:
	.ascii	"Ser0BaseAddr\000"
.LASF223:
	.ascii	"SMBIOS_ChassisType_Unknown\000"
.LASF476:
	.ascii	"ValidIOAddrPortDesc\000"
.LASF183:
	.ascii	"Manufacturer\000"
.LASF260:
	.ascii	"VendBlockId\000"
.LASF221:
	.ascii	"ChassisTypes_e\000"
.LASF313:
	.ascii	"DDI2TL\000"
.LASF352:
	.ascii	"aCElements\000"
.LASF551:
	.ascii	"pCOM0ExpCard_cgf\000"
.LASF257:
	.ascii	"RawData\000"
.LASF246:
	.ascii	"ChassisTypes_t\000"
.LASF513:
	.ascii	"pBHandel\000"
.LASF253:
	.ascii	"CElement\000"
.LASF568:
	.ascii	"HandleCOM0R20CBHeaderBlock\000"
.LASF387:
	.ascii	"au8DeviceDesc\000"
.LASF321:
	.ascii	"ValidHandlesDesc\000"
.LASF375:
	.ascii	"au8BlockId\000"
.LASF586:
	.ascii	"szHelpBuf\000"
.LASF86:
	.ascii	"GUID_Element_funcs\000"
.LASF187:
	.ascii	"UUID\000"
.LASF92:
	.ascii	"pszBlockName\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF305:
	.ascii	"SmbiosStructureTypesTokens\000"
.LASF287:
	.ascii	"SerIRQ\000"
.LASF577:
	.ascii	"pCurElement\000"
.LASF410:
	.ascii	"COM0R20_M_HDR_s\000"
.LASF412:
	.ascii	"COM0R20_M_HDR_t\000"
.LASF505:
	.ascii	"EApiSprintfA\000"
.LASF401:
	.ascii	"au8SASDesc\000"
.LASF149:
	.ascii	"SMBIOS_TypeMEMORY_DEVICE\000"
.LASF199:
	.ascii	"SMBIOS_BoardType_IO_Module\000"
.LASF95:
	.ascii	"Block\000"
.LASF498:
	.ascii	"GetElementDesc\000"
.LASF462:
	.ascii	"ValidUsbSSRange\000"
.LASF439:
	.ascii	"LFPData3Desc\000"
.LASF153:
	.ascii	"SMBIOS_TypeBUILT_IN_POINTING_DEVICE\000"
.LASF124:
	.ascii	"EeePuint16u_t\000"
.LASF123:
	.ascii	"EeePuint16u_u\000"
.LASF324:
	.ascii	"au16Handle\000"
.LASF46:
	.ascii	"CfgBlockNode\000"
.LASF317:
	.ascii	"StandardExtendedTL\000"
.LASF571:
	.ascii	"uiBasePort\000"
.LASF518:
	.ascii	"pCfgBlockDesc\000"
.LASF42:
	.ascii	"pIndx\000"
.LASF449:
	.ascii	"CustomBlock2Desc\000"
.LASF30:
	.ascii	"ulTokenValue\000"
.LASF177:
	.ascii	"Type\000"
.LASF318:
	.ascii	"SmbiosModuleFeatureFlagsTokens\000"
.LASF442:
	.ascii	"VendorBlock2Desc\000"
.LASF241:
	.ascii	"SMBIOS_ChassisType_Peripheral_Chassis\000"
.LASF127:
	.ascii	"EeePEeePGUID_s\000"
.LASF359:
	.ascii	"EeeP_LFP0_Cfg\000"
.LASF465:
	.ascii	"ValidModuleTypesDesc\000"
.LASF300:
	.ascii	"ImpNotImpTL\000"
.LASF517:
	.ascii	"EeeP_CreateEEPROMImage\000"
.LASF557:
	.ascii	"HandleEeePExpI2CBlock\000"
.LASF335:
	.ascii	"aulMinSize\000"
.LASF403:
	.ascii	"au8MiscIO1\000"
.LASF404:
	.ascii	"au8MiscIO2\000"
.LASF196:
	.ascii	"SMBIOS_BoardType_ConnectivitySwitch\000"
.LASF309:
	.ascii	"SasTokens\000"
.LASF222:
	.ascii	"SMBIOS_ChassisType_Other\000"
.LASF302:
	.ascii	"PCIeGeneration\000"
.LASF597:
	.ascii	"/home/hkh/git/eapidk-code-r76-trunk/apps/EeePProg/l"
	.ascii	"inux/../EeePCfg.c\000"
.LASF429:
	.ascii	"EeePExpHdr_cgf\000"
.LASF339:
	.ascii	"COM0_SMBIOS_Module\000"
.LASF512:
	.ascii	"EeeP_CreateEeePExtEEPImage\000"
.LASF132:
	.ascii	"SMBIOS_TypeBIOS_INFORMATION\000"
.LASF56:
	.ascii	"pHAndlers\000"
.LASF283:
	.ascii	"ComExpressPort\000"
.LASF555:
	.ascii	"HandleCOM0R20SerialCfgBlock\000"
.LASF572:
	.ascii	"uiEncWidth\000"
.LASF543:
	.ascii	"pszStrBuffer\000"
.LASF81:
	.ascii	"Token_Element_funcs\000"
.LASF595:
	.ascii	"uiMaxCount\000"
.LASF434:
	.ascii	"SmbiosSystemDesc\000"
.LASF114:
	.ascii	"EeePHdr\000"
.LASF379:
	.ascii	"EeeP_CustomBlock2_Cfg\000"
.LASF225:
	.ascii	"SMBIOS_ChassisType_Low_Profile_Desktop\000"
.LASF118:
	.ascii	"DBlockIdHdr_s\000"
.LASF121:
	.ascii	"DBlockIdHdr_t\000"
.LASF5:
	.ascii	"FILE\000"
.LASF109:
	.ascii	"DeviceId\000"
.LASF369:
	.ascii	"EeeP_VendorBlock2_Cfg\000"
.LASF204:
	.ascii	"SMBIOS_BoardType_Interconnect_Board\000"
.LASF470:
	.ascii	"ValidCOM0PCIePortDesc\000"
.LASF301:
	.ascii	"SasTL\000"
.LASF97:
	.ascii	"CfgNodeGen_t\000"
.LASF122:
	.ascii	"CfgNodeGen_u\000"
.LASF418:
	.ascii	"COM0R20_ECard_t\000"
.LASF190:
	.ascii	"Family\000"
.LASF417:
	.ascii	"au8SwitchPFA\000"
.LASF239:
	.ascii	"SMBIOS_ChassisType_SubChassis\000"
.LASF90:
	.ascii	"InsideCrcTL\000"
.LASF15:
	.ascii	"long long unsigned int\000"
.LASF524:
	.ascii	"HandleCustomBlock\000"
.LASF163:
	.ascii	"SMBIOS_TypeBOOT_INTEGRITY_SERVICES_ENTRY_POINT\000"
.LASF12:
	.ascii	"uint16_t\000"
.LASF389:
	.ascii	"EeePExtI2CDevice0\000"
.LASF390:
	.ascii	"EeePExtI2CDevice1\000"
.LASF533:
	.ascii	"pdHeader\000"
.LASF508:
	.ascii	"EeeP_CreateEeePExtEEPCfg\000"
.LASF487:
	.ascii	"ReadBinaryFile\000"
.LASF167:
	.ascii	"SMBIOS_TypeMANAGEMENT_DEVICE_COMPONENT\000"
.LASF49:
	.ascii	"CfgNodeDummy_s\000"
.LASF58:
	.ascii	"CfgNodeDummy_t\000"
.LASF481:
	.ascii	"PrintCfgFile\000"
.LASF593:
	.ascii	"uiCEType\000"
.LASF308:
	.ascii	"PCIeGenerationTL\000"
.LASF84:
	.ascii	"I2C_EEPROM_Addr_funcs\000"
.LASF85:
	.ascii	"COM0PCIe_Element_funcs\000"
.LASF521:
	.ascii	"stHeaderSize\000"
.LASF179:
	.ascii	"Handle\000"
.LASF280:
	.ascii	"ExpCardBlock_s\000"
.LASF285:
	.ascii	"ExpCardBlock_t\000"
.LASF507:
	.ascii	"GenClear_Element\000"
.LASF332:
	.ascii	"au16LocationHandle\000"
.LASF461:
	.ascii	"ValidUsbHSRangeDesc\000"
.LASF186:
	.ascii	"SerialNumber\000"
.LASF374:
	.ascii	"EeePCustomBlock_s\000"
.LASF376:
	.ascii	"EeePCustomBlock_t\000"
.LASF529:
	.ascii	"stBlockLength\000"
.LASF500:
	.ascii	"memset\000"
.LASF523:
	.ascii	"pDesc\000"
.LASF233:
	.ascii	"SMBIOS_ChassisType_Docking_Station\000"
.LASF289:
	.ascii	"Ser1BaseAddr\000"
.LASF51:
	.ascii	"pszName\000"
.LASF286:
	.ascii	"SerPortCfgBlock_s\000"
.LASF290:
	.ascii	"SerPortCfgBlock_t\000"
.LASF519:
	.ascii	"stCfgBlockCnt\000"
.LASF218:
	.ascii	"MinNum\000"
.LASF237:
	.ascii	"SMBIOS_ChassisType_Main_Server_Chassis\000"
.LASF98:
	.ascii	"PreserveTrailingSpaces\000"
.LASF503:
	.ascii	"GetTokenValueStrip\000"
.LASF129:
	.ascii	"SmbiosHandle_t\000"
.LASF448:
	.ascii	"CustomBlock1Desc\000"
.LASF159:
	.ascii	"SMBIOS_TypeCOOLING_DEVICE\000"
.LASF178:
	.ascii	"Length\000"
.LASF212:
	.ascii	"BoardType\000"
.LASF441:
	.ascii	"VendorBlock1Desc\000"
.LASF520:
	.ascii	"pu8DevDesc\000"
.LASF522:
	.ascii	"StatusCode\000"
.LASF368:
	.ascii	"EeeP_VendorBlock1_Cfg\000"
.LASF43:
	.ascii	"pCmp\000"
.LASF453:
	.ascii	"CustomBlock6Desc\000"
.LASF188:
	.ascii	"Reserved0\000"
.LASF348:
	.ascii	"au8ChassisType\000"
.LASF566:
	.ascii	"HandleCOM0R20MHeaderBlock\000"
.LASF367:
	.ascii	"EeeP_VendorBlock0_Cfg\000"
.LASF504:
	.ascii	"strchr\000"
.LASF57:
	.ascii	"pDataContainer\000"
.LASF38:
	.ascii	"stUsedCnt\000"
.LASF279:
	.ascii	"COM0R20_M_t\000"
.LASF496:
	.ascii	"EeeP_Set16BitValue_BE\000"
.LASF266:
	.ascii	"COM0R20_CB_s\000"
.LASF276:
	.ascii	"COM0R20_CB_t\000"
.LASF493:
	.ascii	"SetDynBlockHeader\000"
.LASF160:
	.ascii	"SMBIOS_TypeTEMPERATURE_PROBE\000"
.LASF296:
	.ascii	"IRQTL\000"
.LASF482:
	.ascii	"CleanStruct\000"
.LASF242:
	.ascii	"SMBIOS_ChassisType_RAID_Chassis\000"
.LASF486:
	.ascii	"fprintf\000"
.LASF274:
	.ascii	"PCIeGen\000"
.LASF230:
	.ascii	"SMBIOS_ChassisType_Laptop\000"
.LASF378:
	.ascii	"EeeP_CustomBlock1_Cfg\000"
.LASF459:
	.ascii	"ExtI2CDevice1Desc\000"
.LASF440:
	.ascii	"VendorBlock0Desc\000"
.LASF349:
	.ascii	"au32OEM\000"
.LASF330:
	.ascii	"au8FeatureFlag\000"
.LASF350:
	.ascii	"au8Height\000"
.LASF78:
	.ascii	"stderr\000"
.LASF9:
	.ascii	"short int\000"
.LASF210:
	.ascii	"Location\000"
.LASF142:
	.ascii	"SMBIOS_TypeON_BOARD_DEVICES_INFORMATION\000"
.LASF203:
	.ascii	"SMBIOS_BoardType_ProcessorMemory_Module\000"
.LASF101:
	.ascii	"DontCareByte\000"
.LASF365:
	.ascii	"au8VSBlockId\000"
.LASF562:
	.ascii	"stMinBlckLen\000"
.LASF224:
	.ascii	"SMBIOS_ChassisType_Desktop\000"
.LASF182:
	.ascii	"SDBHdr\000"
.LASF587:
	.ascii	"stHBufLen\000"
.LASF510:
	.ascii	"OutStream\000"
.LASF150:
	.ascii	"SMBIOS_Type32_BIT_MEMORY_ERROR_INFORMATION\000"
.LASF306:
	.ascii	"SmbiosBoardTypesTokens\000"
.LASF536:
	.ascii	"pVendorBlock\000"
.LASF430:
	.ascii	"ValidMinSize\000"
.LASF588:
	.ascii	"SMBIOS_CE_Element\000"
.LASF147:
	.ascii	"SMBIOS_TypeSYSTEM_EVENT_LOG\000"
.LASF208:
	.ascii	"AssetTag\000"
.LASF383:
	.ascii	"EeeP_CustomBlock6_Cfg\000"
.LASF416:
	.ascii	"au8PortDesc\000"
.LASF307:
	.ascii	"PCIeLaneWidthsTL\000"
.LASF472:
	.ascii	"ValidCOM0USBPortDesc\000"
.LASF155:
	.ascii	"SMBIOS_TypeSYSTEM_RESET\000"
.LASF144:
	.ascii	"SMBIOS_TypeSYSTEM_CONFIGURATION_OPTIONS\000"
.LASF263:
	.ascii	"DeviceAddr\000"
.LASF474:
	.ascii	"COM0R20_ExpCard1Desc\000"
.LASF108:
	.ascii	"VendId\000"
.LASF415:
	.ascii	"au8ExpCardNum\000"
.LASF489:
	.ascii	"strlen\000"
.LASF511:
	.ascii	"EeeP_CreateCOM0R20_CBCfg\000"
.LASF79:
	.ascii	"String_Element_funcs\000"
.LASF578:
	.ascii	"pszValue\000"
.LASF589:
	.ascii	"pElement\000"
.LASF544:
	.ascii	"pElementsDesc\000"
.LASF211:
	.ascii	"LocHdl\000"
.LASF497:
	.ascii	"memcpy\000"
.LASF397:
	.ascii	"au8RevId\000"
.LASF322:
	.ascii	"IRQTokens\000"
.LASF69:
	.ascii	"pHandlers\000"
.LASF540:
	.ascii	"pHandles1\000"
.LASF549:
	.ascii	"pHandles2\000"
.LASF466:
	.ascii	"COM0R20_CB_Desc\000"
.LASF479:
	.ascii	"COM0R20_M_CfgDesc\000"
.LASF590:
	.ascii	"pszCEType\000"
.LASF531:
	.ascii	"ExitPoint\000"
.LASF570:
	.ascii	"pulCurPort\000"
.LASF195:
	.ascii	"SMBIOS_BoardType_ServerBlade\000"
.LASF506:
	.ascii	"No_Default_Txt\000"
.LASF357:
	.ascii	"aszFilename\000"
.LASF99:
	.ascii	"DeleteTrailingSpaces\000"
.LASF213:
	.ascii	"ContainedHndls\000"
.LASF432:
	.ascii	"SmbiosModuleDesc\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF110:
	.ascii	"DeviceFlav\000"
.LASF548:
	.ascii	"pSmbiosChassis_cgf\000"
.LASF268:
	.ascii	"UsbDesc\000"
.LASF425:
	.ascii	"COM0R20_SERIAL_t\000"
.LASF447:
	.ascii	"CustomBlock0Desc\000"
.LASF102:
	.ascii	"EepId\000"
.LASF80:
	.ascii	"Number_Element_funcs\000"
.LASF463:
	.ascii	"ValidUsbSSRangeDesc\000"
.LASF413:
	.ascii	"COM0R20_M_cgf\000"
.LASF133:
	.ascii	"SMBIOS_TypeSYSTEM_INFORMATION\000"
.LASF594:
	.ascii	"uiMinCount\000"
.LASF135:
	.ascii	"SMBIOS_TypeSYSTEM_ENCLOSURE_OR_CHASSIS\000"
.LASF304:
	.ascii	"SMBIOS_CE_Element_funcs\000"
.LASF345:
	.ascii	"SmbiosSystem_t\000"
.LASF240:
	.ascii	"SMBIOS_ChassisType_Bus_Expansion_Chassis\000"
.LASF491:
	.ascii	"free\000"
.LASF137:
	.ascii	"SMBIOS_TypeMEMORY_CONTROLLER_INFORMATION\000"
.LASF433:
	.ascii	"SmbiosCarrierDesc\000"
.LASF141:
	.ascii	"SMBIOS_TypeSYSTEM_SLOTS\000"
.LASF316:
	.ascii	"StandardExtendedTokens\000"
.LASF235:
	.ascii	"SMBIOS_ChassisType_Sub_Notebook\000"
.LASF13:
	.ascii	"short unsigned int\000"
.LASF245:
	.ascii	"SMBIOS_ChassisType_Multi_system_chassis\000"
.LASF526:
	.ascii	"pHeader\000"
.LASF312:
	.ascii	"DDI2Tokens\000"
.LASF66:
	.ascii	"Instances\000"
.LASF209:
	.ascii	"FeatureFlag\000"
.LASF399:
	.ascii	"au8SpecRev\000"
.LASF33:
	.ascii	"uiTokenCount\000"
.LASF277:
	.ascii	"COM0R20_M_s\000"
.LASF22:
	.ascii	"uiType\000"
.LASF411:
	.ascii	"au8MType\000"
.LASF165:
	.ascii	"SMBIOS_Type64_BIT_MEMORY_ERROR_INFORMATION\000"
.LASF311:
	.ascii	"DDI1Tokens\000"
.LASF333:
	.ascii	"au8BoardType\000"
.LASF377:
	.ascii	"EeeP_CustomBlock0_Cfg\000"
.LASF458:
	.ascii	"ExtI2CDevice0Desc\000"
.LASF32:
	.ascii	"TokenListDesc_s\000"
.LASF35:
	.ascii	"TokenListDesc_t\000"
.LASF131:
	.ascii	"SMBIOS_BlockId_e\000"
.LASF231:
	.ascii	"SMBIOS_ChassisType_Notebook\000"
.LASF402:
	.ascii	"au8LanDesc\000"
.LASF238:
	.ascii	"SMBIOS_ChassisType_Expansion_Chassis\000"
.LASF251:
	.ascii	"CElementCnt\000"
.LASF174:
	.ascii	"SMBIOS_BlockId_t\000"
.LASF420:
	.ascii	"COM0R20_ECard1_cgf\000"
.LASF467:
	.ascii	"COM0R20_M_Desc\000"
.LASF303:
	.ascii	"PCIeLaneWidths\000"
.LASF575:
	.ascii	"COM0PCIe_Element\000"
.LASF328:
	.ascii	"aszSerialNum\000"
.LASF452:
	.ascii	"CustomBlock5Desc\000"
.LASF406:
	.ascii	"au8DDI2\000"
.LASF269:
	.ascii	"SasDesc\000"
.LASF168:
	.ascii	"SMBIOS_TypeMANAGEMENT_DEVICE_THRESHOLD_DATA\000"
.LASF134:
	.ascii	"SMBIOS_TypeBASE_BOARD_MODULE_INFORMATION\000"
.LASF192:
	.ascii	"SMBIOS_BoardTypes_e\000"
.LASF576:
	.ascii	"pElementDesc\000"
.LASF319:
	.ascii	"SmbiosChassisTypesTokens\000"
.LASF509:
	.ascii	"EeeP_CreateCOM0R20_MEEPCfg\000"
.LASF582:
	.ascii	"uiStartingLane\000"
.LASF435:
	.ascii	"SmbiosChassisDesc\000"
.LASF569:
	.ascii	"pCOM0R20_CB_cgf\000"
.LASF205:
	.ascii	"SMBIOS_BoardTypes_t\000"
.LASF139:
	.ascii	"SMBIOS_TypeCACHE_INFORMATION\000"
.LASF89:
	.ascii	"UINT32RangeDesc\000"
	.ident	"GCC: (Buildroot 2022.02) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
