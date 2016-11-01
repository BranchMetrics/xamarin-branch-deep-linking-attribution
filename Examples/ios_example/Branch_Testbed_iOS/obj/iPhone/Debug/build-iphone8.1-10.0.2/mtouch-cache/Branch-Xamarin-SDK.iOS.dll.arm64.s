.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 4.6.1 (tarball Mon Oct  3 15:04:52 EDT 2016)"
	.asciz "Branch-Xamarin-SDK.iOS.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS__ctor
BranchXamarinSDK_BranchIOS__ctor:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #112]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_1
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_getInstance
BranchXamarinSDK_BranchIOS_getInstance:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #120]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xb5000320
.word 0xf9400bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_2
.word 0xf9001fa0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #136]
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_4
.word 0xf9400bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_5
.word 0xf9400bb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_get_NativeBranch
BranchXamarinSDK_BranchIOS_get_NativeBranch:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #144]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_6
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
bl _p_7
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface
BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #152]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xb40000c0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x140000dd
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #160]
.word 0xd2800080
.word 0xaa1803e0
.word 0xd2800082
.word 0xf940031e
bl _p_8
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x350001a0
.word 0xf94017b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #168]
bl _p_9
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_3
.word 0xf90023a0
bl _p_10
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9000001
.word 0xf94017b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400001

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xf9000001
.word 0xf94017b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400002
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_11
.word 0xf94017b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000459
.word 0xf94017b1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xf90027a0
.word 0xaa1903e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_12
.word 0xf9002ba0
.word 0xaa1903e1
bl _p_13
.word 0xf94017b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf90023a1
.word 0xf9001001
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94017b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001b
.word 0xf94017b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xf90027a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_12
.word 0xf9002ba0
bl _p_15
.word 0xf94017b1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf90023a1
.word 0xf9001001
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #200]
.word 0x39400000
.word 0x350001a0
.word 0xf94017b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xb9800000
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002a1
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9407030
.word 0xd63f0200
.word 0xf94017b1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400002
.word 0xf94013a1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9409050
.word 0xd63f0200
.word 0xf94017b1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9440631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface
BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #216]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xb40000c0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x140000dd
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #160]
.word 0xd2800080
.word 0xaa1803e0
.word 0xd2800082
.word 0xf940031e
bl _p_8
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x350001a0
.word 0xf94017b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #168]
bl _p_9
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_3
.word 0xf90023a0
bl _p_10
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9000001
.word 0xf94017b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400001

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #184]
.word 0xf9000001
.word 0xf94017b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400002
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_11
.word 0xf94017b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000459
.word 0xf94017b1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xf90027a0
.word 0xaa1903e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_12
.word 0xf9002ba0
.word 0xaa1903e1
bl _p_13
.word 0xf94017b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf90023a1
.word 0xf9001001
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94017b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001b
.word 0xf94017b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400000
.word 0xf90027a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_12
.word 0xf9002ba0
bl _p_15
.word 0xf94017b1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf90023a1
.word 0xf9001001
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #200]
.word 0x39400000
.word 0x350001a0
.word 0xf94017b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xb9800000
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002a1
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9407030
.word 0xd63f0200
.word 0xf94017b1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf9400002
.word 0xf94013a1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408c50
.word 0xd63f0200
.word 0xf94017b1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9440631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_SetDebug
BranchXamarinSDK_BranchIOS_SetDebug:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #224]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410030
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface
BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #232]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_17
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #240]
bl _p_3
.word 0xf90037a0
.word 0xaa1a03e1
bl _p_18
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xaa0003f8
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_19
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_16
.word 0xf9002fa0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xf90027a0
.word 0xaa1803e0
.word 0xf90033a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540006a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #248]
bl _p_3
.word 0xf94033a1
.word 0xf90023a1
.word 0xf9001001
.word 0xf9002ba0
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf9402fa3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #256]
.word 0xf9001440

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xf9002040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xf9401404
.word 0xf9000c44
.word 0xf9401000
.word 0xf9000840
.word 0xd2800000
.word 0x3901805f
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9415070
.word 0xd63f0200
.word 0xf94017b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_6:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface
BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #280]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_21
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #288]
bl _p_3
.word 0xf90037a0
.word 0xaa1a03e1
bl _p_22
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xaa0003f8
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_19
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_16
.word 0xf9002fa0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xf90027a0
.word 0xaa1803e0
.word 0xf90033a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540006a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #296]
bl _p_3
.word 0xf94033a1
.word 0xf90023a1
.word 0xf9001001
.word 0xf9002ba0
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf9402fa3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #304]
.word 0xf9001440

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf9002040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xf9401404
.word 0xf9000c44
.word 0xf9401000
.word 0xf9000840
.word 0xd2800000
.word 0x3901805f
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9414c70
.word 0xd63f0200
.word 0xf94017b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_7:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetLastReferringParams
BranchXamarinSDK_BranchIOS_GetLastReferringParams:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9413030
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
bl _p_23
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject
BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #336]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9413430
.word 0xd63f0200
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_24
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_25
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties
BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #352]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9413830
.word 0xd63f0200
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_26
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #360]
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_27
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetFirstReferringParams
BranchXamarinSDK_BranchIOS_GetFirstReferringParams:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9425430
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
bl _p_23
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject
BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9425830
.word 0xd63f0200
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_24
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_25
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties
BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9425c30
.word 0xd63f0200
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_26
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #360]
bl _p_3
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_27
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_ResetUserSession
BranchXamarinSDK_BranchIOS_ResetUserSession:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410430
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface
BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xaa0003f8
.word 0xf90013a1
.word 0xf90017a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90043a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #408]
bl _p_3
.word 0xf94043a1
.word 0xf9003fa0
bl _p_28
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xaa0003f7
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400f02
.word 0xaa1703e0
.word 0xaa0203e0
.word 0xaa1703e1
.word 0xf940005e
bl _p_19
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_16
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002fa0
.word 0xaa1703e0
.word 0xf9003ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000680

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #248]
bl _p_3
.word 0xf9403ba1
.word 0xf9002ba1
.word 0xf9001001
.word 0xf90033a0
.word 0x91008000
bl _p_14
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf94037a3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #416]
.word 0xf9001440

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xf9002040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #432]
.word 0xf9401404
.word 0xf9000c44
.word 0xf9401000
.word 0xf9000840
.word 0xd2800000
.word 0x3901805f
.word 0xaa0303e0
.word 0xf9400063
.word 0xf940f470
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_f:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface
BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #440]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf90037a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #408]
bl _p_3
.word 0xf94037a1
.word 0xf90033a0
bl _p_28
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_19
.word 0xf94017b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_16
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9002fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000660

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #448]
bl _p_3
.word 0xf9402fa1
.word 0xf90023a1
.word 0xf9001001
.word 0xf90027a0
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #456]
.word 0xf9001420

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #464]
.word 0xf9002020

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9412050
.word 0xd63f0200
.word 0xf94017b1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_10:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties
BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties:
.loc 1 1 0
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xf90023a3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #480]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf94027b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf90057a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #488]
bl _p_3
.word 0xf94057a1
.word 0xf90053a0
bl _p_29
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f6
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9400c02
.word 0xaa1603e0
.word 0xaa0203e0
.word 0xaa1603e1
.word 0xf940005e
bl _p_19
.word 0xf94027b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
bl _p_30
.word 0xf9004fa0
.word 0xf94027b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xaa0003f5
.word 0xf94027b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_31
.word 0xf9004ba0
.word 0xf94027b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf90047a0
.word 0xaa0003f4
.word 0xf94027b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xaa1503e1
.word 0xf9003fa1
.word 0xf90037a0
.word 0xaa1603e0
.word 0xf90043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540006a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #496]
bl _p_3
.word 0xf94043a1
.word 0xf90033a1
.word 0xf9001001
.word 0xf9003ba0
.word 0x91008000
bl _p_14
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf9403fa3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #504]
.word 0xf9001440

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9002040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xf9401404
.word 0xf9000c44
.word 0xf9401000
.word 0xf9000840
.word 0xd2800000
.word 0x3901805f
.word 0xaa0303e0
.word 0xf9400063
.word 0xf9415870
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_11:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string
BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string:
.loc 1 1 0
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xf9001bb7
.word 0xf9001fa0
.word 0xf90023a1
.word 0xf90027a2
.word 0xf9002ba3
.word 0xf9002fa4

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #528]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf94033b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
bl _p_30
.word 0xf9006ba0
.word 0xf94033b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xaa0003f7
.word 0xf94033b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_31
.word 0xf90067a0
.word 0xf94033b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xaa0003f6
.word 0xf94033b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
bl _p_32
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf94033b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xaa0003f5
.word 0xf94033b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa1703e0
.word 0xf90057a0
.word 0xaa1603e0
.word 0xf90053a0
.word 0xf9402fa0
.word 0xf9004fa0
.word 0xaa0103e0
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9418430
.word 0xd63f0200
.word 0xf9004ba0
.word 0xf94033b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xf94053a3
.word 0xf94057a4

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9400000
.word 0xaa0403f4
.word 0xaa0303f3
.word 0xf9003fa2
.word 0xf90043a1
.word 0xb50004c0
.word 0xaa1403e0
.word 0xaa1303e0
.word 0xf9403fa0
.word 0xf9004fa0
.word 0xf94043a0
.word 0xf9004ba0
.word 0xd2800000

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #544]
bl _p_3
.word 0xaa0003e3
.word 0xf9404ba0
.word 0xf9404fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x2, [x16, #552]
.word 0xf9001462

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x2, [x16, #560]
.word 0xf9002062

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x2, [x16, #568]
.word 0xf9401444
.word 0xf9000c64
.word 0xf9401042
.word 0xf9000862
.word 0xd2800002
.word 0x3901807f

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x2, [x16, #536]
.word 0xf9000043
.word 0xf9003fa1
.word 0xf90043a0
.word 0xaa1403e0
.word 0xaa1303e0
.word 0xf9403fa2
.word 0xf94043a3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #536]
.word 0xf9400004
.word 0xaa1403e0
.word 0xaa1303e1
.word 0xf9400285
.word 0xf94138b0
.word 0xd63f0200
.word 0xf94033b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xf9401bb7
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object
BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf94013a0
bl _p_33
.word 0xf90027a0
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xf9402ba3
.word 0xaa0303e0
.word 0xf9400063
.word 0xf940dc70
.word 0xd63f0200
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface
BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf90037a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #592]
bl _p_3
.word 0xf94037a1
.word 0xf90033a0
bl _p_34
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_19
.word 0xf94017b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_16
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9002fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000660

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #448]
bl _p_3
.word 0xf9402fa1
.word 0xf90023a1
.word 0xf9001001
.word 0xf90027a0
.word 0x91008000
bl _p_14
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #600]
.word 0xf9001420

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #608]
.word 0xf9002020

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #616]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9412850
.word 0xd63f0200
.word 0xf94017b1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_14:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string
BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xaa0003f7
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #624]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800016
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf90047a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #592]
bl _p_3
.word 0xf94047a1
.word 0xf90043a0
bl _p_34
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f6
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400ee2
.word 0xaa1603e0
.word 0xaa0203e0
.word 0xaa1603e1
.word 0xf940005e
bl _p_19
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1703e0
bl _p_16
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9802ba0
.word 0x93407c00
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf90033a0
.word 0xaa1603e0
.word 0xf9003fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x540006a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #448]
bl _p_3
.word 0xf9403fa1
.word 0xf9002ba1
.word 0xf9001001
.word 0xf90037a0
.word 0x91008000
bl _p_14
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf94037a3
.word 0xf9403ba4

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #632]
.word 0xf9001460

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #640]
.word 0xf9002060

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #648]
.word 0xf9401405
.word 0xf9000c65
.word 0xf9401000
.word 0xf9000860
.word 0xd2800000
.word 0x3901807f
.word 0xaa0403e0
.word 0xf9400084
.word 0xf9411090
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_15:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool
BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xf9001bb9
.word 0xaa0003f5
.word 0xf9001fa1
.word 0xaa0203f7
.word 0xaa0303f8
.word 0xaa0403f9
.word 0xf90023a5

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #656]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800014
.word 0xf94027b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf90037a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #592]
bl _p_3
.word 0xf94037a1
.word 0xf90033a0
bl _p_34
.word 0xf94027b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f4
.word 0xf94027b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf9400ea2
.word 0xaa1403e0
.word 0xaa0203e0
.word 0xaa1403e1
.word 0xf940005e
bl _p_19
.word 0xf94027b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x394103a0
.word 0x340008e0
.word 0xf94027b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
bl _p_16
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xf90033a0
.word 0xf94027b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xaa1403e0
.word 0xeb1f029f
.word 0x10000011
.word 0x54001000

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #664]
bl _p_3
.word 0xf9001014
.word 0xf90037a0
.word 0x91008000
bl _p_14
.word 0xf94033a3
.word 0xf94037a5
.word 0xf9403ba6

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf90014a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #680]
.word 0xf90020a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9401401
.word 0xf9000ca1
.word 0xf9401000
.word 0xf90008a0
.word 0xd2800000
.word 0x390180bf
.word 0xaa0603e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xd2800004
.word 0xf94000c6
.word 0xf94238d0
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000042
.word 0xf94027b1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
bl _p_16
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xf90033a0
.word 0xf94027b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xaa1403e0
.word 0xeb1f029f
.word 0x10000011
.word 0x54000740

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #664]
bl _p_3
.word 0xf9001014
.word 0xf90037a0
.word 0x91008000
bl _p_14
.word 0xf94033a3
.word 0xf94037a5
.word 0xf9403ba6

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xf90014a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #680]
.word 0xf90020a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #688]
.word 0xf9401401
.word 0xf9000ca1
.word 0xf9401000
.word 0xf90008a0
.word 0xd2800000
.word 0x390180bf
.word 0xaa0603e0
.word 0xaa1703e1
.word 0xaa1803e2
.word 0xd2800024
.word 0xf94000c6
.word 0xf94238d0
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2800800
.word 0xaa1103e1
bl _p_20

Lme_16:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetCredits
BranchXamarinSDK_BranchIOS_GetCredits:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #696]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9423030
.word 0xd63f0200
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string
BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #704]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9422c50
.word 0xd63f0200
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0x93407c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_SetRetryInterval_int
BranchXamarinSDK_BranchIOS_SetRetryInterval_int:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #712]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xb9801ba0
.word 0x1e620000
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_SetMaxRetries_int
BranchXamarinSDK_BranchIOS_SetMaxRetries_int:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #720]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xb9801ba0
.word 0x93407c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940f050
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int
BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #728]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xb9801ba0
.word 0x1e620000
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940ec30
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch
BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #736]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf942a830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject
BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #744]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_30
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9414430
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject
BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #752]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_30
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9415030
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity
BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #760]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9429c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl
BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #768]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9416050
.word 0xd63f0200
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary
BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #776]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_16
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9415c50
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS__cctor
BranchXamarinSDK_BranchIOS__cctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #784]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool
BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #792]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary
BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary:
.loc 1 1 0
.word 0xa9af7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #800]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9004bbf
.word 0xd2800018
.word 0xd2800017
.word 0xf9004fbf
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0x910203a0
.word 0xd2800000
.word 0xf90043a0
.word 0xf90047a0
.word 0xf90053bf
.word 0xd280001a
.word 0xd2800019
.word 0xd2800016
.word 0xf9402fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #808]
bl _p_3
.word 0xf9007ba0
bl _p_35
.word 0xf9402fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9004ba0
.word 0xf9402fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xf9402fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb40057e0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9416430
.word 0xd63f0200
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9004fa0
.word 0xf9402fb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800015
.word 0xf9402fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000294
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xaa1503e1
.word 0x93407ea1
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54005609
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f7
.word 0xf9402fb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xb4004df7
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1703e0
.word 0xf94002e1
.word 0xf9401c30
.word 0xd63f0200
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf9007fa0
.word 0xaa0003f8
.word 0xf9402fb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa0203e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #824]
.word 0xaa0203e0
.word 0xf940005e
bl _p_36
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000300
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa1803e0
.word 0xf940031e
bl _p_36
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34002380
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #808]
bl _p_3
.word 0xf90083a0
bl _p_35
.word 0xf9402fb1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xaa0003f4
.word 0xf9402fb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9007fa0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_37
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xf9407fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940a050
.word 0xd63f0200
.word 0xf90057a0
.word 0xf9402fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9005ba0
.word 0xf94057a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94057a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xeb01001f
.word 0x54000040
.word 0xf9005bbf
.word 0xf9405bb3
.word 0xf9402fb1
.word 0xf943f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xb40017f3
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf940027e
bl _p_38
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9443e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf90053a0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000058
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0x9101c3a0
.word 0xf9005fa0
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #848]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9405fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402fb1
.word 0xf944d631
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x910203a0
.word 0xf9403ba0
.word 0xf90043a0
.word 0xf9403fa0
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf944fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0x910203a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #856]
bl _p_39
.word 0xf90087a0
.word 0xf9402fb1
.word 0xf9452a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9455231
.word 0xb4000051
.word 0xd63f0220
.word 0x910203a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #856]
bl _p_40
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf9457a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9401c30
.word 0xd63f0200
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf945a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xf9407fa2
.word 0xaa1403e0
.word 0xf940029e
bl _p_41
.word 0xf9402fb1
.word 0xf945c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf945e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #864]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9462631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35fff200
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9464e31
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x14000028
.word 0xf90073be
.word 0xf9402fb1
.word 0xf9466a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xb40002e0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9469231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9402fb1
.word 0xf946ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf946ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073be
.word 0xd61f03c0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9471231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba3
.word 0xaa1803e0
.word 0xaa1403e0
.word 0xaa0303e0
.word 0xaa1803e1
.word 0xaa1403e2
.word 0xf940007e
bl _p_41
.word 0xf9402fb1
.word 0xf9474231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9475231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000114
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9477631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #880]
.word 0xaa1803e0
.word 0xf940031e
bl _p_36
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf947aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000300
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf947d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xaa1803e0
.word 0xf940031e
bl _p_36
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9480631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34001780
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9482e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #896]
bl _p_3
.word 0xf90083a0
bl _p_42
.word 0xf9402fb1
.word 0xf9485631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xaa0003fa
.word 0xf9402fb1
.word 0xf9486e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9007fa0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_37
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9489631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xf9407fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940a050
.word 0xd63f0200
.word 0xf90063a0
.word 0xf9402fb1
.word 0xf948c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf90067a0
.word 0xf94063a0
.word 0xeb1f001f
.word 0x54000180
.word 0xf94063a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xeb01001f
.word 0x54000040
.word 0xf90067bf
.word 0xf94067b9
.word 0xf9402fb1
.word 0xf9491631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000bf9
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9493e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800016
.word 0xf9402fb1
.word 0xf9495231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400002d
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9497631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1603e0
.word 0x2a1603e0
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9499a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #912]
.word 0xf940033e
.word 0xaa1903e0
bl _p_43
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf949ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xaa1a03e0
.word 0xf940035e
bl _p_19
.word 0xf9402fb1
.word 0xf949ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf949fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0x110006c0
.word 0xaa0003f6
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94a2631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0x2a1603e0
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf94a4231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940e030
.word 0xd63f0200
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf94a6a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xf94083a1
.word 0xeb01001f
.word 0x9a9f27e0
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf94a8e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35fff620
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94ab631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba3
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1803e1
.word 0xaa1a03e2
.word 0xf940007e
bl _p_41
.word 0xf9402fb1
.word 0xf94ae631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94af631
.word 0xb4000051
.word 0xd63f0220
.word 0x1400002b
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94b1a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf9007fa0
.word 0xaa1803e0
.word 0xf9402ba0
.word 0xf90087a0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_37
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf94b4e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940a050
.word 0xd63f0200
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf94b7a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba2
.word 0xf9407fa3
.word 0xaa0303e0
.word 0xaa1803e1
.word 0xf940007e
bl _p_41
.word 0xf9402fb1
.word 0xf94ba231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94bc231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0x110006a0
.word 0xaa0003f5
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94bee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf9404fa0
.word 0xb9801800
.word 0x6b0002bf
.word 0x54ffac2b
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94c2231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf9007ba0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94c4a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9402fb1
.word 0xf94c5e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_24:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject
BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject:
.loc 1 1 0
.word 0xd2804210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #920]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf90043bf
.word 0xf90047bf
.word 0xb90093bf
.word 0x9101e3a0
.word 0xf9003fbf
.word 0xb9009bbf
.word 0xf90053bf
.word 0xf9402fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000320
.word 0xf9402fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #808]
bl _p_3
.word 0xf90093a0
bl _p_35
.word 0xf9402fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0x14000350
.word 0xf9402fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800120

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800121
bl _p_44
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf900ffa0
.word 0xaa1603e0
.word 0xf90107a0
.word 0xd2800000

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #936]
bl _p_37
.word 0xf90103a0
.word 0xf9402fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94103a2
.word 0xf94107a3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940ffa0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf900f3a0
.word 0xaa1503e0
.word 0xf900fba0
.word 0xd2800020

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #944]
bl _p_37
.word 0xf900f7a0
.word 0xf9402fb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940f7a2
.word 0xf940fba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940f3a0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf900e7a0
.word 0xaa1403e0
.word 0xf900efa0
.word 0xd2800040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #952]
bl _p_37
.word 0xf900eba0
.word 0xf9402fb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba2
.word 0xf940efa3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940e7a0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf900dba0
.word 0xaa1303e0
.word 0xf900e3a0
.word 0xd2800060

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #960]
bl _p_37
.word 0xf900dfa0
.word 0xf9402fb1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940dfa2
.word 0xf940e3a3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940dba0
.word 0xf90057a0
.word 0xf94057a0
.word 0xf900cfa0
.word 0xf94057a0
.word 0xf900d7a0
.word 0xd2800080

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #968]
bl _p_37
.word 0xf900d3a0
.word 0xf9402fb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940d3a2
.word 0xf940d7a3
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940cfa0
.word 0xf9005ba0
.word 0xf9405ba0
.word 0xf900c3a0
.word 0xf9405ba0
.word 0xf900cba0
.word 0xd28000a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #976]
bl _p_37
.word 0xf900c7a0
.word 0xf9402fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940c7a2
.word 0xf940cba3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940c3a0
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xf900b7a0
.word 0xf9405fa0
.word 0xf900bfa0
.word 0xd28000c0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #880]
bl _p_37
.word 0xf900bba0
.word 0xf9402fb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bba2
.word 0xf940bfa3
.word 0xaa0303e0
.word 0xd28000c1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940b7a0
.word 0xf90063a0
.word 0xf94063a0
.word 0xf900aba0
.word 0xf94063a0
.word 0xf900b3a0
.word 0xd28000e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #984]
bl _p_37
.word 0xf900afa0
.word 0xf9402fb1
.word 0xf943de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940afa2
.word 0xf940b3a3
.word 0xaa0303e0
.word 0xd28000e1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940aba0
.word 0xf90067a0
.word 0xf94067a0
.word 0xf9009fa0
.word 0xf94067a0
.word 0xf900a7a0
.word 0xd2800100

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #824]
bl _p_37
.word 0xf900a3a0
.word 0xf9402fb1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a3a2
.word 0xf940a7a3
.word 0xaa0303e0
.word 0xd2800101
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9409fa0
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9446e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800120

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xd2800121
bl _p_44
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xf9009ba0
.word 0xf9406ba0
.word 0xf90097a0
.word 0xd2800000
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9412830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf944c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800017
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9412830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9451631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf9456e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9006fba
.word 0xf9406fa0
.word 0xf9009ba0
.word 0xf9406fa0
.word 0xf90097a0
.word 0xd2800020
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf945c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800037
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9461631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf9466e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90073ba
.word 0xf94073a0
.word 0xf9009ba0
.word 0xf94073a0
.word 0xf90097a0
.word 0xd2800040
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9411830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf946c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800057
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9411830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9471631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf9476e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90077ba
.word 0xf94077a0
.word 0xf9009ba0
.word 0xf94077a0
.word 0xf90097a0
.word 0xd2800060
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf947c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800077
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9481631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf9486e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9007bba
.word 0xf9407ba0
.word 0xf9009ba0
.word 0xf9407ba0
.word 0xf90097a0
.word 0xd2800080
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf948c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800097
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9491631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf900b3a0
.word 0xf9402fb1
.word 0xf9496e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940b3a2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9007fba
.word 0xf9407fa0
.word 0xf9009fa0
.word 0xf9407fa0
.word 0xf900a7a0
.word 0xd28000a0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9411030
.word 0xd63f0200
.word 0xf900afa0
.word 0xf9402fb1
.word 0xf949c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940afa0
.word 0x93407c00
.word 0xb90093a0
.word 0x910243a0
bl _p_46
.word 0xf900aba0
.word 0xf9402fb1
.word 0xf949ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940aba0
bl _p_45
.word 0xf900a3a0
.word 0xf9402fb1
.word 0xf94a0a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a3a2
.word 0xf940a7a3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9409fa0
.word 0xf90083a0
.word 0xf94083a0
.word 0xf9009ba0
.word 0xf94083a0
.word 0xf90097a0
.word 0xd28000c0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94a6a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd28000d7
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94aba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf94b1231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90087ba
.word 0xf94087a0
.word 0xf9009ba0
.word 0xf94087a0
.word 0xf90097a0
.word 0xd28000e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410830
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94b6a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd28000f7
.word 0xb4000600
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410830
.word 0xd63f0200
.word 0xf9009ba0
.word 0xf9402fb1
.word 0xf94bba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0
.word 0x9101c3a1
.word 0xf9008fa1
bl _p_47
.word 0xf9408fbe
.word 0xf90003c0
.word 0xf9402fb1
.word 0xf94be231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x9101e3a0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0x9101e3a0
bl _p_48
.word 0x93407c00
.word 0xf90097a0
.word 0xf9402fb1
.word 0xf94c1231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a0
.word 0xb9009ba0
.word 0x910263a0
bl _p_46
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94c3631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009fa0
.word 0xf9402fb1
.word 0xf94c8e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9008bba
.word 0xf9408ba0
.word 0xf9009ba0
.word 0xf9408ba0
.word 0xf90097a0
.word 0xd2800100
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94ce631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9409ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800117
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94d3631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9009ba0
.word 0xf9402fb1
.word 0xf94d8e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90047ba
.word 0xf9402fb1
.word 0xf94dba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xf94043a1
bl _p_49
.word 0xf90097a0
.word 0xf9402fb1
.word 0xf94dda31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a0
.word 0xf90053a0
.word 0xf9402fb1
.word 0xf94df231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
bl _p_23
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf94e0e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94e2e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf9402fb1
.word 0xf94e4231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2804210
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties
BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties:
.loc 1 1 0
.word 0xa9a67bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1000]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf90043bf
.word 0xf90047bf
.word 0xf9402fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000320
.word 0xf9402fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #808]
bl _p_3
.word 0xf90073a0
bl _p_35
.word 0xf9402fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0x14000282
.word 0xf9402fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28000e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd28000e1
bl _p_44
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf900c7a0
.word 0xaa1603e0
.word 0xf900cfa0
.word 0xd2800000

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #888]
bl _p_37
.word 0xf900cba0
.word 0xf9402fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940cba2
.word 0xf940cfa3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940c7a0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf900bba0
.word 0xaa1503e0
.word 0xf900c3a0
.word 0xd2800020

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1008]
bl _p_37
.word 0xf900bfa0
.word 0xf9402fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940bfa2
.word 0xf940c3a3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940bba0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf900afa0
.word 0xaa1403e0
.word 0xf900b7a0
.word 0xd2800040

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1016]
bl _p_37
.word 0xf900b3a0
.word 0xf9402fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940b3a2
.word 0xf940b7a3
.word 0xaa0303e0
.word 0xd2800041
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940afa0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf900a3a0
.word 0xaa1303e0
.word 0xf900aba0
.word 0xd2800060

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1024]
bl _p_37
.word 0xf900a7a0
.word 0xf9402fb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a7a2
.word 0xf940aba3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf940a3a0
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xf90097a0
.word 0xf9404ba0
.word 0xf9009fa0
.word 0xd2800080

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1032]
bl _p_37
.word 0xf9009ba0
.word 0xf9402fb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba2
.word 0xf9409fa3
.word 0xaa0303e0
.word 0xd2800081
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94097a0
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf9008ba0
.word 0xf9404fa0
.word 0xf90093a0
.word 0xd28000a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
bl _p_37
.word 0xf9008fa0
.word 0xf9402fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408fa2
.word 0xf94093a3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9408ba0
.word 0xf90053a0
.word 0xf94053a0
.word 0xf9007fa0
.word 0xf94053a0
.word 0xf90087a0
.word 0xd28000c0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #832]
bl _p_37
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a2
.word 0xf94087a3
.word 0xaa0303e0
.word 0xd28000c1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9407fa0
.word 0xf9003ba0
.word 0xf9402fb1
.word 0xf9439a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28000e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xd28000e1
bl _p_44
.word 0xf90057a0
.word 0xf94057a0
.word 0xf9007ba0
.word 0xf94057a0
.word 0xf90077a0
.word 0xd2800000
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf943f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800017
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9444231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9449a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9005bba
.word 0xf9405ba0
.word 0xf9007ba0
.word 0xf9405ba0
.word 0xf90077a0
.word 0xd2800020
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf944f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800037
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9454231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9459a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9005fba
.word 0xf9405fa0
.word 0xf9007ba0
.word 0xf9405fa0
.word 0xf90077a0
.word 0xd2800040
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf945f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800057
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9464231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9469a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90063ba
.word 0xf94063a0
.word 0xf9007ba0
.word 0xf94063a0
.word 0xf90077a0
.word 0xd2800060
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf946f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800077
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9410030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9474231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9479a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf90067ba
.word 0xf94067a0
.word 0xf9007ba0
.word 0xf94067a0
.word 0xf90077a0
.word 0xd2800080
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf947f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd2800097
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e030
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9484231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf90093a0
.word 0xf9402fb1
.word 0xf9489a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9006bba
.word 0xf9406ba0
.word 0xf9007fa0
.word 0xf9406ba0
.word 0xf90087a0
.word 0xd28000a0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e830
.word 0xd63f0200
.word 0xf9008fa0
.word 0xf9402fb1
.word 0xf948f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408fa0
.word 0xf90043a0
.word 0x910203a0
bl _p_50
.word 0xf9008ba0
.word 0xf9402fb1
.word 0xf9491631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
bl _p_45
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf9493231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a2
.word 0xf94087a3
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9407fa0
.word 0xf9006fa0
.word 0xf9406fa0
.word 0xf9007ba0
.word 0xf9406fa0
.word 0xf90077a0
.word 0xd28000c0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf9499231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94077a1
.word 0xf9407ba2
.word 0xaa0203fa
.word 0xaa0103f9
.word 0xd28000d7
.word 0xb4000220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940f830
.word 0xd63f0200
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf949e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xaa0003f8
.word 0x14000009
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_45
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf94a3a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba2
.word 0xaa1903e0
.word 0xaa1703e1
.word 0xf9400323
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9003fba
.word 0xf9402fb1
.word 0xf94a6631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf9403ba1
bl _p_49
.word 0xf90077a0
.word 0xf9402fb1
.word 0xf94a8631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf94a9e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
bl _p_23
.word 0xf90073a0
.word 0xf9402fb1
.word 0xf94aba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94ada31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf9402fb1
.word 0xf94aee31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8da7bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object
BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object:
.loc 1 1 0
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1048]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb4001f1a
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf94023b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_51
.word 0x93407c00
.word 0xf9005ba0
.word 0xf94023b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #928]
bl _p_44
.word 0xaa0003f7
.word 0xf94023b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_51
.word 0x93407c00
.word 0xf90057a0
.word 0xf94023b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #992]
bl _p_44
.word 0xaa0003f6
.word 0xf94023b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_52
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0x910163a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_53
.word 0xf94023b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x9101c3a0
.word 0xf9402fa0
.word 0xf9003ba0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94037a0
.word 0xf90043a0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000053
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1056]
bl _p_54
.word 0xf90067a0
.word 0xf94023b1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf90063a0
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1703e1
.word 0xaa1803e1
.word 0xf9005fa0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1064]
bl _p_12
.word 0xf9405fa1
.word 0xf9005ba0
bl _p_55
.word 0xf94023b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba2
.word 0xaa1703e0
.word 0xaa1803e1
.word 0xf94002e3
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94023b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1503e1
.word 0xaa1a03e0
.word 0xf940035e
bl _p_56
.word 0xf90057a0
.word 0xf94023b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
bl _p_45
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a2
.word 0xaa1603e0
.word 0xaa1803e1
.word 0xf94002c3
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1056]
bl _p_57
.word 0x53001c00
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9438631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x35fff340
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x14000015
.word 0xf9004fbe
.word 0xf94023b1
.word 0xf943ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1056]
bl _p_58
.word 0xf94023b1
.word 0xf943ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fbe
.word 0xd61f03c0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e1
bl _p_49
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9444e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f9
.word 0xf94023b1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000015
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9448a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_12
.word 0xf90053a0
bl _p_15
.word 0xf94023b1
.word 0xf944b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f9
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf944da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf944fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94023b1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string
BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1072]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf9002bbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb4001bda
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xf9401fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1080]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xf9003fa0
.word 0xf9401fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #992]
bl _p_44
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1088]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf9002ba0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000036
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1096]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9003fa0
.word 0xaa0003f6
.word 0xf9401fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xaa1803e1
.word 0xaa1703e1
.word 0xaa0003e1
bl _p_45
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba2
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf9400303
.word 0xf9407c70
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #864]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x35fff640
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x14000028
.word 0xf90037be
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb40002e0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #872]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037be
.word 0xd61f03c0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_59
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000015
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9442231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1104]
bl _p_12
.word 0xf9003ba0
bl _p_60
.word 0xf9401fb1
.word 0xf9444a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f9
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9447231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf944aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__
BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__:
.loc 1 1 0
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1112]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800019
.word 0xf90033bf
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf94027b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1120]
bl _p_3
.word 0xf9003ba0
bl _p_61
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f9
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400129a
.word 0xf94027b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90033bf
.word 0xf94027b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf94027b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xf94027b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03f5
.word 0xf94027b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800014
.word 0xf94027b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000068
.word 0xf94027b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1403e0
.word 0x93407e80
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540010e9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xf94027b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb40008f6
.word 0xf94027b1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xd2800020
.word 0x910183a2
.word 0xaa1603e0
.word 0xd2800021
bl _p_62
.word 0xf9004fa0
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xf9004ba0
.word 0xaa0003f8
.word 0xf94027b1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf90047a0
.word 0xd2800080

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1064]
bl _p_12
.word 0xf94047a1
.word 0xf90043a0
.word 0xd2800082
bl _p_63
.word 0xf94027b1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f7
.word 0xf94027b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1703e0
.word 0xaa1703e0
bl _p_64
.word 0xf9003fa0
.word 0xf94027b1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1128]
bl _p_65
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa1903e0
.word 0xf940033e
bl _p_66
.word 0xf94027b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0x11000680
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1503e0
.word 0xb9801aa0
.word 0x6b00029f
.word 0x54fff1ab
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94027b1
.word 0xf9436a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_29:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject
BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject:
.loc 1 1 0
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1136]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1144]
bl _p_12
.word 0xf9005ba0
bl _p_67
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400347a
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xb4001260
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0x910163a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_69
.word 0xf9401fb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x9101c3a0
.word 0xf9402fa0
.word 0xf9003ba0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94037a0
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000033
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_70
.word 0xf90067a0
.word 0xf9401fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf90063a0
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xaa1903e0
.word 0xaa0103e0
.word 0xf9005ba0
.word 0xaa1a03e0
.word 0xf9401b42
.word 0xaa0103e0
.word 0xaa0203e0
.word 0xf940005e
bl _p_71
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xf9405fa2
.word 0xaa1903e0
.word 0xf9400323
.word 0xf9416470
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_72
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35fff740
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x14000015
.word 0xf90053be
.word 0xf9401fb1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_73
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053be
.word 0xd61f03c0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9402340
bl _p_74
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940f450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf9412450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940dc50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401340
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401340
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf9411450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401740
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401740
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940fc50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9458e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9459e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401f40
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401f40
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940d450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9460a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9461a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xb9804b40
.word 0x93407c01
.word 0xaa1903e0
.word 0xf9400322
.word 0xf9410c50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9464a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9465a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000aa0
.word 0x91014340

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1160]
bl _p_75
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9469631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x34000580
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf946be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000760
.word 0x91014340

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1160]
.word 0x910143a1
.word 0xf90047a1
bl _p_76
.word 0xf94047be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9470631
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0xf9402ba0
bl _p_77
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9472631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa1903e0
.word 0xf9400322
.word 0xf9410450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9474a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9476a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9478e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf947a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd28029a0
.word 0xaa1103e1
bl _p_20

Lme_2a:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties
BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties:
.loc 1 1 0
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1168]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1176]
bl _p_12
.word 0xf90053a0
bl _p_78
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f9
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400295a
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401f40
.word 0xb4001260
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401f41
.word 0xaa0103e0
.word 0xf940003e
bl _p_68
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0x910143a0
.word 0xaa0003e8
.word 0xaa0103e0
.word 0xf940003e
bl _p_69
.word 0xf9401fb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9402fa0
.word 0xf9003ba0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000033
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_70
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa1903e0
.word 0xaa0103e0
.word 0xf90053a0
.word 0xaa1a03e0
.word 0xf9401f42
.word 0xaa0103e0
.word 0xaa0203e0
.word 0xf940005e
bl _p_71
.word 0xf90057a0
.word 0xf9401fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xaa1903e0
.word 0xf9400323
.word 0xf9410c70
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_72
.word 0x53001c00
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x35fff740
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0x94000002
.word 0x14000015
.word 0xf9004bbe
.word 0xf9401fb1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1152]
bl _p_73
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404bbe
.word 0xd61f03c0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9400b40
bl _p_74
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940d450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9400f40
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940ec50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401340
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401340
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf9410450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401740
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401740
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940fc50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xaa1903f7
.word 0xb40000c0
.word 0xaa1703e0
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xaa0003f6
.word 0x14000007
.word 0xaa1703e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xf94002e2
.word 0xf940dc50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9458e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9459e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xb9804340
.word 0x2a0003e0
.word 0xf90053a0
.word 0xf9401fb1
.word 0xf945c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xaa1903e0
.word 0xf9400322
.word 0xf940e450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf945e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9460631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9462a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf9463e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface
BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1184]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_14
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError
BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1192]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000073
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500047a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xf9002fa0
.word 0xf94017a0
bl _p_23
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1200]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f7
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b02
.word 0xaa1703e0
.word 0xaa0203e0
.word 0xaa1703e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1216]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError
BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1224]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000069
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500033a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1232]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1216]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface
BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1240]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_14
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError
BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1248]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000069
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500033a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1256]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1264]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError
BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1272]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000069
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500033a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b21
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1280]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b22
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1264]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError
BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1288]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000073
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500047a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xf9002fa0
.word 0xf94017a0
bl _p_80
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1296]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f7
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b02
.word 0xaa1703e0
.word 0xaa0203e0
.word 0xaa1703e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1264]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface
BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1304]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_14
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError
BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1312]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000073
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500047a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xf9002fa0
.word 0xf94017a0
bl _p_23
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1320]
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f7
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b02
.word 0xaa1703e0
.word 0xaa0203e0
.word 0xaa1703e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1328]
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface
BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1336]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_14
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError
BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError:
.loc 1 1 0
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1344]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b00
.word 0xb50000c0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400006a
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500035a
.word 0xf9401bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b02
.word 0xf94017a1
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1352]
.word 0x928001f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f7
.word 0xf9401bb1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400b02
.word 0xaa1703e0
.word 0xaa0203e0
.word 0xaa1703e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1360]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface
BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1368]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_14
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError
BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError:
.loc 1 1 0
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013ba
.word 0xaa0003f7
.word 0xf90017a1
.word 0xf9001ba2
.word 0xaa0303fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1376]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800016
.word 0xf9401fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400ae0
.word 0xb50000c0
.word 0xf9401fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000091
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500083a
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400ae0
.word 0xf90033a0
.word 0xf94017a0
bl _p_24
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_3
.word 0xf9403ba1
.word 0xf9002ba0
bl _p_25
.word 0xf9401fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_26
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #360]
bl _p_3
.word 0xf94037a1
.word 0xf9002fa0
bl _p_27
.word 0xf9401fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xf94033a3
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1384]
.word 0x928007f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.word 0xf9401fb1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9409830
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940e030
.word 0xd63f0200
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
bl _p_3
.word 0xf9402fa1
.word 0xf94033a2
.word 0xf9002ba0
bl _p_79
.word 0xf9401fb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f6
.word 0xf9401fb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400ae2
.word 0xaa1603e0
.word 0xaa0203e0
.word 0xaa1603e1
.word 0xf9400042

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1392]
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.file 2 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/corlib/System/Array.cs"
.loc 2 78 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1400]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90043a0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf9003fa0
.word 0xf9402ba0
bl _p_81
.word 0xaa0003ef
.word 0xf9403fa0
.word 0xf94043a1
bl _p_82
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_81
bl _p_12
.word 0x9100c3a1
.word 0xf90033a0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9401ba2
.word 0xf9003ba2
.word 0xf9000022
.word 0xf90037a0
bl _p_14
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba2
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.loc 2 68 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1408]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3b:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.loc 2 73 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1416]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.loc 2 83 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1424]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e4a60
.word 0xf2a00020
.word 0xd28e4a60
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd2802980
.word 0xf2a04000
.word 0xd2802980
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3d:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_REF_T_REF
System_Array_InternalArray__ICollection_Add_T_REF_T_REF:
.loc 2 88 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1432]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e5060
.word 0xf2a00020
.word 0xd28e5060
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd2802980
.word 0xf2a04000
.word 0xd2802980
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
System_Array_InternalArray__ICollection_Remove_T_REF_T_REF:
.loc 2 93 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1440]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e5060
.word 0xf2a00020
.word 0xd28e5060
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd2802980
.word 0xf2a04000
.word 0xd2802980
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
System_Array_InternalArray__ICollection_Contains_T_REF_T_REF:
.loc 2 98 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90027af
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1448]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9002bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a800
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.loc 2 99 0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e57e0
.word 0xf2a00020
.word 0xd28e57e0
.word 0xf2a00020
bl _p_83
bl _p_84
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2802b20
.word 0xf2a04000
.word 0xd2802b20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 101 0
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f9
.loc 2 102 0
.word 0xf9401bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x1400004d
.loc 2 104 0
.word 0xf9401bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x910143a0
.word 0xf94027a0
bl _p_85
.word 0x93407f00
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xf9002ba0
.loc 2 105 0
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb5000260
.loc 2 106 0
.word 0xf9401bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000100
.loc 2 107 0
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400003d
.loc 2 110 0
.word 0xf9401bb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001b
.loc 2 113 0
.word 0xf9401bb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf9402ba1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000100
.loc 2 114 0
.word 0xf9401bb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.loc 2 102 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x6b19031f
.word 0x54fff52b
.loc 2 118 0
.word 0xf9401bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int:
.loc 2 123 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902e7b8
.word 0xf9001fba
.word 0xf9006baf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90023a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1456]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb50001f9
.loc 2 124 0
.word 0xf94027b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2834520
.word 0xd2834520
bl _p_83
.word 0xaa0003e1
.word 0xd2800820
.word 0xf2a04000
.word 0xd2800820
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 128 0
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400300
.word 0x3940a800
.word 0xf90073a0
.word 0xf94027b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.loc 2 129 0
.word 0xf94027b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e57e0
.word 0xf2a00020
.word 0xd28e57e0
.word 0xf2a00020
bl _p_83
bl _p_84
.word 0xf90073a0
.word 0xf94027b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xd2802b20
.word 0xf2a04000
.word 0xd2802b20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 130 0
.word 0xf94027b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xf90033a0
.word 0xaa1803f6
.word 0xd2800000
.word 0xf9400b15
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98002b4
.word 0x14000002
.word 0xb9801ad4
.word 0xf94027b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb140000
.word 0xf90037a0
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf9003ba0
.word 0xeb1f001f
.word 0x54000080
.word 0xf9403ba0
.word 0xb980041a
.word 0x14000002
.word 0xd280001a
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003fb9
.word 0xd2800000
.word 0xf9403fa0
.word 0xf9400800
.word 0xf90043a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94043a0
.word 0xb9800000
.word 0xf90047a0
.word 0x14000004
.word 0xf9403fa0
.word 0xb9801800
.word 0xf90047a0
.word 0xf94047a0
.word 0xf90047a0
.word 0xf94027b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xb000341
.word 0xf94037a0
.word 0x6b01001f
.word 0x5400022d
.loc 2 131 0
.word 0xf94027b1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e62e0
.word 0xf2a00020
.word 0xd28e62e0
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd2800800
.word 0xf2a04000
.word 0xd2800800
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 134 0
.word 0xf94027b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940a800
.word 0xf90073a0
.word 0xf94027b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ed
.loc 2 135 0
.word 0xf94027b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28e57e0
.word 0xf2a00020
.word 0xd28e57e0
.word 0xf2a00020
bl _p_83
bl _p_84
.word 0xf90073a0
.word 0xf94027b1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xd2802b20
.word 0xf2a04000
.word 0xd2802b20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 136 0
.word 0xf94027b1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xb98043a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400038a
.loc 2 137 0
.word 0xf94027b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xd282a860
.word 0xd282a860
bl _p_83
.word 0xf90073a0
.word 0xd28e7b40
.word 0xf2a00020
.word 0xd28e7b40
.word 0xf2a00020
bl _p_83
bl _p_84
.word 0xf90077a0
.word 0xf94027b1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xf94077a2
.word 0xd2800840
.word 0xf2a04000
.word 0xd2800840
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_5
.loc 2 140 0
.word 0xf94027b1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9004bb8
.word 0xaa1803e0
.word 0xd2800000
.word 0xf9400b00
.word 0xf9004fa0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf9404fa0
.word 0xb9800400
.word 0xf90053a0
.word 0x14000002
.word 0xf90053bf
.word 0xf94053a0
.word 0xf90053a0
.word 0xf94027b1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90057b9
.word 0xb98043a0
.word 0xf9005ba0
.word 0xf9005fb8
.word 0xd2800000
.word 0xf9405fa0
.word 0xf9400800
.word 0xf90063a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94063a0
.word 0xb9800000
.word 0xf90067a0
.word 0x14000004
.word 0xf9405fa0
.word 0xb9801800
.word 0xf90067a0
.word 0xf94067a0
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9445631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94053a1
.word 0xf94057a2
.word 0xf9405ba3
.word 0xf94067a4
bl _p_86
.word 0xf94027b1
.word 0xf9447e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942e7b8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object
wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1464]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
bl _p_87
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_5
.word 0xf9403ba0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb5000916
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xb40003d4
.word 0xf9402bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x1400006d
.word 0xf9402bb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000052
.word 0xf9402bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000849
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1503e0
.word 0xaa1a03e1
.word 0xf9400eb0
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9402bb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1703e0
.word 0x6b17031f
.word 0x54fff94b
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_42:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1480]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
bl _p_87
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_5
.word 0xf9403fa0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000995
.word 0xf9402bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xb4000413
.word 0xf9402bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000073
.word 0xf9402bb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000056
.word 0xf9402bb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf90047a0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1403e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf9400e90
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xf9402bb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1603e0
.word 0x6b1602ff
.word 0x54fff8eb
.word 0xf9402bb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9806ba0
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_43:
.text
ut_69:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_69
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
System_Array_InternalEnumerator_1_T_INST__ctor_System_Array:
.loc 2 239 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1488]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000320
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_14
.word 0xf94023a0
.loc 2 240 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_45:
.text
ut_70:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_Dispose
System_Array_InternalEnumerator_1_T_INST_Dispose:
.loc 2 245 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1496]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_46:
.text
ut_71:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_MoveNext
System_Array_InternalEnumerator_1_T_INST_MoveNext:
.loc 2 250 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1504]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000201
.loc 2 251 0
.word 0xf9401fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb9000b40
.loc 2 253 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000300
.word 0xaa1a03e0
.word 0xaa1a03f7
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xaa1603e1
.word 0xaa1603f9
.word 0xb9000b40
.word 0xaa1603e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e02df
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f8
.word 0x14000003
.word 0xd2800000
.word 0xd2800018
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9401fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_47:
.text
ut_72:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_get_Current
System_Array_InternalEnumerator_1_T_INST_get_Current:
.loc 2 258 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1512]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000221
.loc 2 259 0
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28f6c60
.word 0xf2a00020
.word 0xd28f6c60
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd28024a0
.word 0xf2a04000
.word 0xd28024a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 260 0
.word 0xf94017b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000221
.loc 2 261 0
.word 0xf94017b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28f7720
.word 0xf2a00020
.word 0xd28f7720
.word 0xf2a00020
bl _p_83
.word 0xaa0003e1
.word 0xd28024a0
.word 0xf2a04000
.word 0xd28024a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 263 0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf90043a0
.word 0xf94017b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x51000400
.word 0xaa1a03e1
.word 0xb9800b41
.word 0x4b010000
.word 0xf90037a0
.word 0xf9402ba0
bl _p_88
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf940001e
.word 0xf940001e
.word 0xf90033a0
.word 0xf9402ba0
bl _p_89
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403baf
.word 0x910103a3
.word 0xf9002fa3
.word 0xd63f0040
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf94017b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf94017b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_48:
.text
ut_73:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset:
.loc 2 269 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1520]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_49:
.text
ut_74:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current:
.loc 2 274 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1528]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90043a0
.word 0xf94023a0
bl _p_90
.word 0xaa0003e1
.word 0xf94043a0
.word 0xf9003fa1
.word 0xf940001e
.word 0xf9003ba0
.word 0xf94023a0
bl _p_91
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xf9403faf
.word 0x9100c3a2
.word 0xf90027a2
.word 0xd63f0020
.word 0xf94027be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_92
bl _p_12
.word 0x9100c3a1
.word 0xf9002ba0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9401ba2
.word 0xf90037a2
.word 0xf9000022
.word 0xf90033a0
bl _p_14
.word 0xf94033a0
.word 0xf94037a1
.word 0x91002000
.word 0xf9401fa1
.word 0xf9002fa1
.word 0xf9000001
bl _p_14
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST:
.loc 2 78 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1536]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90043a0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf9003fa0
.word 0xf9402ba0
bl _p_93
.word 0xf90047a0
.word 0xf9402ba0
bl _p_94
.word 0xaa0003e2
.word 0xf9403fa0
.word 0xf94043a1
.word 0xf94047af
.word 0xd63f0040
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_93
bl _p_12
.word 0x9100c3a1
.word 0xf90033a0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9401ba2
.word 0xf9003ba2
.word 0xf9000022
.word 0xf90037a0
bl _p_14
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba2
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry
wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1544]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
bl _p_87
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_5
.word 0xf9403ba0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb5000916
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xb40003d4
.word 0xf9402bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x1400006d
.word 0xf9402bb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000052
.word 0xf9402bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000849
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1503e0
.word 0xaa1a03e1
.word 0xf9400eb0
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9402bb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1703e0
.word 0x6b17031f
.word 0x54fff94b
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_4c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry
wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1552]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1472]
.word 0xb9400000
.word 0x34000240
.word 0xf9402bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
bl _p_87
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_5
.word 0xf9403fa0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xf9402bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000995
.word 0xf9402bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xf9402bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xb4000413
.word 0xf9402bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000073
.word 0xf9402bb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x14000056
.word 0xf9402bb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540008c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf90047a0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1403e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf9400e90
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xf9402bb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf9402bb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1603e0
.word 0x6b1602ff
.word 0x54fff8eb
.word 0xf9402bb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9806ba0
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_20

Lme_4d:
.text
ut_78:
add x0, x0, 16
b System_Nullable_1_System_DateTime__ctor_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime__ctor_System_DateTime
System_Nullable_1_System_DateTime__ctor_System_DateTime:
.file 3 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/corlib/System/Nullable.cs"
.loc 3 94 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1560]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3900235e
.loc 3 95 0
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910103a0
.word 0xf9400fa0
.word 0xf90023a0
.word 0x910103a0
.word 0xaa1a03e0
.word 0xf94023a0
.word 0xf9000340
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4e:
.text
ut_79:
add x0, x0, 16
b System_Nullable_1_System_DateTime_get_HasValue
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_get_HasValue
System_Nullable_1_System_DateTime_get_HasValue:
.loc 3 99 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1568]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4f:
.text
ut_80:
add x0, x0, 16
b System_Nullable_1_System_DateTime_get_Value
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_get_Value
System_Nullable_1_System_DateTime_get_Value:
.loc 3 104 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1576]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x350001e0
.loc 3 105 0
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd29ca660
.word 0xd29ca660
bl _p_83
.word 0xaa0003e1
.word 0xd28024a0
.word 0xf2a04000
.word 0xd28024a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 3 107 0
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9400340
.word 0xf90023a0
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_50:
.text
ut_81:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Equals_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Equals_object
System_Nullable_1_System_DateTime_Equals_object:
.loc 3 113 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1584]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500017a
.loc 3 114 0
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x39402320
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x1400003a
.loc 3 115 0
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f8
.word 0xaa1a03f7
.word 0xeb1f035f
.word 0x54000160
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #1592]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800017
.word 0xb5000117
.loc 3 116 0
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000020
.loc 3 118 0
.word 0xf9401bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1160]
.word 0x910123a0
.word 0xf9002fa0
.word 0xaa1a03e0
bl _p_95
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf90007c1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1160]
.word 0xaa1903e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf9402ba2
bl _p_96
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf9401bb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_51:
.text
ut_82:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime:
.loc 3 123 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1600]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0x394083a0
.word 0xaa1a03e1
.word 0x39402341
.word 0x6b01001f
.word 0x54000100
.loc 3 124 0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x1400002c
.loc 3 126 0
.word 0xf94017b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x35000100
.loc 3 127 0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.loc 3 129 0
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910063a0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9400340
.word 0xf90023a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1608]
bl _p_3
.word 0xaa0003e1
.word 0xf9402fa0
.word 0x910103a2
.word 0x91004022
.word 0xf94023a3
.word 0xf9000043
bl _p_97
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_52:
.text
ut_83:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetHashCode
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetHashCode
System_Nullable_1_System_DateTime_GetHashCode:
.loc 3 134 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1616]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x35000100
.loc 3 135 0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000010
.loc 3 137 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_98
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_53:
.text
ut_84:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetValueOrDefault
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetValueOrDefault
System_Nullable_1_System_DateTime_GetValueOrDefault:
.loc 3 142 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1624]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x910103a1
.word 0xf9400000
.word 0xf90023a0
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_54:
.text
ut_85:
add x0, x0, 16
b System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime:
.loc 3 147 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1632]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x34000160
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910183a0
.word 0xf9400340
.word 0xf90033a0
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x14000009
.word 0x9100a3a0
.word 0x910163a0
.word 0xf94017a0
.word 0xf9002fa0
.word 0x910163a0
.word 0x9101a3a0
.word 0xf9402fa0
.word 0xf90037a0
.word 0x9101a3a0
.word 0x910143a0
.word 0xf94037a0
.word 0xf9002ba0
.word 0x910143a0
.word 0x910063a0
.word 0xf9402ba0
.word 0xf9000fa0
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_55:
.text
ut_86:
add x0, x0, 16
b System_Nullable_1_System_DateTime_ToString
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_ToString
System_Nullable_1_System_DateTime_ToString:
.loc 3 152 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1640]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x39402340
.word 0x34000200
.loc 3 153 0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_99
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x14000009
.loc 3 155 0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xf9400000
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_56:
.text
ut_87:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime:
.loc 3 177 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1648]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x394063a0
.word 0x35000100
.loc 3 178 0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000011
.loc 3 180 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x9100e3a1
.word 0xf9400000
.word 0xf9001fa0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x0, [x16, #1608]
bl _p_3
.word 0x9100e3a1
.word 0x91004001
.word 0xf9401fa2
.word 0xf9000022
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_57:
.text
ut_88:
add x0, x0, 16
b System_Nullable_1_System_DateTime_Unbox_object
.text
	.align 4
	.no_dead_strip System_Nullable_1_System_DateTime_Unbox_object
System_Nullable_1_System_DateTime_Unbox_object:
.loc 3 185 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1656]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf94017b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb50002da
.loc 3 186 0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0x9101e3a0
.word 0x910163a0
.word 0xf9403fa0
.word 0xf9002fa0
.word 0xf94043a0
.word 0xf90033a0
.word 0x910163a0
.word 0x910063a0
.word 0xf9402fa0
.word 0xf9000fa0
.word 0xf94033a0
.word 0xf90013a0
.word 0x14000032
.loc 3 187 0
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940a801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000641
.word 0xf9400000
.word 0xf9400000

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x1, [x16, #1592]
.word 0xeb01001f
.word 0x10000011
.word 0x54000541
.word 0x91004340
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0x9101a3a0

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x15, [x16, #1160]
.word 0x910143a1
.word 0xf9402ba1
bl _p_100
.word 0x9101a3a0
.word 0x910103a0
.word 0xf94037a0
.word 0xf90023a0
.word 0xf9403ba0
.word 0xf90027a0
.word 0xf94017b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf94017b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2802480
.word 0xaa1103e1
bl _p_20

Lme_58:
.text
ut_89:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.loc 2 239 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1664]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9000320
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_14
.word 0xf94023a0
.loc 2 240 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_59:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_INST_int
System_Array_InternalArray__get_Item_T_INST_int:
.loc 2 197 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90037af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1672]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90043a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x6b00035f
.word 0x540001e3
.loc 2 198 0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xd282a860
.word 0xd282a860
bl _p_83
.word 0xaa0003e1
.word 0xd2800840
.word 0xf2a04000
.word 0xd2800840
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_5
.loc 2 201 0
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x9101c3a0
.word 0xf9004fa0
.word 0xf94037a0
bl _p_101
.word 0xf9404fa1
.word 0x93407f40
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0x910163a2
.word 0xf9400002
.word 0xf9002fa2
.word 0xf9400400
.word 0xf90033a0
.word 0x910163a0
.word 0xaa0103e0
.word 0xf9402fa2
.word 0xf9004ba2
.word 0xf9000022
.word 0xf90047a0
bl _p_14
.word 0xf94047a0
.word 0xf9404ba1
.word 0x91002000
.word 0xf94033a1
.word 0xf90043a1
.word 0xf9000001
bl _p_14
.word 0xf94043a0
.loc 2 202 0
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x910123a0
.word 0xf9403ba0
.word 0xf90027a0
.word 0xf9403fa0
.word 0xf9002ba0
.word 0x910123a0
.word 0x910083a0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9401bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0xf94013a0
.word 0xf94017a1
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_5a:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl BranchXamarinSDK_BranchIOS__ctor
bl BranchXamarinSDK_BranchIOS_getInstance
bl BranchXamarinSDK_BranchIOS_get_NativeBranch
bl BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface
bl BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface
bl BranchXamarinSDK_BranchIOS_SetDebug
bl BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface
bl BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface
bl BranchXamarinSDK_BranchIOS_GetLastReferringParams
bl BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject
bl BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties
bl BranchXamarinSDK_BranchIOS_GetFirstReferringParams
bl BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject
bl BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties
bl BranchXamarinSDK_BranchIOS_ResetUserSession
bl BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface
bl BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface
bl BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties
bl BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string
bl BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object
bl BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface
bl BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string
bl BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool
bl BranchXamarinSDK_BranchIOS_GetCredits
bl BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string
bl BranchXamarinSDK_BranchIOS_SetRetryInterval_int
bl BranchXamarinSDK_BranchIOS_SetMaxRetries_int
bl BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int
bl BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch
bl BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject
bl BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject
bl BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity
bl BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl
bl BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary
bl BranchXamarinSDK_BranchIOS__cctor
bl BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject
bl BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties
bl BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface
bl BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface
bl BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError
bl BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface
bl BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface
bl BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError
bl BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface
bl BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError
bl method_addresses
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
bl System_Array_InternalArray__ICollection_get_Count
bl System_Array_InternalArray__ICollection_get_IsReadOnly
bl System_Array_InternalArray__ICollection_Clear
bl System_Array_InternalArray__ICollection_Add_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
bl System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
bl System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
bl wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object
bl wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
bl method_addresses
bl System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
bl System_Array_InternalEnumerator_1_T_INST_Dispose
bl System_Array_InternalEnumerator_1_T_INST_MoveNext
bl System_Array_InternalEnumerator_1_T_INST_get_Current
bl System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
bl System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
bl wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry
bl wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry
bl System_Nullable_1_System_DateTime__ctor_System_DateTime
bl System_Nullable_1_System_DateTime_get_HasValue
bl System_Nullable_1_System_DateTime_get_Value
bl System_Nullable_1_System_DateTime_Equals_object
bl System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
bl System_Nullable_1_System_DateTime_GetHashCode
bl System_Nullable_1_System_DateTime_GetValueOrDefault
bl System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
bl System_Nullable_1_System_DateTime_ToString
bl System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
bl System_Nullable_1_System_DateTime_Unbox_object
bl System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
bl System_Array_InternalArray__get_Item_T_INST_int
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 69,70,71,72,73,74,78,79
	.long 80,81,82,83,84,85,86,87
	.long 88,89
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_69
bl ut_70
bl ut_71
bl ut_72
bl ut_73
bl ut_74
bl ut_78
bl ut_79
bl ut_80
bl ut_81
bl ut_82
bl ut_83
bl ut_84
bl ut_85
bl ut_86
bl ut_87
bl ut_88
bl ut_89

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,18,12,31
	.byte 0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,152
	.byte 12,153,11,68,154,10,13,12,31,0,68,14,80,157,10,158,9,68,13,29,19,12,31,0,68,14,144,1,157,18,158,17
	.byte 68,13,29,68,151,16,152,15,18,12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,22,12,31,0,68
	.byte 14,176,1,157,22,158,21,68,13,29,68,148,20,149,19,68,150,18,27,12,31,0,68,14,224,1,157,28,158,27,68,13
	.byte 29,68,147,26,148,25,68,149,24,150,23,68,151,22,13,12,31,0,68,14,96,157,12,158,11,68,13,29,19,12,31,0
	.byte 68,14,144,1,157,18,158,17,68,13,29,68,150,16,151,15,27,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68
	.byte 148,14,149,13,68,151,12,152,11,68,153,10,34,12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,147,32,148,31
	.byte 68,149,30,150,29,68,151,28,152,27,68,153,26,154,25,34,12,31,0,84,14,144,4,157,66,158,65,68,13,29,68,147
	.byte 64,148,63,68,149,62,150,61,68,151,60,152,59,68,153,58,154,57,34,12,31,0,68,14,160,3,157,52,158,51,68,13
	.byte 29,68,147,50,148,49,68,149,48,150,47,68,151,46,152,45,68,153,44,154,43,29,12,31,0,68,14,208,1,157,26,158
	.byte 25,68,13,29,68,149,24,150,23,68,151,22,152,21,68,153,20,154,19,27,12,31,0,68,14,144,1,157,18,158,17,68
	.byte 13,29,68,150,16,151,15,68,152,14,153,13,68,154,12,32,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148
	.byte 18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12,27,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68
	.byte 150,24,151,23,68,152,22,153,21,68,154,20,27,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21
	.byte 68,152,20,153,19,68,154,18,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,21,12,31,0,68,14,112
	.byte 157,14,158,13,68,13,29,68,151,12,152,11,68,154,10,22,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,150
	.byte 14,151,13,68,154,12,14,12,31,0,68,14,144,1,157,18,158,17,68,13,29,30,12,31,0,68,14,240,1,157,30,158
	.byte 29,68,13,29,68,148,28,149,27,68,150,26,68,152,25,153,24,68,154,23,34,12,31,0,68,14,144,1,157,18,158,17
	.byte 68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9,26,12,31,0,68,14,112,157,14
	.byte 158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8,17,12,31,0,68,14,144,1,157,18,158,17,68,13
	.byte 29,68,154,16,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8,23,12,31,0,68,14,112,157,14,158,13
	.byte 68,13,29,68,151,12,152,11,68,153,10,154,9,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10,16,12
	.byte 31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,16,12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.byte 19,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17

.text
	.align 4
plt:
mono_aot_Branch_Xamarin_SDK_iOS_plt:
	.no_dead_strip plt_BranchXamarinSDK_Branch__ctor
plt_BranchXamarinSDK_Branch__ctor:
_p_1:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1688]
br x16
.word 2271
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_2:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1696]
br x16
.word 2276
	.no_dead_strip plt__jit_icall_ves_icall_object_new_fast
plt__jit_icall_ves_icall_object_new_fast:
_p_3:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1704]
br x16
.word 2296
	.no_dead_strip plt_BranchXamarinSDK_BranchException__ctor_string
plt_BranchXamarinSDK_BranchException__ctor_string:
_p_4:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1712]
br x16
.word 2324
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_5:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1720]
br x16
.word 2329
	.no_dead_strip plt_BranchXamarinSDK_Branch_get_branchKey
plt_BranchXamarinSDK_Branch_get_branchKey:
_p_6:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1728]
br x16
.word 2357
	.no_dead_strip plt_IOSNativeBranch_Branch_GetInstance_string
plt_IOSNativeBranch_Branch_GetInstance_string:
_p_7:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1736]
br x16
.word 2362
	.no_dead_strip plt_string_StartsWith_string_System_StringComparison
plt_string_StartsWith_string_System_StringComparison:
_p_8:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1744]
br x16
.word 2367
	.no_dead_strip plt_System_Console_WriteLine_string
plt_System_Console_WriteLine_string:
_p_9:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1752]
br x16
.word 2372
	.no_dead_strip plt_BranchXamarinSDK_BranchIOS__ctor
plt_BranchXamarinSDK_BranchIOS__ctor:
_p_10:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1760]
br x16
.word 2377
	.no_dead_strip plt_BranchXamarinSDK_Branch_set_branchKey_string
plt_BranchXamarinSDK_Branch_set_branchKey_string:
_p_11:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1768]
br x16
.word 2379
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_12:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1776]
br x16
.word 2384
	.no_dead_strip plt_Foundation_NSDictionary__ctor_Foundation_NSDictionary
plt_Foundation_NSDictionary__ctor_Foundation_NSDictionary:
_p_13:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1784]
br x16
.word 2416
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_noconc_intptr
plt_wrapper_write_barrier_object_wbarrier_noconc_intptr:
_p_14:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1792]
br x16
.word 2421
	.no_dead_strip plt_Foundation_NSDictionary__ctor
plt_Foundation_NSDictionary__ctor:
_p_15:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1800]
br x16
.word 2428
	.no_dead_strip plt_BranchXamarinSDK_BranchIOS_get_NativeBranch
plt_BranchXamarinSDK_BranchIOS_get_NativeBranch:
_p_16:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1808]
br x16
.word 2433
	.no_dead_strip plt_BranchXamarinSDK_Branch_InitSession_BranchXamarinSDK_IBranchSessionInterface
plt_BranchXamarinSDK_Branch_InitSession_BranchXamarinSDK_IBranchSessionInterface:
_p_17:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1816]
br x16
.word 2435
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface
plt_BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface:
_p_18:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1824]
br x16
.word 2440
	.no_dead_strip plt_System_Collections_Generic_List_1_object_Add_object
plt_System_Collections_Generic_List_1_object_Add_object:
_p_19:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1832]
br x16
.word 2442
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_20:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1840]
br x16
.word 2453
	.no_dead_strip plt_BranchXamarinSDK_Branch_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface
plt_BranchXamarinSDK_Branch_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface:
_p_21:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1848]
br x16
.word 2488
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface
plt_BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface:
_p_22:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1856]
br x16
.word 2493
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary:
_p_23:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1864]
br x16
.word 2495
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject:
_p_24:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1872]
br x16
.word 2497
	.no_dead_strip plt_BranchUniversalObject__ctor_System_Collections_Generic_Dictionary_2_string_object
plt_BranchUniversalObject__ctor_System_Collections_Generic_Dictionary_2_string_object:
_p_25:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1880]
br x16
.word 2499
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties:
_p_26:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1888]
br x16
.word 2504
	.no_dead_strip plt_BranchLinkProperties__ctor_System_Collections_Generic_Dictionary_2_string_object
plt_BranchLinkProperties__ctor_System_Collections_Generic_Dictionary_2_string_object:
_p_27:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1896]
br x16
.word 2506
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface
plt_BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface:
_p_28:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1904]
br x16
.word 2511
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface
plt_BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface:
_p_29:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1912]
br x16
.word 2513
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject:
_p_30:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1920]
br x16
.word 2515
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties:
_p_31:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1928]
br x16
.word 2517
	.no_dead_strip plt_UIKit_UIApplication_get_SharedApplication
plt_UIKit_UIApplication_get_SharedApplication:
_p_32:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1936]
br x16
.word 2519
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object:
_p_33:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1944]
br x16
.word 2524
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface
plt_BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface:
_p_34:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1952]
br x16
.word 2526
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object__ctor
plt_System_Collections_Generic_Dictionary_2_string_object__ctor:
_p_35:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1960]
br x16
.word 2528
	.no_dead_strip plt_string_Equals_string
plt_string_Equals_string:
_p_36:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1968]
br x16
.word 2539
	.no_dead_strip plt_Foundation_NSString_op_Explicit_string
plt_Foundation_NSString_op_Explicit_string:
_p_37:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1976]
br x16
.word 2544
	.no_dead_strip plt_Foundation_NSDictionary_GetEnumerator
plt_Foundation_NSDictionary_GetEnumerator:
_p_38:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1984]
br x16
.word 2549
	.no_dead_strip plt_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject_get_Key
plt_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject_get_Key:
_p_39:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #1992]
br x16
.word 2554
	.no_dead_strip plt_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject_get_Value
plt_System_Collections_Generic_KeyValuePair_2_Foundation_NSObject_Foundation_NSObject_get_Value:
_p_40:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2000]
br x16
.word 2565
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_Add_string_object
plt_System_Collections_Generic_Dictionary_2_string_object_Add_string_object:
_p_41:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2008]
br x16
.word 2576
	.no_dead_strip plt_System_Collections_Generic_List_1_object__ctor
plt_System_Collections_Generic_List_1_object__ctor:
_p_42:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2016]
br x16
.word 2587
	.no_dead_strip plt_Foundation_NSArray_GetItem_Foundation_NSObject_System_nuint
plt_Foundation_NSArray_GetItem_Foundation_NSObject_System_nuint:
_p_43:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2024]
br x16
.word 2598
	.no_dead_strip plt__jit_icall_ves_icall_array_new_specific
plt__jit_icall_ves_icall_array_new_specific:
_p_44:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2032]
br x16
.word 2610
	.no_dead_strip plt_Foundation_NSObject_FromObject_object
plt_Foundation_NSObject_FromObject_object:
_p_45:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2040]
br x16
.word 2641
	.no_dead_strip plt_int_ToString
plt_int_ToString:
_p_46:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2048]
br x16
.word 2646
	.no_dead_strip plt_Foundation_NSDate_op_Explicit_Foundation_NSDate
plt_Foundation_NSDate_op_Explicit_Foundation_NSDate:
_p_47:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2056]
br x16
.word 2651
	.no_dead_strip plt_System_DateTime_get_Millisecond
plt_System_DateTime_get_Millisecond:
_p_48:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2064]
br x16
.word 2656
	.no_dead_strip plt_Foundation_NSDictionary_FromObjectsAndKeys_Foundation_NSObject___Foundation_NSObject__
plt_Foundation_NSDictionary_FromObjectsAndKeys_Foundation_NSObject___Foundation_NSObject__:
_p_49:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2072]
br x16
.word 2661
	.no_dead_strip plt_System_nuint_ToString
plt_System_nuint_ToString:
_p_50:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2080]
br x16
.word 2666
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Count
plt_System_Collections_Generic_Dictionary_2_string_object_get_Count:
_p_51:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2088]
br x16
.word 2671
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Keys
plt_System_Collections_Generic_Dictionary_2_string_object_get_Keys:
_p_52:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2096]
br x16
.word 2682
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_string_object_GetEnumerator
plt_System_Collections_Generic_Dictionary_2_KeyCollection_string_object_GetEnumerator:
_p_53:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2104]
br x16
.word 2693
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_get_Current
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_get_Current:
_p_54:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2112]
br x16
.word 2704
	.no_dead_strip plt_Foundation_NSString__ctor_string
plt_Foundation_NSString__ctor_string:
_p_55:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2120]
br x16
.word 2715
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_object_get_Item_string
plt_System_Collections_Generic_Dictionary_2_string_object_get_Item_string:
_p_56:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2128]
br x16
.word 2720
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_MoveNext
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_MoveNext:
_p_57:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2136]
br x16
.word 2731
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_Dispose
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_object_Dispose:
_p_58:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2144]
br x16
.word 2742
	.no_dead_strip plt_Foundation_NSArray_FromObjects_object__
plt_Foundation_NSArray_FromObjects_object__:
_p_59:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2152]
br x16
.word 2768
	.no_dead_strip plt_Foundation_NSArray__ctor
plt_Foundation_NSArray__ctor:
_p_60:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2160]
br x16
.word 2773
	.no_dead_strip plt_System_Collections_Generic_List_1_BranchXamarinSDK_CreditHistoryEntry__ctor
plt_System_Collections_Generic_List_1_BranchXamarinSDK_CreditHistoryEntry__ctor:
_p_61:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2168]
br x16
.word 2778
	.no_dead_strip plt_Foundation_NSJsonSerialization_Serialize_Foundation_NSObject_Foundation_NSJsonWritingOptions_Foundation_NSError_
plt_Foundation_NSJsonSerialization_Serialize_Foundation_NSObject_Foundation_NSJsonWritingOptions_Foundation_NSError_:
_p_62:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2176]
br x16
.word 2789
	.no_dead_strip plt_Foundation_NSString__ctor_Foundation_NSData_Foundation_NSStringEncoding
plt_Foundation_NSString__ctor_Foundation_NSData_Foundation_NSStringEncoding:
_p_63:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2184]
br x16
.word 2794
	.no_dead_strip plt_Foundation_NSString_op_Implicit_Foundation_NSString
plt_Foundation_NSString_op_Implicit_Foundation_NSString:
_p_64:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2192]
br x16
.word 2799
	.no_dead_strip plt_Newtonsoft_Json_JsonConvert_DeserializeObject_BranchXamarinSDK_CreditHistoryEntry_string
plt_Newtonsoft_Json_JsonConvert_DeserializeObject_BranchXamarinSDK_CreditHistoryEntry_string:
_p_65:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2200]
br x16
.word 2804
	.no_dead_strip plt_System_Collections_Generic_List_1_BranchXamarinSDK_CreditHistoryEntry_Add_BranchXamarinSDK_CreditHistoryEntry
plt_System_Collections_Generic_List_1_BranchXamarinSDK_CreditHistoryEntry_Add_BranchXamarinSDK_CreditHistoryEntry:
_p_66:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2208]
br x16
.word 2816
	.no_dead_strip plt_IOSNativeBranch_BranchUniversalObject__ctor
plt_IOSNativeBranch_BranchUniversalObject__ctor:
_p_67:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2216]
br x16
.word 2827
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_string_get_Keys
plt_System_Collections_Generic_Dictionary_2_string_string_get_Keys:
_p_68:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2224]
br x16
.word 2832
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_string_string_GetEnumerator
plt_System_Collections_Generic_Dictionary_2_KeyCollection_string_string_GetEnumerator:
_p_69:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2232]
br x16
.word 2843
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_get_Current
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_get_Current:
_p_70:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2240]
br x16
.word 2854
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_string_string_get_Item_string
plt_System_Collections_Generic_Dictionary_2_string_string_get_Item_string:
_p_71:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2248]
br x16
.word 2865
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_MoveNext
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_MoveNext:
_p_72:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2256]
br x16
.word 2876
	.no_dead_strip plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_Dispose
plt_System_Collections_Generic_Dictionary_2_KeyCollection_Enumerator_string_string_Dispose:
_p_73:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2264]
br x16
.word 2887
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string:
_p_74:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2272]
br x16
.word 2913
	.no_dead_strip plt_System_Nullable_1_System_DateTime_get_HasValue
plt_System_Nullable_1_System_DateTime_get_HasValue:
_p_75:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2280]
br x16
.word 2915
	.no_dead_strip plt_System_Nullable_1_System_DateTime_get_Value
plt_System_Nullable_1_System_DateTime_get_Value:
_p_76:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2288]
br x16
.word 2926
	.no_dead_strip plt_Foundation_NSDate_op_Explicit_System_DateTime
plt_Foundation_NSDate_op_Explicit_System_DateTime:
_p_77:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2296]
br x16
.word 2937
	.no_dead_strip plt_IOSNativeBranch_BranchLinkProperties__ctor
plt_IOSNativeBranch_BranchLinkProperties__ctor:
_p_78:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2304]
br x16
.word 2942
	.no_dead_strip plt_BranchXamarinSDK_BranchError__ctor_string_int
plt_BranchXamarinSDK_BranchError__ctor_string_int:
_p_79:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2312]
br x16
.word 2947
	.no_dead_strip plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__
plt_BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__:
_p_80:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2320]
br x16
.word 2952
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_81:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2328]
br x16
.word 2982
	.no_dead_strip plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
_p_82:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2336]
br x16
.word 2990
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_83:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2344]
br x16
.word 3009
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_84:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2352]
br x16
.word 3038
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_85:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2360]
br x16
.word 3062
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_86:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2368]
br x16
.word 3086
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_87:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2376]
br x16
.word 3091
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_88:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2384]
br x16
.word 3147
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_89:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2392]
br x16
.word 3171
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_90:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2400]
br x16
.word 3213
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_91:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2408]
br x16
.word 3221
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_92:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2416]
br x16
.word 3244
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_93:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2424]
br x16
.word 3280
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_94:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2432]
br x16
.word 3288
	.no_dead_strip plt_System_Nullable_1_System_DateTime_Unbox_object
plt_System_Nullable_1_System_DateTime_Unbox_object:
_p_95:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2440]
br x16
.word 3311
	.no_dead_strip plt_System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
plt_System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime:
_p_96:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2448]
br x16
.word 3333
	.no_dead_strip plt_System_DateTime_Equals_object
plt_System_DateTime_Equals_object:
_p_97:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2456]
br x16
.word 3355
	.no_dead_strip plt_System_DateTime_GetHashCode
plt_System_DateTime_GetHashCode:
_p_98:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2464]
br x16
.word 3360
	.no_dead_strip plt_System_DateTime_ToString
plt_System_DateTime_ToString:
_p_99:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2472]
br x16
.word 3365
	.no_dead_strip plt_System_Nullable_1_System_DateTime__ctor_System_DateTime
plt_System_Nullable_1_System_DateTime__ctor_System_DateTime:
_p_100:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2480]
br x16
.word 3370
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_101:
adrp x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGE+0
add x16, x16, mono_aot_Branch_Xamarin_SDK_iOS_got@PAGEOFF
ldr x16, [x16, #2488]
br x16
.word 3411
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Branch_Xamarin_SDK_iOS_got, 2496
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "E347ADDE-03B3-49EA-BF57-49EF86A04AA2"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Branch-Xamarin-SDK.iOS"
.data
	.align 3
_mono_aot_file_info:

	.long 137,0
	.align 3
	.quad mono_aot_Branch_Xamarin_SDK_iOS_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 210,2496,102,91,70,923871743,0,21440
	.long 128,8,8,10,0,14,24008,2560
	.long 2024,1416,0,1792,1992,1496,0,1144
	.long 152,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 188,182,166,223,137,193,27,218,92,114,143,125,27,40,185,208
	.globl _mono_aot_module_Branch_Xamarin_SDK_iOS_info
	.align 3
_mono_aot_module_Branch_Xamarin_SDK_iOS_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_5:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM7=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM8=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_4:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM11=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM12=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM13=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_3:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM16=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM17=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM18=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM19=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM20=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM21=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM22=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM23=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_1:

	.byte 5
	.asciz "BranchXamarinSDK_Branch"

	.byte 32,16
LDIFF_SYM24=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,0,6
	.asciz "<branchKey>k__BackingField"

LDIFF_SYM25=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,16,6
	.asciz "callbacksList"

LDIFF_SYM26=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,35,24,0,7
	.asciz "BranchXamarinSDK_Branch"

LDIFF_SYM27=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM28=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM29=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_8:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM30=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM31=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_7:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 40,16
LDIFF_SYM34=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM35=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM36=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM37=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,32,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM38=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_6:

	.byte 5
	.asciz "Foundation_NSDictionary"

	.byte 40,16
LDIFF_SYM41=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,0,7
	.asciz "Foundation_NSDictionary"

LDIFF_SYM42=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM44
LTDIE_0:

	.byte 5
	.asciz "BranchXamarinSDK_BranchIOS"

	.byte 40,16
LDIFF_SYM45=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,0,6
	.asciz "launchOptions"

LDIFF_SYM46=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,32,0,7
	.asciz "BranchXamarinSDK_BranchIOS"

LDIFF_SYM47=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM48=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM49=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:.ctor"
	.asciz "BranchXamarinSDK_BranchIOS__ctor"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM50=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM51=Lfde0_end - Lfde0_start
	.long LDIFF_SYM51
Lfde0_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS__ctor

LDIFF_SYM52=Lme_0 - BranchXamarinSDK_BranchIOS__ctor
	.long LDIFF_SYM52
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:getInstance"
	.asciz "BranchXamarinSDK_BranchIOS_getInstance"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_getInstance
	.quad Lme_1

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM53=Lfde1_end - Lfde1_start
	.long LDIFF_SYM53
Lfde1_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_getInstance

LDIFF_SYM54=Lme_1 - BranchXamarinSDK_BranchIOS_getInstance
	.long LDIFF_SYM54
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:get_NativeBranch"
	.asciz "BranchXamarinSDK_BranchIOS_get_NativeBranch"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_get_NativeBranch
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM55=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM56=Lfde2_end - Lfde2_start
	.long LDIFF_SYM56
Lfde2_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_get_NativeBranch

LDIFF_SYM57=Lme_2 - BranchXamarinSDK_BranchIOS_get_NativeBranch
	.long LDIFF_SYM57
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_9:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchSessionInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchSessionInterface"

LDIFF_SYM58=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM59=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM60=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:Init"
	.asciz "BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "branchKey"

LDIFF_SYM61=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 1,104,3
	.asciz "launchOptions"

LDIFF_SYM62=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM63=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM64=Lfde3_end - Lfde3_start
	.long LDIFF_SYM64
Lfde3_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface

LDIFF_SYM65=Lme_3 - BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchSessionInterface
	.long LDIFF_SYM65
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_10:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchBUOSessionInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchBUOSessionInterface"

LDIFF_SYM66=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM67=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM68=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:Init"
	.asciz "BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "branchKey"

LDIFF_SYM69=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 1,104,3
	.asciz "launchOptions"

LDIFF_SYM70=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM71=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM72=Lfde4_end - Lfde4_start
	.long LDIFF_SYM72
Lfde4_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface

LDIFF_SYM73=Lme_4 - BranchXamarinSDK_BranchIOS_Init_string_Foundation_NSDictionary_BranchXamarinSDK_IBranchBUOSessionInterface
	.long LDIFF_SYM73
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:SetDebug"
	.asciz "BranchXamarinSDK_BranchIOS_SetDebug"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_SetDebug
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM74=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM75=Lfde5_end - Lfde5_start
	.long LDIFF_SYM75
Lfde5_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_SetDebug

LDIFF_SYM76=Lme_5 - BranchXamarinSDK_BranchIOS_SetDebug
	.long LDIFF_SYM76
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_11:

	.byte 5
	.asciz "BranchXamarinSDK_iOS_BranchSessionListener"

	.byte 24,16
LDIFF_SYM77=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,0,6
	.asciz "callback"

LDIFF_SYM78=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,16,0,7
	.asciz "BranchXamarinSDK_iOS_BranchSessionListener"

LDIFF_SYM79=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM80=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM81=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:InitSession"
	.asciz "BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM82=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM83=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM84=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM85=Lfde6_end - Lfde6_start
	.long LDIFF_SYM85
Lfde6_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface

LDIFF_SYM86=Lme_6 - BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchSessionInterface
	.long LDIFF_SYM86
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_12:

	.byte 5
	.asciz "BranchXamarinSDK_iOS_BranchBUOSessionListener"

	.byte 24,16
LDIFF_SYM87=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,0,6
	.asciz "callback"

LDIFF_SYM88=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,16,0,7
	.asciz "BranchXamarinSDK_iOS_BranchBUOSessionListener"

LDIFF_SYM89=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM90=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM91=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:InitSession"
	.asciz "BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM92=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM93=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM94=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM95=Lfde7_end - Lfde7_start
	.long LDIFF_SYM95
Lfde7_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface

LDIFF_SYM96=Lme_7 - BranchXamarinSDK_BranchIOS_InitSession_BranchXamarinSDK_IBranchBUOSessionInterface
	.long LDIFF_SYM96
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetLastReferringParams"
	.asciz "BranchXamarinSDK_BranchIOS_GetLastReferringParams"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringParams
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM97=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM98=Lfde8_end - Lfde8_start
	.long LDIFF_SYM98
Lfde8_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringParams

LDIFF_SYM99=Lme_8 - BranchXamarinSDK_BranchIOS_GetLastReferringParams
	.long LDIFF_SYM99
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetLastReferringBranchUniversalObject"
	.asciz "BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM100=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde9_end - Lfde9_start
	.long LDIFF_SYM101
Lfde9_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject

LDIFF_SYM102=Lme_9 - BranchXamarinSDK_BranchIOS_GetLastReferringBranchUniversalObject
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetLastReferringBranchLinkProperties"
	.asciz "BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM104=Lfde10_end - Lfde10_start
	.long LDIFF_SYM104
Lfde10_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties

LDIFF_SYM105=Lme_a - BranchXamarinSDK_BranchIOS_GetLastReferringBranchLinkProperties
	.long LDIFF_SYM105
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetFirstReferringParams"
	.asciz "BranchXamarinSDK_BranchIOS_GetFirstReferringParams"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringParams
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM106=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM107=Lfde11_end - Lfde11_start
	.long LDIFF_SYM107
Lfde11_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringParams

LDIFF_SYM108=Lme_b - BranchXamarinSDK_BranchIOS_GetFirstReferringParams
	.long LDIFF_SYM108
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetFirstReferringBranchUniversalObject"
	.asciz "BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM109=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM110=Lfde12_end - Lfde12_start
	.long LDIFF_SYM110
Lfde12_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject

LDIFF_SYM111=Lme_c - BranchXamarinSDK_BranchIOS_GetFirstReferringBranchUniversalObject
	.long LDIFF_SYM111
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetFirstReferringBranchLinkProperties"
	.asciz "BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM112=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM113=Lfde13_end - Lfde13_start
	.long LDIFF_SYM113
Lfde13_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties

LDIFF_SYM114=Lme_d - BranchXamarinSDK_BranchIOS_GetFirstReferringBranchLinkProperties
	.long LDIFF_SYM114
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:ResetUserSession"
	.asciz "BranchXamarinSDK_BranchIOS_ResetUserSession"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_ResetUserSession
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM115=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM116=Lfde14_end - Lfde14_start
	.long LDIFF_SYM116
Lfde14_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_ResetUserSession

LDIFF_SYM117=Lme_e - BranchXamarinSDK_BranchIOS_ResetUserSession
	.long LDIFF_SYM117
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_13:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchIdentityInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchIdentityInterface"

LDIFF_SYM118=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM119=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM120=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_14:

	.byte 5
	.asciz "BranchXamarinSDK_iOS_BranchIdentityListener"

	.byte 24,16
LDIFF_SYM121=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,0,6
	.asciz "callback"

LDIFF_SYM122=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,16,0,7
	.asciz "BranchXamarinSDK_iOS_BranchIdentityListener"

LDIFF_SYM123=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM124=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM124
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM125=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:SetIdentity"
	.asciz "BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM126=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 1,104,3
	.asciz "user"

LDIFF_SYM127=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,141,32,3
	.asciz "callback"

LDIFF_SYM128=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,141,40,11
	.asciz "V_0"

LDIFF_SYM129=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM130=Lfde15_end - Lfde15_start
	.long LDIFF_SYM130
Lfde15_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface

LDIFF_SYM131=Lme_f - BranchXamarinSDK_BranchIOS_SetIdentity_string_BranchXamarinSDK_IBranchIdentityInterface
	.long LDIFF_SYM131
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,151,16,152,15
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:Logout"
	.asciz "BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM132=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM133=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM134=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM135=Lfde16_end - Lfde16_start
	.long LDIFF_SYM135
Lfde16_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface

LDIFF_SYM136=Lme_10 - BranchXamarinSDK_BranchIOS_Logout_BranchXamarinSDK_IBranchIdentityInterface
	.long LDIFF_SYM136
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_15:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchUrlInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchUrlInterface"

LDIFF_SYM137=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM137
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM138=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM138
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM139=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM139
LTDIE_18:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM140=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM141=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM142=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_19:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM143=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM144=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM145=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM145
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM146=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM147=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_20:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM148=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM149=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM150=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_17:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM153=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM154=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM155=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM156=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM157=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM159=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM160=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM161=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM162=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM163=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM164=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM165=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM166=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_21:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM167=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM168=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM170=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM171=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM172=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM172
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM173=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM174=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_16:

	.byte 5
	.asciz "_BranchUniversalObject"

	.byte 96,16
LDIFF_SYM175=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,0,6
	.asciz "canonicalIdentifier"

LDIFF_SYM176=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,16,6
	.asciz "title"

LDIFF_SYM177=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,24,6
	.asciz "contentDescription"

LDIFF_SYM178=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,32,6
	.asciz "imageUrl"

LDIFF_SYM179=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,40,6
	.asciz "metadata"

LDIFF_SYM180=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,48,6
	.asciz "type"

LDIFF_SYM181=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,56,6
	.asciz "contentIndexMode"

LDIFF_SYM182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,72,6
	.asciz "keywords"

LDIFF_SYM183=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,64,6
	.asciz "expirationDate"

LDIFF_SYM184=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2,35,80,0,7
	.asciz "_BranchUniversalObject"

LDIFF_SYM185=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM186=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM187=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_22:

	.byte 5
	.asciz "_BranchLinkProperties"

	.byte 72,16
LDIFF_SYM188=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,35,0,6
	.asciz "tags"

LDIFF_SYM189=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,35,16,6
	.asciz "feature"

LDIFF_SYM190=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,35,24,6
	.asciz "alias"

LDIFF_SYM191=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,32,6
	.asciz "channel"

LDIFF_SYM192=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,40,6
	.asciz "stage"

LDIFF_SYM193=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,35,48,6
	.asciz "matchDuration"

LDIFF_SYM194=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,64,6
	.asciz "controlParams"

LDIFF_SYM195=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,56,0,7
	.asciz "_BranchLinkProperties"

LDIFF_SYM196=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM197=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM197
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM198=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM198
LTDIE_23:

	.byte 5
	.asciz "BranchXamarinSDK_iOS_BranchUrlListener"

	.byte 24,16
LDIFF_SYM199=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,0,6
	.asciz "callback"

LDIFF_SYM200=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,16,0,7
	.asciz "BranchXamarinSDK_iOS_BranchUrlListener"

LDIFF_SYM201=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM202=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM203=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_24:

	.byte 5
	.asciz "IOSNativeBranch_BranchUniversalObject"

	.byte 40,16
LDIFF_SYM204=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,0,0,7
	.asciz "IOSNativeBranch_BranchUniversalObject"

LDIFF_SYM205=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM206=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM207=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_25:

	.byte 5
	.asciz "IOSNativeBranch_BranchLinkProperties"

	.byte 40,16
LDIFF_SYM208=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,0,0,7
	.asciz "IOSNativeBranch_BranchLinkProperties"

LDIFF_SYM209=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM210=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM211=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetShortURL"
	.asciz "BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM212=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,141,40,3
	.asciz "callback"

LDIFF_SYM213=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,141,48,3
	.asciz "universalObject"

LDIFF_SYM214=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,141,56,3
	.asciz "linkProperties"

LDIFF_SYM215=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM216=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 1,102,11
	.asciz "V_1"

LDIFF_SYM217=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 1,101,11
	.asciz "V_2"

LDIFF_SYM218=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM219=Lfde17_end - Lfde17_start
	.long LDIFF_SYM219
Lfde17_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties

LDIFF_SYM220=Lme_11 - BranchXamarinSDK_BranchIOS_GetShortURL_BranchXamarinSDK_IBranchUrlInterface_BranchUniversalObject_BranchLinkProperties
	.long LDIFF_SYM220
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,148,20,149,19,68,150,18
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_26:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchLinkShareInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchLinkShareInterface"

LDIFF_SYM221=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM222=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM223=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_29:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 40,16
LDIFF_SYM224=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM225=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM226=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM227=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_28:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 48,16
LDIFF_SYM228=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,0,6
	.asciz "__mt_PreferredFocusedView_var"

LDIFF_SYM229=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,40,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM230=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM231=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM232=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_27:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 48,16
LDIFF_SYM233=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM234=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM234
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM235=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM236=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:ShareLink"
	.asciz "BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM237=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,141,56,3
	.asciz "callback"

LDIFF_SYM238=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 3,141,192,0,3
	.asciz "universalObject"

LDIFF_SYM239=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 3,141,200,0,3
	.asciz "linkProperties"

LDIFF_SYM240=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 3,141,208,0,3
	.asciz "message"

LDIFF_SYM241=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 3,141,216,0,11
	.asciz "V_0"

LDIFF_SYM242=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM242
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM243=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM244=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 1,101,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM245=Lfde18_end - Lfde18_start
	.long LDIFF_SYM245
Lfde18_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string

LDIFF_SYM246=Lme_12 - BranchXamarinSDK_BranchIOS_ShareLink_BranchXamarinSDK_IBranchLinkShareInterface_BranchUniversalObject_BranchLinkProperties_string
	.long LDIFF_SYM246
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,147,26,148,25,68,149,24,150,23,68,151,22
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_31:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM247=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM248=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM249=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM249
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM250=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM251=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM251
LTDIE_32:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM252=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM253=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM254=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM255=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM256=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM256
LTDIE_30:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM257=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM258=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM259=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM260=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM261=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM262=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM263=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM264=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM265=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM266=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM267=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM268=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM269=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM269
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM270=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:UserCompletedAction"
	.asciz "BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM271=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,141,16,3
	.asciz "action"

LDIFF_SYM272=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM272
	.byte 2,141,24,3
	.asciz "metadata"

LDIFF_SYM273=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM274=Lfde19_end - Lfde19_start
	.long LDIFF_SYM274
Lfde19_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object

LDIFF_SYM275=Lme_13 - BranchXamarinSDK_BranchIOS_UserCompletedAction_string_System_Collections_Generic_Dictionary_2_string_object
	.long LDIFF_SYM275
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_33:

	.byte 17
	.asciz "BranchXamarinSDK_IBranchRewardsInterface"

	.byte 16,7
	.asciz "BranchXamarinSDK_IBranchRewardsInterface"

LDIFF_SYM276=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM277=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM278=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_34:

	.byte 5
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener"

	.byte 24,16
LDIFF_SYM279=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,0,6
	.asciz "callback"

LDIFF_SYM280=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,35,16,0,7
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener"

LDIFF_SYM281=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM282=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM283=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:LoadRewards"
	.asciz "BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM284=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM285=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM286=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM287=Lfde20_end - Lfde20_start
	.long LDIFF_SYM287
Lfde20_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface

LDIFF_SYM288=Lme_14 - BranchXamarinSDK_BranchIOS_LoadRewards_BranchXamarinSDK_IBranchRewardsInterface
	.long LDIFF_SYM288
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:RedeemRewards"
	.asciz "BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM289=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 1,103,3
	.asciz "callback"

LDIFF_SYM290=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,141,32,3
	.asciz "amount"

LDIFF_SYM291=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 2,141,40,3
	.asciz "bucket"

LDIFF_SYM292=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM292
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM293=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM293
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM294=Lfde21_end - Lfde21_start
	.long LDIFF_SYM294
Lfde21_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string

LDIFF_SYM295=Lme_15 - BranchXamarinSDK_BranchIOS_RedeemRewards_BranchXamarinSDK_IBranchRewardsInterface_int_string
	.long LDIFF_SYM295
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,150,16,151,15
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_35:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM296=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM297=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM298=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM299=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM300=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetCreditHistory"
	.asciz "BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM301=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 1,101,3
	.asciz "callback"

LDIFF_SYM302=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,141,56,3
	.asciz "bucket"

LDIFF_SYM303=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 1,103,3
	.asciz "afterId"

LDIFF_SYM304=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 1,104,3
	.asciz "length"

LDIFF_SYM305=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 1,105,3
	.asciz "mostRecentFirst"

LDIFF_SYM306=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 3,141,192,0,11
	.asciz "V_0"

LDIFF_SYM307=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM308=Lfde22_end - Lfde22_start
	.long LDIFF_SYM308
Lfde22_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool

LDIFF_SYM309=Lme_16 - BranchXamarinSDK_BranchIOS_GetCreditHistory_BranchXamarinSDK_IBranchRewardsInterface_string_string_int_bool
	.long LDIFF_SYM309
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,151,12,152,11,68,153,10
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetCredits"
	.asciz "BranchXamarinSDK_BranchIOS_GetCredits"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetCredits
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM310=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM311=Lfde23_end - Lfde23_start
	.long LDIFF_SYM311
Lfde23_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetCredits

LDIFF_SYM312=Lme_17 - BranchXamarinSDK_BranchIOS_GetCredits
	.long LDIFF_SYM312
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:GetCreditsForBucket"
	.asciz "BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM313=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,141,16,3
	.asciz "bucket"

LDIFF_SYM314=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM315=Lfde24_end - Lfde24_start
	.long LDIFF_SYM315
Lfde24_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string

LDIFF_SYM316=Lme_18 - BranchXamarinSDK_BranchIOS_GetCreditsForBucket_string
	.long LDIFF_SYM316
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:SetRetryInterval"
	.asciz "BranchXamarinSDK_BranchIOS_SetRetryInterval_int"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_SetRetryInterval_int
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM317=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,141,16,3
	.asciz "retryInterval"

LDIFF_SYM318=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM319=Lfde25_end - Lfde25_start
	.long LDIFF_SYM319
Lfde25_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_SetRetryInterval_int

LDIFF_SYM320=Lme_19 - BranchXamarinSDK_BranchIOS_SetRetryInterval_int
	.long LDIFF_SYM320
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:SetMaxRetries"
	.asciz "BranchXamarinSDK_BranchIOS_SetMaxRetries_int"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_SetMaxRetries_int
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM321=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,141,16,3
	.asciz "maxRetries"

LDIFF_SYM322=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM323=Lfde26_end - Lfde26_start
	.long LDIFF_SYM323
Lfde26_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_SetMaxRetries_int

LDIFF_SYM324=Lme_1a - BranchXamarinSDK_BranchIOS_SetMaxRetries_int
	.long LDIFF_SYM324
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:SetNetworkTimeout"
	.asciz "BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM325=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,141,16,3
	.asciz "timeout"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM327=Lfde27_end - Lfde27_start
	.long LDIFF_SYM327
Lfde27_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int

LDIFF_SYM328=Lme_1b - BranchXamarinSDK_BranchIOS_SetNetworkTimeout_int
	.long LDIFF_SYM328
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:AccountForFacebookSDKPreventingAppLaunch"
	.asciz "BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM329=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM330=Lfde28_end - Lfde28_start
	.long LDIFF_SYM330
Lfde28_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch

LDIFF_SYM331=Lme_1c - BranchXamarinSDK_BranchIOS_AccountForFacebookSDKPreventingAppLaunch
	.long LDIFF_SYM331
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:RegisterView"
	.asciz "BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM332=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,141,16,3
	.asciz "universalObject"

LDIFF_SYM333=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM334=Lfde29_end - Lfde29_start
	.long LDIFF_SYM334
Lfde29_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject

LDIFF_SYM335=Lme_1d - BranchXamarinSDK_BranchIOS_RegisterView_BranchUniversalObject
	.long LDIFF_SYM335
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:ListOnSpotlight"
	.asciz "BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM336=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,141,16,3
	.asciz "universalObject"

LDIFF_SYM337=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM338=Lfde30_end - Lfde30_start
	.long LDIFF_SYM338
Lfde30_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject

LDIFF_SYM339=Lme_1e - BranchXamarinSDK_BranchIOS_ListOnSpotlight_BranchUniversalObject
	.long LDIFF_SYM339
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_36:

	.byte 5
	.asciz "Foundation_NSUserActivity"

	.byte 40,16
LDIFF_SYM340=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,0,0,7
	.asciz "Foundation_NSUserActivity"

LDIFF_SYM341=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM342=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM343=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:ContinueUserActivity"
	.asciz "BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM344=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,141,16,3
	.asciz "activity"

LDIFF_SYM345=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM346=Lfde31_end - Lfde31_start
	.long LDIFF_SYM346
Lfde31_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity

LDIFF_SYM347=Lme_1f - BranchXamarinSDK_BranchIOS_ContinueUserActivity_Foundation_NSUserActivity
	.long LDIFF_SYM347
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_37:

	.byte 5
	.asciz "Foundation_NSUrl"

	.byte 40,16
LDIFF_SYM348=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,0,0,7
	.asciz "Foundation_NSUrl"

LDIFF_SYM349=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM350=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM351=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:OpenUrl"
	.asciz "BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM352=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,141,16,3
	.asciz "url"

LDIFF_SYM353=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM354=Lfde32_end - Lfde32_start
	.long LDIFF_SYM354
Lfde32_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl

LDIFF_SYM355=Lme_20 - BranchXamarinSDK_BranchIOS_OpenUrl_Foundation_NSUrl
	.long LDIFF_SYM355
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:HandlePushNotification"
	.asciz "BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM356=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,141,16,3
	.asciz "userInfo"

LDIFF_SYM357=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM358=Lfde33_end - Lfde33_start
	.long LDIFF_SYM358
Lfde33_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary

LDIFF_SYM359=Lme_21 - BranchXamarinSDK_BranchIOS_HandlePushNotification_Foundation_NSDictionary
	.long LDIFF_SYM359
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:.cctor"
	.asciz "BranchXamarinSDK_BranchIOS__cctor"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS__cctor
	.quad Lme_22

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM360=Lfde34_end - Lfde34_start
	.long LDIFF_SYM360
Lfde34_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS__cctor

LDIFF_SYM361=Lme_22 - BranchXamarinSDK_BranchIOS__cctor
	.long LDIFF_SYM361
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.BranchIOS:<ShareLink>m__0"
	.asciz "BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool"

	.byte 0,0
	.quad BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "url"

LDIFF_SYM362=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,141,16,3
	.asciz "isShared"

LDIFF_SYM363=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM364=Lfde35_end - Lfde35_start
	.long LDIFF_SYM364
Lfde35_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool

LDIFF_SYM365=Lme_23 - BranchXamarinSDK_BranchIOS__ShareLinkm__0_string_bool
	.long LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_38:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM366=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM366
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM367=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM368=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM368
LTDIE_39:

	.byte 5
	.asciz "Foundation_NSArray"

	.byte 40,16
LDIFF_SYM369=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,0,0,7
	.asciz "Foundation_NSArray"

LDIFF_SYM370=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM370
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM371=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM371
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM372=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM372
LTDIE_40:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM373=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM374=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM375=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM376=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM376
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM377=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToDictionary"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "data"

LDIFF_SYM378=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 3,141,208,0,11
	.asciz "V_0"

LDIFF_SYM379=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 3,141,144,1,11
	.asciz "V_1"

LDIFF_SYM380=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM381=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM382=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 3,141,152,1,11
	.asciz "V_4"

LDIFF_SYM383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM384=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 1,100,11
	.asciz "V_6"

LDIFF_SYM385=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 1,99,11
	.asciz "V_7"

LDIFF_SYM386=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 3,141,128,1,11
	.asciz "V_8"

LDIFF_SYM387=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 3,141,160,1,11
	.asciz "V_9"

LDIFF_SYM388=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM388
	.byte 1,106,11
	.asciz "V_10"

LDIFF_SYM389=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 1,105,11
	.asciz "V_11"

LDIFF_SYM390=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM391=Lfde36_end - Lfde36_start
	.long LDIFF_SYM391
Lfde36_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary

LDIFF_SYM392=Lme_24 - BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_Foundation_NSDictionary
	.long LDIFF_SYM392
	.long 0
	.byte 12,31,0,68,14,144,2,157,34,158,33,68,13,29,68,147,32,148,31,68,149,30,150,29,68,151,28,152,27,68,153,26
	.byte 154,25
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToDictionary"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "universalObject"

LDIFF_SYM393=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 3,141,208,0,11
	.asciz "V_0"

LDIFF_SYM394=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 3,141,128,1,11
	.asciz "V_1"

LDIFF_SYM395=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 3,141,136,1,11
	.asciz "V_2"

LDIFF_SYM396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 3,141,144,1,11
	.asciz "V_3"

LDIFF_SYM397=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 3,141,248,0,11
	.asciz "V_4"

LDIFF_SYM398=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 3,141,152,1,11
	.asciz "V_5"

LDIFF_SYM399=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 3,141,160,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM400=Lfde37_end - Lfde37_start
	.long LDIFF_SYM400
Lfde37_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject

LDIFF_SYM401=Lme_25 - BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchUniversalObject
	.long LDIFF_SYM401
	.long 0
	.byte 12,31,0,84,14,144,4,157,66,158,65,68,13,29,68,147,64,148,63,68,149,62,150,61,68,151,60,152,59,68,153,58
	.byte 154,57
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToDictionary"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "linkProperties"

LDIFF_SYM402=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 3,141,208,0,11
	.asciz "V_0"

LDIFF_SYM403=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 3,141,240,0,11
	.asciz "V_1"

LDIFF_SYM404=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 3,141,248,0,11
	.asciz "V_2"

LDIFF_SYM405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 3,141,128,1,11
	.asciz "V_3"

LDIFF_SYM406=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 3,141,136,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM407=Lfde38_end - Lfde38_start
	.long LDIFF_SYM407
Lfde38_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties

LDIFF_SYM408=Lme_26 - BranchXamarinSDK_iOS_BranchIOSUtils_ToDictionary_IOSNativeBranch_BranchLinkProperties
	.long LDIFF_SYM408
	.long 0
	.byte 12,31,0,68,14,160,3,157,52,158,51,68,13,29,68,147,50,148,49,68,149,48,150,47,68,151,46,152,45,68,153,44
	.byte 154,43
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToNSDictionary"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "data"

LDIFF_SYM409=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM410=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM411=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM412=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM413=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM414=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM416=Lfde39_end - Lfde39_start
	.long LDIFF_SYM416
Lfde39_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object

LDIFF_SYM417=Lme_27 - BranchXamarinSDK_iOS_BranchIOSUtils_ToNSDictionary_System_Collections_Generic_Dictionary_2_string_object
	.long LDIFF_SYM417
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,149,24,150,23,68,151,22,152,21,68,153,20,154,19
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_41:

	.byte 17
	.asciz "System_Collections_Generic_ICollection`1"

	.byte 16,7
	.asciz "System_Collections_Generic_ICollection`1"

LDIFF_SYM418=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM419=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM420=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM420
LTDIE_42:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM421=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM421
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM422=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM423=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToNSObjectArray"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "data"

LDIFF_SYM424=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM425=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM426=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM427=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM428=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM429=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM430=Lfde40_end - Lfde40_start
	.long LDIFF_SYM430
Lfde40_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string

LDIFF_SYM431=Lme_28 - BranchXamarinSDK_iOS_BranchIOSUtils_ToNSObjectArray_System_Collections_Generic_ICollection_1_string
	.long LDIFF_SYM431
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,150,16,151,15,68,152,14,153,13,68,154,12
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_43:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM432=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM433=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM435=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM436=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM437=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM438=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM438
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM439=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM439
LTDIE_44:

	.byte 5
	.asciz "Foundation_NSError"

	.byte 40,16
LDIFF_SYM440=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,0,0,7
	.asciz "Foundation_NSError"

LDIFF_SYM441=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM442=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM442
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM443=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_45:

	.byte 5
	.asciz "Foundation_NSData"

	.byte 40,16
LDIFF_SYM444=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,0,0,7
	.asciz "Foundation_NSData"

LDIFF_SYM445=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM446=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM446
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM447=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM447
LTDIE_46:

	.byte 5
	.asciz "Foundation_NSString"

	.byte 40,16
LDIFF_SYM448=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,35,0,0,7
	.asciz "Foundation_NSString"

LDIFF_SYM449=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM450=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM451=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToCreditHistoryArray"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "data"

LDIFF_SYM452=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM453=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM454=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 3,141,224,0,11
	.asciz "V_2"

LDIFF_SYM455=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 1,104,11
	.asciz "V_3"

LDIFF_SYM456=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 1,103,11
	.asciz "V_4"

LDIFF_SYM457=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 1,102,11
	.asciz "V_5"

LDIFF_SYM458=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 1,101,11
	.asciz "V_6"

LDIFF_SYM459=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM460=Lfde41_end - Lfde41_start
	.long LDIFF_SYM460
Lfde41_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__

LDIFF_SYM461=Lme_29 - BranchXamarinSDK_iOS_BranchIOSUtils_ToCreditHistoryArray_Foundation_NSObject__
	.long LDIFF_SYM461
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToNativeUniversalObject"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM462=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM463=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM464=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM465=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM466=Lfde42_end - Lfde42_start
	.long LDIFF_SYM466
Lfde42_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject

LDIFF_SYM467=Lme_2a - BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeUniversalObject_BranchUniversalObject
	.long LDIFF_SYM467
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,150,24,151,23,68,152,22,153,21,68,154,20
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIOSUtils:ToNativeLinkProperties"
	.asciz "BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "obj"

LDIFF_SYM468=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM469=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM470=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM471=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM472=Lfde43_end - Lfde43_start
	.long LDIFF_SYM472
Lfde43_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties

LDIFF_SYM473=Lme_2b - BranchXamarinSDK_iOS_BranchIOSUtils_ToNativeLinkProperties_BranchLinkProperties
	.long LDIFF_SYM473
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,150,22,151,21,68,152,20,153,19,68,154,18
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIdentityListener:.ctor"
	.asciz "BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM474=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM475=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM476=Lfde44_end - Lfde44_start
	.long LDIFF_SYM476
Lfde44_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface

LDIFF_SYM477=Lme_2c - BranchXamarinSDK_iOS_BranchIdentityListener__ctor_BranchXamarinSDK_IBranchIdentityInterface
	.long LDIFF_SYM477
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_47:

	.byte 5
	.asciz "BranchXamarinSDK_BranchError"

	.byte 32,16
LDIFF_SYM478=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,0,6
	.asciz "<ErrorMessage>k__BackingField"

LDIFF_SYM479=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,16,6
	.asciz "<ErrorCode>k__BackingField"

LDIFF_SYM480=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,24,0,7
	.asciz "BranchXamarinSDK_BranchError"

LDIFF_SYM481=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM482=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM483=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIdentityListener:SetIdentityCallback"
	.asciz "BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM484=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 1,104,3
	.asciz "data"

LDIFF_SYM485=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM486=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM487=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM488=Lfde45_end - Lfde45_start
	.long LDIFF_SYM488
Lfde45_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError

LDIFF_SYM489=Lme_2d - BranchXamarinSDK_iOS_BranchIdentityListener_SetIdentityCallback_Foundation_NSDictionary_Foundation_NSError
	.long LDIFF_SYM489
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154,10
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchIdentityListener:LogoutCallback"
	.asciz "BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM490=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 1,105,3
	.asciz "status"

LDIFF_SYM491=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM492=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM493=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM494=Lfde46_end - Lfde46_start
	.long LDIFF_SYM494
Lfde46_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError

LDIFF_SYM495=Lme_2e - BranchXamarinSDK_iOS_BranchIdentityListener_LogoutCallback_bool_Foundation_NSError
	.long LDIFF_SYM495
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchRewardsListener:.ctor"
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM496=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM497=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM498=Lfde47_end - Lfde47_start
	.long LDIFF_SYM498
Lfde47_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface

LDIFF_SYM499=Lme_2f - BranchXamarinSDK_iOS_BranchRewardsListener__ctor_BranchXamarinSDK_IBranchRewardsInterface
	.long LDIFF_SYM499
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchRewardsListener:LoadRewardsCallback"
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM500=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 1,105,3
	.asciz "changed"

LDIFF_SYM501=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM502=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM503=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM504=Lfde48_end - Lfde48_start
	.long LDIFF_SYM504
Lfde48_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError

LDIFF_SYM505=Lme_30 - BranchXamarinSDK_iOS_BranchRewardsListener_LoadRewardsCallback_bool_Foundation_NSError
	.long LDIFF_SYM505
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchRewardsListener:RedeemRewardsCallback"
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM506=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 1,105,3
	.asciz "changed"

LDIFF_SYM507=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM508=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM509=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM510=Lfde49_end - Lfde49_start
	.long LDIFF_SYM510
Lfde49_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError

LDIFF_SYM511=Lme_31 - BranchXamarinSDK_iOS_BranchRewardsListener_RedeemRewardsCallback_bool_Foundation_NSError
	.long LDIFF_SYM511
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchRewardsListener:GetCreditHistoryCallback"
	.asciz "BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM512=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 1,104,3
	.asciz "list"

LDIFF_SYM513=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM514=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM515=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM516=Lfde50_end - Lfde50_start
	.long LDIFF_SYM516
Lfde50_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError

LDIFF_SYM517=Lme_32 - BranchXamarinSDK_iOS_BranchRewardsListener_GetCreditHistoryCallback_Foundation_NSObject___Foundation_NSError
	.long LDIFF_SYM517
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154,10
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchSessionListener:.ctor"
	.asciz "BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM518=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM519=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM519
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM520=Lfde51_end - Lfde51_start
	.long LDIFF_SYM520
Lfde51_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface

LDIFF_SYM521=Lme_33 - BranchXamarinSDK_iOS_BranchSessionListener__ctor_BranchXamarinSDK_IBranchSessionInterface
	.long LDIFF_SYM521
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchSessionListener:InitCallback"
	.asciz "BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM522=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 1,104,3
	.asciz "data"

LDIFF_SYM523=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM524=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM525=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM526=Lfde52_end - Lfde52_start
	.long LDIFF_SYM526
Lfde52_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError

LDIFF_SYM527=Lme_34 - BranchXamarinSDK_iOS_BranchSessionListener_InitCallback_Foundation_NSDictionary_Foundation_NSError
	.long LDIFF_SYM527
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154,10
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchUrlListener:.ctor"
	.asciz "BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM528=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM529=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM530=Lfde53_end - Lfde53_start
	.long LDIFF_SYM530
Lfde53_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface

LDIFF_SYM531=Lme_35 - BranchXamarinSDK_iOS_BranchUrlListener__ctor_BranchXamarinSDK_IBranchUrlInterface
	.long LDIFF_SYM531
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchUrlListener:GetShortUrlCallback"
	.asciz "BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM532=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 1,104,3
	.asciz "url"

LDIFF_SYM533=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,141,40,3
	.asciz "error"

LDIFF_SYM534=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM535=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM536=Lfde54_end - Lfde54_start
	.long LDIFF_SYM536
Lfde54_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError

LDIFF_SYM537=Lme_36 - BranchXamarinSDK_iOS_BranchUrlListener_GetShortUrlCallback_string_Foundation_NSError
	.long LDIFF_SYM537
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,154,10
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchBUOSessionListener:.ctor"
	.asciz "BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM538=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 1,105,3
	.asciz "callback"

LDIFF_SYM539=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM540=Lfde55_end - Lfde55_start
	.long LDIFF_SYM540
Lfde55_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface

LDIFF_SYM541=Lme_37 - BranchXamarinSDK_iOS_BranchBUOSessionListener__ctor_BranchXamarinSDK_IBranchBUOSessionInterface
	.long LDIFF_SYM541
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "BranchXamarinSDK.iOS.BranchBUOSessionListener:InitCallback"
	.asciz "BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError"

	.byte 0,0
	.quad BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM542=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 1,103,3
	.asciz "buo"

LDIFF_SYM543=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,141,40,3
	.asciz "blp"

LDIFF_SYM544=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,141,48,3
	.asciz "error"

LDIFF_SYM545=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM546=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM547=Lfde56_end - Lfde56_start
	.long LDIFF_SYM547
Lfde56_start:

	.long 0
	.align 3
	.quad BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError

LDIFF_SYM548=Lme_38 - BranchXamarinSDK_iOS_BranchBUOSessionListener_InitCallback_IOSNativeBranch_BranchUniversalObject_IOSNativeBranch_BranchLinkProperties_Foundation_NSError
	.long LDIFF_SYM548
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,150,14,151,13,68,154,12
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_48:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM549=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM550=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM551=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM551
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM552=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_REF>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF"

	.byte 1,78
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM553=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM554=Lfde57_end - Lfde57_start
	.long LDIFF_SYM554
Lfde57_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

LDIFF_SYM555=Lme_3a - System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long LDIFF_SYM555
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_Count"
	.asciz "System_Array_InternalArray__ICollection_get_Count"

	.byte 1,68
	.quad System_Array_InternalArray__ICollection_get_Count
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM556=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM557=Lfde58_end - Lfde58_start
	.long LDIFF_SYM557
Lfde58_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_Count

LDIFF_SYM558=Lme_3b - System_Array_InternalArray__ICollection_get_Count
	.long LDIFF_SYM558
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_get_IsReadOnly"
	.asciz "System_Array_InternalArray__ICollection_get_IsReadOnly"

	.byte 1,73
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM559=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM560=Lfde59_end - Lfde59_start
	.long LDIFF_SYM560
Lfde59_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_get_IsReadOnly

LDIFF_SYM561=Lme_3c - System_Array_InternalArray__ICollection_get_IsReadOnly
	.long LDIFF_SYM561
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Clear"
	.asciz "System_Array_InternalArray__ICollection_Clear"

	.byte 1,83
	.quad System_Array_InternalArray__ICollection_Clear
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM562=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM562
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM563=Lfde60_end - Lfde60_start
	.long LDIFF_SYM563
Lfde60_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Clear

LDIFF_SYM564=Lme_3d - System_Array_InternalArray__ICollection_Clear
	.long LDIFF_SYM564
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Add<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Add_T_REF_T_REF"

	.byte 1,88
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM565=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM566=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM567=Lfde61_end - Lfde61_start
	.long LDIFF_SYM567
Lfde61_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Add_T_REF_T_REF

LDIFF_SYM568=Lme_3e - System_Array_InternalArray__ICollection_Add_T_REF_T_REF
	.long LDIFF_SYM568
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Remove<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Remove_T_REF_T_REF"

	.byte 1,93
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM569=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM570=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM571=Lfde62_end - Lfde62_start
	.long LDIFF_SYM571
Lfde62_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Remove_T_REF_T_REF

LDIFF_SYM572=Lme_3f - System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
	.long LDIFF_SYM572
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_Contains<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_Contains_T_REF_T_REF"

	.byte 1,98
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM573=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM574=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 2,141,40,11
	.asciz "length"

LDIFF_SYM575=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM575
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM576=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 1,104,11
	.asciz "value"

LDIFF_SYM577=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM577
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM578=Lfde63_end - Lfde63_start
	.long LDIFF_SYM578
Lfde63_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_Contains_T_REF_T_REF

LDIFF_SYM579=Lme_40 - System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
	.long LDIFF_SYM579
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,152,12,153,11,68,154,10
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__ICollection_CopyTo<T_REF>"
	.asciz "System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int"

	.byte 1,123
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM580=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 1,104,3
	.asciz "array"

LDIFF_SYM581=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM582=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM583=Lfde64_end - Lfde64_start
	.long LDIFF_SYM583
Lfde64_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int

LDIFF_SYM584=Lme_41 - System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
	.long LDIFF_SYM584
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29,68,148,28,149,27,68,150,26,68,152,25,153,24,68,154,23
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_54:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM585=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM586=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM587=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM588=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM588
LTDIE_53:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM589=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM590=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM590
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM591=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM591
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM592=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_52:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM593=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM593
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM594=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM595=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM596=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM596
LTDIE_56:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM597=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM598=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM599=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM599
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM600=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM600
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM601=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM601
LTDIE_55:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM602=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM603=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM604=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM605=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM606=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM606
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM607=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM607
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM608=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM608
LTDIE_51:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM609=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM610=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM611=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM612=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM613=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM614=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM615=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM616=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM617=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM618=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM619=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM620=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM621=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM621
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM622=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM622
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM623=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM623
LTDIE_50:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM624=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM625=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM626=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM626
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM627=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM627
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM628=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM628
LTDIE_49:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM629=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM630=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM630
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM631=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM631
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM632=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<object>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM633=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM634=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM635=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM636=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM637=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM638=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM639=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM640=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM641=Lfde65_end - Lfde65_start
	.long LDIFF_SYM641
Lfde65_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object

LDIFF_SYM642=Lme_42 - wrapper_delegate_invoke_System_Predicate_1_object_invoke_bool_T_object
	.long LDIFF_SYM642
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_57:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM643=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM644=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM645=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM645
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM646=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<object>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM647=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM648=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM649=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM649
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM650=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM651=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM652=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM653=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM654=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM655=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM656=Lfde66_end - Lfde66_start
	.long LDIFF_SYM656
Lfde66_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object

LDIFF_SYM657=Lme_43 - wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
	.long LDIFF_SYM657
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_58:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM658=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM659=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM660=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM661=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM661
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM662=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM662
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM663=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_INST__ctor_System_Array"

	.byte 1,239,1
	.quad System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM664=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM664
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM665=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM665
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM666=Lfde67_end - Lfde67_start
	.long LDIFF_SYM666
Lfde67_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST__ctor_System_Array

LDIFF_SYM667=Lme_45 - System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
	.long LDIFF_SYM667
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:Dispose"
	.asciz "System_Array_InternalEnumerator_1_T_INST_Dispose"

	.byte 1,245,1
	.quad System_Array_InternalEnumerator_1_T_INST_Dispose
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM668=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM669=Lfde68_end - Lfde68_start
	.long LDIFF_SYM669
Lfde68_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_Dispose

LDIFF_SYM670=Lme_46 - System_Array_InternalEnumerator_1_T_INST_Dispose
	.long LDIFF_SYM670
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:MoveNext"
	.asciz "System_Array_InternalEnumerator_1_T_INST_MoveNext"

	.byte 1,250,1
	.quad System_Array_InternalEnumerator_1_T_INST_MoveNext
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM671=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 1,106,11
	.asciz ""

LDIFF_SYM672=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM673=Lfde69_end - Lfde69_start
	.long LDIFF_SYM673
Lfde69_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_MoveNext

LDIFF_SYM674=Lme_47 - System_Array_InternalEnumerator_1_T_INST_MoveNext
	.long LDIFF_SYM674
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,150,12,151,11,68,152,10,153,9,68,154,8
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:get_Current"
	.asciz "System_Array_InternalEnumerator_1_T_INST_get_Current"

	.byte 1,130,2
	.quad System_Array_InternalEnumerator_1_T_INST_get_Current
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM675=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM675
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM676=Lfde70_end - Lfde70_start
	.long LDIFF_SYM676
Lfde70_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_get_Current

LDIFF_SYM677=Lme_48 - System_Array_InternalEnumerator_1_T_INST_get_Current
	.long LDIFF_SYM677
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:System.Collections.IEnumerator.Reset"
	.asciz "System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset"

	.byte 1,141,2
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM678=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM678
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM679=Lfde71_end - Lfde71_start
	.long LDIFF_SYM679
Lfde71_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset

LDIFF_SYM680=Lme_49 - System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM680
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_INST>:System.Collections.IEnumerator.get_Current"
	.asciz "System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current"

	.byte 1,146,2
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM681=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM682=Lfde72_end - Lfde72_start
	.long LDIFF_SYM682
Lfde72_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current

LDIFF_SYM683=Lme_4a - System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM683
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_INST>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST"

	.byte 1,78
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM684=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM685=Lfde73_end - Lfde73_start
	.long LDIFF_SYM685
Lfde73_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST

LDIFF_SYM686=Lme_4b - System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
	.long LDIFF_SYM686
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_59:

	.byte 5
	.asciz "System_Predicate`1"

	.byte 112,16
LDIFF_SYM687=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,35,0,0,7
	.asciz "System_Predicate`1"

LDIFF_SYM688=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM688
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM689=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM689
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM690=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM690
LTDIE_61:

	.byte 5
	.asciz "_Transaction"

	.byte 48,16
LDIFF_SYM691=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 2,35,0,6
	.asciz "date"

LDIFF_SYM692=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 2,35,16,6
	.asciz "id"

LDIFF_SYM693=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 2,35,24,6
	.asciz "bucket"

LDIFF_SYM694=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 2,35,32,6
	.asciz "amount"

LDIFF_SYM695=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 2,35,40,6
	.asciz "type"

LDIFF_SYM696=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM696
	.byte 2,35,44,0,7
	.asciz "_Transaction"

LDIFF_SYM697=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM697
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM698=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM698
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM699=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM699
LTDIE_60:

	.byte 5
	.asciz "BranchXamarinSDK_CreditHistoryEntry"

	.byte 40,16
LDIFF_SYM700=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,35,0,6
	.asciz "transaction"

LDIFF_SYM701=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 2,35,16,6
	.asciz "referrer"

LDIFF_SYM702=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2,35,24,6
	.asciz "referree"

LDIFF_SYM703=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,35,32,0,7
	.asciz "BranchXamarinSDK_CreditHistoryEntry"

LDIFF_SYM704=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM704
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM705=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM705
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM706=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Predicate`1<BranchXamarinSDK.CreditHistoryEntry>:invoke_bool_T"
	.asciz "wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM707=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM708=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM709=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM709
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM710=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM710
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM711=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM712=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM713=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM714=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM715=Lfde74_end - Lfde74_start
	.long LDIFF_SYM715
Lfde74_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry

LDIFF_SYM716=Lme_4c - wrapper_delegate_invoke_System_Predicate_1_BranchXamarinSDK_CreditHistoryEntry_invoke_bool_T_BranchXamarinSDK_CreditHistoryEntry
	.long LDIFF_SYM716
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_62:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM717=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM718=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM718
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM719=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM719
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM720=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<BranchXamarinSDK.CreditHistoryEntry>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM721=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM722=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM722
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM723=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM723
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM724=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM724
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM725=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM726=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM727=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM728=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM728
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM729=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM730=Lfde75_end - Lfde75_start
	.long LDIFF_SYM730
Lfde75_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry

LDIFF_SYM731=Lme_4d - wrapper_delegate_invoke_System_Comparison_1_BranchXamarinSDK_CreditHistoryEntry_invoke_int_T_T_BranchXamarinSDK_CreditHistoryEntry_BranchXamarinSDK_CreditHistoryEntry
	.long LDIFF_SYM731
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde75_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_63:

	.byte 5
	.asciz "System_Nullable`1"

	.byte 32,16
LDIFF_SYM732=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM733=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 2,35,16,6
	.asciz "has_value"

LDIFF_SYM734=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM734
	.byte 2,35,24,0,7
	.asciz "System_Nullable`1"

LDIFF_SYM735=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM735
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM736=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM736
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM737=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM737
	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:.ctor"
	.asciz "System_Nullable_1_System_DateTime__ctor_System_DateTime"

	.byte 2,94
	.quad System_Nullable_1_System_DateTime__ctor_System_DateTime
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM738=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM738
	.byte 1,106,3
	.asciz "value"

LDIFF_SYM739=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM740=Lfde76_end - Lfde76_start
	.long LDIFF_SYM740
Lfde76_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime__ctor_System_DateTime

LDIFF_SYM741=Lme_4e - System_Nullable_1_System_DateTime__ctor_System_DateTime
	.long LDIFF_SYM741
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde76_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:get_HasValue"
	.asciz "System_Nullable_1_System_DateTime_get_HasValue"

	.byte 2,99
	.quad System_Nullable_1_System_DateTime_get_HasValue
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM742=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM742
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM743=Lfde77_end - Lfde77_start
	.long LDIFF_SYM743
Lfde77_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_get_HasValue

LDIFF_SYM744=Lme_4f - System_Nullable_1_System_DateTime_get_HasValue
	.long LDIFF_SYM744
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde77_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:get_Value"
	.asciz "System_Nullable_1_System_DateTime_get_Value"

	.byte 2,104
	.quad System_Nullable_1_System_DateTime_get_Value
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM745=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM746=Lfde78_end - Lfde78_start
	.long LDIFF_SYM746
Lfde78_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_get_Value

LDIFF_SYM747=Lme_50 - System_Nullable_1_System_DateTime_get_Value
	.long LDIFF_SYM747
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde78_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Equals"
	.asciz "System_Nullable_1_System_DateTime_Equals_object"

	.byte 2,113
	.quad System_Nullable_1_System_DateTime_Equals_object
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM748=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 1,105,3
	.asciz "other"

LDIFF_SYM749=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM749
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM750=Lfde79_end - Lfde79_start
	.long LDIFF_SYM750
Lfde79_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Equals_object

LDIFF_SYM751=Lme_51 - System_Nullable_1_System_DateTime_Equals_object
	.long LDIFF_SYM751
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde79_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Equals"
	.asciz "System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime"

	.byte 2,123
	.quad System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM752=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 1,106,3
	.asciz "other"

LDIFF_SYM753=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM753
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM754=Lfde80_end - Lfde80_start
	.long LDIFF_SYM754
Lfde80_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime

LDIFF_SYM755=Lme_52 - System_Nullable_1_System_DateTime_Equals_System_Nullable_1_System_DateTime
	.long LDIFF_SYM755
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde80_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetHashCode"
	.asciz "System_Nullable_1_System_DateTime_GetHashCode"

	.byte 2,134,1
	.quad System_Nullable_1_System_DateTime_GetHashCode
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM756=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM757=Lfde81_end - Lfde81_start
	.long LDIFF_SYM757
Lfde81_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetHashCode

LDIFF_SYM758=Lme_53 - System_Nullable_1_System_DateTime_GetHashCode
	.long LDIFF_SYM758
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde81_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_DateTime_GetValueOrDefault"

	.byte 2,142,1
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM759=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM759
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM760=Lfde82_end - Lfde82_start
	.long LDIFF_SYM760
Lfde82_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault

LDIFF_SYM761=Lme_54 - System_Nullable_1_System_DateTime_GetValueOrDefault
	.long LDIFF_SYM761
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde82_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:GetValueOrDefault"
	.asciz "System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime"

	.byte 2,147,1
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
	.quad Lme_55

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM762=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM762
	.byte 1,106,3
	.asciz "defaultValue"

LDIFF_SYM763=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM764=Lfde83_end - Lfde83_start
	.long LDIFF_SYM764
Lfde83_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime

LDIFF_SYM765=Lme_55 - System_Nullable_1_System_DateTime_GetValueOrDefault_System_DateTime
	.long LDIFF_SYM765
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde83_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:ToString"
	.asciz "System_Nullable_1_System_DateTime_ToString"

	.byte 2,152,1
	.quad System_Nullable_1_System_DateTime_ToString
	.quad Lme_56

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM766=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM766
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM767=Lfde84_end - Lfde84_start
	.long LDIFF_SYM767
Lfde84_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_ToString

LDIFF_SYM768=Lme_56 - System_Nullable_1_System_DateTime_ToString
	.long LDIFF_SYM768
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde84_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Box"
	.asciz "System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime"

	.byte 2,177,1
	.quad System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
	.quad Lme_57

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM769=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM770=Lfde85_end - Lfde85_start
	.long LDIFF_SYM770
Lfde85_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime

LDIFF_SYM771=Lme_57 - System_Nullable_1_System_DateTime_Box_System_Nullable_1_System_DateTime
	.long LDIFF_SYM771
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde85_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Nullable`1<System.DateTime>:Unbox"
	.asciz "System_Nullable_1_System_DateTime_Unbox_object"

	.byte 2,185,1
	.quad System_Nullable_1_System_DateTime_Unbox_object
	.quad Lme_58

	.byte 2,118,16,3
	.asciz "o"

LDIFF_SYM772=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 1,106,11
	.asciz ""

LDIFF_SYM773=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM774=Lfde86_end - Lfde86_start
	.long LDIFF_SYM774
Lfde86_start:

	.long 0
	.align 3
	.quad System_Nullable_1_System_DateTime_Unbox_object

LDIFF_SYM775=Lme_58 - System_Nullable_1_System_DateTime_Unbox_object
	.long LDIFF_SYM775
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,154,16
	.align 3
Lfde86_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_64:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM776=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM777=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM778=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM779=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM779
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM780=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM780
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM781=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM781
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_REF>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_REF__ctor_System_Array"

	.byte 1,239,1
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.quad Lme_59

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM782=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 1,105,3
	.asciz "array"

LDIFF_SYM783=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM784=Lfde87_end - Lfde87_start
	.long LDIFF_SYM784
Lfde87_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

LDIFF_SYM785=Lme_59 - System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long LDIFF_SYM785
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde87_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<T_INST>"
	.asciz "System_Array_InternalArray__get_Item_T_INST_int"

	.byte 1,197,1
	.quad System_Array_InternalArray__get_Item_T_INST_int
	.quad Lme_5a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM786=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM787=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM788=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM789=Lfde88_end - Lfde88_start
	.long LDIFF_SYM789
Lfde88_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_T_INST_int

LDIFF_SYM790=Lme_5a - System_Array_InternalArray__get_Item_T_INST_int
	.long LDIFF_SYM790
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,153,18,154,17
	.align 3
Lfde88_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
