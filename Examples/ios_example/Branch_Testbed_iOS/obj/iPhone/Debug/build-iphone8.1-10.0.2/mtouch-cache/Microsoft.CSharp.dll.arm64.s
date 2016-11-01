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
	.asciz "Microsoft.CSharp.dll"
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
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
.file 1 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/Binder.cs"
.loc 1 57 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #112]
bl _p_1
.word 0xf9001ba0
.word 0xf9400fa1
.word 0xf94013a2
.word 0xf94017a3
bl _p_2
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
.loc 1 88 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #120]
bl _p_1
.word 0xf9001ba0
.word 0xb98013a1
.word 0xf9400fa2
.word 0xf94013a3
.word 0xf94017a4
bl _p_3
.word 0xf9401ba0
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string:
.file 2 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/CSharpArgumentInfo.cs"
.loc 2 44 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba1
.word 0xf9400ba0
.word 0xb9001801
.loc 2 45 0
.word 0xf94013a1
.word 0xf9000801
.word 0x91004000
bl _p_4
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string:
.loc 2 50 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #128]
bl _p_1
.word 0xf90013a0
.word 0xb98013a1
.word 0xf9400fa2
bl _p_5
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags
Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags:
.loc 2 72 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9801800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
.file 3 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/CSharpGetMemberBinder.cs"
.loc 3 43 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xaa1703e0
.word 0xf9400fa1
.word 0xd2800002
bl _p_6
.loc 3 45 0
.word 0xf94013a0
.word 0xf9001ae0
.word 0x9100c2e0
bl _p_4
.word 0xf94013a0
.loc 3 46 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #136]
.word 0xf94017a0
bl _p_7
.word 0xf9001ba0
.word 0xf90016e0
.word 0x9100a2e0
bl _p_4
.word 0xf9401ba0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject:
.loc 3 51 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
bl _p_8
.loc 3 53 0
.word 0xf90043a0
.word 0xf90053a0
.word 0xf9401702
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #144]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94053a3
.word 0xaa0303e0
.word 0xf9400fa2
.word 0xf940007e
bl _p_9
.word 0xf9004ba0
.loc 3 54 0
.word 0xf9400f00
.word 0xf9004fa0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #152]
bl _p_1
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xf90047a0
bl _p_10
.word 0xf94047a0
.word 0xf9003ba0
.loc 3 55 0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94043a2
.word 0xaa0203e0
.word 0xf940005e
.word 0xf90023a2
bl _p_11
.word 0xf9003fa0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb90033a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_1
.word 0xf9403fa1
.word 0xf90037a0
.word 0xf9401ba2
bl _p_13

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb9002ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #184]
bl _p_1
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf90033a0
.word 0xf94017a3
bl _p_14
.word 0xf94033a0
.word 0xf9002fa0
.loc 3 57 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_1
.word 0xf9402fa2
.word 0xf9002ba0
.word 0xaa1803e1
.word 0xf94013a3
bl _p_15
.word 0xf9402ba0
.loc 3 58 0
.word 0xf90027a0
.word 0xaa0003e2
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf940005e
bl _p_16
.word 0xf94023a1
.word 0xf94027a3
.loc 3 60 0
.word 0xf9401b02
.word 0xaa0303e0
.word 0xf940007e
bl _p_17
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
.file 4 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/CSharpSetMemberBinder.cs"
.loc 4 44 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xaa0003f6
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xaa1603e0
.word 0xf94013a1
.word 0xd2800002
bl _p_18
.loc 4 46 0
.word 0xb9801ba0
.word 0xb9003ac0
.loc 4 47 0
.word 0xf94017a0
.word 0xf9001ac0
.word 0x9100c2c0
bl _p_4
.word 0xf94017a0
.loc 4 48 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #136]
.word 0xf9401ba0
bl _p_7
.word 0xf90023a0
.word 0xf90016c0
.word 0x9100a2c0
bl _p_4
.word 0xf94023a0
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject:
.loc 4 53 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xf9001bba
.word 0xaa0003f7
.word 0xf9001fa1
.word 0xf90023a2
.word 0xaa0303fa
bl _p_8
.word 0xaa0003f6
.loc 4 54 0
.word 0xaa1603e0
.word 0xf9003fa0
.word 0xf94016e2
.word 0xaa0203e0
.word 0xd2800021
.word 0xf9400042

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #144]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa3
.word 0xaa0303e0
.word 0xf94023a2
.word 0xf940007e
bl _p_9
.word 0xaa0003f5
.loc 4 55 0
.word 0xf94016e2
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #144]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa1603e0
.word 0xf9401fa2
.word 0xf94002de
bl _p_9
.word 0xaa0003f4
.loc 4 58 0
.word 0xaa1403e0
.word 0xf90037a0
.word 0xf9400ee0
.word 0xf9003ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #152]
bl _p_1
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf90033a0
bl _p_10
.word 0xf94033a0
.word 0xaa0003f4
.loc 4 64 0
.word 0xb9803ae0
.word 0xd280101e
.word 0xa1e0000
.word 0x34000180
.loc 4 65 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #200]
bl _p_1
.word 0xf90033a0
.word 0xaa1403e1
.word 0xaa1503e2
bl _p_19
.word 0xf94033a0
.word 0xaa0003f4
.word 0x1400000b
.loc 4 67 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_1
.word 0xf90033a0
.word 0xaa1403e1
.word 0xaa1503e2
bl _p_20
.word 0xf94033a0
.word 0xaa0003f4
.loc 4 70 0
.word 0xaa1703e0
.word 0xf94002e1
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xaa1603e0
.word 0xf94002de
bl _p_11
.word 0xf9003ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb9005ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_1
.word 0xf9403ba1
.word 0xf90037a0
.word 0xf9402fa2
bl _p_13

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb90053a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #184]
bl _p_1
.word 0xf94037a1
.word 0xf90033a0
.word 0xaa1403e2
.word 0xf9402ba3
bl _p_14
.word 0xf94033a0
.word 0xaa0003f4
.loc 4 72 0
.word 0xb9803ae0
.word 0xd280003e
.word 0xa1e0000
.word 0x34000300
.loc 4 73 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb9004ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #216]
bl _p_1
.word 0xf90033a0
.word 0xaa1403e1
.word 0xf94027a2
bl _p_21
.word 0xf94033a0
.word 0xaa0003f4
.loc 4 75 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #192]
bl _p_1
.word 0xf90033a0
.word 0xaa1703e1
.word 0xaa1403e2
.word 0xaa1a03e3
bl _p_15
.word 0xf94033a0
.word 0xaa0003fa
.loc 4 76 0
.word 0xaa1a03e2
.word 0xaa0203e0
.word 0xf9401fa1
.word 0xf940005e
bl _p_16
.loc 4 77 0
.word 0xaa1a03e0
.word 0xf94023a1
.word 0xf940035e
bl _p_16
.loc 4 79 0
.word 0xf9401ae2
.word 0xaa1a03e0
.word 0xaa1603e1
.word 0xf940035e
bl _p_17
.word 0xa94157b4
.word 0xa9425fb6
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter
Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter:
.file 5 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/DynamicContext.cs"
.loc 5 48 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xaa0003f8
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf9400fa0
.word 0xf9000b00
.word 0x91004300
bl _p_4
.word 0xf9400fa0
.loc 5 49 0
.word 0xf94013a0
.word 0xf9000f00
.word 0x91006300
bl _p_4
.word 0xf94013a0
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module
Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module:
.loc 5 60 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext_Create
Microsoft_CSharp_RuntimeBinder_DynamicContext_Create:
.loc 5 66 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023bf
.word 0x390123bf

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9400000
.word 0xb40000c0
.loc 5 67 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9400000
.word 0x140000a7
.loc 5 69 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9400000
.word 0xf90023a0
.word 0x390123bf
.word 0xf94023a0
.word 0x910123a1
bl _p_22
.loc 5 70 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9400000
.word 0xb40000e0
.loc 5 71 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf940001a
.word 0x94000087
.word 0x14000092
.loc 5 73 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #240]
bl _p_1
.word 0xf9005ba0
bl _p_23
.word 0xf9405ba0
.word 0xaa0003fa
.loc 5 74 0
.word 0xb9009c1f
.word 0xaa1a03f9
.loc 5 77 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xf9400000
.word 0xf90057a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #256]
bl _p_1
.word 0xf94057a2
.word 0xf90053a0
.word 0xaa1a03e1
bl _p_24
.word 0xf94053a0
.word 0xaa0003fa
.loc 5 78 0
.word 0xaa1a03e0
.word 0xf940001e
.word 0xd280003e
.word 0x3900c35e
.word 0xaa1a03f9
.loc 5 88 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #264]
bl _p_1
.word 0xf9004fa0
.word 0xaa1a03e1
bl _p_25
.word 0xf9404fa0
.word 0xf90043a0
.word 0xaa0003f8
.loc 5 89 0
.word 0xaa1803e0
.word 0xf940001e
.word 0xd280003e
.word 0x3903e71e
.loc 5 92 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #272]
.word 0xf9004ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #280]
bl _p_1
.word 0xf9404ba2
.word 0xf90047a0
.word 0xaa1803e1
bl _p_26
.word 0xf94043a0
.word 0xf94047a1
.word 0xaa0103f7
.loc 5 93 0
.word 0xf940031e
.word 0xf9004c17
.word 0x91026300
bl _p_4
.loc 5 95 0
.word 0xf940035e
.word 0xf9400f40
.word 0xf9003fa0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #288]
bl _p_1
.word 0xf9403fa2
.word 0xf9003ba0
.word 0xaa1803e1
bl _p_27
.word 0xf9403ba0
.word 0xaa0003fa
.loc 5 96 0
.word 0xaa1a03e0
.word 0xf940001e
.word 0x3900c35f
.word 0xaa1a03f7
.loc 5 102 0
bl _p_28
.word 0xaa0003fa
.loc 5 103 0
bl _p_28
.word 0xaa0003e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_29
.word 0xaa0003fa
.word 0xd2800016
.word 0x14000011
.word 0x93407ec0
.word 0xb9801b41
.word 0xeb00003f
.word 0x10000011
.word 0x54000749
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400015
.loc 5 104 0
.word 0xf940031e
.word 0xf9405702
.word 0xaa1703e0
.word 0xaa1503e1
.word 0xf94002fe
bl _p_30
.loc 5 103 0
.word 0x110006d6
.word 0xb9801b40
.word 0x6b0002df
.word 0x54fffdcb
.loc 5 107 0
.word 0xf940033e
.word 0xf9400f22
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf940005e
bl _p_31
.loc 5 108 0
.word 0xaa1803e0
.word 0xf940031e
bl _p_32
.loc 5 110 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #296]
bl _p_1
.word 0xf9003ba0
.word 0xaa1803e1
.word 0xaa1703e2
bl _p_33
.word 0xf9403ba1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9000001
.word 0x94000002
.word 0x14000008
.word 0xf90033be
.word 0x394123a0
.word 0x34000060
.word 0xf94023a0
bl _p_34
.word 0xf94033be
.word 0xd61f03c0
.loc 5 113 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xf9400000
.word 0x14000002
.word 0xaa1a03e0
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2802400
.word 0xaa1103e1
bl _p_35

Lme_b:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject:
.loc 5 124 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa
.word 0xb5000639
.loc 5 125 0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_36

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340002e0
.loc 5 126 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb9004ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #312]
bl _p_1
.word 0xf90033a0
.word 0xf94027a1
bl _p_37
.word 0xf94033a0
.word 0x140000a4
.loc 5 128 0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_38
.word 0xaa0003e1
.word 0xaa1803e0
bl _p_11
.word 0xf90037a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #320]
bl _p_1
.word 0xf94037a2
.word 0xf90033a0
.word 0xaa1a03e1
bl _p_39
.word 0xf94033a0
.word 0x14000093
.loc 5 134 0
.word 0xf940033e
.word 0xb9801b20
.word 0xd280041e
.word 0xa1e0000
.word 0x34000540
.loc 5 135 0
.word 0xaa1803f9
.word 0xf940035e
.word 0xf9401358
.word 0xb4000178
.word 0xf9400300
.word 0xf9400000
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xeb01001f
.word 0x10000011
.word 0x540010a1
.word 0xaa1903e0
.word 0xaa1803e1
bl _p_11
.word 0xf90037a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb90043a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #176]
bl _p_1
.word 0xf94037a1
.word 0xf90033a0
.word 0xf94023a2
bl _p_13
.word 0xf94033a0
.word 0x14000065
.loc 5 137 0
.word 0xf940035e
.word 0xf9401340
.word 0xb50004a0
.word 0xf940033e
.word 0xb9801b20
.word 0xd280033e
.word 0xa1e0000
.word 0x35000400
.word 0xaa1a03e0
.word 0xf940035e
bl _p_36

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #304]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0x340002e0
.loc 5 140 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb9003ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #312]
bl _p_1
.word 0xf90033a0
.word 0xf9401fa1
bl _p_37
.word 0xf94033a0
.word 0x1400003e
.loc 5 146 0
.word 0xf940033e
.word 0xb9801b20
.word 0xd280003e
.word 0xa1e0000
.word 0x34000120
.word 0xf940035e
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003f7
.word 0x14000005
.word 0xaa1a03e0
.word 0xf940035e
bl _p_36
.word 0xaa0003f7
.word 0xf9002bb7
.loc 5 147 0
.word 0xaa1803e0
.word 0xaa1703e1
bl _p_11
.word 0xaa0003f8
.loc 5 149 0
.word 0xf940033e
.word 0xb9801b20
.word 0xd280005e
.word 0xa1e0000
.word 0x34000340
.loc 5 150 0
.word 0xf940035e
.word 0xf9401340
.word 0xf90033a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #160]
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12
.word 0xf94033a1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #168]
.word 0xb9800000
.word 0xb90033a0
.word 0xaa1803e0
.word 0xf9401ba2
bl _p_40
.word 0xaa0003f9
.loc 5 154 0
.word 0xaa1903e0
.word 0xb4000060
.loc 5 155 0
.word 0xaa1903e0
.word 0x1400000a
.loc 5 158 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #320]
bl _p_1
.word 0xf90033a0
.word 0xaa1a03e1
.word 0xaa1803e2
bl _p_39
.word 0xf94033a0
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2802480
.word 0xaa1103e1
bl _p_35

Lme_c:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type
Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type:
.loc 5 187 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017bf
.word 0x3900c3bf

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9400000
.word 0xf90017a0
.word 0x3900c3bf
.word 0xf94017a0
.word 0x9100c3a1
bl _p_22
.loc 5 188 0
.word 0xf9400fa0
.word 0xf9400c02
.word 0xaa0203e0
.word 0xf94013a1
.word 0xf940005e
bl _p_41
.word 0xaa0003fa
.word 0x94000002
.word 0x14000008
.word 0xf90033be
.word 0x3940c3a0
.word 0x34000060
.word 0xf94017a0
bl _p_34
.word 0xf94033be
.word 0xd61f03c0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor
Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor:
.loc 5 40 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_1
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xf9000001
.loc 5 41 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_1
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF:
.file 6 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/Extensions.cs"
.loc 6 41 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf
.word 0xaa0003fa
.word 0xb500007a
.word 0xd280001a
.word 0x14000010
.word 0xf9400fa0
bl _p_42
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12
.word 0xf9400fa0
bl _p_42
bl _p_43
.word 0xf90013a0
.word 0xaa1a03e1
bl _p_44
.word 0xf94013a0
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type:
.file 7 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/RuntimeBinderContext.cs"
.loc 7 51 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf9001319
.word 0x91008300
bl _p_4
.loc 7 52 0
.word 0xf940033e
.word 0xf9400b20
.word 0xf9001ba0
.word 0xf9000b00
.word 0x91004300
bl _p_4
.word 0xf9401ba0
.loc 7 53 0
.word 0xf94013a0
.word 0xf9000f00
.word 0x91006300
bl _p_4
.word 0xf94013a0
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType:
.loc 7 66 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9401740
.word 0xb5000220
.word 0xf9400f40
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x34000160
.loc 7 67 0
.word 0xf9401342
.word 0xf9400f41
.word 0xaa0203e0
.word 0xf940005e
bl _p_11
.word 0xf90013a0
.word 0xf9001740
.word 0x9100a340
bl _p_4
.word 0xf94013a0
.loc 7 69 0
.word 0xf9401740
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters:
.loc 7 74 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2802960
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition:
.loc 7 79 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete:
.loc 7 86 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800020
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe:
.loc 7 93 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic:
.loc 7 99 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2802960
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module:
.loc 7 105 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400800
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError:
.loc 7 111 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2802960
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int:
.loc 7 117 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd2800000
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location:
.loc 7 122 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4
.word 0xd2802960
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_45
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string
Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string:
.loc 7 128 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor
Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor:
.file 8 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/RuntimeBinderException.cs"
.loc 8 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_46
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string
Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string:
.loc 8 42 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_47
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor
Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor:
.file 9 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/RuntimeBinderInternalCompilerException.cs"
.loc 9 37 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
bl _p_46
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string
Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string:
.loc 9 42 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_47
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject:
.file 10 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/CSharpBinder.cs"
.loc 10 50 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xaa0003f7
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9400fa0
.word 0xf9000ae0
.word 0x910042e0
bl _p_4
.word 0xf9400fa0
.loc 10 51 0
.word 0xf94013a0
.word 0xf9000ee0
.word 0x910062e0
bl _p_4
.word 0xf94013a0
.loc 10 52 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #352]
.word 0xf9400000
.word 0xf9001ba0
.word 0xf90012e0
.word 0x910082e0
bl _p_4
.word 0xf9401ba0
.loc 10 53 0
.word 0xf94017a0
.word 0xf90016e0
.word 0x9100a2e0
bl _p_4
.word 0xf94017a0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions
Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions:
.loc 10 56 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xb9803000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject:
.loc 10 60 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xf9401000
.word 0xf90017a0
.word 0xf9400fa0
bl _p_48
.word 0xaa0003e1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_49
.word 0xaa0003e1
.word 0xf9400ba0
.word 0xf90013a1
.word 0xf9001001
.word 0x91008000
bl _p_4
.word 0xf94013a0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type:
.loc 10 72 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001bbf
.word 0xf9001fbf
.word 0x390103bf
.word 0xf90027bf
.word 0xf9002bbf

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #360]
bl _p_1
.word 0xf9005fa0
.word 0xf94013a1
.word 0xf94017a2
bl _p_50
.word 0xf9400fa0
.word 0xb9803000
.word 0xf90063a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #368]
bl _p_1
.word 0xf9405fa1
.word 0xf94063a2
.word 0xf9005ba0
bl _p_51
.word 0xf9405ba0
.word 0xaa0003fa
.loc 10 75 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9400000
.word 0xf9001fa0
.word 0x390103bf
.word 0xf9401fa0
.word 0x910103a1
bl _p_22
.loc 10 76 0
.word 0xf9400fa0
.word 0xf9005fa0
.word 0xf9400fa0
.word 0xf9400c03
.word 0xaa0303e0
.word 0xaa1a03e1
.word 0xd2800022
.word 0xf940007e
bl _p_52
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9005ba1
.word 0xf9000c01
.word 0x91006000
bl _p_4
.word 0xf9405ba0
.word 0x94000002
.word 0x14000008
.word 0xf9003fbe
.word 0x394103a0
.word 0x34000060
.word 0xf9401fa0
bl _p_34
.word 0xf9403fbe
.word 0xd61f03c0
.loc 10 79 0
.word 0xf9400fa0
.word 0xf9400c00
.word 0xb5000200
.loc 10 80 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800221
bl _p_53
.word 0xf9005fa0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #384]
bl _p_1
.word 0xf9405fa1
.word 0xf9005ba0
bl _p_54
.word 0xf9405ba0
bl _p_45
.loc 10 82 0
.word 0xf9400fa0
.word 0xf9400c00
.word 0xf9005ba0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #392]
bl _p_1
.word 0xaa0003e1
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0xf9001ba0
.loc 10 83 0
.word 0x14000033
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xf90027a0
.loc 10 84 0
.word 0xf9400fa0
.word 0xf9401400
.word 0xb4000160
.loc 10 85 0
.word 0xf9400fa0
.word 0xf9401400
.word 0xf9002ba0
bl _p_55
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xb4000060
.word 0xf9404fa0
bl _p_45
.word 0x14000032
.loc 10 87 0
.word 0xf9400fa0
.word 0xf9005ba0
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404030
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9405ba0
bl _p_56
.word 0xf9001ba0
.loc 10 88 0
bl _p_55
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_45
.word 0x14000011
.word 0xf90033a0
.loc 10 89 0
.word 0xf9400fa0
.word 0xf9401400
.word 0xb4000160
.loc 10 90 0
.word 0xf9400fa0
.word 0xf9401400
.word 0xf9002ba0
bl _p_55
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_45
.word 0x14000012
.loc 10 92 0
.word 0xf94033a0
bl _p_57
.loc 10 95 0
.word 0xf9401ba0
.word 0xf9005fa0
.word 0xf9400fa0
.word 0xf9401000
.word 0xf90063a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #400]
bl _p_1
.word 0xf9405fa1
.word 0xf94063a2
.word 0xf9005ba0
bl _p_58
.word 0xf9405ba0
.word 0x14000003
.word 0xf9402ba0
.word 0x14000001
.word 0xf9400bba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string
Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string:
.loc 10 100 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xd2800001
bl _p_59
.word 0x53001c00
.word 0x340003e0
.loc 10 101 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #416]
.word 0xf90017a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xd2800021
bl _p_60
.word 0xaa0003e3
.word 0xaa0303e0
.word 0xf90013a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x2, [x16, #432]
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94013a1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9000001
.loc 10 106 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #408]
.word 0xf9400000
.word 0xf90017a0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xd2800021
bl _p_60
.word 0xf9001fa0
.word 0xf9001ba0
.word 0xf9400fa0
bl _p_62
.word 0xaa0003e2
.word 0xf9401fa3
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.word 0xf94017a0
.word 0xf9401ba1
bl _p_63
.word 0xf90013a0
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94013a0
bl _p_64
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject
Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject:
.loc 10 111 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf940035e
.word 0x3940a340
.word 0x34000140
.word 0xf940035e
.word 0xf9401340
.word 0xb50000e0
.word 0xf940035e
.word 0xf9400b40
.word 0xd2800001
bl _p_65
.word 0xaa0003fa
.word 0x1400000b
.word 0xf940035e
.word 0xf9400b40
.word 0xf90013a0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_36
.word 0xaa0003e1
.word 0xf94013a0
bl _p_66
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor
Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor:
.loc 10 41 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #344]
bl _p_1
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor
Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor:
.file 11 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/Microsoft.CSharp/Microsoft.CSharp.RuntimeBinder/ErrorPrinter.cs"
.loc 11 38 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport
Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport:
.loc 11 44 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xd2800000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_28:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool
Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool:
.loc 11 51 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf90017a2
.word 0xf940035e
.word 0xb9802340
.word 0xd2801ade
.word 0x6b1e001f
.word 0x540000a1
.loc 11 52 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x25, [x16, #448]
.word 0x14000004
.loc 11 54 0
.word 0xf940035e
.word 0xf9400f59
.word 0x14000001
.loc 11 57 0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #456]
bl _p_1
.word 0xf9001ba0
.word 0xaa1903e1
bl _p_67
.word 0xf9401ba0
bl _p_45
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor
Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor:
.loc 11 36 0 prologue_end
.word 0xa9bf7bfd
.word 0x910003fd

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #464]
bl _p_1
.word 0xaa0003e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #248]
.word 0xf9000001
.word 0x910003bf
.word 0xa8c17bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT
Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT:
.loc 6 41 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000faf
.word 0xaa0003fa
.word 0xf9400fa0
bl _p_68
.word 0xf90013a0
.word 0xf94013a0
.word 0xb9800000
.word 0xf90013bf
.word 0xb500007a
.word 0xd280001a
.word 0x14000015
.word 0xf9400fa0
bl _p_69
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12
.word 0xf9400fa0
bl _p_69
bl _p_43
.word 0xf9001fa0
.word 0xf9400fa0
bl _p_70
.word 0xaa0003e2
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xf9401ba0
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2c:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__Insert_T_REF_int_T_REF
System_Array_InternalArray__Insert_T_REF_int_T_REF:
.file 12 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/corlib/System/Array.cs"
.loc 12 160 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90017af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xd28e5060
.word 0xf2a00020
bl _p_71
.word 0xaa0003e1
.word 0xd2802980
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_45
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__RemoveAt_int
System_Array_InternalArray__RemoveAt_int:
.loc 12 165 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xd28e5060
.word 0xf2a00020
bl _p_71
.word 0xaa0003e1
.word 0xd2802980
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_45
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IndexOf_T_REF_T_REF
System_Array_InternalArray__IndexOf_T_REF_T_REF:
.loc 12 170 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xf9001faf
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf9400320
.word 0x3940a800
.word 0xd280003e
.word 0x6b1e001f
.word 0x540006cc
.loc 12 173 0
.word 0xb9801b38
.loc 12 174 0
.word 0xd2800017
.word 0x14000024
.loc 12 176 0
.word 0xf9401fa0
bl _p_72
.word 0x93407ee0
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400016
.loc 12 177 0
.word 0xb500017a
.loc 12 178 0
.word 0xb5000356
.loc 12 179 0
.word 0xaa1703fa
.word 0xf9400b38
.word 0xeb1f031f
.word 0x54000060
.word 0xb9800719
.word 0x14000002
.word 0xd2800019
.word 0xb190340
.word 0x1400001b
.loc 12 183 0
.word 0xaa1603e0
.word 0xaa1a03e1
.word 0xf94002c2
.word 0xf9402850
.word 0xd63f0200
.word 0x53001c00
.word 0x34000140
.loc 12 186 0
.word 0xaa1703fa
.word 0xf9400b38
.word 0xeb1f031f
.word 0x54000060
.word 0xb9800719
.word 0x14000002
.word 0xd2800019
.word 0xb190340
.word 0x1400000b
.loc 12 174 0
.word 0x110006f7
.word 0x6b1802ff
.word 0x54fffb8b
.loc 12 191 0
.word 0xf9400b3a
.word 0xeb1f035f
.word 0x54000060
.word 0xb980075a
.word 0x14000002
.word 0xd280001a
.word 0x51000740
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.loc 12 171 0
.word 0xd28e57e0
.word 0xf2a00020
bl _p_71
bl _p_73
.word 0xaa0003e1
.word 0xd2802b20
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_45

Lme_2f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_REF_int
System_Array_InternalArray__get_Item_T_REF_int:
.loc 12 197 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90013af
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xb9801800
.word 0x6b00035f
.word 0x540001c2
.loc 12 201 0
.word 0xf94013a0
bl _p_74
.word 0x93407f40
.word 0xd37df001
.word 0xf9400fa0
.word 0x8b010000
.word 0x91008000
.word 0xf940001a
.loc 12 202 0
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.loc 12 198 0
.word 0xd282a860
bl _p_71
.word 0xaa0003e1
.word 0xd2800840
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_45

Lme_30:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__set_Item_T_REF_int_T_REF
System_Array_InternalArray__set_Item_T_REF_int_T_REF:
.loc 12 207 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf90023af
.word 0xaa0003f8
.word 0xf9001ba1
.word 0xf9001fa2
.word 0xb9801b01
.word 0xb98033a0
.word 0x6b01001f
.word 0x540005e2
.loc 12 210 0
.word 0xaa1803f7
.word 0xaa1803f6
.word 0xeb1f031f
.word 0x54000280
.word 0xf94002f5
.word 0x3940aaa0
.word 0xd280003e
.word 0xeb1e001f
.word 0x540001c1
.word 0xf94002a0
.word 0xf9400417
.word 0xf94016e0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #472]
.word 0xeb01001f
.word 0x540000e1

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x0, [x16, #480]
.word 0xeb0002ff
.word 0x54000040
.word 0xd2800016
.word 0xaa1603f7
.loc 12 211 0
.word 0xb4000116
.loc 12 212 0
.word 0xf9401fa2
.word 0xaa1703e0
.word 0xb98033a1
.word 0xf94002e3
.word 0xf9407c70
.word 0xd63f0200
.loc 12 213 0
.word 0x1400000a
.loc 12 215 0
.word 0xf94023a0
bl _p_75
.word 0xb98033a0
.word 0x93407c00
.word 0xd37df000
.word 0x8b000300
.word 0x91008000
.word 0xf9401fa1
.word 0xf9000001
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 12 208 0
.word 0xd282a860
bl _p_71
.word 0xaa0003e1
.word 0xd2800840
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_45

Lme_31:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.loc 12 78 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xd2800000
.word 0xf90017a0
.word 0xf9001ba0
.word 0x9100a3a0
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_76
.word 0xaa0003ef
.word 0xf9402fa0
.word 0xf9400ba1
bl _p_77
.word 0xf94017a0
.word 0xf9000fa0
.word 0xf9401ba0
.word 0xf90013a0
.word 0xf9401fa0
bl _p_76
bl _p_43
.word 0xf90023a0
.word 0x91004001
.word 0xaa0103e0
.word 0xf9400fa2
.word 0xf9002ba2
.word 0xf9000022
.word 0xf90027a0
bl _p_4
.word 0xf94023a0
.word 0xf94027a1
.word 0xf9402ba2
.word 0x91002021
.word 0xf94013a2
.word 0xf9000022
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF:
.file 13 "/Users/builder/data/lanes/3818/ad1cd42d/source/xamarin-macios/_ios-build/Library/Frameworks/Xamarin.iOS.framework/Versions/git/src/mono/mcs/class/dlr/Runtime/Microsoft.Scripting.Core/Utils/ReadOnlyCollectionBuilder.cs"
.loc 13 70 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xaa0103fa
.word 0xf90017bf
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x6b1f001f
.word 0x9a9f17e0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #488]
bl _p_78
.loc 13 72 0
.word 0xf94013a0
.word 0xf9400000
bl _p_79
.word 0xaa0003e2
.word 0xf9400441
.word 0xaa1a03e0
bl _p_80
.word 0xaa0003f9
.loc 13 73 0
.word 0xaa1903e0
.word 0xb40005a0
.loc 13 74 0
.word 0xf94013a0
.word 0xf9400000
bl _p_81
.word 0xaa0003ef
.word 0xaa1903e0
.word 0xf9400321
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003fa
.loc 13 75 0
.word 0xf94013a0
.word 0xf90033a0
.word 0xf94013a0
.word 0xf9400000
bl _p_82
.word 0xaa1a03e1
bl _p_60
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf9002fa1
.word 0xf9000801
.word 0x91004000
bl _p_4
.word 0xf9402fa0
.loc 13 76 0
.word 0xf94013a0
.word 0xf9400800
.word 0xf9002ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_83
.word 0xaa0003ef
.word 0xf9402ba1
.word 0xaa1903e0
.word 0xd2800002
.word 0xf9400323
.word 0x928007f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.loc 13 77 0
.word 0xf94013a0
.word 0xb900201a
.word 0x1400004c
.loc 13 79 0
.word 0xf94013a0
.word 0xb900201f
.loc 13 80 0
.word 0xf94013a0
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf9400000
bl _p_82
.word 0xd2800081
bl _p_60
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9002ba1
.word 0xf9000801
.word 0x91004000
bl _p_4
.word 0xf9402ba0
.loc 13 82 0
.word 0xf94013a0
.word 0xf9400000
bl _p_84
.word 0xaa0003ef
.word 0xaa1a03e0
.word 0xf9400341
.word 0x928009f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90017a0
.loc 13 83 0
.word 0x14000013
.loc 13 84 0
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf94017a0
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf9400000
bl _p_85
.word 0xaa0003ef
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0x92800bf0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9402ba0
bl _p_86
.loc 13 83 0
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #496]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffc60
.word 0x94000002
.word 0x14000010
.word 0xf90023be
.word 0xf94017a0
.word 0xb4000160
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x15, [x16, #504]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94023be
.word 0xd61f03c0
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_33:
.text
ut_52:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_52
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.loc 12 239 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90013af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400fa1
.word 0xf9400ba0
.word 0xf9000001
bl _p_4
.word 0xf9400fa0
.loc 12 240 0
.word 0xf9400ba0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF
System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF:
.loc 13 190 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf9400ba0
.word 0xb9802000
.word 0xf9400ba1
.word 0xf9400821
.word 0xb9801821
.word 0x6b01001f
.word 0x540000c1
.loc 13 191 0
.word 0xf9400ba0
.word 0xf9400ba1
.word 0xb9802021
.word 0x11000421
bl _p_87
.loc 13 193 0
.word 0xf9400ba0
.word 0xf9400803
.word 0xf9400ba0
.word 0xb9802001
.word 0xaa0103e2
.word 0xb90023a1
.word 0x11000442
.word 0xb9002002
.word 0xaa0303e0
.word 0xf9400fa2
.word 0xf9400063
.word 0xf9407c70
.word 0xd63f0200
.loc 13 194 0
.word 0xf9400ba0
.word 0xb9802401
.word 0x11000421
.word 0xb9002401
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int
System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int:
.loc 13 425 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9400fa0
.word 0xf9400800
.word 0xb9801800
.word 0xb98023a1
.word 0x6b01001f
.word 0x5400024a
.loc 13 426 0
.word 0xd2800099
.loc 13 427 0
.word 0xf9400fa0
.word 0xf9400800
.word 0xb9801800
.word 0x6b1f001f
.word 0x540000ad
.loc 13 428 0
.word 0xf9400fa0
.word 0xf9400800
.word 0xb9801800
.word 0x531f7819
.loc 13 430 0
.word 0xb98023a0
.word 0x6b00033f
.word 0x5400004a
.loc 13 431 0
.word 0xb98023b9
.loc 13 433 0
.word 0xf9400fa0
.word 0xaa1903e1
bl _p_88
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int
System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int:
.loc 13 96 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf9400fa0
.word 0xb9802000
.word 0x6b00035f
.word 0x9a9fa7e0
.word 0x6b1f001f
.word 0x9a9f17e0

adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x1, [x16, #512]
bl _p_78
.loc 13 98 0
.word 0xf9400fa0
.word 0xf9400800
.word 0xb9801800
.word 0x6b00035f
.word 0x540005e0
.loc 13 99 0
.word 0x6b1f035f
.word 0x5400030d
.loc 13 100 0
.word 0xf9400fa0
.word 0xf9400000
bl _p_89
.word 0xaa1a03e1
bl _p_60
.word 0xaa0003fa
.loc 13 101 0
.word 0xf9400fa0
.word 0xb9802000
.word 0x6b1f001f
.word 0x5400012d
.loc 13 102 0
.word 0xf9400fa0
.word 0xf9400800
.word 0xf9400fa1
.word 0xb9802024
.word 0xd2800001
.word 0xaa1a03e2
.word 0xd2800003
bl _p_90
.loc 13 104 0
.word 0xf9400fa0
.word 0xf900081a
.word 0x91004000
bl _p_4
.word 0x14000016
.loc 13 106 0
.word 0xf9400fa0
.word 0xf90017a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_91
.word 0x3980ac10
.word 0xd2800051
.word 0x8a110210
.word 0xb5000050
bl _p_12
.word 0xf9400fa0
.word 0xf9400000
bl _p_92
.word 0xaa0003e1
.word 0xf94017a0
.word 0xf9400021
.word 0xf90013a1
.word 0xf9000801
.word 0x91004000
bl _p_4
.word 0xf94013a0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
bl Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
bl Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
bl Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
bl Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags
bl Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
bl Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
bl Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter
bl Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module
bl Microsoft_CSharp_RuntimeBinder_DynamicContext_Create
bl Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type
bl Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor
bl Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor
bl Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject
bl Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor
bl Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor
bl Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport
bl Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool
bl Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor
bl method_addresses
bl Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT
bl System_Array_InternalArray__Insert_T_REF_int_T_REF
bl System_Array_InternalArray__RemoveAt_int
bl System_Array_InternalArray__IndexOf_T_REF_T_REF
bl System_Array_InternalArray__get_Item_T_REF_int
bl System_Array_InternalArray__set_Item_T_REF_int_T_REF
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
bl System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
bl System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
bl System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF
bl System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int
bl System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 52
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_52

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,64,157,8,158,7,68,13,29,13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31
	.byte 0,68,14,32,157,4,158,3,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,17,12,31,0
	.byte 68,14,176,1,157,22,158,21,68,13,29,68,152,20,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,27
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11,68,154,10,16,12,31,0,68
	.byte 14,48,157,6,158,5,68,13,29,68,152,4,29,12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,149,22,150,21
	.byte 68,151,20,152,19,68,153,18,154,17,23,12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10
	.byte 154,9,16,12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12,13,12,31,0,68,14,16,157,2,158,1,68,13
	.byte 29,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,18,12,31,0,68,14,64,157,8,158,7,68,13,29
	.byte 68,152,6,153,5,17,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,154,24,18,12,31,0,68,14,64,157,8
	.byte 158,7,68,13,29,68,153,6,154,5,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,26,12,31,0,68
	.byte 14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2,23,12,31,0,68,14,80,157,10,158
	.byte 9,68,13,29,68,149,8,150,7,68,151,6,152,5,13,12,31,0,68,14,96,157,12,158,11,68,13,29,18,12,31,0
	.byte 68,14,112,157,14,158,13,68,13,29,68,153,12,154,11,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4

.text
	.align 4
plt:
mono_aot_Microsoft_CSharp_plt:
	.no_dead_strip plt__jit_icall_ves_icall_object_new_fast
plt__jit_icall_ves_icall_object_new_fast:
_p_1:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 1103
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
plt_Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
_p_2:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 1131
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
plt_Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
_p_3:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 1133
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_noconc_intptr
plt_wrapper_write_barrier_object_wbarrier_noconc_intptr:
_p_4:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 1135
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
plt_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string:
_p_5:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 1142
	.no_dead_strip plt_System_Dynamic_GetMemberBinder__ctor_string_bool
plt_System_Dynamic_GetMemberBinder__ctor_string_bool:
_p_6:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #568]
br x16
.word 1144
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
plt_Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo:
_p_7:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #576]
br x16
.word 1149
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_Create
plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_Create:
_p_8:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #584]
br x16
.word 1161
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject
plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject:
_p_9:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #592]
br x16
.word 1163
	.no_dead_strip plt_Mono_CSharp_MemberAccess__ctor_Mono_CSharp_Expression_string
plt_Mono_CSharp_MemberAccess__ctor_Mono_CSharp_Expression_string:
_p_10:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 1165
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type
plt_Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type:
_p_11:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 1170
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_12:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 1172
	.no_dead_strip plt_Mono_CSharp_TypeExpression__ctor_Mono_CSharp_TypeSpec_Mono_CSharp_Location
plt_Mono_CSharp_TypeExpression__ctor_Mono_CSharp_TypeSpec_Mono_CSharp_Location:
_p_13:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 1198
	.no_dead_strip plt_Mono_CSharp_Cast__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression_Mono_CSharp_Location
plt_Mono_CSharp_Cast__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression_Mono_CSharp_Location:
_p_14:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 1203
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject
plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject:
_p_15:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 1208
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject
plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject:
_p_16:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 1210
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type:
_p_17:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 1212
	.no_dead_strip plt_System_Dynamic_SetMemberBinder__ctor_string_bool
plt_System_Dynamic_SetMemberBinder__ctor_string_bool:
_p_18:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 1214
	.no_dead_strip plt_Mono_CSharp_RuntimeExplicitAssign__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression
plt_Mono_CSharp_RuntimeExplicitAssign__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression:
_p_19:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #672]
br x16
.word 1219
	.no_dead_strip plt_Mono_CSharp_SimpleAssign__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression
plt_Mono_CSharp_SimpleAssign__ctor_Mono_CSharp_Expression_Mono_CSharp_Expression:
_p_20:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #680]
br x16
.word 1224
	.no_dead_strip plt_Mono_CSharp_CheckedExpr__ctor_Mono_CSharp_Expression_Mono_CSharp_Location
plt_Mono_CSharp_CheckedExpr__ctor_Mono_CSharp_Expression_Mono_CSharp_Location:
_p_21:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #688]
br x16
.word 1229
	.no_dead_strip plt_System_Threading_Monitor_Enter_object_bool_
plt_System_Threading_Monitor_Enter_object_bool_:
_p_22:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #696]
br x16
.word 1234
	.no_dead_strip plt_Mono_CSharp_CompilerSettings__ctor
plt_Mono_CSharp_CompilerSettings__ctor:
_p_23:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #704]
br x16
.word 1239
	.no_dead_strip plt_Mono_CSharp_CompilerContext__ctor_Mono_CSharp_CompilerSettings_Mono_CSharp_ReportPrinter
plt_Mono_CSharp_CompilerContext__ctor_Mono_CSharp_CompilerSettings_Mono_CSharp_ReportPrinter:
_p_24:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #712]
br x16
.word 1244
	.no_dead_strip plt_Mono_CSharp_ModuleContainer__ctor_Mono_CSharp_CompilerContext
plt_Mono_CSharp_ModuleContainer__ctor_Mono_CSharp_CompilerContext:
_p_25:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #720]
br x16
.word 1249
	.no_dead_strip plt_Mono_CSharp_AssemblyDefinitionDynamic__ctor_Mono_CSharp_ModuleContainer_string
plt_Mono_CSharp_AssemblyDefinitionDynamic__ctor_Mono_CSharp_ModuleContainer_string:
_p_26:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #728]
br x16
.word 1254
	.no_dead_strip plt_Mono_CSharp_ReflectionImporter__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_BuiltinTypes
plt_Mono_CSharp_ReflectionImporter__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_BuiltinTypes:
_p_27:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #736]
br x16
.word 1259
	.no_dead_strip plt_System_AppDomain_get_CurrentDomain
plt_System_AppDomain_get_CurrentDomain:
_p_28:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #744]
br x16
.word 1264
	.no_dead_strip plt_System_AppDomain_GetAssemblies
plt_System_AppDomain_GetAssemblies:
_p_29:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #752]
br x16
.word 1269
	.no_dead_strip plt_Mono_CSharp_ReflectionImporter_ImportAssembly_System_Reflection_Assembly_Mono_CSharp_RootNamespace
plt_Mono_CSharp_ReflectionImporter_ImportAssembly_System_Reflection_Assembly_Mono_CSharp_RootNamespace:
_p_30:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #760]
br x16
.word 1274
	.no_dead_strip plt_Mono_CSharp_BuiltinTypes_CheckDefinitions_Mono_CSharp_ModuleContainer
plt_Mono_CSharp_BuiltinTypes_CheckDefinitions_Mono_CSharp_ModuleContainer:
_p_31:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #768]
br x16
.word 1279
	.no_dead_strip plt_Mono_CSharp_ModuleContainer_InitializePredefinedTypes
plt_Mono_CSharp_ModuleContainer_InitializePredefinedTypes:
_p_32:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #776]
br x16
.word 1284
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter
plt_Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter:
_p_33:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #784]
br x16
.word 1289
	.no_dead_strip plt_System_Threading_Monitor_Exit_object
plt_System_Threading_Monitor_Exit_object:
_p_34:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #792]
br x16
.word 1291
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_35:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #800]
br x16
.word 1296
	.no_dead_strip plt_System_Dynamic_DynamicMetaObject_get_LimitType
plt_System_Dynamic_DynamicMetaObject_get_LimitType:
_p_36:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #808]
br x16
.word 1331
	.no_dead_strip plt_Mono_CSharp_NullLiteral__ctor_Mono_CSharp_Location
plt_Mono_CSharp_NullLiteral__ctor_Mono_CSharp_Location:
_p_37:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #816]
br x16
.word 1336
	.no_dead_strip plt_System_Dynamic_DynamicMetaObject_get_RuntimeType
plt_System_Dynamic_DynamicMetaObject_get_RuntimeType:
_p_38:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #824]
br x16
.word 1341
	.no_dead_strip plt_Mono_CSharp_RuntimeValueExpression__ctor_System_Dynamic_DynamicMetaObject_Mono_CSharp_TypeSpec
plt_Mono_CSharp_RuntimeValueExpression__ctor_System_Dynamic_DynamicMetaObject_Mono_CSharp_TypeSpec:
_p_39:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #832]
br x16
.word 1346
	.no_dead_strip plt_Mono_CSharp_Constant_CreateConstantFromValue_Mono_CSharp_TypeSpec_object_Mono_CSharp_Location
plt_Mono_CSharp_Constant_CreateConstantFromValue_Mono_CSharp_TypeSpec_object_Mono_CSharp_Location:
_p_40:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #840]
br x16
.word 1351
	.no_dead_strip plt_Mono_CSharp_MetadataImporter_ImportType_System_Type
plt_Mono_CSharp_MetadataImporter_ImportType_System_Type:
_p_41:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #848]
br x16
.word 1356
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_42:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #856]
br x16
.word 1393
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_43:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #864]
br x16
.word 1401
	.no_dead_strip plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF:
_p_44:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #872]
br x16
.word 1433
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_45:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #880]
br x16
.word 1452
	.no_dead_strip plt_System_Exception__ctor
plt_System_Exception__ctor:
_p_46:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #888]
br x16
.word 1480
	.no_dead_strip plt_System_Exception__ctor_string
plt_System_Exception__ctor_string:
_p_47:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #896]
br x16
.word 1485
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject
plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject:
_p_48:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #904]
br x16
.word 1490
	.no_dead_strip plt_System_Dynamic_BindingRestrictions_Merge_System_Dynamic_BindingRestrictions
plt_System_Dynamic_BindingRestrictions_Merge_System_Dynamic_BindingRestrictions:
_p_49:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #912]
br x16
.word 1492
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type:
_p_50:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #920]
br x16
.word 1497
	.no_dead_strip plt_Mono_CSharp_ResolveContext__ctor_Mono_CSharp_IMemberContext_Mono_CSharp_ResolveContext_Options
plt_Mono_CSharp_ResolveContext__ctor_Mono_CSharp_IMemberContext_Mono_CSharp_ResolveContext_Options:
_p_51:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #928]
br x16
.word 1499
	.no_dead_strip plt_Mono_CSharp_Expression_Resolve_Mono_CSharp_ResolveContext_Mono_CSharp_ResolveFlags
plt_Mono_CSharp_Expression_Resolve_Mono_CSharp_ResolveContext_Mono_CSharp_ResolveFlags:
_p_52:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #936]
br x16
.word 1504
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_53:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #944]
br x16
.word 1509
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string
plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string:
_p_54:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #952]
br x16
.word 1529
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_55:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #960]
br x16
.word 1531
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string
plt_Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string:
_p_56:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #968]
br x16
.word 1570
	.no_dead_strip plt__jit_icall_mono_arch_rethrow_exception
plt__jit_icall_mono_arch_rethrow_exception:
_p_57:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #976]
br x16
.word 1572
	.no_dead_strip plt_System_Dynamic_DynamicMetaObject__ctor_System_Linq_Expressions_Expression_System_Dynamic_BindingRestrictions
plt_System_Dynamic_DynamicMetaObject__ctor_System_Linq_Expressions_Expression_System_Dynamic_BindingRestrictions:
_p_58:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #984]
br x16
.word 1602
	.no_dead_strip plt_System_Reflection_ConstructorInfo_op_Equality_System_Reflection_ConstructorInfo_System_Reflection_ConstructorInfo
plt_System_Reflection_ConstructorInfo_op_Equality_System_Reflection_ConstructorInfo_System_Reflection_ConstructorInfo:
_p_59:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #992]
br x16
.word 1607
	.no_dead_strip plt__jit_icall_ves_icall_array_new_specific
plt__jit_icall_ves_icall_array_new_specific:
_p_60:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1000]
br x16
.word 1612
	.no_dead_strip plt_System_Type_GetConstructor_System_Type__
plt_System_Type_GetConstructor_System_Type__:
_p_61:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1008]
br x16
.word 1643
	.no_dead_strip plt_System_Linq_Expressions_Expression_Constant_object
plt_System_Linq_Expressions_Expression_Constant_object:
_p_62:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1016]
br x16
.word 1648
	.no_dead_strip plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__
plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__:
_p_63:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1024]
br x16
.word 1653
	.no_dead_strip plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression_System_Type
plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression_System_Type:
_p_64:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1032]
br x16
.word 1658
	.no_dead_strip plt_System_Dynamic_BindingRestrictions_GetInstanceRestriction_System_Linq_Expressions_Expression_object
plt_System_Dynamic_BindingRestrictions_GetInstanceRestriction_System_Linq_Expressions_Expression_object:
_p_65:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1040]
br x16
.word 1663
	.no_dead_strip plt_System_Dynamic_BindingRestrictions_GetTypeRestriction_System_Linq_Expressions_Expression_System_Type
plt_System_Dynamic_BindingRestrictions_GetTypeRestriction_System_Linq_Expressions_Expression_System_Type:
_p_66:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1048]
br x16
.word 1668
	.no_dead_strip plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string
plt_Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string:
_p_67:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1056]
br x16
.word 1673
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_68:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1064]
br x16
.word 1692
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_69:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 1726
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_70:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 1734
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_71:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 1770
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_72:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 1818
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_73:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 1842
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_74:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 1866
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_75:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 1909
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_76:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 1961
	.no_dead_strip plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
_p_77:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 1969
	.no_dead_strip plt_System_Dynamic_Utils_ContractUtils_Requires_bool_string
plt_System_Dynamic_Utils_ContractUtils_Requires_bool_string:
_p_78:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 1988
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_79:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 2019
	.no_dead_strip plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
_p_80:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 2027
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_81:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 2035
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_82:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 2058
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_83:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 2068
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_84:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 2099
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_85:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 2130
	.no_dead_strip plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF
plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF:
_p_86:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 2153
	.no_dead_strip plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int
plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int:
_p_87:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 2172
	.no_dead_strip plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int
plt_System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int:
_p_88:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 2191
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_89:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 2228
	.no_dead_strip plt_System_Array_Copy_System_Array_int_System_Array_int_int
plt_System_Array_Copy_System_Array_int_System_Array_int_int:
_p_90:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 2238
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_91:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 2243
	.no_dead_strip plt__rgctx_fetch_16
plt__rgctx_fetch_16:
_p_92:
adrp x16, mono_aot_Microsoft_CSharp_got@PAGE+0
add x16, x16, mono_aot_Microsoft_CSharp_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 2251
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Microsoft_CSharp_got, 1264
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
	.asciz "6B467276-3157-41E4-B1DD-336A0AF03DF6"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Microsoft.CSharp"
.data
	.align 3
_mono_aot_file_info:

	.long 137,0
	.align 3
	.quad mono_aot_Microsoft_CSharp_got
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

	.long 65,1264,93,56,66,923871743,0,7696
	.long 128,8,8,10,0,14,8944,1240
	.long 872,464,0,728,832,624,0,360
	.long 96,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 191,200,198,141,249,198,181,196,219,48,134,61,239,161,18,3
	.globl _mono_aot_module_Microsoft_CSharp_info
	.align 3
_mono_aot_module_Microsoft_CSharp_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_0:

	.byte 8
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags"

	.byte 4
LDIFF_SYM4=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM4
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "CheckedContext"

	.byte 1,9
	.asciz "InvokeSimpleName"

	.byte 2,9
	.asciz "InvokeSpecialName"

	.byte 4,9
	.asciz "BinaryOperationLogical"

	.byte 8,9
	.asciz "ConvertExplicit"

	.byte 16,9
	.asciz "ConvertArrayIndex"

	.byte 32,9
	.asciz "ResultIndexed"

	.byte 192,0,9
	.asciz "ValueFromCompoundAssignment"

	.byte 128,1,9
	.asciz "ResultDiscarded"

	.byte 128,2,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags"

LDIFF_SYM5=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM6=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_2:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM11=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM12=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_1:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM16=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM17=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_4:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM20=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM21=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM22=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.Binder:GetMember"
	.asciz "Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

	.byte 1,57
	.quad Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "flags"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 0,3
	.asciz "name"

LDIFF_SYM24=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,141,24,3
	.asciz "context"

LDIFF_SYM25=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,141,32,3
	.asciz "argumentInfo"

LDIFF_SYM26=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM27=Lfde0_end - Lfde0_start
	.long LDIFF_SYM27
Lfde0_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo

LDIFF_SYM28=Lme_0 - Microsoft_CSharp_RuntimeBinder_Binder_GetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.long LDIFF_SYM28
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.Binder:SetMember"
	.asciz "Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

	.byte 1,88
	.quad Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "flags"

LDIFF_SYM29=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM30=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,141,24,3
	.asciz "context"

LDIFF_SYM31=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,141,32,3
	.asciz "argumentInfo"

LDIFF_SYM32=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM33=Lfde1_end - Lfde1_start
	.long LDIFF_SYM33
Lfde1_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo

LDIFF_SYM34=Lme_1 - Microsoft_CSharp_RuntimeBinder_Binder_SetMember_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.long LDIFF_SYM34
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 8
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags"

	.byte 4
LDIFF_SYM35=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "UseCompileTimeType"

	.byte 1,9
	.asciz "Constant"

	.byte 2,9
	.asciz "NamedArgument"

	.byte 4,9
	.asciz "IsRef"

	.byte 8,9
	.asciz "IsOut"

	.byte 16,9
	.asciz "IsStaticType"

	.byte 32,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags"

LDIFF_SYM36=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM37=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM38=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_5:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

	.byte 32,16
LDIFF_SYM39=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,0,6
	.asciz "flags"

LDIFF_SYM40=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,24,6
	.asciz "name"

LDIFF_SYM41=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,16,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

LDIFF_SYM42=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM43=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM43
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM44=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string"

	.byte 2,42
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM45=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,141,16,3
	.asciz "flags"

LDIFF_SYM46=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,141,24,3
	.asciz "name"

LDIFF_SYM47=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM48=Lfde2_end - Lfde2_start
	.long LDIFF_SYM48
Lfde2_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string

LDIFF_SYM49=Lme_2 - Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo__ctor_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
	.long LDIFF_SYM49
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo:Create"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string"

	.byte 2,50
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "flags"

LDIFF_SYM50=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,16,3
	.asciz "name"

LDIFF_SYM51=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM52=Lfde3_end - Lfde3_start
	.long LDIFF_SYM52
Lfde3_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string

LDIFF_SYM53=Lme_3 - Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_Create_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfoFlags_string
	.long LDIFF_SYM53
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpArgumentInfo:get_Flags"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags"

	.byte 2,72
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM54=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM55=Lfde4_end - Lfde4_start
	.long LDIFF_SYM55
Lfde4_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags

LDIFF_SYM56=Lme_4 - Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_get_Flags
	.long LDIFF_SYM56
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_13:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM57=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM58=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM59=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM60=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_12:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM61=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM62=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM63=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_14:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM66=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM67=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM68=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM68
LTDIE_15:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM69=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM70=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM71=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM72=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM73=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_16:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM74=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM75=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM76=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM76
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM77=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM77
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM78=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM78
LTDIE_11:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM79=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM80=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM81=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM82=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM83=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM84=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM85=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM86=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM87=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM88=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM89=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM90=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM91=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM92=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_10:

	.byte 5
	.asciz "System_Runtime_CompilerServices_CallSiteBinder"

	.byte 24,16
LDIFF_SYM93=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,0,6
	.asciz "Cache"

LDIFF_SYM94=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,16,0,7
	.asciz "System_Runtime_CompilerServices_CallSiteBinder"

LDIFF_SYM95=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM96=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM97=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_9:

	.byte 5
	.asciz "System_Dynamic_DynamicMetaObjectBinder"

	.byte 24,16
LDIFF_SYM98=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,0,0,7
	.asciz "System_Dynamic_DynamicMetaObjectBinder"

LDIFF_SYM99=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM100=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM100
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM101=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_17:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM102=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM102
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM103=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM104=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM105=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM106=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_8:

	.byte 5
	.asciz "System_Dynamic_GetMemberBinder"

	.byte 40,16
LDIFF_SYM107=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,0,6
	.asciz "_name"

LDIFF_SYM108=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,24,6
	.asciz "_ignoreCase"

LDIFF_SYM109=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,32,0,7
	.asciz "System_Dynamic_GetMemberBinder"

LDIFF_SYM110=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM111=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM111
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM112=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM112
LTDIE_18:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM113=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_7:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder"

	.byte 56,16
LDIFF_SYM116=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,0,6
	.asciz "argumentInfo"

LDIFF_SYM117=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,40,6
	.asciz "callingContext"

LDIFF_SYM118=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,48,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder"

LDIFF_SYM119=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM120=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM121=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpGetMemberBinder:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

	.byte 3,43
	.quad Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM122=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 1,103,3
	.asciz "name"

LDIFF_SYM123=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,24,3
	.asciz "callingContext"

LDIFF_SYM124=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,141,32,3
	.asciz "argumentInfo"

LDIFF_SYM125=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM126=Lfde5_end - Lfde5_start
	.long LDIFF_SYM126
Lfde5_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo

LDIFF_SYM127=Lme_5 - Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder__ctor_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.long LDIFF_SYM127
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_20:

	.byte 5
	.asciz "System_Linq_Expressions_Expression"

	.byte 16,16
LDIFF_SYM128=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,0,0,7
	.asciz "System_Linq_Expressions_Expression"

LDIFF_SYM129=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM129
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM130=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM130
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM131=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_21:

	.byte 5
	.asciz "System_Dynamic_BindingRestrictions"

	.byte 16,16
LDIFF_SYM132=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,0,0,7
	.asciz "System_Dynamic_BindingRestrictions"

LDIFF_SYM133=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM134=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM135=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM135
LTDIE_19:

	.byte 5
	.asciz "System_Dynamic_DynamicMetaObject"

	.byte 48,16
LDIFF_SYM136=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,0,6
	.asciz "_expression"

LDIFF_SYM137=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,16,6
	.asciz "_restrictions"

LDIFF_SYM138=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,24,6
	.asciz "_value"

LDIFF_SYM139=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,32,6
	.asciz "_hasValue"

LDIFF_SYM140=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,40,0,7
	.asciz "System_Dynamic_DynamicMetaObject"

LDIFF_SYM141=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM142=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM143=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_28:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM144=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM145=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM146=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM147=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM148=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM149=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM150=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM151=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_27:

	.byte 5
	.asciz "Mono_CSharp_Attributes"

	.byte 24,16
LDIFF_SYM152=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,35,0,6
	.asciz "Attrs"

LDIFF_SYM153=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,16,0,7
	.asciz "Mono_CSharp_Attributes"

LDIFF_SYM154=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM155=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM156=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_26:

	.byte 5
	.asciz "Mono_CSharp_Attributable"

	.byte 24,16
LDIFF_SYM157=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,0,6
	.asciz "attributes"

LDIFF_SYM158=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,16,0,7
	.asciz "Mono_CSharp_Attributable"

LDIFF_SYM159=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM160=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM161=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_31:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM162=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM163=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM164=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM165=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM166=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM167=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM167
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM168=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM168
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM169=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_30:

	.byte 5
	.asciz "Mono_CSharp_TypeParameters"

	.byte 32,16
LDIFF_SYM170=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,0,6
	.asciz "names"

LDIFF_SYM171=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,16,6
	.asciz "types"

LDIFF_SYM172=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_TypeParameters"

LDIFF_SYM173=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM174=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM175=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM175
LTDIE_34:

	.byte 8
	.asciz "Mono_CSharp_ExprClass"

	.byte 1
LDIFF_SYM176=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 9
	.asciz "Unresolved"

	.byte 0,9
	.asciz "Value"

	.byte 1,9
	.asciz "Variable"

	.byte 2,9
	.asciz "Namespace"

	.byte 3,9
	.asciz "Type"

	.byte 4,9
	.asciz "TypeParameter"

	.byte 5,9
	.asciz "MethodGroup"

	.byte 6,9
	.asciz "PropertyAccess"

	.byte 7,9
	.asciz "EventAccess"

	.byte 8,9
	.asciz "IndexerAccess"

	.byte 9,9
	.asciz "Nothing"

	.byte 10,0,7
	.asciz "Mono_CSharp_ExprClass"

LDIFF_SYM177=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM177
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM178=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM179=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_37:

	.byte 8
	.asciz "Mono_CSharp_Modifiers"

	.byte 4
LDIFF_SYM180=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 9
	.asciz "PROTECTED"

	.byte 1,9
	.asciz "PUBLIC"

	.byte 2,9
	.asciz "PRIVATE"

	.byte 4,9
	.asciz "INTERNAL"

	.byte 8,9
	.asciz "NEW"

	.byte 16,9
	.asciz "ABSTRACT"

	.byte 32,9
	.asciz "SEALED"

	.byte 192,0,9
	.asciz "STATIC"

	.byte 128,1,9
	.asciz "READONLY"

	.byte 128,2,9
	.asciz "VIRTUAL"

	.byte 128,4,9
	.asciz "OVERRIDE"

	.byte 128,8,9
	.asciz "EXTERN"

	.byte 128,16,9
	.asciz "VOLATILE"

	.byte 128,32,9
	.asciz "UNSAFE"

	.byte 128,192,0,9
	.asciz "ASYNC"

	.byte 128,128,1,9
	.asciz "TOP"

	.byte 128,128,2,9
	.asciz "PROPERTY_CUSTOM"

	.byte 128,128,4,9
	.asciz "PARTIAL"

	.byte 128,128,8,9
	.asciz "DEFAULT_ACCESS_MODIFIER"

	.byte 128,128,16,9
	.asciz "METHOD_EXTENSION"

	.byte 128,128,32,9
	.asciz "COMPILER_GENERATED"

	.byte 128,128,192,0,9
	.asciz "BACKING_FIELD"

	.byte 128,128,128,1,9
	.asciz "DEBUGGER_HIDDEN"

	.byte 128,128,128,2,9
	.asciz "DEBUGGER_STEP_THROUGH"

	.byte 128,128,128,4,9
	.asciz "AutoProperty"

	.byte 128,128,128,8,9
	.asciz "AccessibilityMask"

	.byte 15,9
	.asciz "AllowedExplicitImplFlags"

	.byte 128,208,0,0,7
	.asciz "Mono_CSharp_Modifiers"

LDIFF_SYM181=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM181
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM182=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM183=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_38:

	.byte 8
	.asciz "_StateFlags"

	.byte 4
LDIFF_SYM184=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 9
	.asciz "Obsolete_Undetected"

	.byte 1,9
	.asciz "Obsolete"

	.byte 2,9
	.asciz "CLSCompliant_Undetected"

	.byte 4,9
	.asciz "CLSCompliant"

	.byte 8,9
	.asciz "MissingDependency_Undetected"

	.byte 16,9
	.asciz "MissingDependency"

	.byte 32,9
	.asciz "HasDynamicElement"

	.byte 192,0,9
	.asciz "ConstraintsChecked"

	.byte 128,1,9
	.asciz "IsAccessor"

	.byte 128,4,9
	.asciz "IsGeneric"

	.byte 128,8,9
	.asciz "PendingMetaInflate"

	.byte 128,32,9
	.asciz "PendingMakeMethod"

	.byte 128,192,0,9
	.asciz "PendingMemberCacheMembers"

	.byte 128,128,1,9
	.asciz "PendingBaseTypeInflate"

	.byte 128,128,2,9
	.asciz "InterfacesExpanded"

	.byte 128,128,4,9
	.asciz "IsNotCSharpCompatible"

	.byte 128,128,8,9
	.asciz "SpecialRuntimeType"

	.byte 128,128,16,9
	.asciz "InflatedExpressionType"

	.byte 128,128,32,9
	.asciz "InflatedNullableType"

	.byte 128,128,192,0,9
	.asciz "GenericIterateInterface"

	.byte 128,128,128,1,9
	.asciz "GenericTask"

	.byte 128,128,128,2,9
	.asciz "InterfacesImported"

	.byte 128,128,128,4,0,7
	.asciz "_StateFlags"

LDIFF_SYM185=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM186=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM187=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_39:

	.byte 17
	.asciz "Mono_CSharp_IMemberDefinition"

	.byte 16,7
	.asciz "Mono_CSharp_IMemberDefinition"

LDIFF_SYM188=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM189=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM189
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM190=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM190
LTDIE_40:

	.byte 8
	.asciz "Mono_CSharp_MemberKind"

	.byte 4
LDIFF_SYM191=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 9
	.asciz "Constructor"

	.byte 1,9
	.asciz "Event"

	.byte 2,9
	.asciz "Field"

	.byte 4,9
	.asciz "Method"

	.byte 8,9
	.asciz "Property"

	.byte 16,9
	.asciz "Indexer"

	.byte 32,9
	.asciz "Operator"

	.byte 192,0,9
	.asciz "Destructor"

	.byte 128,1,9
	.asciz "Class"

	.byte 128,16,9
	.asciz "Struct"

	.byte 128,32,9
	.asciz "Delegate"

	.byte 128,192,0,9
	.asciz "Enum"

	.byte 128,128,1,9
	.asciz "Interface"

	.byte 128,128,2,9
	.asciz "TypeParameter"

	.byte 128,128,4,9
	.asciz "ArrayType"

	.byte 128,128,32,9
	.asciz "PointerType"

	.byte 128,128,192,0,9
	.asciz "InternalCompilerType"

	.byte 128,128,128,1,9
	.asciz "MissingType"

	.byte 128,128,128,2,9
	.asciz "Void"

	.byte 128,128,128,4,9
	.asciz "Namespace"

	.byte 128,128,128,8,9
	.asciz "NestedMask"

	.byte 128,240,3,9
	.asciz "GenericMask"

	.byte 136,240,2,9
	.asciz "MaskType"

	.byte 255,241,3,0,7
	.asciz "Mono_CSharp_MemberKind"

LDIFF_SYM192=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM193=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM193
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM194=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_36:

	.byte 5
	.asciz "Mono_CSharp_MemberSpec"

	.byte 48,16
LDIFF_SYM195=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,0,6
	.asciz "modifiers"

LDIFF_SYM196=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,32,6
	.asciz "state"

LDIFF_SYM197=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,36,6
	.asciz "definition"

LDIFF_SYM198=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,16,6
	.asciz "Kind"

LDIFF_SYM199=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,40,6
	.asciz "declaringType"

LDIFF_SYM200=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_MemberSpec"

LDIFF_SYM201=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM202=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM203=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_43:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM204=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM205=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM206=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_44:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM207=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM208=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM209=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM210=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM211=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_45:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM212=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM213=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM214=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM215=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM216=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_42:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM217=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM218=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM219=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM221=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM222=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM223=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM224=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM225=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM226=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM227=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM228=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM229=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM229
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM230=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM230
LTDIE_46:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM231=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM231
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM232=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM232
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM233=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM233
LTDIE_47:

	.byte 8
	.asciz "_StateFlags"

	.byte 4
LDIFF_SYM234=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 9
	.asciz "HasConversionOperator"

	.byte 2,9
	.asciz "HasUserOperator"

	.byte 4,0,7
	.asciz "_StateFlags"

LDIFF_SYM235=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM236=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM236
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM237=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_41:

	.byte 5
	.asciz "Mono_CSharp_MemberCache"

	.byte 40,16
LDIFF_SYM238=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,0,6
	.asciz "member_hash"

LDIFF_SYM239=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,16,6
	.asciz "missing_abstract"

LDIFF_SYM240=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,24,6
	.asciz "state"

LDIFF_SYM241=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM241
	.byte 2,35,32,0,7
	.asciz "Mono_CSharp_MemberCache"

LDIFF_SYM242=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM243=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM244=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_48:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM245=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM246=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM247=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_50:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM248=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM249=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM249
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM250=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM250
LTDIE_51:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM251=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM252=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM253=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM254=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM255=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM255
LTDIE_52:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM256=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM257=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM258=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM258
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM259=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM259
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM260=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM260
LTDIE_49:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM261=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM262=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM263=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM264=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM265=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM266=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM267=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM268=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM269=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM270=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM271=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM272=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM273=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM273
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM274=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_35:

	.byte 5
	.asciz "Mono_CSharp_TypeSpec"

	.byte 88,16
LDIFF_SYM275=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,0,6
	.asciz "info"

LDIFF_SYM276=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,48,6
	.asciz "cache"

LDIFF_SYM277=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,56,6
	.asciz "ifaces"

LDIFF_SYM278=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM278
	.byte 2,35,64,6
	.asciz "base_type"

LDIFF_SYM279=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,72,6
	.asciz "inflated_instances"

LDIFF_SYM280=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,35,80,0,7
	.asciz "Mono_CSharp_TypeSpec"

LDIFF_SYM281=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM282=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM283=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM283
LTDIE_33:

	.byte 5
	.asciz "Mono_CSharp_Expression"

	.byte 32,16
LDIFF_SYM284=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,0,6
	.asciz "eclass"

LDIFF_SYM285=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM285
	.byte 2,35,24,6
	.asciz "type"

LDIFF_SYM286=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM286
	.byte 2,35,16,6
	.asciz "loc"

LDIFF_SYM287=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,28,0,7
	.asciz "Mono_CSharp_Expression"

LDIFF_SYM288=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM288
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM289=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM289
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM290=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM290
LTDIE_32:

	.byte 5
	.asciz "Mono_CSharp_FullNamedExpression"

	.byte 32,16
LDIFF_SYM291=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM291
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_FullNamedExpression"

LDIFF_SYM292=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM293=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM294=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM294
LTDIE_29:

	.byte 5
	.asciz "Mono_CSharp_MemberName"

	.byte 56,16
LDIFF_SYM295=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,0,6
	.asciz "Name"

LDIFF_SYM296=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,16,6
	.asciz "TypeParameters"

LDIFF_SYM297=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,24,6
	.asciz "ExplicitInterface"

LDIFF_SYM298=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,35,32,6
	.asciz "Location"

LDIFF_SYM299=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 2,35,48,6
	.asciz "Left"

LDIFF_SYM300=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_MemberName"

LDIFF_SYM301=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM301
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM302=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM302
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM303=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM303
LTDIE_53:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM304=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 9
	.asciz "Obsolete_Undetected"

	.byte 1,9
	.asciz "Obsolete"

	.byte 2,9
	.asciz "ClsCompliance_Undetected"

	.byte 4,9
	.asciz "ClsCompliant"

	.byte 8,9
	.asciz "CloseTypeCreated"

	.byte 16,9
	.asciz "HasCompliantAttribute_Undetected"

	.byte 32,9
	.asciz "HasClsCompliantAttribute"

	.byte 192,0,9
	.asciz "ClsCompliantAttributeFalse"

	.byte 128,1,9
	.asciz "Excluded_Undetected"

	.byte 128,2,9
	.asciz "Excluded"

	.byte 128,4,9
	.asciz "MethodOverloadsExist"

	.byte 128,8,9
	.asciz "IsUsed"

	.byte 128,16,9
	.asciz "IsAssigned"

	.byte 128,32,9
	.asciz "HasExplicitLayout"

	.byte 128,192,0,9
	.asciz "PartialDefinitionExists"

	.byte 128,128,1,9
	.asciz "HasStructLayout"

	.byte 128,128,2,9
	.asciz "HasInstanceConstructor"

	.byte 128,128,4,9
	.asciz "HasUserOperators"

	.byte 128,128,8,9
	.asciz "CanBeReused"

	.byte 128,128,16,9
	.asciz "InterfacesExpanded"

	.byte 128,128,32,0,7
	.asciz "_Flags"

LDIFF_SYM305=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM306=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM307=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM307
LTDIE_25:

	.byte 5
	.asciz "Mono_CSharp_MemberCore"

	.byte 48,16
LDIFF_SYM308=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,0,6
	.asciz "member_name"

LDIFF_SYM309=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,35,24,6
	.asciz "mod_flags"

LDIFF_SYM310=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 2,35,40,6
	.asciz "Parent"

LDIFF_SYM311=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 2,35,32,6
	.asciz "caching_flags"

LDIFF_SYM312=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,35,44,0,7
	.asciz "Mono_CSharp_MemberCore"

LDIFF_SYM313=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM313
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM314=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM314
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM315=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM315
LTDIE_54:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM316=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM317=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM318=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM319=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM320=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM321=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM321
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM322=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM322
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM323=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM323
LTDIE_56:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM324=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM325=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM326=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM327=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM328=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM329=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM329
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM330=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM331=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_57:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM332=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM333=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM334=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM335=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM335
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM336=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM337=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM338=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM338
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM339=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_59:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM340=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM341=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM342=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_60:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM343=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM344=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM345=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM345
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM346=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM346
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM347=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM347
LTDIE_61:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM348=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM349=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM350=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM351=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM351
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM352=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM352
LTDIE_58:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM353=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM354=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM355=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM356=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM357=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM358=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM359=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM360=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM361=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM362=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM363=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM364=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM364
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM365=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM365
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM366=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM366
LTDIE_63:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM367=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM368=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM369=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM369
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM370=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM370
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM371=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM371
LTDIE_64:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM372=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM373=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM374=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM374
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM375=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM376=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM376
LTDIE_62:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM377=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM378=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM379=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM380=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM381=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM382=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM383=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM384=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM385=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM386=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM387=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM388=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM389=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM390=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_66:

	.byte 5
	.asciz "Mono_CSharp_MemberBase"

	.byte 72,16
LDIFF_SYM391=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,0,6
	.asciz "type_expr"

LDIFF_SYM392=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,48,6
	.asciz "member_type"

LDIFF_SYM393=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,56,6
	.asciz "Parent"

LDIFF_SYM394=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,64,0,7
	.asciz "Mono_CSharp_MemberBase"

LDIFF_SYM395=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM395
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM396=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM396
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM397=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM397
LTDIE_68:

	.byte 5
	.asciz "System_Reflection_FieldInfo"

	.byte 16,16
LDIFF_SYM398=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,0,0,7
	.asciz "System_Reflection_FieldInfo"

LDIFF_SYM399=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM400=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM400
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM401=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM401
LTDIE_67:

	.byte 5
	.asciz "System_Reflection_Emit_FieldBuilder"

	.byte 16,16
LDIFF_SYM402=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_FieldBuilder"

LDIFF_SYM403=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM403
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM404=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM404
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM405=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM405
LTDIE_69:

	.byte 5
	.asciz "Mono_CSharp_FieldSpec"

	.byte 64,16
LDIFF_SYM406=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 2,35,0,6
	.asciz "metaInfo"

LDIFF_SYM407=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,48,6
	.asciz "memberType"

LDIFF_SYM408=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,56,0,7
	.asciz "Mono_CSharp_FieldSpec"

LDIFF_SYM409=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM409
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM410=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM411=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_70:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM412=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM412
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM413=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM414=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM416=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM417=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM418=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM419=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_65:

	.byte 5
	.asciz "Mono_CSharp_FieldBase"

	.byte 104,16
LDIFF_SYM420=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,0,6
	.asciz "FieldBuilder"

LDIFF_SYM421=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,72,6
	.asciz "spec"

LDIFF_SYM422=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,35,80,6
	.asciz "initializer"

LDIFF_SYM423=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,35,88,6
	.asciz "declarators"

LDIFF_SYM424=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,96,0,7
	.asciz "Mono_CSharp_FieldBase"

LDIFF_SYM425=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM425
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM426=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM426
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM427=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM427
LTDIE_71:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM428=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM429=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM430=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM431=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM432=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM433=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM433
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM434=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM434
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM435=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM435
LTDIE_72:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM436=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM437=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM437
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM438=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM439=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM440=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM441=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM442=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM442
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM443=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_73:

	.byte 5
	.asciz "System_Reflection_Emit_TypeBuilder"

	.byte 24,16
LDIFF_SYM444=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_TypeBuilder"

LDIFF_SYM445=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM446=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM446
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM447=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM447
LTDIE_74:

	.byte 8
	.asciz "_CachedMethods"

	.byte 4
LDIFF_SYM448=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 9
	.asciz "Equals"

	.byte 1,9
	.asciz "GetHashCode"

	.byte 2,9
	.asciz "HasStaticFieldInitializer"

	.byte 4,0,7
	.asciz "_CachedMethods"

LDIFF_SYM449=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM450=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM451=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_75:

	.byte 5
	.asciz "Mono_CSharp_PendingImplementation"

	.byte 32,16
LDIFF_SYM452=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,0,6
	.asciz "container"

LDIFF_SYM453=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 2,35,16,6
	.asciz "pending_implementations"

LDIFF_SYM454=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_PendingImplementation"

LDIFF_SYM455=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM456=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM457=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM457
LTDIE_77:

	.byte 5
	.asciz "Mono_CSharp_AParametersCollection"

	.byte 40,16
LDIFF_SYM458=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,0,6
	.asciz "has_arglist"

LDIFF_SYM459=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,32,6
	.asciz "has_params"

LDIFF_SYM460=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,33,6
	.asciz "parameters"

LDIFF_SYM461=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,16,6
	.asciz "types"

LDIFF_SYM462=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_AParametersCollection"

LDIFF_SYM463=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM463
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM464=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM464
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM465=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM465
LTDIE_76:

	.byte 5
	.asciz "Mono_CSharp_ParametersCompiled"

	.byte 40,16
LDIFF_SYM466=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_ParametersCompiled"

LDIFF_SYM467=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM467
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM468=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM468
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM469=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM469
LTDIE_79:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM470=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM470
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM471=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM471
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM472=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM472
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM473=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM474=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM475=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM475
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM476=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM477=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_78:

	.byte 5
	.asciz "Mono_CSharp_Arguments"

	.byte 24,16
LDIFF_SYM478=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,0,6
	.asciz "args"

LDIFF_SYM479=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,16,0,7
	.asciz "Mono_CSharp_Arguments"

LDIFF_SYM480=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM480
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM481=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM482=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM482
LTDIE_55:

	.byte 5
	.asciz "Mono_CSharp_TypeDefinition"

	.byte 152,2,16
LDIFF_SYM483=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,0,6
	.asciz "members"

LDIFF_SYM484=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,88,6
	.asciz "initialized_fields"

LDIFF_SYM485=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,35,96,6
	.asciz "initialized_static_fields"

LDIFF_SYM486=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,35,104,6
	.asciz "hoisted_base_call_proxies"

LDIFF_SYM487=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,35,112,6
	.asciz "Cache"

LDIFF_SYM488=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,35,120,6
	.asciz "first_nonstatic_field"

LDIFF_SYM489=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 3,35,128,1,6
	.asciz "base_type"

LDIFF_SYM490=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 3,35,136,1,6
	.asciz "base_type_expr"

LDIFF_SYM491=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 3,35,144,1,6
	.asciz "iface_exprs"

LDIFF_SYM492=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 3,35,152,1,6
	.asciz "type_bases"

LDIFF_SYM493=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 3,35,160,1,6
	.asciz "class_partial_parts"

LDIFF_SYM494=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 3,35,168,1,6
	.asciz "InTransit"

LDIFF_SYM495=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 3,35,176,1,6
	.asciz "TypeBuilder"

LDIFF_SYM496=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 3,35,184,1,6
	.asciz "all_tp_builders"

LDIFF_SYM497=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 3,35,192,1,6
	.asciz "all_type_parameters"

LDIFF_SYM498=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 3,35,200,1,6
	.asciz "has_normal_indexers"

LDIFF_SYM499=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 3,35,128,2,6
	.asciz "indexer_name"

LDIFF_SYM500=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 3,35,208,1,6
	.asciz "error"

LDIFF_SYM501=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 3,35,129,2,6
	.asciz "members_defined"

LDIFF_SYM502=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 3,35,130,2,6
	.asciz "members_defined_ok"

LDIFF_SYM503=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 3,35,131,2,6
	.asciz "has_static_constructor"

LDIFF_SYM504=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 3,35,132,2,6
	.asciz "cached_method"

LDIFF_SYM505=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 3,35,136,2,6
	.asciz "spec"

LDIFF_SYM506=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 3,35,216,1,6
	.asciz "current_type"

LDIFF_SYM507=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 3,35,224,1,6
	.asciz "MethodGroupsCounter"

LDIFF_SYM508=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 3,35,140,2,6
	.asciz "pending"

LDIFF_SYM509=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 3,35,232,1,6
	.asciz "<PrimaryConstructorParameters>k__BackingField"

LDIFF_SYM510=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 3,35,240,1,6
	.asciz "<PrimaryConstructorBaseArguments>k__BackingField"

LDIFF_SYM511=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 3,35,248,1,6
	.asciz "<PrimaryConstructorBaseArgumentsStart>k__BackingField"

LDIFF_SYM512=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 3,35,144,2,0,7
	.asciz "Mono_CSharp_TypeDefinition"

LDIFF_SYM513=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM513
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM514=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM514
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM515=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM515
LTDIE_81:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM516=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM517=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM518=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM518
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM519=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM520=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_82:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM521=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM522=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM523=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM523
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM524=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM524
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM525=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM525
LTDIE_80:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM526=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM527=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM528=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM529=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM530=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM531=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM532=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM533=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM534=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM535=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM536=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM537=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM537
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM538=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM538
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM539=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM539
LTDIE_24:

	.byte 5
	.asciz "Mono_CSharp_TypeContainer"

	.byte 88,16
LDIFF_SYM540=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,35,0,6
	.asciz "Kind"

LDIFF_SYM541=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,35,72,6
	.asciz "containers"

LDIFF_SYM542=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,48,6
	.asciz "main_container"

LDIFF_SYM543=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,35,56,6
	.asciz "defined_names"

LDIFF_SYM544=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,35,64,6
	.asciz "is_defined"

LDIFF_SYM545=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,35,76,6
	.asciz "<CounterAnonymousContainers>k__BackingField"

LDIFF_SYM546=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,35,80,6
	.asciz "<CounterSwitchTypes>k__BackingField"

LDIFF_SYM547=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,84,0,7
	.asciz "Mono_CSharp_TypeContainer"

LDIFF_SYM548=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM548
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM549=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM549
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM550=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM550
LTDIE_90:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM551=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM552=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM552
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM553=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM553
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM554=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_89:

	.byte 5
	.asciz "Mono_CSharp_MethodSpec"

	.byte 88,16
LDIFF_SYM555=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 2,35,0,6
	.asciz "inflatedMetaInfo"

LDIFF_SYM556=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,35,48,6
	.asciz "parameters"

LDIFF_SYM557=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,56,6
	.asciz "returnType"

LDIFF_SYM558=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,35,64,6
	.asciz "targs"

LDIFF_SYM559=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM559
	.byte 2,35,72,6
	.asciz "constraints"

LDIFF_SYM560=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM560
	.byte 2,35,80,0,7
	.asciz "Mono_CSharp_MethodSpec"

LDIFF_SYM561=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM561
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM562=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM563=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_91:

	.byte 8
	.asciz "System_Reflection_MethodAttributes"

	.byte 4
LDIFF_SYM564=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM564
	.byte 9
	.asciz "MemberAccessMask"

	.byte 7,9
	.asciz "PrivateScope"

	.byte 0,9
	.asciz "Private"

	.byte 1,9
	.asciz "FamANDAssem"

	.byte 2,9
	.asciz "Assembly"

	.byte 3,9
	.asciz "Family"

	.byte 4,9
	.asciz "FamORAssem"

	.byte 5,9
	.asciz "Public"

	.byte 6,9
	.asciz "Static"

	.byte 16,9
	.asciz "Final"

	.byte 32,9
	.asciz "Virtual"

	.byte 192,0,9
	.asciz "HideBySig"

	.byte 128,1,9
	.asciz "CheckAccessOnOverride"

	.byte 128,4,9
	.asciz "VtableLayoutMask"

	.byte 128,2,9
	.asciz "ReuseSlot"

	.byte 0,9
	.asciz "NewSlot"

	.byte 128,2,9
	.asciz "Abstract"

	.byte 128,8,9
	.asciz "SpecialName"

	.byte 128,16,9
	.asciz "PinvokeImpl"

	.byte 128,192,0,9
	.asciz "UnmanagedExport"

	.byte 8,9
	.asciz "RTSpecialName"

	.byte 128,32,9
	.asciz "ReservedMask"

	.byte 128,160,3,9
	.asciz "HasSecurity"

	.byte 128,128,1,9
	.asciz "RequireSecObject"

	.byte 128,128,2,0,7
	.asciz "System_Reflection_MethodAttributes"

LDIFF_SYM565=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM565
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM566=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM566
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM567=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM567
LTDIE_88:

	.byte 5
	.asciz "Mono_CSharp_InterfaceMemberBase"

	.byte 104,16
LDIFF_SYM568=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,0,6
	.asciz "IsInterface"

LDIFF_SYM569=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM569
	.byte 2,35,88,6
	.asciz "IsExplicitImpl"

LDIFF_SYM570=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM570
	.byte 2,35,89,6
	.asciz "InterfaceType"

LDIFF_SYM571=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM571
	.byte 2,35,72,6
	.asciz "base_method"

LDIFF_SYM572=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,80,6
	.asciz "explicit_mod_flags"

LDIFF_SYM573=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 2,35,92,6
	.asciz "flags"

LDIFF_SYM574=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 2,35,96,0,7
	.asciz "Mono_CSharp_InterfaceMemberBase"

LDIFF_SYM575=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM576=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM576
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM577=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_96:

	.byte 5
	.asciz "Mono_CSharp_Statement"

	.byte 24,16
LDIFF_SYM578=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM578
	.byte 2,35,0,6
	.asciz "loc"

LDIFF_SYM579=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM579
	.byte 2,35,16,6
	.asciz "reachable"

LDIFF_SYM580=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 2,35,20,0,7
	.asciz "Mono_CSharp_Statement"

LDIFF_SYM581=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM581
LTDIE_96_POINTER:

	.byte 13
LDIFF_SYM582=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM582
LTDIE_96_REFERENCE:

	.byte 14
LDIFF_SYM583=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM583
LTDIE_97:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM584=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 9
	.asciz "Unchecked"

	.byte 1,9
	.asciz "ReachableEnd"

	.byte 8,9
	.asciz "Unsafe"

	.byte 16,9
	.asciz "HasCapturedVariable"

	.byte 192,0,9
	.asciz "HasCapturedThis"

	.byte 128,1,9
	.asciz "IsExpressionTree"

	.byte 128,2,9
	.asciz "CompilerGenerated"

	.byte 128,4,9
	.asciz "HasAsyncModifier"

	.byte 128,8,9
	.asciz "Resolved"

	.byte 128,16,9
	.asciz "YieldBlock"

	.byte 128,32,9
	.asciz "AwaitBlock"

	.byte 128,192,0,9
	.asciz "FinallyBlock"

	.byte 128,128,1,9
	.asciz "CatchBlock"

	.byte 128,128,2,9
	.asciz "HasReferenceToStoreyForInstanceLambdas"

	.byte 128,128,4,9
	.asciz "Iterator"

	.byte 128,128,192,0,9
	.asciz "NoFlowAnalysis"

	.byte 128,128,128,1,9
	.asciz "InitializationEmitted"

	.byte 128,128,128,2,0,7
	.asciz "_Flags"

LDIFF_SYM585=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM585
LTDIE_97_POINTER:

	.byte 13
LDIFF_SYM586=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_97_REFERENCE:

	.byte 14
LDIFF_SYM587=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_98:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM588=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM589=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM590=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM591=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM592=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM592
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM593=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_98_POINTER:

	.byte 13
LDIFF_SYM594=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_98_REFERENCE:

	.byte 14
LDIFF_SYM595=LTDIE_98 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_95:

	.byte 5
	.asciz "Mono_CSharp_Block"

	.byte 96,16
LDIFF_SYM596=LTDIE_96 - Ldebug_info_start
	.long LDIFF_SYM596
	.byte 2,35,0,6
	.asciz "Parent"

LDIFF_SYM597=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,24,6
	.asciz "StartLocation"

LDIFF_SYM598=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,72,6
	.asciz "EndLocation"

LDIFF_SYM599=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,76,6
	.asciz "Explicit"

LDIFF_SYM600=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 2,35,32,6
	.asciz "ParametersBlock"

LDIFF_SYM601=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,40,6
	.asciz "flags"

LDIFF_SYM602=LTDIE_97 - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,80,6
	.asciz "statements"

LDIFF_SYM603=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,48,6
	.asciz "scope_initializers"

LDIFF_SYM604=LTDIE_98_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,35,56,6
	.asciz "resolving_init_idx"

LDIFF_SYM605=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,35,84,6
	.asciz "original"

LDIFF_SYM606=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,35,64,0,7
	.asciz "Mono_CSharp_Block"

LDIFF_SYM607=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM607
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM608=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM608
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM609=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM609
LTDIE_103:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM610=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM610
LTDIE_103_POINTER:

	.byte 13
LDIFF_SYM611=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM611
LTDIE_103_REFERENCE:

	.byte 14
LDIFF_SYM612=LTDIE_103 - Ldebug_info_start
	.long LDIFF_SYM612
LTDIE_104:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM613=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM614=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM615=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM615
LTDIE_104_POINTER:

	.byte 13
LDIFF_SYM616=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM616
LTDIE_104_REFERENCE:

	.byte 14
LDIFF_SYM617=LTDIE_104 - Ldebug_info_start
	.long LDIFF_SYM617
LTDIE_105:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM618=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM619=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM620=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM620
LTDIE_105_POINTER:

	.byte 13
LDIFF_SYM621=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM621
LTDIE_105_REFERENCE:

	.byte 14
LDIFF_SYM622=LTDIE_105 - Ldebug_info_start
	.long LDIFF_SYM622
LTDIE_102:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM623=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM623
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM624=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM625=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM626=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM627=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM628=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM628
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM629=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM630=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM631=LTDIE_104_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM631
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM632=LTDIE_105_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM632
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM633=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM633
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM634=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM634
LTDIE_102_POINTER:

	.byte 13
LDIFF_SYM635=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM635
LTDIE_102_REFERENCE:

	.byte 14
LDIFF_SYM636=LTDIE_102 - Ldebug_info_start
	.long LDIFF_SYM636
LTDIE_101:

	.byte 5
	.asciz "Mono_CSharp_TypeParameterMutator"

	.byte 48,16
LDIFF_SYM637=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 2,35,0,6
	.asciz "mvar"

LDIFF_SYM638=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,16,6
	.asciz "var"

LDIFF_SYM639=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,24,6
	.asciz "src"

LDIFF_SYM640=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,32,6
	.asciz "mutated_typespec"

LDIFF_SYM641=LTDIE_102_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_TypeParameterMutator"

LDIFF_SYM642=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM642
LTDIE_101_POINTER:

	.byte 13
LDIFF_SYM643=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM643
LTDIE_101_REFERENCE:

	.byte 14
LDIFF_SYM644=LTDIE_101 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_100:

	.byte 5
	.asciz "Mono_CSharp_HoistedStoreyClass"

	.byte 176,2,16
LDIFF_SYM645=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 2,35,0,6
	.asciz "mutator"

LDIFF_SYM646=LTDIE_101_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 3,35,168,2,0,7
	.asciz "Mono_CSharp_HoistedStoreyClass"

LDIFF_SYM647=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM647
LTDIE_100_POINTER:

	.byte 13
LDIFF_SYM648=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM648
LTDIE_100_REFERENCE:

	.byte 14
LDIFF_SYM649=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_106:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM650=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM651=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM652=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM653=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM654=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM655=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM655
LTDIE_106_POINTER:

	.byte 13
LDIFF_SYM656=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM656
LTDIE_106_REFERENCE:

	.byte 14
LDIFF_SYM657=LTDIE_106 - Ldebug_info_start
	.long LDIFF_SYM657
LTDIE_107:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM658=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM658
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM659=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM660=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM661=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM661
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM662=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM663=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM663
LTDIE_107_POINTER:

	.byte 13
LDIFF_SYM664=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM664
LTDIE_107_REFERENCE:

	.byte 14
LDIFF_SYM665=LTDIE_107 - Ldebug_info_start
	.long LDIFF_SYM665
LTDIE_108:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM666=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM667=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM668=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM669=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM670=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM671=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM671
LTDIE_108_POINTER:

	.byte 13
LDIFF_SYM672=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM672
LTDIE_108_REFERENCE:

	.byte 14
LDIFF_SYM673=LTDIE_108 - Ldebug_info_start
	.long LDIFF_SYM673
LTDIE_111:

	.byte 5
	.asciz "Mono_CSharp_Field"

	.byte 104,16
LDIFF_SYM674=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM674
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_Field"

LDIFF_SYM675=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM675
LTDIE_111_POINTER:

	.byte 13
LDIFF_SYM676=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM676
LTDIE_111_REFERENCE:

	.byte 14
LDIFF_SYM677=LTDIE_111 - Ldebug_info_start
	.long LDIFF_SYM677
LTDIE_110:

	.byte 5
	.asciz "Mono_CSharp_HoistedVariable"

	.byte 32,16
LDIFF_SYM678=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM678
	.byte 2,35,0,6
	.asciz "storey"

LDIFF_SYM679=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,35,16,6
	.asciz "field"

LDIFF_SYM680=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_HoistedVariable"

LDIFF_SYM681=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM681
LTDIE_110_POINTER:

	.byte 13
LDIFF_SYM682=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM682
LTDIE_110_REFERENCE:

	.byte 14
LDIFF_SYM683=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM683
LTDIE_109:

	.byte 5
	.asciz "Mono_CSharp_HoistedThis"

	.byte 32,16
LDIFF_SYM684=LTDIE_110 - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_HoistedThis"

LDIFF_SYM685=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM685
LTDIE_109_POINTER:

	.byte 13
LDIFF_SYM686=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM686
LTDIE_109_REFERENCE:

	.byte 14
LDIFF_SYM687=LTDIE_109 - Ldebug_info_start
	.long LDIFF_SYM687
LTDIE_99:

	.byte 5
	.asciz "Mono_CSharp_AnonymousMethodStorey"

	.byte 232,2,16
LDIFF_SYM688=LTDIE_100 - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,35,0,6
	.asciz "ID"

LDIFF_SYM689=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 3,35,224,2,6
	.asciz "OriginalSourceBlock"

LDIFF_SYM690=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 3,35,176,2,6
	.asciz "children_references"

LDIFF_SYM691=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM691
	.byte 3,35,184,2,6
	.asciz "hoisted_params"

LDIFF_SYM692=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 3,35,192,2,6
	.asciz "hoisted_local_params"

LDIFF_SYM693=LTDIE_107_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 3,35,200,2,6
	.asciz "hoisted_locals"

LDIFF_SYM694=LTDIE_108_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 3,35,208,2,6
	.asciz "hoisted_this"

LDIFF_SYM695=LTDIE_109_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM695
	.byte 3,35,216,2,0,7
	.asciz "Mono_CSharp_AnonymousMethodStorey"

LDIFF_SYM696=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM696
LTDIE_99_POINTER:

	.byte 13
LDIFF_SYM697=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM697
LTDIE_99_REFERENCE:

	.byte 14
LDIFF_SYM698=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM698
LTDIE_94:

	.byte 5
	.asciz "Mono_CSharp_ExplicitBlock"

	.byte 112,16
LDIFF_SYM699=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 2,35,0,6
	.asciz "am_storey"

LDIFF_SYM700=LTDIE_99_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,35,96,6
	.asciz "debug_scope_index"

LDIFF_SYM701=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 2,35,104,0,7
	.asciz "Mono_CSharp_ExplicitBlock"

LDIFF_SYM702=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM702
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM703=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM703
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM704=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM704
LTDIE_117:

	.byte 17
	.asciz "Mono_CSharp_IMethodData"

	.byte 16,7
	.asciz "Mono_CSharp_IMethodData"

LDIFF_SYM705=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM705
LTDIE_117_POINTER:

	.byte 13
LDIFF_SYM706=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM706
LTDIE_117_REFERENCE:

	.byte 14
LDIFF_SYM707=LTDIE_117 - Ldebug_info_start
	.long LDIFF_SYM707
LTDIE_118:

	.byte 5
	.asciz "System_Reflection_Emit_MethodBuilder"

	.byte 16,16
LDIFF_SYM708=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_MethodBuilder"

LDIFF_SYM709=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM709
LTDIE_118_POINTER:

	.byte 13
LDIFF_SYM710=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM710
LTDIE_118_REFERENCE:

	.byte 14
LDIFF_SYM711=LTDIE_118 - Ldebug_info_start
	.long LDIFF_SYM711
LTDIE_116:

	.byte 5
	.asciz "Mono_CSharp_MethodData"

	.byte 80,16
LDIFF_SYM712=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 2,35,0,6
	.asciz "method"

LDIFF_SYM713=LTDIE_117_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 2,35,16,6
	.asciz "implementing"

LDIFF_SYM714=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 2,35,24,6
	.asciz "member"

LDIFF_SYM715=LTDIE_88_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 2,35,32,6
	.asciz "modifiers"

LDIFF_SYM716=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 2,35,72,6
	.asciz "flags"

LDIFF_SYM717=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 2,35,76,6
	.asciz "declaring_type"

LDIFF_SYM718=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 2,35,40,6
	.asciz "parent_method"

LDIFF_SYM719=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 2,35,48,6
	.asciz "full_name"

LDIFF_SYM720=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM720
	.byte 2,35,56,6
	.asciz "builder"

LDIFF_SYM721=LTDIE_118_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM721
	.byte 2,35,64,0,7
	.asciz "Mono_CSharp_MethodData"

LDIFF_SYM722=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM722
LTDIE_116_POINTER:

	.byte 13
LDIFF_SYM723=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM723
LTDIE_116_REFERENCE:

	.byte 14
LDIFF_SYM724=LTDIE_116 - Ldebug_info_start
	.long LDIFF_SYM724
LTDIE_115:

	.byte 5
	.asciz "Mono_CSharp_MethodOrOperator"

	.byte 136,1,16
LDIFF_SYM725=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2,35,0,6
	.asciz "MethodData"

LDIFF_SYM726=LTDIE_116_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 3,35,128,1,0,7
	.asciz "Mono_CSharp_MethodOrOperator"

LDIFF_SYM727=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM727
LTDIE_115_POINTER:

	.byte 13
LDIFF_SYM728=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM728
LTDIE_115_REFERENCE:

	.byte 14
LDIFF_SYM729=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM729
LTDIE_114:

	.byte 5
	.asciz "Mono_CSharp_Method"

	.byte 144,1,16
LDIFF_SYM730=LTDIE_115 - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 2,35,0,6
	.asciz "partialMethodImplementation"

LDIFF_SYM731=LTDIE_114_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 3,35,136,1,0,7
	.asciz "Mono_CSharp_Method"

LDIFF_SYM732=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM732
LTDIE_114_POINTER:

	.byte 13
LDIFF_SYM733=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM733
LTDIE_114_REFERENCE:

	.byte 14
LDIFF_SYM734=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM734
LTDIE_121:

	.byte 5
	.asciz "Mono_CSharp_ExpressionStatement"

	.byte 32,16
LDIFF_SYM735=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM735
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_ExpressionStatement"

LDIFF_SYM736=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM736
LTDIE_121_POINTER:

	.byte 13
LDIFF_SYM737=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM737
LTDIE_121_REFERENCE:

	.byte 14
LDIFF_SYM738=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM738
LTDIE_120:

	.byte 5
	.asciz "Mono_CSharp_AnonymousExpression"

	.byte 48,16
LDIFF_SYM739=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,35,0,6
	.asciz "block"

LDIFF_SYM740=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM740
	.byte 2,35,32,6
	.asciz "ReturnType"

LDIFF_SYM741=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM741
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_AnonymousExpression"

LDIFF_SYM742=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM742
LTDIE_120_POINTER:

	.byte 13
LDIFF_SYM743=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM743
LTDIE_120_REFERENCE:

	.byte 14
LDIFF_SYM744=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM744
LTDIE_119:

	.byte 5
	.asciz "Mono_CSharp_StateMachineInitializer"

	.byte 64,16
LDIFF_SYM745=LTDIE_120 - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 2,35,0,6
	.asciz "Host"

LDIFF_SYM746=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 2,35,48,6
	.asciz "storey"

LDIFF_SYM747=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 2,35,56,0,7
	.asciz "Mono_CSharp_StateMachineInitializer"

LDIFF_SYM748=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM748
LTDIE_119_POINTER:

	.byte 13
LDIFF_SYM749=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM749
LTDIE_119_REFERENCE:

	.byte 14
LDIFF_SYM750=LTDIE_119 - Ldebug_info_start
	.long LDIFF_SYM750
LTDIE_113:

	.byte 5
	.asciz "Mono_CSharp_StateMachineMethod"

	.byte 152,1,16
LDIFF_SYM751=LTDIE_114 - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 2,35,0,6
	.asciz "expr"

LDIFF_SYM752=LTDIE_119_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 3,35,144,1,0,7
	.asciz "Mono_CSharp_StateMachineMethod"

LDIFF_SYM753=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM753
LTDIE_113_POINTER:

	.byte 13
LDIFF_SYM754=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM754
LTDIE_113_REFERENCE:

	.byte 14
LDIFF_SYM755=LTDIE_113 - Ldebug_info_start
	.long LDIFF_SYM755
LTDIE_112:

	.byte 5
	.asciz "Mono_CSharp_StateMachine"

	.byte 128,3,16
LDIFF_SYM756=LTDIE_99 - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 2,35,0,6
	.asciz "pc_field"

LDIFF_SYM757=LTDIE_111_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 3,35,232,2,6
	.asciz "method"

LDIFF_SYM758=LTDIE_113_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 3,35,240,2,6
	.asciz "<OriginalTypeParameters>k__BackingField"

LDIFF_SYM759=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM759
	.byte 3,35,248,2,0,7
	.asciz "Mono_CSharp_StateMachine"

LDIFF_SYM760=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM760
LTDIE_112_POINTER:

	.byte 13
LDIFF_SYM761=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM761
LTDIE_112_REFERENCE:

	.byte 14
LDIFF_SYM762=LTDIE_112 - Ldebug_info_start
	.long LDIFF_SYM762
LTDIE_123:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM763=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM764=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM765=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM765
LTDIE_123_POINTER:

	.byte 13
LDIFF_SYM766=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM766
LTDIE_123_REFERENCE:

	.byte 14
LDIFF_SYM767=LTDIE_123 - Ldebug_info_start
	.long LDIFF_SYM767
LTDIE_124:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM768=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM769=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM770=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM770
LTDIE_124_POINTER:

	.byte 13
LDIFF_SYM771=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM771
LTDIE_124_REFERENCE:

	.byte 14
LDIFF_SYM772=LTDIE_124 - Ldebug_info_start
	.long LDIFF_SYM772
LTDIE_122:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM773=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM774=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM775=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM776=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM777=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM778=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM779=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM780=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM780
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM781=LTDIE_123_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM781
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM782=LTDIE_124_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM783=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM784=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM784
LTDIE_122_POINTER:

	.byte 13
LDIFF_SYM785=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM785
LTDIE_122_REFERENCE:

	.byte 14
LDIFF_SYM786=LTDIE_122 - Ldebug_info_start
	.long LDIFF_SYM786
LTDIE_93:

	.byte 5
	.asciz "Mono_CSharp_ParametersBlock"

	.byte 160,1,16
LDIFF_SYM787=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 2,35,0,6
	.asciz "parameters"

LDIFF_SYM788=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 2,35,112,6
	.asciz "parameter_info"

LDIFF_SYM789=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM789
	.byte 2,35,120,6
	.asciz "resolved"

LDIFF_SYM790=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 3,35,152,1,6
	.asciz "top_block"

LDIFF_SYM791=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 3,35,128,1,6
	.asciz "state_machine"

LDIFF_SYM792=LTDIE_112_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 3,35,136,1,6
	.asciz "labels"

LDIFF_SYM793=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 3,35,144,1,6
	.asciz "<TemporaryLocalsCount>k__BackingField"

LDIFF_SYM794=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM794
	.byte 3,35,156,1,0,7
	.asciz "Mono_CSharp_ParametersBlock"

LDIFF_SYM795=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM795
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM796=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM796
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM797=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM797
LTDIE_126:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM798=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 9
	.asciz "Used"

	.byte 1,9
	.asciz "IsThis"

	.byte 2,9
	.asciz "AddressTaken"

	.byte 4,9
	.asciz "CompilerGenerated"

	.byte 8,9
	.asciz "Constant"

	.byte 16,9
	.asciz "ForeachVariable"

	.byte 32,9
	.asciz "FixedVariable"

	.byte 192,0,9
	.asciz "UsingVariable"

	.byte 128,1,9
	.asciz "IsLocked"

	.byte 128,2,9
	.asciz "SymbolFileHidden"

	.byte 128,4,9
	.asciz "ReadonlyMask"

	.byte 224,1,0,7
	.asciz "_Flags"

LDIFF_SYM799=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM799
LTDIE_126_POINTER:

	.byte 13
LDIFF_SYM800=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM800
LTDIE_126_REFERENCE:

	.byte 14
LDIFF_SYM801=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM801
LTDIE_127:

	.byte 5
	.asciz "Mono_CSharp_Constant"

	.byte 32,16
LDIFF_SYM802=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_Constant"

LDIFF_SYM803=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM803
LTDIE_127_POINTER:

	.byte 13
LDIFF_SYM804=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM804
LTDIE_127_REFERENCE:

	.byte 14
LDIFF_SYM805=LTDIE_127 - Ldebug_info_start
	.long LDIFF_SYM805
LTDIE_131:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM806=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM806
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM807=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM807
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM808=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM808
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM809=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM810=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM810
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM811=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM811
LTDIE_131_POINTER:

	.byte 13
LDIFF_SYM812=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM812
LTDIE_131_REFERENCE:

	.byte 14
LDIFF_SYM813=LTDIE_131 - Ldebug_info_start
	.long LDIFF_SYM813
LTDIE_133:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM814=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM815=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM815
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM816=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM816
LTDIE_133_POINTER:

	.byte 13
LDIFF_SYM817=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM817
LTDIE_133_REFERENCE:

	.byte 14
LDIFF_SYM818=LTDIE_133 - Ldebug_info_start
	.long LDIFF_SYM818
LTDIE_134:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM819=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM820=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM821=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM821
LTDIE_134_POINTER:

	.byte 13
LDIFF_SYM822=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM822
LTDIE_134_REFERENCE:

	.byte 14
LDIFF_SYM823=LTDIE_134 - Ldebug_info_start
	.long LDIFF_SYM823
LTDIE_132:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM824=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM825=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM825
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM826=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM826
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM827=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM828=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM829=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM830=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM830
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM831=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM831
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM832=LTDIE_133_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM833=LTDIE_134_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM834=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM834
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM835=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM835
LTDIE_132_POINTER:

	.byte 13
LDIFF_SYM836=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM836
LTDIE_132_REFERENCE:

	.byte 14
LDIFF_SYM837=LTDIE_132 - Ldebug_info_start
	.long LDIFF_SYM837
LTDIE_136:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM838=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM839=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM839
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM840=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM840
LTDIE_136_POINTER:

	.byte 13
LDIFF_SYM841=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM841
LTDIE_136_REFERENCE:

	.byte 14
LDIFF_SYM842=LTDIE_136 - Ldebug_info_start
	.long LDIFF_SYM842
LTDIE_137:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM843=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM843
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM844=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM845=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM845
LTDIE_137_POINTER:

	.byte 13
LDIFF_SYM846=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM846
LTDIE_137_REFERENCE:

	.byte 14
LDIFF_SYM847=LTDIE_137 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_135:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM848=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM848
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM849=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM849
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM850=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM851=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM851
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM852=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM852
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM853=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM853
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM854=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM854
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM855=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM855
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM856=LTDIE_136_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM857=LTDIE_137_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM857
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM858=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM858
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM859=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM859
LTDIE_135_POINTER:

	.byte 13
LDIFF_SYM860=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM860
LTDIE_135_REFERENCE:

	.byte 14
LDIFF_SYM861=LTDIE_135 - Ldebug_info_start
	.long LDIFF_SYM861
LTDIE_130:

	.byte 5
	.asciz "_StructInfo"

	.byte 64,16
LDIFF_SYM862=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM862
	.byte 2,35,0,6
	.asciz "fields"

LDIFF_SYM863=LTDIE_131_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 2,35,16,6
	.asciz "StructFields"

LDIFF_SYM864=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2,35,24,6
	.asciz "Length"

LDIFF_SYM865=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM865
	.byte 2,35,48,6
	.asciz "TotalLength"

LDIFF_SYM866=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM866
	.byte 2,35,52,6
	.asciz "struct_field_hash"

LDIFF_SYM867=LTDIE_132_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2,35,32,6
	.asciz "field_hash"

LDIFF_SYM868=LTDIE_135_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM868
	.byte 2,35,40,6
	.asciz "InTransit"

LDIFF_SYM869=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM869
	.byte 2,35,56,0,7
	.asciz "_StructInfo"

LDIFF_SYM870=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM870
LTDIE_130_POINTER:

	.byte 13
LDIFF_SYM871=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM871
LTDIE_130_REFERENCE:

	.byte 14
LDIFF_SYM872=LTDIE_130 - Ldebug_info_start
	.long LDIFF_SYM872
LTDIE_129:

	.byte 5
	.asciz "Mono_CSharp_TypeInfo"

	.byte 48,16
LDIFF_SYM873=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM873
	.byte 2,35,0,6
	.asciz "TotalLength"

LDIFF_SYM874=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM874
	.byte 2,35,32,6
	.asciz "Length"

LDIFF_SYM875=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM875
	.byte 2,35,36,6
	.asciz "Offset"

LDIFF_SYM876=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM876
	.byte 2,35,40,6
	.asciz "IsStruct"

LDIFF_SYM877=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM877
	.byte 2,35,44,6
	.asciz "SubStructInfo"

LDIFF_SYM878=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM878
	.byte 2,35,16,6
	.asciz "struct_info"

LDIFF_SYM879=LTDIE_130_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM879
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_TypeInfo"

LDIFF_SYM880=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM880
LTDIE_129_POINTER:

	.byte 13
LDIFF_SYM881=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM881
LTDIE_129_REFERENCE:

	.byte 14
LDIFF_SYM882=LTDIE_129 - Ldebug_info_start
	.long LDIFF_SYM882
LTDIE_128:

	.byte 5
	.asciz "Mono_CSharp_VariableInfo"

	.byte 56,16
LDIFF_SYM883=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM883
	.byte 2,35,0,6
	.asciz "Name"

LDIFF_SYM884=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM884
	.byte 2,35,16,6
	.asciz "TypeInfo"

LDIFF_SYM885=LTDIE_129_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM885
	.byte 2,35,24,6
	.asciz "Offset"

LDIFF_SYM886=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM886
	.byte 2,35,40,6
	.asciz "Length"

LDIFF_SYM887=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM887
	.byte 2,35,44,6
	.asciz "IsParameter"

LDIFF_SYM888=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM888
	.byte 2,35,48,6
	.asciz "sub_info"

LDIFF_SYM889=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM889
	.byte 2,35,32,6
	.asciz "<IsEverAssigned>k__BackingField"

LDIFF_SYM890=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM890
	.byte 2,35,49,0,7
	.asciz "Mono_CSharp_VariableInfo"

LDIFF_SYM891=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM891
LTDIE_128_POINTER:

	.byte 13
LDIFF_SYM892=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM892
LTDIE_128_REFERENCE:

	.byte 14
LDIFF_SYM893=LTDIE_128 - Ldebug_info_start
	.long LDIFF_SYM893
LTDIE_125:

	.byte 5
	.asciz "Mono_CSharp_LocalVariable"

	.byte 72,16
LDIFF_SYM894=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM894
	.byte 2,35,0,6
	.asciz "type"

LDIFF_SYM895=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM896=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM896
	.byte 2,35,24,6
	.asciz "loc"

LDIFF_SYM897=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM897
	.byte 2,35,64,6
	.asciz "block"

LDIFF_SYM898=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM898
	.byte 2,35,32,6
	.asciz "flags"

LDIFF_SYM899=LTDIE_126 - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 2,35,68,6
	.asciz "const_value"

LDIFF_SYM900=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM900
	.byte 2,35,40,6
	.asciz "VariableInfo"

LDIFF_SYM901=LTDIE_128_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM901
	.byte 2,35,48,6
	.asciz "hoisted_variant"

LDIFF_SYM902=LTDIE_110_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM902
	.byte 2,35,56,0,7
	.asciz "Mono_CSharp_LocalVariable"

LDIFF_SYM903=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM903
LTDIE_125_POINTER:

	.byte 13
LDIFF_SYM904=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM904
LTDIE_125_REFERENCE:

	.byte 14
LDIFF_SYM905=LTDIE_125 - Ldebug_info_start
	.long LDIFF_SYM905
LTDIE_141:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM906=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM906
LTDIE_141_POINTER:

	.byte 13
LDIFF_SYM907=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM907
LTDIE_141_REFERENCE:

	.byte 14
LDIFF_SYM908=LTDIE_141 - Ldebug_info_start
	.long LDIFF_SYM908
LTDIE_142:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM909=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM909
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM910=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM910
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM911=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM911
LTDIE_142_POINTER:

	.byte 13
LDIFF_SYM912=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM912
LTDIE_142_REFERENCE:

	.byte 14
LDIFF_SYM913=LTDIE_142 - Ldebug_info_start
	.long LDIFF_SYM913
LTDIE_143:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM914=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM914
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM915=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM915
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM916=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM916
LTDIE_143_POINTER:

	.byte 13
LDIFF_SYM917=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM917
LTDIE_143_REFERENCE:

	.byte 14
LDIFF_SYM918=LTDIE_143 - Ldebug_info_start
	.long LDIFF_SYM918
LTDIE_140:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM919=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM919
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM920=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM920
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM921=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM921
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM922=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM922
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM923=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM924=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM924
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM925=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM925
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM926=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM926
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM927=LTDIE_142_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM927
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM928=LTDIE_143_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM928
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM929=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM929
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM930=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM930
LTDIE_140_POINTER:

	.byte 13
LDIFF_SYM931=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM931
LTDIE_140_REFERENCE:

	.byte 14
LDIFF_SYM932=LTDIE_140 - Ldebug_info_start
	.long LDIFF_SYM932
LTDIE_146:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM933=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM933
LTDIE_146_POINTER:

	.byte 13
LDIFF_SYM934=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM934
LTDIE_146_REFERENCE:

	.byte 14
LDIFF_SYM935=LTDIE_146 - Ldebug_info_start
	.long LDIFF_SYM935
LTDIE_145:

	.byte 5
	.asciz "System_Collections_Generic_HashSet`1"

	.byte 56,16
LDIFF_SYM936=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM936
	.byte 2,35,0,6
	.asciz "m_buckets"

LDIFF_SYM937=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM937
	.byte 2,35,16,6
	.asciz "m_slots"

LDIFF_SYM938=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM938
	.byte 2,35,24,6
	.asciz "m_count"

LDIFF_SYM939=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 2,35,40,6
	.asciz "m_lastIndex"

LDIFF_SYM940=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM940
	.byte 2,35,44,6
	.asciz "m_freeList"

LDIFF_SYM941=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM941
	.byte 2,35,48,6
	.asciz "m_comparer"

LDIFF_SYM942=LTDIE_146_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM942
	.byte 2,35,32,6
	.asciz "m_version"

LDIFF_SYM943=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM943
	.byte 2,35,52,0,7
	.asciz "System_Collections_Generic_HashSet`1"

LDIFF_SYM944=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM944
LTDIE_145_POINTER:

	.byte 13
LDIFF_SYM945=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM945
LTDIE_145_REFERENCE:

	.byte 14
LDIFF_SYM946=LTDIE_145 - Ldebug_info_start
	.long LDIFF_SYM946
LTDIE_144:

	.byte 5
	.asciz "Mono_CSharp_ReportPrinter"

	.byte 32,16
LDIFF_SYM947=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM947
	.byte 2,35,0,6
	.asciz "reported_missing_definitions"

LDIFF_SYM948=LTDIE_145_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM948
	.byte 2,35,16,6
	.asciz "<ErrorsCount>k__BackingField"

LDIFF_SYM949=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM949
	.byte 2,35,24,6
	.asciz "<WarningsCount>k__BackingField"

LDIFF_SYM950=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM950
	.byte 2,35,28,0,7
	.asciz "Mono_CSharp_ReportPrinter"

LDIFF_SYM951=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM951
LTDIE_144_POINTER:

	.byte 13
LDIFF_SYM952=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM952
LTDIE_144_REFERENCE:

	.byte 14
LDIFF_SYM953=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM953
LTDIE_148:

	.byte 8
	.asciz "Mono_CSharp_Target"

	.byte 4
LDIFF_SYM954=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM954
	.byte 9
	.asciz "Library"

	.byte 0,9
	.asciz "Exe"

	.byte 1,9
	.asciz "Module"

	.byte 2,9
	.asciz "WinExe"

	.byte 3,0,7
	.asciz "Mono_CSharp_Target"

LDIFF_SYM955=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM955
LTDIE_148_POINTER:

	.byte 13
LDIFF_SYM956=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM956
LTDIE_148_REFERENCE:

	.byte 14
LDIFF_SYM957=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM957
LTDIE_149:

	.byte 8
	.asciz "Mono_CSharp_Platform"

	.byte 4
LDIFF_SYM958=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM958
	.byte 9
	.asciz "AnyCPU"

	.byte 0,9
	.asciz "AnyCPU32Preferred"

	.byte 1,9
	.asciz "Arm"

	.byte 2,9
	.asciz "X86"

	.byte 3,9
	.asciz "X64"

	.byte 4,9
	.asciz "IA64"

	.byte 5,0,7
	.asciz "Mono_CSharp_Platform"

LDIFF_SYM959=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM959
LTDIE_149_POINTER:

	.byte 13
LDIFF_SYM960=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM960
LTDIE_149_REFERENCE:

	.byte 14
LDIFF_SYM961=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM961
LTDIE_150:

	.byte 8
	.asciz "Mono_CSharp_LanguageVersion"

	.byte 4
LDIFF_SYM962=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM962
	.byte 9
	.asciz "ISO_1"

	.byte 1,9
	.asciz "ISO_2"

	.byte 2,9
	.asciz "V_3"

	.byte 3,9
	.asciz "V_4"

	.byte 4,9
	.asciz "V_5"

	.byte 5,9
	.asciz "V_6"

	.byte 6,9
	.asciz "Experimental"

	.byte 228,0,9
	.asciz "Default"

	.byte 6,0,7
	.asciz "Mono_CSharp_LanguageVersion"

LDIFF_SYM963=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM963
LTDIE_150_POINTER:

	.byte 13
LDIFF_SYM964=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM964
LTDIE_150_REFERENCE:

	.byte 14
LDIFF_SYM965=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM965
LTDIE_151:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM966=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM966
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM967=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM967
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM968=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM968
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM969=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM969
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM970=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM970
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM971=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM971
LTDIE_151_POINTER:

	.byte 13
LDIFF_SYM972=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM972
LTDIE_151_REFERENCE:

	.byte 14
LDIFF_SYM973=LTDIE_151 - Ldebug_info_start
	.long LDIFF_SYM973
LTDIE_152:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM974=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM974
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM975=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM975
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM976=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM976
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM977=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM977
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM978=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM978
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM979=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM979
LTDIE_152_POINTER:

	.byte 13
LDIFF_SYM980=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM980
LTDIE_152_REFERENCE:

	.byte 14
LDIFF_SYM981=LTDIE_152 - Ldebug_info_start
	.long LDIFF_SYM981
LTDIE_155:

	.byte 5
	.asciz "System_UInt32"

	.byte 20,16
LDIFF_SYM982=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM982
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM983=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM983
	.byte 2,35,16,0,7
	.asciz "System_UInt32"

LDIFF_SYM984=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM984
LTDIE_155_POINTER:

	.byte 13
LDIFF_SYM985=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM985
LTDIE_155_REFERENCE:

	.byte 14
LDIFF_SYM986=LTDIE_155 - Ldebug_info_start
	.long LDIFF_SYM986
LTDIE_154:

	.byte 5
	.asciz "System_Globalization_CodePageDataItem"

	.byte 40,16
LDIFF_SYM987=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM987
	.byte 2,35,0,6
	.asciz "m_dataIndex"

LDIFF_SYM988=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM988
	.byte 2,35,24,6
	.asciz "m_uiFamilyCodePage"

LDIFF_SYM989=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM989
	.byte 2,35,28,6
	.asciz "m_webName"

LDIFF_SYM990=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM990
	.byte 2,35,16,6
	.asciz "m_flags"

LDIFF_SYM991=LDIE_U4 - Ldebug_info_start
	.long LDIFF_SYM991
	.byte 2,35,32,0,7
	.asciz "System_Globalization_CodePageDataItem"

LDIFF_SYM992=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM992
LTDIE_154_POINTER:

	.byte 13
LDIFF_SYM993=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM993
LTDIE_154_REFERENCE:

	.byte 14
LDIFF_SYM994=LTDIE_154 - Ldebug_info_start
	.long LDIFF_SYM994
LTDIE_156:

	.byte 5
	.asciz "System_Text_EncoderFallback"

	.byte 17,16
LDIFF_SYM995=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM995
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM996=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM996
	.byte 2,35,16,0,7
	.asciz "System_Text_EncoderFallback"

LDIFF_SYM997=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM997
LTDIE_156_POINTER:

	.byte 13
LDIFF_SYM998=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM998
LTDIE_156_REFERENCE:

	.byte 14
LDIFF_SYM999=LTDIE_156 - Ldebug_info_start
	.long LDIFF_SYM999
LTDIE_157:

	.byte 5
	.asciz "System_Text_DecoderFallback"

	.byte 17,16
LDIFF_SYM1000=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1000
	.byte 2,35,0,6
	.asciz "bIsMicrosoftBestFitFallback"

LDIFF_SYM1001=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1001
	.byte 2,35,16,0,7
	.asciz "System_Text_DecoderFallback"

LDIFF_SYM1002=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1002
LTDIE_157_POINTER:

	.byte 13
LDIFF_SYM1003=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1003
LTDIE_157_REFERENCE:

	.byte 14
LDIFF_SYM1004=LTDIE_157 - Ldebug_info_start
	.long LDIFF_SYM1004
LTDIE_153:

	.byte 5
	.asciz "System_Text_Encoding"

	.byte 48,16
LDIFF_SYM1005=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1005
	.byte 2,35,0,6
	.asciz "m_codePage"

LDIFF_SYM1006=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1006
	.byte 2,35,40,6
	.asciz "dataItem"

LDIFF_SYM1007=LTDIE_154_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1007
	.byte 2,35,16,6
	.asciz "m_deserializedFromEverett"

LDIFF_SYM1008=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1008
	.byte 2,35,44,6
	.asciz "m_isReadOnly"

LDIFF_SYM1009=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1009
	.byte 2,35,45,6
	.asciz "encoderFallback"

LDIFF_SYM1010=LTDIE_156_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1010
	.byte 2,35,24,6
	.asciz "decoderFallback"

LDIFF_SYM1011=LTDIE_157_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1011
	.byte 2,35,32,0,7
	.asciz "System_Text_Encoding"

LDIFF_SYM1012=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1012
LTDIE_153_POINTER:

	.byte 13
LDIFF_SYM1013=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1013
LTDIE_153_REFERENCE:

	.byte 14
LDIFF_SYM1014=LTDIE_153 - Ldebug_info_start
	.long LDIFF_SYM1014
LTDIE_158:

	.byte 8
	.asciz "Mono_CSharp_RuntimeVersion"

	.byte 4
LDIFF_SYM1015=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1015
	.byte 9
	.asciz "v1"

	.byte 0,9
	.asciz "v2"

	.byte 1,9
	.asciz "v4"

	.byte 2,0,7
	.asciz "Mono_CSharp_RuntimeVersion"

LDIFF_SYM1016=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1016
LTDIE_158_POINTER:

	.byte 13
LDIFF_SYM1017=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1017
LTDIE_158_REFERENCE:

	.byte 14
LDIFF_SYM1018=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1018
LTDIE_159:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM1019=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1019
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1020=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1020
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1021=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1021
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM1022=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1022
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM1023=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1023
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1024=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1024
LTDIE_159_POINTER:

	.byte 13
LDIFF_SYM1025=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1025
LTDIE_159_REFERENCE:

	.byte 14
LDIFF_SYM1026=LTDIE_159 - Ldebug_info_start
	.long LDIFF_SYM1026
LTDIE_160:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM1027=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1027
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1028=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1028
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1029=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1029
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM1030=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1030
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM1031=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1031
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1032=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1032
LTDIE_160_POINTER:

	.byte 13
LDIFF_SYM1033=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1033
LTDIE_160_REFERENCE:

	.byte 14
LDIFF_SYM1034=LTDIE_160 - Ldebug_info_start
	.long LDIFF_SYM1034
LTDIE_161:

	.byte 5
	.asciz "System_Collections_Generic_HashSet`1"

	.byte 56,16
LDIFF_SYM1035=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1035
	.byte 2,35,0,6
	.asciz "m_buckets"

LDIFF_SYM1036=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1036
	.byte 2,35,16,6
	.asciz "m_slots"

LDIFF_SYM1037=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1037
	.byte 2,35,24,6
	.asciz "m_count"

LDIFF_SYM1038=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1038
	.byte 2,35,40,6
	.asciz "m_lastIndex"

LDIFF_SYM1039=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1039
	.byte 2,35,44,6
	.asciz "m_freeList"

LDIFF_SYM1040=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1040
	.byte 2,35,48,6
	.asciz "m_comparer"

LDIFF_SYM1041=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1041
	.byte 2,35,32,6
	.asciz "m_version"

LDIFF_SYM1042=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1042
	.byte 2,35,52,0,7
	.asciz "System_Collections_Generic_HashSet`1"

LDIFF_SYM1043=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1043
LTDIE_161_POINTER:

	.byte 13
LDIFF_SYM1044=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1044
LTDIE_161_REFERENCE:

	.byte 14
LDIFF_SYM1045=LTDIE_161 - Ldebug_info_start
	.long LDIFF_SYM1045
LTDIE_147:

	.byte 5
	.asciz "Mono_CSharp_CompilerSettings"

	.byte 184,1,16
LDIFF_SYM1046=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1046
	.byte 2,35,0,6
	.asciz "Target"

LDIFF_SYM1047=LTDIE_148 - Ldebug_info_start
	.long LDIFF_SYM1047
	.byte 3,35,128,1,6
	.asciz "Platform"

LDIFF_SYM1048=LTDIE_149 - Ldebug_info_start
	.long LDIFF_SYM1048
	.byte 3,35,132,1,6
	.asciz "TargetExt"

LDIFF_SYM1049=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1049
	.byte 2,35,16,6
	.asciz "VerifyClsCompliance"

LDIFF_SYM1050=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1050
	.byte 3,35,136,1,6
	.asciz "Optimize"

LDIFF_SYM1051=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1051
	.byte 3,35,137,1,6
	.asciz "Version"

LDIFF_SYM1052=LTDIE_150 - Ldebug_info_start
	.long LDIFF_SYM1052
	.byte 3,35,140,1,6
	.asciz "LoadDefaultReferences"

LDIFF_SYM1053=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1053
	.byte 3,35,144,1,6
	.asciz "StrongNameKeyFile"

LDIFF_SYM1054=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1054
	.byte 2,35,24,6
	.asciz "StrongNameKeyContainer"

LDIFF_SYM1055=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1055
	.byte 2,35,32,6
	.asciz "StrongNameDelaySign"

LDIFF_SYM1056=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1056
	.byte 3,35,145,1,6
	.asciz "TabSize"

LDIFF_SYM1057=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1057
	.byte 3,35,148,1,6
	.asciz "WarningsAreErrors"

LDIFF_SYM1058=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1058
	.byte 3,35,152,1,6
	.asciz "WarningLevel"

LDIFF_SYM1059=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1059
	.byte 3,35,156,1,6
	.asciz "AssemblyReferences"

LDIFF_SYM1060=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1060
	.byte 2,35,40,6
	.asciz "AssemblyReferencesAliases"

LDIFF_SYM1061=LTDIE_152_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1061
	.byte 2,35,48,6
	.asciz "Modules"

LDIFF_SYM1062=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1062
	.byte 2,35,56,6
	.asciz "ReferencesLookupPaths"

LDIFF_SYM1063=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1063
	.byte 2,35,64,6
	.asciz "Encoding"

LDIFF_SYM1064=LTDIE_153_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1064
	.byte 2,35,72,6
	.asciz "MainClass"

LDIFF_SYM1065=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1065
	.byte 2,35,80,6
	.asciz "Checked"

LDIFF_SYM1066=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1066
	.byte 3,35,160,1,6
	.asciz "StatementMode"

LDIFF_SYM1067=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1067
	.byte 3,35,161,1,6
	.asciz "FatalCounter"

LDIFF_SYM1068=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1068
	.byte 3,35,164,1,6
	.asciz "Stacktrace"

LDIFF_SYM1069=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1069
	.byte 3,35,168,1,6
	.asciz "BreakOnInternalError"

LDIFF_SYM1070=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1070
	.byte 3,35,169,1,6
	.asciz "ShowFullPaths"

LDIFF_SYM1071=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1071
	.byte 3,35,170,1,6
	.asciz "StdLib"

LDIFF_SYM1072=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1072
	.byte 3,35,171,1,6
	.asciz "StdLibRuntimeVersion"

LDIFF_SYM1073=LTDIE_158 - Ldebug_info_start
	.long LDIFF_SYM1073
	.byte 3,35,172,1,6
	.asciz "WriteMetadataOnly"

LDIFF_SYM1074=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1074
	.byte 3,35,176,1,6
	.asciz "conditional_symbols"

LDIFF_SYM1075=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1075
	.byte 2,35,88,6
	.asciz "source_files"

LDIFF_SYM1076=LTDIE_159_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1076
	.byte 2,35,96,6
	.asciz "warnings_as_error"

LDIFF_SYM1077=LTDIE_160_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1077
	.byte 2,35,104,6
	.asciz "warnings_only"

LDIFF_SYM1078=LTDIE_160_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1078
	.byte 2,35,112,6
	.asciz "warning_ignore_table"

LDIFF_SYM1079=LTDIE_161_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1079
	.byte 2,35,120,0,7
	.asciz "Mono_CSharp_CompilerSettings"

LDIFF_SYM1080=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1080
LTDIE_147_POINTER:

	.byte 13
LDIFF_SYM1081=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1081
LTDIE_147_REFERENCE:

	.byte 14
LDIFF_SYM1082=LTDIE_147 - Ldebug_info_start
	.long LDIFF_SYM1082
LTDIE_139:

	.byte 5
	.asciz "Mono_CSharp_Report"

	.byte 56,16
LDIFF_SYM1083=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1083
	.byte 2,35,0,6
	.asciz "warning_regions_table"

LDIFF_SYM1084=LTDIE_140_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1084
	.byte 2,35,16,6
	.asciz "printer"

LDIFF_SYM1085=LTDIE_144_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1085
	.byte 2,35,24,6
	.asciz "reporting_disabled"

LDIFF_SYM1086=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1086
	.byte 2,35,48,6
	.asciz "settings"

LDIFF_SYM1087=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1087
	.byte 2,35,32,6
	.asciz "extra_information"

LDIFF_SYM1088=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1088
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_Report"

LDIFF_SYM1089=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1089
LTDIE_139_POINTER:

	.byte 13
LDIFF_SYM1090=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1090
LTDIE_139_REFERENCE:

	.byte 14
LDIFF_SYM1091=LTDIE_139 - Ldebug_info_start
	.long LDIFF_SYM1091
LTDIE_164:

	.byte 8
	.asciz "_Type"

	.byte 4
LDIFF_SYM1092=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1092
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "FirstPrimitive"

	.byte 1,9
	.asciz "Bool"

	.byte 1,9
	.asciz "Byte"

	.byte 2,9
	.asciz "SByte"

	.byte 3,9
	.asciz "Char"

	.byte 4,9
	.asciz "Short"

	.byte 5,9
	.asciz "UShort"

	.byte 6,9
	.asciz "Int"

	.byte 7,9
	.asciz "UInt"

	.byte 8,9
	.asciz "Long"

	.byte 9,9
	.asciz "ULong"

	.byte 10,9
	.asciz "Float"

	.byte 11,9
	.asciz "Double"

	.byte 12,9
	.asciz "LastPrimitive"

	.byte 12,9
	.asciz "Decimal"

	.byte 13,9
	.asciz "IntPtr"

	.byte 14,9
	.asciz "UIntPtr"

	.byte 15,9
	.asciz "Object"

	.byte 16,9
	.asciz "Dynamic"

	.byte 17,9
	.asciz "String"

	.byte 18,9
	.asciz "Type"

	.byte 19,9
	.asciz "ValueType"

	.byte 20,9
	.asciz "Enum"

	.byte 21,9
	.asciz "Delegate"

	.byte 22,9
	.asciz "MulticastDelegate"

	.byte 23,9
	.asciz "Array"

	.byte 24,9
	.asciz "IEnumerator"

	.byte 25,9
	.asciz "IEnumerable"

	.byte 26,9
	.asciz "IDisposable"

	.byte 27,9
	.asciz "Exception"

	.byte 28,9
	.asciz "Attribute"

	.byte 29,9
	.asciz "Other"

	.byte 30,0,7
	.asciz "_Type"

LDIFF_SYM1093=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1093
LTDIE_164_POINTER:

	.byte 13
LDIFF_SYM1094=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1094
LTDIE_164_REFERENCE:

	.byte 14
LDIFF_SYM1095=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1095
LTDIE_163:

	.byte 5
	.asciz "Mono_CSharp_BuiltinTypeSpec"

	.byte 112,16
LDIFF_SYM1096=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM1096
	.byte 2,35,0,6
	.asciz "type"

LDIFF_SYM1097=LTDIE_164 - Ldebug_info_start
	.long LDIFF_SYM1097
	.byte 2,35,104,6
	.asciz "ns"

LDIFF_SYM1098=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1098
	.byte 2,35,88,6
	.asciz "name"

LDIFF_SYM1099=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1099
	.byte 2,35,96,0,7
	.asciz "Mono_CSharp_BuiltinTypeSpec"

LDIFF_SYM1100=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1100
LTDIE_163_POINTER:

	.byte 13
LDIFF_SYM1101=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1101
LTDIE_163_REFERENCE:

	.byte 14
LDIFF_SYM1102=LTDIE_163 - Ldebug_info_start
	.long LDIFF_SYM1102
LTDIE_162:

	.byte 5
	.asciz "Mono_CSharp_BuiltinTypes"

	.byte 200,2,16
LDIFF_SYM1103=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1103
	.byte 2,35,0,6
	.asciz "Object"

LDIFF_SYM1104=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1104
	.byte 2,35,16,6
	.asciz "ValueType"

LDIFF_SYM1105=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1105
	.byte 2,35,24,6
	.asciz "Attribute"

LDIFF_SYM1106=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1106
	.byte 2,35,32,6
	.asciz "Int"

LDIFF_SYM1107=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1107
	.byte 2,35,40,6
	.asciz "UInt"

LDIFF_SYM1108=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1108
	.byte 2,35,48,6
	.asciz "Long"

LDIFF_SYM1109=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1109
	.byte 2,35,56,6
	.asciz "ULong"

LDIFF_SYM1110=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1110
	.byte 2,35,64,6
	.asciz "Float"

LDIFF_SYM1111=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1111
	.byte 2,35,72,6
	.asciz "Double"

LDIFF_SYM1112=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1112
	.byte 2,35,80,6
	.asciz "Char"

LDIFF_SYM1113=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1113
	.byte 2,35,88,6
	.asciz "Short"

LDIFF_SYM1114=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1114
	.byte 2,35,96,6
	.asciz "Decimal"

LDIFF_SYM1115=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1115
	.byte 2,35,104,6
	.asciz "Bool"

LDIFF_SYM1116=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1116
	.byte 2,35,112,6
	.asciz "SByte"

LDIFF_SYM1117=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1117
	.byte 2,35,120,6
	.asciz "Byte"

LDIFF_SYM1118=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1118
	.byte 3,35,128,1,6
	.asciz "UShort"

LDIFF_SYM1119=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1119
	.byte 3,35,136,1,6
	.asciz "String"

LDIFF_SYM1120=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1120
	.byte 3,35,144,1,6
	.asciz "Enum"

LDIFF_SYM1121=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1121
	.byte 3,35,152,1,6
	.asciz "Delegate"

LDIFF_SYM1122=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1122
	.byte 3,35,160,1,6
	.asciz "MulticastDelegate"

LDIFF_SYM1123=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1123
	.byte 3,35,168,1,6
	.asciz "Void"

LDIFF_SYM1124=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1124
	.byte 3,35,176,1,6
	.asciz "Array"

LDIFF_SYM1125=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1125
	.byte 3,35,184,1,6
	.asciz "Type"

LDIFF_SYM1126=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1126
	.byte 3,35,192,1,6
	.asciz "IEnumerator"

LDIFF_SYM1127=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1127
	.byte 3,35,200,1,6
	.asciz "IEnumerable"

LDIFF_SYM1128=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1128
	.byte 3,35,208,1,6
	.asciz "IDisposable"

LDIFF_SYM1129=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1129
	.byte 3,35,216,1,6
	.asciz "IntPtr"

LDIFF_SYM1130=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1130
	.byte 3,35,224,1,6
	.asciz "UIntPtr"

LDIFF_SYM1131=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1131
	.byte 3,35,232,1,6
	.asciz "RuntimeFieldHandle"

LDIFF_SYM1132=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1132
	.byte 3,35,240,1,6
	.asciz "RuntimeTypeHandle"

LDIFF_SYM1133=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1133
	.byte 3,35,248,1,6
	.asciz "Exception"

LDIFF_SYM1134=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1134
	.byte 3,35,128,2,6
	.asciz "Dynamic"

LDIFF_SYM1135=LTDIE_163_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1135
	.byte 3,35,136,2,6
	.asciz "OperatorsBinaryStandard"

LDIFF_SYM1136=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1136
	.byte 3,35,144,2,6
	.asciz "OperatorsBinaryEquality"

LDIFF_SYM1137=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1137
	.byte 3,35,152,2,6
	.asciz "OperatorsBinaryUnsafe"

LDIFF_SYM1138=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1138
	.byte 3,35,160,2,6
	.asciz "OperatorsUnary"

LDIFF_SYM1139=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1139
	.byte 3,35,168,2,6
	.asciz "OperatorsUnaryMutator"

LDIFF_SYM1140=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1140
	.byte 3,35,176,2,6
	.asciz "BinaryPromotionsTypes"

LDIFF_SYM1141=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1141
	.byte 3,35,184,2,6
	.asciz "types"

LDIFF_SYM1142=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1142
	.byte 3,35,192,2,0,7
	.asciz "Mono_CSharp_BuiltinTypes"

LDIFF_SYM1143=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1143
LTDIE_162_POINTER:

	.byte 13
LDIFF_SYM1144=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1144
LTDIE_162_REFERENCE:

	.byte 14
LDIFF_SYM1145=LTDIE_162 - Ldebug_info_start
	.long LDIFF_SYM1145
LTDIE_165:

	.byte 5
	.asciz "Mono_CSharp_TimeReporter"

	.byte 24,16
LDIFF_SYM1146=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1146
	.byte 2,35,0,6
	.asciz "timers"

LDIFF_SYM1147=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1147
	.byte 2,35,16,0,7
	.asciz "Mono_CSharp_TimeReporter"

LDIFF_SYM1148=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1148
LTDIE_165_POINTER:

	.byte 13
LDIFF_SYM1149=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1149
LTDIE_165_REFERENCE:

	.byte 14
LDIFF_SYM1150=LTDIE_165 - Ldebug_info_start
	.long LDIFF_SYM1150
LTDIE_138:

	.byte 5
	.asciz "Mono_CSharp_CompilerContext"

	.byte 56,16
LDIFF_SYM1151=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1151
	.byte 2,35,0,6
	.asciz "report"

LDIFF_SYM1152=LTDIE_139_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1152
	.byte 2,35,16,6
	.asciz "builtin_types"

LDIFF_SYM1153=LTDIE_162_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1153
	.byte 2,35,24,6
	.asciz "settings"

LDIFF_SYM1154=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1154
	.byte 2,35,32,6
	.asciz "<IsRuntimeBinder>k__BackingField"

LDIFF_SYM1155=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1155
	.byte 2,35,48,6
	.asciz "<TimeReporter>k__BackingField"

LDIFF_SYM1156=LTDIE_165_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1156
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_CompilerContext"

LDIFF_SYM1157=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1157
LTDIE_138_POINTER:

	.byte 13
LDIFF_SYM1158=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1158
LTDIE_138_REFERENCE:

	.byte 14
LDIFF_SYM1159=LTDIE_138 - Ldebug_info_start
	.long LDIFF_SYM1159
LTDIE_92:

	.byte 5
	.asciz "Mono_CSharp_ToplevelBlock"

	.byte 192,1,16
LDIFF_SYM1160=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM1160
	.byte 2,35,0,6
	.asciz "this_variable"

LDIFF_SYM1161=LTDIE_125_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1161
	.byte 3,35,160,1,6
	.asciz "compiler"

LDIFF_SYM1162=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1162
	.byte 3,35,168,1,6
	.asciz "names"

LDIFF_SYM1163=LTDIE_122_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1163
	.byte 3,35,176,1,6
	.asciz "this_references"

LDIFF_SYM1164=LTDIE_106_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1164
	.byte 3,35,184,1,0,7
	.asciz "Mono_CSharp_ToplevelBlock"

LDIFF_SYM1165=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1165
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM1166=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1166
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM1167=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM1167
LTDIE_87:

	.byte 5
	.asciz "Mono_CSharp_MethodCore"

	.byte 128,1,16
LDIFF_SYM1168=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM1168
	.byte 2,35,0,6
	.asciz "parameters"

LDIFF_SYM1169=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1169
	.byte 2,35,104,6
	.asciz "block"

LDIFF_SYM1170=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1170
	.byte 2,35,112,6
	.asciz "spec"

LDIFF_SYM1171=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1171
	.byte 2,35,120,0,7
	.asciz "Mono_CSharp_MethodCore"

LDIFF_SYM1172=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1172
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM1173=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1173
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM1174=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1174
LTDIE_166:

	.byte 5
	.asciz "System_Reflection_Emit_ConstructorBuilder"

	.byte 16,16
LDIFF_SYM1175=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1175
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_ConstructorBuilder"

LDIFF_SYM1176=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1176
LTDIE_166_POINTER:

	.byte 13
LDIFF_SYM1177=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1177
LTDIE_166_REFERENCE:

	.byte 14
LDIFF_SYM1178=LTDIE_166 - Ldebug_info_start
	.long LDIFF_SYM1178
LTDIE_167:

	.byte 5
	.asciz "Mono_CSharp_ConstructorInitializer"

	.byte 48,16
LDIFF_SYM1179=LTDIE_121 - Ldebug_info_start
	.long LDIFF_SYM1179
	.byte 2,35,0,6
	.asciz "argument_list"

LDIFF_SYM1180=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1180
	.byte 2,35,32,6
	.asciz "base_ctor"

LDIFF_SYM1181=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1181
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_ConstructorInitializer"

LDIFF_SYM1182=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1182
LTDIE_167_POINTER:

	.byte 13
LDIFF_SYM1183=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1183
LTDIE_167_REFERENCE:

	.byte 14
LDIFF_SYM1184=LTDIE_167 - Ldebug_info_start
	.long LDIFF_SYM1184
LTDIE_86:

	.byte 5
	.asciz "Mono_CSharp_Constructor"

	.byte 152,1,16
LDIFF_SYM1185=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM1185
	.byte 2,35,0,6
	.asciz "ConstructorBuilder"

LDIFF_SYM1186=LTDIE_166_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1186
	.byte 3,35,128,1,6
	.asciz "Initializer"

LDIFF_SYM1187=LTDIE_167_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1187
	.byte 3,35,136,1,6
	.asciz "<IsPrimaryConstructor>k__BackingField"

LDIFF_SYM1188=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1188
	.byte 3,35,144,1,0,7
	.asciz "Mono_CSharp_Constructor"

LDIFF_SYM1189=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1189
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM1190=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1190
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM1191=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM1191
LTDIE_85:

	.byte 5
	.asciz "Mono_CSharp_ClassOrStruct"

	.byte 168,2,16
LDIFF_SYM1192=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM1192
	.byte 2,35,0,6
	.asciz "generated_primary_constructor"

LDIFF_SYM1193=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1193
	.byte 3,35,152,2,6
	.asciz "<PrimaryConstructorBlock>k__BackingField"

LDIFF_SYM1194=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1194
	.byte 3,35,160,2,0,7
	.asciz "Mono_CSharp_ClassOrStruct"

LDIFF_SYM1195=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1195
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM1196=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1196
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM1197=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1197
LTDIE_84:

	.byte 5
	.asciz "Mono_CSharp_CompilerGeneratedContainer"

	.byte 168,2,16
LDIFF_SYM1198=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM1198
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_CompilerGeneratedContainer"

LDIFF_SYM1199=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1199
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM1200=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1200
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM1201=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1201
LTDIE_83:

	.byte 5
	.asciz "_PatternMatchingHelper"

	.byte 176,2,16
LDIFF_SYM1202=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM1202
	.byte 2,35,0,6
	.asciz "<NumberMatcher>k__BackingField"

LDIFF_SYM1203=LTDIE_114_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1203
	.byte 3,35,168,2,0,7
	.asciz "_PatternMatchingHelper"

LDIFF_SYM1204=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1204
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM1205=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1205
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM1206=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM1206
LTDIE_169:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1207=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1207
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1208=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1208
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1209=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1209
LTDIE_169_POINTER:

	.byte 13
LDIFF_SYM1210=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1210
LTDIE_169_REFERENCE:

	.byte 14
LDIFF_SYM1211=LTDIE_169 - Ldebug_info_start
	.long LDIFF_SYM1211
LTDIE_170:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1212=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1212
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1213=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1213
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1214=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1214
LTDIE_170_POINTER:

	.byte 13
LDIFF_SYM1215=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1215
LTDIE_170_REFERENCE:

	.byte 14
LDIFF_SYM1216=LTDIE_170 - Ldebug_info_start
	.long LDIFF_SYM1216
LTDIE_168:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1217=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1217
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1218=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1218
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1219=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1219
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1220=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1220
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1221=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1221
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1222=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1222
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1223=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1223
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1224=LTDIE_141_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1224
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1225=LTDIE_169_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1225
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1226=LTDIE_170_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1226
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1227=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1227
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1228=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1228
LTDIE_168_POINTER:

	.byte 13
LDIFF_SYM1229=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1229
LTDIE_168_REFERENCE:

	.byte 14
LDIFF_SYM1230=LTDIE_168 - Ldebug_info_start
	.long LDIFF_SYM1230
LTDIE_172:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM1231=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1231
LTDIE_172_POINTER:

	.byte 13
LDIFF_SYM1232=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1232
LTDIE_172_REFERENCE:

	.byte 14
LDIFF_SYM1233=LTDIE_172 - Ldebug_info_start
	.long LDIFF_SYM1233
LTDIE_173:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1234=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1234
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1235=LTDIE_171_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1235
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1236=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1236
LTDIE_173_POINTER:

	.byte 13
LDIFF_SYM1237=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1237
LTDIE_173_REFERENCE:

	.byte 14
LDIFF_SYM1238=LTDIE_173 - Ldebug_info_start
	.long LDIFF_SYM1238
LTDIE_174:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1239=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1239
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1240=LTDIE_171_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1240
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1241=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1241
LTDIE_174_POINTER:

	.byte 13
LDIFF_SYM1242=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1242
LTDIE_174_REFERENCE:

	.byte 14
LDIFF_SYM1243=LTDIE_174 - Ldebug_info_start
	.long LDIFF_SYM1243
LTDIE_171:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1244=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1244
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1245=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1245
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1246=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1246
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1247=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1247
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1248=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1248
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1249=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1249
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1250=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1250
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1251=LTDIE_172_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1251
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1252=LTDIE_173_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1252
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1253=LTDIE_174_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1253
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1254=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1254
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1255=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1255
LTDIE_171_POINTER:

	.byte 13
LDIFF_SYM1256=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1256
LTDIE_171_REFERENCE:

	.byte 14
LDIFF_SYM1257=LTDIE_171 - Ldebug_info_start
	.long LDIFF_SYM1257
LTDIE_176:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1258=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1258
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1259=LTDIE_175_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1259
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1260=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1260
LTDIE_176_POINTER:

	.byte 13
LDIFF_SYM1261=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1261
LTDIE_176_REFERENCE:

	.byte 14
LDIFF_SYM1262=LTDIE_176 - Ldebug_info_start
	.long LDIFF_SYM1262
LTDIE_177:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1263=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1263
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1264=LTDIE_175_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1264
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1265=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1265
LTDIE_177_POINTER:

	.byte 13
LDIFF_SYM1266=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1266
LTDIE_177_REFERENCE:

	.byte 14
LDIFF_SYM1267=LTDIE_177 - Ldebug_info_start
	.long LDIFF_SYM1267
LTDIE_175:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1268=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1268
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1269=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1269
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1270=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1270
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1271=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1271
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1272=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1272
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1273=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1273
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1274=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1274
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1275=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1275
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1276=LTDIE_176_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1276
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1277=LTDIE_177_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1277
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1278=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1278
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1279=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1279
LTDIE_175_POINTER:

	.byte 13
LDIFF_SYM1280=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1280
LTDIE_175_REFERENCE:

	.byte 14
LDIFF_SYM1281=LTDIE_175 - Ldebug_info_start
	.long LDIFF_SYM1281
LTDIE_179:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1282=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1282
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1283=LTDIE_178_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1283
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1284=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1284
LTDIE_179_POINTER:

	.byte 13
LDIFF_SYM1285=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1285
LTDIE_179_REFERENCE:

	.byte 14
LDIFF_SYM1286=LTDIE_179 - Ldebug_info_start
	.long LDIFF_SYM1286
LTDIE_180:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1287=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1287
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1288=LTDIE_178_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1288
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1289=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1289
LTDIE_180_POINTER:

	.byte 13
LDIFF_SYM1290=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1290
LTDIE_180_REFERENCE:

	.byte 14
LDIFF_SYM1291=LTDIE_180 - Ldebug_info_start
	.long LDIFF_SYM1291
LTDIE_178:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1292=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1292
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1293=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1293
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1294=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1294
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1295=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1295
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1296=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1296
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1297=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1297
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1298
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1299=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1299
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1300=LTDIE_179_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1300
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1301=LTDIE_180_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1301
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1302=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1302
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1303=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1303
LTDIE_178_POINTER:

	.byte 13
LDIFF_SYM1304=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1304
LTDIE_178_REFERENCE:

	.byte 14
LDIFF_SYM1305=LTDIE_178 - Ldebug_info_start
	.long LDIFF_SYM1305
LTDIE_182:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1306=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1306
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1307=LTDIE_181_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1307
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1308=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1308
LTDIE_182_POINTER:

	.byte 13
LDIFF_SYM1309=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1309
LTDIE_182_REFERENCE:

	.byte 14
LDIFF_SYM1310=LTDIE_182 - Ldebug_info_start
	.long LDIFF_SYM1310
LTDIE_183:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1311=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1311
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1312=LTDIE_181_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1312
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1313=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1313
LTDIE_183_POINTER:

	.byte 13
LDIFF_SYM1314=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1314
LTDIE_183_REFERENCE:

	.byte 14
LDIFF_SYM1315=LTDIE_183 - Ldebug_info_start
	.long LDIFF_SYM1315
LTDIE_181:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1316=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1316
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1317=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1317
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1318=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1318
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1319=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1319
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1320=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1320
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1321=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1321
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1322=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1322
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1323=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1323
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1324=LTDIE_182_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1324
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1325=LTDIE_183_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1325
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1326=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1326
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1327=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1327
LTDIE_181_POINTER:

	.byte 13
LDIFF_SYM1328=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1328
LTDIE_181_REFERENCE:

	.byte 14
LDIFF_SYM1329=LTDIE_181 - Ldebug_info_start
	.long LDIFF_SYM1329
LTDIE_185:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1330=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1330
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1331=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1331
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1332=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1332
LTDIE_185_POINTER:

	.byte 13
LDIFF_SYM1333=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1333
LTDIE_185_REFERENCE:

	.byte 14
LDIFF_SYM1334=LTDIE_185 - Ldebug_info_start
	.long LDIFF_SYM1334
LTDIE_186:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1335=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1335
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1336=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1336
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1337=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1337
LTDIE_186_POINTER:

	.byte 13
LDIFF_SYM1338=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1338
LTDIE_186_REFERENCE:

	.byte 14
LDIFF_SYM1339=LTDIE_186 - Ldebug_info_start
	.long LDIFF_SYM1339
LTDIE_184:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1340=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1340
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1341=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1341
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1342=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1342
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1343=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1343
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1344=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1344
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1345=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1345
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1346=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1346
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1347=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1347
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1348=LTDIE_185_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1348
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1349=LTDIE_186_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1349
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1350=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1350
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1351=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1351
LTDIE_184_POINTER:

	.byte 13
LDIFF_SYM1352=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1352
LTDIE_184_REFERENCE:

	.byte 14
LDIFF_SYM1353=LTDIE_184 - Ldebug_info_start
	.long LDIFF_SYM1353
LTDIE_188:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1354=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1354
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1355=LTDIE_187_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1355
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1356=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1356
LTDIE_188_POINTER:

	.byte 13
LDIFF_SYM1357=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1357
LTDIE_188_REFERENCE:

	.byte 14
LDIFF_SYM1358=LTDIE_188 - Ldebug_info_start
	.long LDIFF_SYM1358
LTDIE_189:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1359=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1359
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1360=LTDIE_187_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1360
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1361=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1361
LTDIE_189_POINTER:

	.byte 13
LDIFF_SYM1362=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1362
LTDIE_189_REFERENCE:

	.byte 14
LDIFF_SYM1363=LTDIE_189 - Ldebug_info_start
	.long LDIFF_SYM1363
LTDIE_187:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1364=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1364
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1365=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1365
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1366=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1366
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1367=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1367
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1368=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1368
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1369=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1369
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1370=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1370
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1371=LTDIE_103_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1371
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1372=LTDIE_188_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1372
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1373=LTDIE_189_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1373
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1374=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1374
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1375=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1375
LTDIE_187_POINTER:

	.byte 13
LDIFF_SYM1376=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1376
LTDIE_187_REFERENCE:

	.byte 14
LDIFF_SYM1377=LTDIE_187 - Ldebug_info_start
	.long LDIFF_SYM1377
LTDIE_193:

	.byte 5
	.asciz "_ResolveEventHolder"

	.byte 16,16
LDIFF_SYM1378=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1378
	.byte 2,35,0,0,7
	.asciz "_ResolveEventHolder"

LDIFF_SYM1379=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1379
LTDIE_193_POINTER:

	.byte 13
LDIFF_SYM1380=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1380
LTDIE_193_REFERENCE:

	.byte 14
LDIFF_SYM1381=LTDIE_193 - Ldebug_info_start
	.long LDIFF_SYM1381
LTDIE_192:

	.byte 5
	.asciz "System_Reflection_Assembly"

	.byte 96,16
LDIFF_SYM1382=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1382
	.byte 2,35,0,6
	.asciz "_mono_assembly"

LDIFF_SYM1383=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1383
	.byte 2,35,16,6
	.asciz "resolve_event_holder"

LDIFF_SYM1384=LTDIE_193_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1384
	.byte 2,35,24,6
	.asciz "_evidence"

LDIFF_SYM1385=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1385
	.byte 2,35,32,6
	.asciz "_minimum"

LDIFF_SYM1386=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1386
	.byte 2,35,40,6
	.asciz "_optional"

LDIFF_SYM1387=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1387
	.byte 2,35,48,6
	.asciz "_refuse"

LDIFF_SYM1388=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1388
	.byte 2,35,56,6
	.asciz "_granted"

LDIFF_SYM1389=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1389
	.byte 2,35,64,6
	.asciz "_denied"

LDIFF_SYM1390=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1390
	.byte 2,35,72,6
	.asciz "fromByteArray"

LDIFF_SYM1391=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1391
	.byte 2,35,80,6
	.asciz "assemblyName"

LDIFF_SYM1392=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1392
	.byte 2,35,88,0,7
	.asciz "System_Reflection_Assembly"

LDIFF_SYM1393=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1393
LTDIE_192_POINTER:

	.byte 13
LDIFF_SYM1394=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1394
LTDIE_192_REFERENCE:

	.byte 14
LDIFF_SYM1395=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1395
LTDIE_191:

	.byte 5
	.asciz "System_Reflection_Emit_AssemblyBuilder"

	.byte 96,16
LDIFF_SYM1396=LTDIE_192 - Ldebug_info_start
	.long LDIFF_SYM1396
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_AssemblyBuilder"

LDIFF_SYM1397=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1397
LTDIE_191_POINTER:

	.byte 13
LDIFF_SYM1398=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1398
LTDIE_191_REFERENCE:

	.byte 14
LDIFF_SYM1399=LTDIE_191 - Ldebug_info_start
	.long LDIFF_SYM1399
LTDIE_196:

	.byte 5
	.asciz "System_Security_Cryptography_AsymmetricAlgorithm"

	.byte 32,16
LDIFF_SYM1400=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1400
	.byte 2,35,0,6
	.asciz "KeySizeValue"

LDIFF_SYM1401=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1401
	.byte 2,35,24,6
	.asciz "LegalKeySizesValue"

LDIFF_SYM1402=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1402
	.byte 2,35,16,0,7
	.asciz "System_Security_Cryptography_AsymmetricAlgorithm"

LDIFF_SYM1403=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1403
LTDIE_196_POINTER:

	.byte 13
LDIFF_SYM1404=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1404
LTDIE_196_REFERENCE:

	.byte 14
LDIFF_SYM1405=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1405
LTDIE_195:

	.byte 5
	.asciz "System_Security_Cryptography_RSA"

	.byte 32,16
LDIFF_SYM1406=LTDIE_196 - Ldebug_info_start
	.long LDIFF_SYM1406
	.byte 2,35,0,0,7
	.asciz "System_Security_Cryptography_RSA"

LDIFF_SYM1407=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1407
LTDIE_195_POINTER:

	.byte 13
LDIFF_SYM1408=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1408
LTDIE_195_REFERENCE:

	.byte 14
LDIFF_SYM1409=LTDIE_195 - Ldebug_info_start
	.long LDIFF_SYM1409
LTDIE_194:

	.byte 5
	.asciz "System_Reflection_StrongNameKeyPair"

	.byte 48,16
LDIFF_SYM1410=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1410
	.byte 2,35,0,6
	.asciz "_publicKey"

LDIFF_SYM1411=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1411
	.byte 2,35,16,6
	.asciz "_keyPairContainer"

LDIFF_SYM1412=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1412
	.byte 2,35,24,6
	.asciz "_keyPairArray"

LDIFF_SYM1413=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1413
	.byte 2,35,32,6
	.asciz "_rsa"

LDIFF_SYM1414=LTDIE_195_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1414
	.byte 2,35,40,0,7
	.asciz "System_Reflection_StrongNameKeyPair"

LDIFF_SYM1415=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1415
LTDIE_194_POINTER:

	.byte 13
LDIFF_SYM1416=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1416
LTDIE_194_REFERENCE:

	.byte 14
LDIFF_SYM1417=LTDIE_194 - Ldebug_info_start
	.long LDIFF_SYM1417
LTDIE_199:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1418=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1418
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1419=LTDIE_198_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1419
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1420=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1420
LTDIE_199_POINTER:

	.byte 13
LDIFF_SYM1421=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1421
LTDIE_199_REFERENCE:

	.byte 14
LDIFF_SYM1422=LTDIE_199 - Ldebug_info_start
	.long LDIFF_SYM1422
LTDIE_200:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1423=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1423
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1424=LTDIE_198_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1424
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1425=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1425
LTDIE_200_POINTER:

	.byte 13
LDIFF_SYM1426=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1426
LTDIE_200_REFERENCE:

	.byte 14
LDIFF_SYM1427=LTDIE_200 - Ldebug_info_start
	.long LDIFF_SYM1427
LTDIE_198:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1428=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1428
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1429=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1429
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1430=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1430
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1431=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1431
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1432=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1432
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1433=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1433
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1434
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1435=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1435
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1436=LTDIE_199_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1436
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1437=LTDIE_200_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1437
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1438=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1438
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1439=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1439
LTDIE_198_POINTER:

	.byte 13
LDIFF_SYM1440=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1440
LTDIE_198_REFERENCE:

	.byte 14
LDIFF_SYM1441=LTDIE_198 - Ldebug_info_start
	.long LDIFF_SYM1441
LTDIE_202:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM1442=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1442
LTDIE_202_POINTER:

	.byte 13
LDIFF_SYM1443=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1443
LTDIE_202_REFERENCE:

	.byte 14
LDIFF_SYM1444=LTDIE_202 - Ldebug_info_start
	.long LDIFF_SYM1444
LTDIE_203:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1445=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1445
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1446=LTDIE_201_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1446
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1447=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1447
LTDIE_203_POINTER:

	.byte 13
LDIFF_SYM1448=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1448
LTDIE_203_REFERENCE:

	.byte 14
LDIFF_SYM1449=LTDIE_203 - Ldebug_info_start
	.long LDIFF_SYM1449
LTDIE_204:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1450=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1450
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1451=LTDIE_201_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1451
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1452=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1452
LTDIE_204_POINTER:

	.byte 13
LDIFF_SYM1453=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1453
LTDIE_204_REFERENCE:

	.byte 14
LDIFF_SYM1454=LTDIE_204 - Ldebug_info_start
	.long LDIFF_SYM1454
LTDIE_201:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1455=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1455
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1456=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1456
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1457=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1457
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1458=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1458
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1459=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1459
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1460=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1460
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1461=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1461
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1462=LTDIE_202_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1462
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1463=LTDIE_203_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1463
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1464=LTDIE_204_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1464
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1465=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1465
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1466=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1466
LTDIE_201_POINTER:

	.byte 13
LDIFF_SYM1467=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1467
LTDIE_201_REFERENCE:

	.byte 14
LDIFF_SYM1468=LTDIE_201 - Ldebug_info_start
	.long LDIFF_SYM1468
LTDIE_197:

	.byte 5
	.asciz "Mono_CSharp_MetadataImporter"

	.byte 56,16
LDIFF_SYM1469=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1469
	.byte 2,35,0,6
	.asciz "import_cache"

LDIFF_SYM1470=LTDIE_198_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1470
	.byte 2,35,16,6
	.asciz "compiled_types"

LDIFF_SYM1471=LTDIE_198_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1471
	.byte 2,35,24,6
	.asciz "assembly_2_definition"

LDIFF_SYM1472=LTDIE_201_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1472
	.byte 2,35,32,6
	.asciz "module"

LDIFF_SYM1473=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1473
	.byte 2,35,40,6
	.asciz "<IgnorePrivateMembers>k__BackingField"

LDIFF_SYM1474=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1474
	.byte 2,35,48,0,7
	.asciz "Mono_CSharp_MetadataImporter"

LDIFF_SYM1475=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1475
LTDIE_197_POINTER:

	.byte 13
LDIFF_SYM1476=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1476
LTDIE_197_REFERENCE:

	.byte 14
LDIFF_SYM1477=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1477
LTDIE_190:

	.byte 5
	.asciz "Mono_CSharp_AssemblyDefinition"

	.byte 96,16
LDIFF_SYM1478=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1478
	.byte 2,35,0,6
	.asciz "Builder"

LDIFF_SYM1479=LTDIE_191_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1479
	.byte 2,35,16,6
	.asciz "wrap_non_exception_throws"

LDIFF_SYM1480=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1480
	.byte 2,35,88,6
	.asciz "module"

LDIFF_SYM1481=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1481
	.byte 2,35,24,6
	.asciz "name"

LDIFF_SYM1482=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1482
	.byte 2,35,32,6
	.asciz "file_name"

LDIFF_SYM1483=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1483
	.byte 2,35,40,6
	.asciz "public_key"

LDIFF_SYM1484=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1484
	.byte 2,35,48,6
	.asciz "public_key_token"

LDIFF_SYM1485=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1485
	.byte 2,35,56,6
	.asciz "delay_sign"

LDIFF_SYM1486=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1486
	.byte 2,35,89,6
	.asciz "private_key"

LDIFF_SYM1487=LTDIE_194_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1487
	.byte 2,35,64,6
	.asciz "entry_point"

LDIFF_SYM1488=LTDIE_114_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1488
	.byte 2,35,72,6
	.asciz "<Importer>k__BackingField"

LDIFF_SYM1489=LTDIE_197_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1489
	.byte 2,35,80,0,7
	.asciz "Mono_CSharp_AssemblyDefinition"

LDIFF_SYM1490=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1490
LTDIE_190_POINTER:

	.byte 13
LDIFF_SYM1491=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1491
LTDIE_190_REFERENCE:

	.byte 14
LDIFF_SYM1492=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM1492
LTDIE_208:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1493=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1493
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1494=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1494
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1495=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1495
LTDIE_208_POINTER:

	.byte 13
LDIFF_SYM1496=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1496
LTDIE_208_REFERENCE:

	.byte 14
LDIFF_SYM1497=LTDIE_208 - Ldebug_info_start
	.long LDIFF_SYM1497
LTDIE_209:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1498=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1498
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1499=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1499
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1500=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1500
LTDIE_209_POINTER:

	.byte 13
LDIFF_SYM1501=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1501
LTDIE_209_REFERENCE:

	.byte 14
LDIFF_SYM1502=LTDIE_209 - Ldebug_info_start
	.long LDIFF_SYM1502
LTDIE_207:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1503=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1503
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1504=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1504
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1505=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1505
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1506=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1506
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1507=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1507
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1508=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1508
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1509=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1509
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1510=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1510
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1511=LTDIE_208_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1511
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1512=LTDIE_209_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1512
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1513=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1513
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1514=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1514
LTDIE_207_POINTER:

	.byte 13
LDIFF_SYM1515=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1515
LTDIE_207_REFERENCE:

	.byte 14
LDIFF_SYM1516=LTDIE_207 - Ldebug_info_start
	.long LDIFF_SYM1516
LTDIE_211:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1517=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1517
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1518=LTDIE_210_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1518
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1519=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1519
LTDIE_211_POINTER:

	.byte 13
LDIFF_SYM1520=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1520
LTDIE_211_REFERENCE:

	.byte 14
LDIFF_SYM1521=LTDIE_211 - Ldebug_info_start
	.long LDIFF_SYM1521
LTDIE_212:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1522=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1522
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1523=LTDIE_210_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1523
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1524=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1524
LTDIE_212_POINTER:

	.byte 13
LDIFF_SYM1525=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1525
LTDIE_212_REFERENCE:

	.byte 14
LDIFF_SYM1526=LTDIE_212 - Ldebug_info_start
	.long LDIFF_SYM1526
LTDIE_210:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1527=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1527
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1528=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1528
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1529=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1529
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1530=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1530
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1531=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1531
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1532=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1532
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1533=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1533
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1534=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1534
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1535=LTDIE_211_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1535
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1536=LTDIE_212_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1536
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1537=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1537
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1538=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1538
LTDIE_210_POINTER:

	.byte 13
LDIFF_SYM1539=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1539
LTDIE_210_REFERENCE:

	.byte 14
LDIFF_SYM1540=LTDIE_210 - Ldebug_info_start
	.long LDIFF_SYM1540
LTDIE_213:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM1541=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1541
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM1542=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1542
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM1543=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1543
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM1544=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1544
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM1545=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1545
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM1546=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1546
LTDIE_213_POINTER:

	.byte 13
LDIFF_SYM1547=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1547
LTDIE_213_REFERENCE:

	.byte 14
LDIFF_SYM1548=LTDIE_213 - Ldebug_info_start
	.long LDIFF_SYM1548
LTDIE_215:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1549=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1549
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1550=LTDIE_214_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1550
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1551=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1551
LTDIE_215_POINTER:

	.byte 13
LDIFF_SYM1552=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1552
LTDIE_215_REFERENCE:

	.byte 14
LDIFF_SYM1553=LTDIE_215 - Ldebug_info_start
	.long LDIFF_SYM1553
LTDIE_216:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1554=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1554
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1555=LTDIE_214_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1555
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1556=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1556
LTDIE_216_POINTER:

	.byte 13
LDIFF_SYM1557=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1557
LTDIE_216_REFERENCE:

	.byte 14
LDIFF_SYM1558=LTDIE_216 - Ldebug_info_start
	.long LDIFF_SYM1558
LTDIE_214:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1559=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1559
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1560=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1560
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1561=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1561
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1562=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1562
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1563=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1563
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1564=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1564
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1565=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1565
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1566=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1566
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1567=LTDIE_215_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1567
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1568=LTDIE_216_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1568
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1569=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1569
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1570=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1570
LTDIE_214_POINTER:

	.byte 13
LDIFF_SYM1571=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1571
LTDIE_214_REFERENCE:

	.byte 14
LDIFF_SYM1572=LTDIE_214 - Ldebug_info_start
	.long LDIFF_SYM1572
LTDIE_206:

	.byte 5
	.asciz "Mono_CSharp_Namespace"

	.byte 64,16
LDIFF_SYM1573=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1573
	.byte 2,35,0,6
	.asciz "parent"

LDIFF_SYM1574=LTDIE_206_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1574
	.byte 2,35,16,6
	.asciz "fullname"

LDIFF_SYM1575=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1575
	.byte 2,35,24,6
	.asciz "namespaces"

LDIFF_SYM1576=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1576
	.byte 2,35,32,6
	.asciz "types"

LDIFF_SYM1577=LTDIE_210_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1577
	.byte 2,35,40,6
	.asciz "extension_method_types"

LDIFF_SYM1578=LTDIE_213_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1578
	.byte 2,35,48,6
	.asciz "cached_types"

LDIFF_SYM1579=LTDIE_214_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1579
	.byte 2,35,56,0,7
	.asciz "Mono_CSharp_Namespace"

LDIFF_SYM1580=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1580
LTDIE_206_POINTER:

	.byte 13
LDIFF_SYM1581=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1581
LTDIE_206_REFERENCE:

	.byte 14
LDIFF_SYM1582=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1582
LTDIE_205:

	.byte 5
	.asciz "Mono_CSharp_RootNamespace"

	.byte 80,16
LDIFF_SYM1583=LTDIE_206 - Ldebug_info_start
	.long LDIFF_SYM1583
	.byte 2,35,0,6
	.asciz "alias_name"

LDIFF_SYM1584=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1584
	.byte 2,35,64,6
	.asciz "all_namespaces"

LDIFF_SYM1585=LTDIE_207_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1585
	.byte 2,35,72,0,7
	.asciz "Mono_CSharp_RootNamespace"

LDIFF_SYM1586=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1586
LTDIE_205_POINTER:

	.byte 13
LDIFF_SYM1587=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1587
LTDIE_205_REFERENCE:

	.byte 14
LDIFF_SYM1588=LTDIE_205 - Ldebug_info_start
	.long LDIFF_SYM1588
LTDIE_218:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1589=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1589
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1590=LTDIE_217_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1590
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1591=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1591
LTDIE_218_POINTER:

	.byte 13
LDIFF_SYM1592=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1592
LTDIE_218_REFERENCE:

	.byte 14
LDIFF_SYM1593=LTDIE_218 - Ldebug_info_start
	.long LDIFF_SYM1593
LTDIE_219:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1594=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1594
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1595=LTDIE_217_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1595
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1596=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM1596
LTDIE_219_POINTER:

	.byte 13
LDIFF_SYM1597=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM1597
LTDIE_219_REFERENCE:

	.byte 14
LDIFF_SYM1598=LTDIE_219 - Ldebug_info_start
	.long LDIFF_SYM1598
LTDIE_217:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1599=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1599
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1600=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1600
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1601=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1601
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1602=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1602
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1603=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1603
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1604=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1604
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1605=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1605
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1606=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1606
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1607=LTDIE_218_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1607
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1608=LTDIE_219_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1608
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1609=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1609
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1610=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1610
LTDIE_217_POINTER:

	.byte 13
LDIFF_SYM1611=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1611
LTDIE_217_REFERENCE:

	.byte 14
LDIFF_SYM1612=LTDIE_217 - Ldebug_info_start
	.long LDIFF_SYM1612
LTDIE_221:

	.byte 5
	.asciz "System_Reflection_Module"

	.byte 64,16
LDIFF_SYM1613=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1613
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM1614=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1614
	.byte 2,35,16,6
	.asciz "assembly"

LDIFF_SYM1615=LTDIE_192_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1615
	.byte 2,35,24,6
	.asciz "fqname"

LDIFF_SYM1616=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1616
	.byte 2,35,32,6
	.asciz "name"

LDIFF_SYM1617=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1617
	.byte 2,35,40,6
	.asciz "scopename"

LDIFF_SYM1618=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1618
	.byte 2,35,48,6
	.asciz "is_resource"

LDIFF_SYM1619=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1619
	.byte 2,35,56,6
	.asciz "token"

LDIFF_SYM1620=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1620
	.byte 2,35,60,0,7
	.asciz "System_Reflection_Module"

LDIFF_SYM1621=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM1621
LTDIE_221_POINTER:

	.byte 13
LDIFF_SYM1622=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM1622
LTDIE_221_REFERENCE:

	.byte 14
LDIFF_SYM1623=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM1623
LTDIE_220:

	.byte 5
	.asciz "System_Reflection_Emit_ModuleBuilder"

	.byte 64,16
LDIFF_SYM1624=LTDIE_221 - Ldebug_info_start
	.long LDIFF_SYM1624
	.byte 2,35,0,0,7
	.asciz "System_Reflection_Emit_ModuleBuilder"

LDIFF_SYM1625=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM1625
LTDIE_220_POINTER:

	.byte 13
LDIFF_SYM1626=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM1626
LTDIE_220_REFERENCE:

	.byte 14
LDIFF_SYM1627=LTDIE_220 - Ldebug_info_start
	.long LDIFF_SYM1627
LTDIE_224:

	.byte 5
	.asciz "Mono_CSharp_PredefinedType"

	.byte 64,16
LDIFF_SYM1628=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1628
	.byte 2,35,0,6
	.asciz "name"

LDIFF_SYM1629=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1629
	.byte 2,35,16,6
	.asciz "ns"

LDIFF_SYM1630=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1630
	.byte 2,35,24,6
	.asciz "arity"

LDIFF_SYM1631=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1631
	.byte 2,35,48,6
	.asciz "kind"

LDIFF_SYM1632=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM1632
	.byte 2,35,52,6
	.asciz "module"

LDIFF_SYM1633=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1633
	.byte 2,35,32,6
	.asciz "type"

LDIFF_SYM1634=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1634
	.byte 2,35,40,6
	.asciz "defined"

LDIFF_SYM1635=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1635
	.byte 2,35,56,0,7
	.asciz "Mono_CSharp_PredefinedType"

LDIFF_SYM1636=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM1636
LTDIE_224_POINTER:

	.byte 13
LDIFF_SYM1637=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM1637
LTDIE_224_REFERENCE:

	.byte 14
LDIFF_SYM1638=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM1638
LTDIE_223:

	.byte 5
	.asciz "Mono_CSharp_PredefinedAttribute"

	.byte 64,16
LDIFF_SYM1639=LTDIE_224 - Ldebug_info_start
	.long LDIFF_SYM1639
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedAttribute"

LDIFF_SYM1640=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1640
LTDIE_223_POINTER:

	.byte 13
LDIFF_SYM1641=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1641
LTDIE_223_REFERENCE:

	.byte 14
LDIFF_SYM1642=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1642
LTDIE_225:

	.byte 5
	.asciz "Mono_CSharp_PredefinedDebuggerBrowsableAttribute"

	.byte 64,16
LDIFF_SYM1643=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1643
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedDebuggerBrowsableAttribute"

LDIFF_SYM1644=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM1644
LTDIE_225_POINTER:

	.byte 13
LDIFF_SYM1645=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM1645
LTDIE_225_REFERENCE:

	.byte 14
LDIFF_SYM1646=LTDIE_225 - Ldebug_info_start
	.long LDIFF_SYM1646
LTDIE_226:

	.byte 5
	.asciz "Mono_CSharp_PredefinedDebuggableAttribute"

	.byte 64,16
LDIFF_SYM1647=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1647
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedDebuggableAttribute"

LDIFF_SYM1648=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM1648
LTDIE_226_POINTER:

	.byte 13
LDIFF_SYM1649=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM1649
LTDIE_226_REFERENCE:

	.byte 14
LDIFF_SYM1650=LTDIE_226 - Ldebug_info_start
	.long LDIFF_SYM1650
LTDIE_227:

	.byte 5
	.asciz "Mono_CSharp_PredefinedDynamicAttribute"

	.byte 64,16
LDIFF_SYM1651=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1651
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedDynamicAttribute"

LDIFF_SYM1652=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM1652
LTDIE_227_POINTER:

	.byte 13
LDIFF_SYM1653=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM1653
LTDIE_227_REFERENCE:

	.byte 14
LDIFF_SYM1654=LTDIE_227 - Ldebug_info_start
	.long LDIFF_SYM1654
LTDIE_228:

	.byte 5
	.asciz "Mono_CSharp_PredefinedStateMachineAttribute"

	.byte 64,16
LDIFF_SYM1655=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1655
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedStateMachineAttribute"

LDIFF_SYM1656=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM1656
LTDIE_228_POINTER:

	.byte 13
LDIFF_SYM1657=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM1657
LTDIE_228_REFERENCE:

	.byte 14
LDIFF_SYM1658=LTDIE_228 - Ldebug_info_start
	.long LDIFF_SYM1658
LTDIE_229:

	.byte 5
	.asciz "Mono_CSharp_PredefinedDecimalAttribute"

	.byte 64,16
LDIFF_SYM1659=LTDIE_223 - Ldebug_info_start
	.long LDIFF_SYM1659
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_PredefinedDecimalAttribute"

LDIFF_SYM1660=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM1660
LTDIE_229_POINTER:

	.byte 13
LDIFF_SYM1661=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM1661
LTDIE_229_REFERENCE:

	.byte 14
LDIFF_SYM1662=LTDIE_229 - Ldebug_info_start
	.long LDIFF_SYM1662
LTDIE_222:

	.byte 5
	.asciz "Mono_CSharp_PredefinedAttributes"

	.byte 176,3,16
LDIFF_SYM1663=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1663
	.byte 2,35,0,6
	.asciz "ParamArray"

LDIFF_SYM1664=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1664
	.byte 2,35,16,6
	.asciz "Out"

LDIFF_SYM1665=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1665
	.byte 2,35,24,6
	.asciz "Obsolete"

LDIFF_SYM1666=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1666
	.byte 2,35,32,6
	.asciz "DllImport"

LDIFF_SYM1667=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1667
	.byte 2,35,40,6
	.asciz "MethodImpl"

LDIFF_SYM1668=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1668
	.byte 2,35,48,6
	.asciz "MarshalAs"

LDIFF_SYM1669=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1669
	.byte 2,35,56,6
	.asciz "In"

LDIFF_SYM1670=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1670
	.byte 2,35,64,6
	.asciz "IndexerName"

LDIFF_SYM1671=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1671
	.byte 2,35,72,6
	.asciz "Conditional"

LDIFF_SYM1672=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1672
	.byte 2,35,80,6
	.asciz "CLSCompliant"

LDIFF_SYM1673=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1673
	.byte 2,35,88,6
	.asciz "Security"

LDIFF_SYM1674=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1674
	.byte 2,35,96,6
	.asciz "Required"

LDIFF_SYM1675=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1675
	.byte 2,35,104,6
	.asciz "Guid"

LDIFF_SYM1676=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1676
	.byte 2,35,112,6
	.asciz "AssemblyCulture"

LDIFF_SYM1677=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1677
	.byte 2,35,120,6
	.asciz "AssemblyVersion"

LDIFF_SYM1678=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1678
	.byte 3,35,128,1,6
	.asciz "AssemblyAlgorithmId"

LDIFF_SYM1679=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1679
	.byte 3,35,136,1,6
	.asciz "AssemblyFlags"

LDIFF_SYM1680=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1680
	.byte 3,35,144,1,6
	.asciz "AssemblyFileVersion"

LDIFF_SYM1681=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1681
	.byte 3,35,152,1,6
	.asciz "AssemblyInformationalVersion"

LDIFF_SYM1682=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1682
	.byte 3,35,160,1,6
	.asciz "ComImport"

LDIFF_SYM1683=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1683
	.byte 3,35,168,1,6
	.asciz "CoClass"

LDIFF_SYM1684=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1684
	.byte 3,35,176,1,6
	.asciz "AttributeUsage"

LDIFF_SYM1685=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1685
	.byte 3,35,184,1,6
	.asciz "DefaultParameterValue"

LDIFF_SYM1686=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1686
	.byte 3,35,192,1,6
	.asciz "OptionalParameter"

LDIFF_SYM1687=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1687
	.byte 3,35,200,1,6
	.asciz "UnverifiableCode"

LDIFF_SYM1688=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1688
	.byte 3,35,208,1,6
	.asciz "DefaultCharset"

LDIFF_SYM1689=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1689
	.byte 3,35,216,1,6
	.asciz "TypeForwarder"

LDIFF_SYM1690=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1690
	.byte 3,35,224,1,6
	.asciz "FixedBuffer"

LDIFF_SYM1691=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1691
	.byte 3,35,232,1,6
	.asciz "CompilerGenerated"

LDIFF_SYM1692=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1692
	.byte 3,35,240,1,6
	.asciz "InternalsVisibleTo"

LDIFF_SYM1693=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1693
	.byte 3,35,248,1,6
	.asciz "RuntimeCompatibility"

LDIFF_SYM1694=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1694
	.byte 3,35,128,2,6
	.asciz "DebuggerHidden"

LDIFF_SYM1695=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1695
	.byte 3,35,136,2,6
	.asciz "UnsafeValueType"

LDIFF_SYM1696=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1696
	.byte 3,35,144,2,6
	.asciz "UnmanagedFunctionPointer"

LDIFF_SYM1697=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1697
	.byte 3,35,152,2,6
	.asciz "DebuggerBrowsable"

LDIFF_SYM1698=LTDIE_225_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1698
	.byte 3,35,160,2,6
	.asciz "DebuggerStepThrough"

LDIFF_SYM1699=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1699
	.byte 3,35,168,2,6
	.asciz "Debuggable"

LDIFF_SYM1700=LTDIE_226_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1700
	.byte 3,35,176,2,6
	.asciz "HostProtection"

LDIFF_SYM1701=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1701
	.byte 3,35,184,2,6
	.asciz "Extension"

LDIFF_SYM1702=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1702
	.byte 3,35,192,2,6
	.asciz "Dynamic"

LDIFF_SYM1703=LTDIE_227_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1703
	.byte 3,35,200,2,6
	.asciz "AsyncStateMachine"

LDIFF_SYM1704=LTDIE_228_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1704
	.byte 3,35,208,2,6
	.asciz "DefaultMember"

LDIFF_SYM1705=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1705
	.byte 3,35,216,2,6
	.asciz "DecimalConstant"

LDIFF_SYM1706=LTDIE_229_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1706
	.byte 3,35,224,2,6
	.asciz "StructLayout"

LDIFF_SYM1707=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1707
	.byte 3,35,232,2,6
	.asciz "FieldOffset"

LDIFF_SYM1708=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1708
	.byte 3,35,240,2,6
	.asciz "AssemblyProduct"

LDIFF_SYM1709=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1709
	.byte 3,35,248,2,6
	.asciz "AssemblyCompany"

LDIFF_SYM1710=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1710
	.byte 3,35,128,3,6
	.asciz "AssemblyCopyright"

LDIFF_SYM1711=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1711
	.byte 3,35,136,3,6
	.asciz "AssemblyTrademark"

LDIFF_SYM1712=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1712
	.byte 3,35,144,3,6
	.asciz "CallerMemberNameAttribute"

LDIFF_SYM1713=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1713
	.byte 3,35,152,3,6
	.asciz "CallerLineNumberAttribute"

LDIFF_SYM1714=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1714
	.byte 3,35,160,3,6
	.asciz "CallerFilePathAttribute"

LDIFF_SYM1715=LTDIE_223_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1715
	.byte 3,35,168,3,0,7
	.asciz "Mono_CSharp_PredefinedAttributes"

LDIFF_SYM1716=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM1716
LTDIE_222_POINTER:

	.byte 13
LDIFF_SYM1717=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM1717
LTDIE_222_REFERENCE:

	.byte 14
LDIFF_SYM1718=LTDIE_222 - Ldebug_info_start
	.long LDIFF_SYM1718
LTDIE_230:

	.byte 5
	.asciz "Mono_CSharp_PredefinedTypes"

	.byte 168,3,16
LDIFF_SYM1719=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1719
	.byte 2,35,0,6
	.asciz "ArgIterator"

LDIFF_SYM1720=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1720
	.byte 2,35,16,6
	.asciz "TypedReference"

LDIFF_SYM1721=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1721
	.byte 2,35,24,6
	.asciz "MarshalByRefObject"

LDIFF_SYM1722=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1722
	.byte 2,35,32,6
	.asciz "RuntimeHelpers"

LDIFF_SYM1723=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1723
	.byte 2,35,40,6
	.asciz "IAsyncResult"

LDIFF_SYM1724=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1724
	.byte 2,35,48,6
	.asciz "AsyncCallback"

LDIFF_SYM1725=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1725
	.byte 2,35,56,6
	.asciz "RuntimeArgumentHandle"

LDIFF_SYM1726=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1726
	.byte 2,35,64,6
	.asciz "CharSet"

LDIFF_SYM1727=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1727
	.byte 2,35,72,6
	.asciz "IsVolatile"

LDIFF_SYM1728=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1728
	.byte 2,35,80,6
	.asciz "IEnumeratorGeneric"

LDIFF_SYM1729=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1729
	.byte 2,35,88,6
	.asciz "IListGeneric"

LDIFF_SYM1730=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1730
	.byte 2,35,96,6
	.asciz "IReadOnlyListGeneric"

LDIFF_SYM1731=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1731
	.byte 2,35,104,6
	.asciz "ICollectionGeneric"

LDIFF_SYM1732=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1732
	.byte 2,35,112,6
	.asciz "IReadOnlyCollectionGeneric"

LDIFF_SYM1733=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1733
	.byte 2,35,120,6
	.asciz "IEnumerableGeneric"

LDIFF_SYM1734=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1734
	.byte 3,35,128,1,6
	.asciz "Nullable"

LDIFF_SYM1735=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1735
	.byte 3,35,136,1,6
	.asciz "Activator"

LDIFF_SYM1736=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1736
	.byte 3,35,144,1,6
	.asciz "Interlocked"

LDIFF_SYM1737=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1737
	.byte 3,35,152,1,6
	.asciz "Monitor"

LDIFF_SYM1738=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1738
	.byte 3,35,160,1,6
	.asciz "NotSupportedException"

LDIFF_SYM1739=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1739
	.byte 3,35,168,1,6
	.asciz "RuntimeFieldHandle"

LDIFF_SYM1740=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1740
	.byte 3,35,176,1,6
	.asciz "RuntimeMethodHandle"

LDIFF_SYM1741=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1741
	.byte 3,35,184,1,6
	.asciz "SecurityAction"

LDIFF_SYM1742=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1742
	.byte 3,35,192,1,6
	.asciz "Dictionary"

LDIFF_SYM1743=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1743
	.byte 3,35,200,1,6
	.asciz "Hashtable"

LDIFF_SYM1744=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1744
	.byte 3,35,208,1,6
	.asciz "Array"

LDIFF_SYM1745=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1745
	.byte 3,35,216,1,6
	.asciz "SwitchUserTypes"

LDIFF_SYM1746=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1746
	.byte 3,35,224,1,6
	.asciz "Expression"

LDIFF_SYM1747=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1747
	.byte 3,35,232,1,6
	.asciz "ExpressionGeneric"

LDIFF_SYM1748=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1748
	.byte 3,35,240,1,6
	.asciz "ParameterExpression"

LDIFF_SYM1749=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1749
	.byte 3,35,248,1,6
	.asciz "FieldInfo"

LDIFF_SYM1750=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1750
	.byte 3,35,128,2,6
	.asciz "MethodBase"

LDIFF_SYM1751=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1751
	.byte 3,35,136,2,6
	.asciz "MethodInfo"

LDIFF_SYM1752=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1752
	.byte 3,35,144,2,6
	.asciz "ConstructorInfo"

LDIFF_SYM1753=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1753
	.byte 3,35,152,2,6
	.asciz "MemberBinding"

LDIFF_SYM1754=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1754
	.byte 3,35,160,2,6
	.asciz "Binder"

LDIFF_SYM1755=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1755
	.byte 3,35,168,2,6
	.asciz "CallSite"

LDIFF_SYM1756=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1756
	.byte 3,35,176,2,6
	.asciz "CallSiteGeneric"

LDIFF_SYM1757=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1757
	.byte 3,35,184,2,6
	.asciz "BinderFlags"

LDIFF_SYM1758=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1758
	.byte 3,35,192,2,6
	.asciz "AsyncVoidMethodBuilder"

LDIFF_SYM1759=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1759
	.byte 3,35,200,2,6
	.asciz "AsyncTaskMethodBuilder"

LDIFF_SYM1760=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1760
	.byte 3,35,208,2,6
	.asciz "AsyncTaskMethodBuilderGeneric"

LDIFF_SYM1761=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1761
	.byte 3,35,216,2,6
	.asciz "Action"

LDIFF_SYM1762=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1762
	.byte 3,35,224,2,6
	.asciz "Task"

LDIFF_SYM1763=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1763
	.byte 3,35,232,2,6
	.asciz "TaskGeneric"

LDIFF_SYM1764=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1764
	.byte 3,35,240,2,6
	.asciz "IAsyncStateMachine"

LDIFF_SYM1765=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1765
	.byte 3,35,248,2,6
	.asciz "INotifyCompletion"

LDIFF_SYM1766=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1766
	.byte 3,35,128,3,6
	.asciz "ICriticalNotifyCompletion"

LDIFF_SYM1767=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1767
	.byte 3,35,136,3,6
	.asciz "IFormattable"

LDIFF_SYM1768=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1768
	.byte 3,35,144,3,6
	.asciz "FormattableString"

LDIFF_SYM1769=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1769
	.byte 3,35,152,3,6
	.asciz "FormattableStringFactory"

LDIFF_SYM1770=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1770
	.byte 3,35,160,3,0,7
	.asciz "Mono_CSharp_PredefinedTypes"

LDIFF_SYM1771=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM1771
LTDIE_230_POINTER:

	.byte 13
LDIFF_SYM1772=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM1772
LTDIE_230_REFERENCE:

	.byte 14
LDIFF_SYM1773=LTDIE_230 - Ldebug_info_start
	.long LDIFF_SYM1773
LTDIE_236:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM1774=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM1774
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM1775=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM1775
LTDIE_236_POINTER:

	.byte 13
LDIFF_SYM1776=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM1776
LTDIE_236_REFERENCE:

	.byte 14
LDIFF_SYM1777=LTDIE_236 - Ldebug_info_start
	.long LDIFF_SYM1777
LTDIE_237:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM1778=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1778
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM1779=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1779
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM1780=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM1780
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM1781=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1781
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM1782=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM1782
LTDIE_237_POINTER:

	.byte 13
LDIFF_SYM1783=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM1783
LTDIE_237_REFERENCE:

	.byte 14
LDIFF_SYM1784=LTDIE_237 - Ldebug_info_start
	.long LDIFF_SYM1784
LTDIE_235:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM1785=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1785
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM1786=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1786
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM1787=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1787
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM1788=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1788
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM1789=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1789
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM1790=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1790
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM1791=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1791
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM1792=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM1792
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM1793=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1793
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM1794=LTDIE_236_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1794
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM1795=LTDIE_237_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1795
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM1796=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1796
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM1797=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM1797
LTDIE_235_POINTER:

	.byte 13
LDIFF_SYM1798=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM1798
LTDIE_235_REFERENCE:

	.byte 14
LDIFF_SYM1799=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM1799
LTDIE_234:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM1800=LTDIE_235 - Ldebug_info_start
	.long LDIFF_SYM1800
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM1801=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1801
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM1802=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM1802
LTDIE_234_POINTER:

	.byte 13
LDIFF_SYM1803=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM1803
LTDIE_234_REFERENCE:

	.byte 14
LDIFF_SYM1804=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM1804
LTDIE_233:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM1805=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM1805
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM1806=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM1806
LTDIE_233_POINTER:

	.byte 13
LDIFF_SYM1807=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM1807
LTDIE_233_REFERENCE:

	.byte 14
LDIFF_SYM1808=LTDIE_233 - Ldebug_info_start
	.long LDIFF_SYM1808
LTDIE_232:

	.byte 5
	.asciz "Mono_CSharp_PredefinedMember`1"

	.byte 96,16
LDIFF_SYM1809=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1809
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM1810=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1810
	.byte 2,35,16,6
	.asciz "member"

LDIFF_SYM1811=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1811
	.byte 2,35,24,6
	.asciz "declaring_type"

LDIFF_SYM1812=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1812
	.byte 2,35,32,6
	.asciz "declaring_type_predefined"

LDIFF_SYM1813=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1813
	.byte 2,35,40,6
	.asciz "filter"

LDIFF_SYM1814=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1814
	.byte 2,35,48,6
	.asciz "filter_builder"

LDIFF_SYM1815=LTDIE_233_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1815
	.byte 2,35,88,0,7
	.asciz "Mono_CSharp_PredefinedMember`1"

LDIFF_SYM1816=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM1816
LTDIE_232_POINTER:

	.byte 13
LDIFF_SYM1817=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM1817
LTDIE_232_REFERENCE:

	.byte 14
LDIFF_SYM1818=LTDIE_232 - Ldebug_info_start
	.long LDIFF_SYM1818
LTDIE_240:

	.byte 5
	.asciz "System_Reflection_PropertyInfo"

	.byte 16,16
LDIFF_SYM1819=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM1819
	.byte 2,35,0,0,7
	.asciz "System_Reflection_PropertyInfo"

LDIFF_SYM1820=LTDIE_240 - Ldebug_info_start
	.long LDIFF_SYM1820
LTDIE_240_POINTER:

	.byte 13
LDIFF_SYM1821=LTDIE_240 - Ldebug_info_start
	.long LDIFF_SYM1821
LTDIE_240_REFERENCE:

	.byte 14
LDIFF_SYM1822=LTDIE_240 - Ldebug_info_start
	.long LDIFF_SYM1822
LTDIE_239:

	.byte 5
	.asciz "Mono_CSharp_PropertySpec"

	.byte 80,16
LDIFF_SYM1823=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM1823
	.byte 2,35,0,6
	.asciz "info"

LDIFF_SYM1824=LTDIE_240_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1824
	.byte 2,35,48,6
	.asciz "memberType"

LDIFF_SYM1825=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1825
	.byte 2,35,56,6
	.asciz "set"

LDIFF_SYM1826=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1826
	.byte 2,35,64,6
	.asciz "get"

LDIFF_SYM1827=LTDIE_89_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1827
	.byte 2,35,72,0,7
	.asciz "Mono_CSharp_PropertySpec"

LDIFF_SYM1828=LTDIE_239 - Ldebug_info_start
	.long LDIFF_SYM1828
LTDIE_239_POINTER:

	.byte 13
LDIFF_SYM1829=LTDIE_239 - Ldebug_info_start
	.long LDIFF_SYM1829
LTDIE_239_REFERENCE:

	.byte 14
LDIFF_SYM1830=LTDIE_239 - Ldebug_info_start
	.long LDIFF_SYM1830
LTDIE_238:

	.byte 5
	.asciz "Mono_CSharp_PredefinedMember`1"

	.byte 96,16
LDIFF_SYM1831=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1831
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM1832=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1832
	.byte 2,35,16,6
	.asciz "member"

LDIFF_SYM1833=LTDIE_239_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1833
	.byte 2,35,24,6
	.asciz "declaring_type"

LDIFF_SYM1834=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1834
	.byte 2,35,32,6
	.asciz "declaring_type_predefined"

LDIFF_SYM1835=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1835
	.byte 2,35,40,6
	.asciz "filter"

LDIFF_SYM1836=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1836
	.byte 2,35,48,6
	.asciz "filter_builder"

LDIFF_SYM1837=LTDIE_233_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1837
	.byte 2,35,88,0,7
	.asciz "Mono_CSharp_PredefinedMember`1"

LDIFF_SYM1838=LTDIE_238 - Ldebug_info_start
	.long LDIFF_SYM1838
LTDIE_238_POINTER:

	.byte 13
LDIFF_SYM1839=LTDIE_238 - Ldebug_info_start
	.long LDIFF_SYM1839
LTDIE_238_REFERENCE:

	.byte 14
LDIFF_SYM1840=LTDIE_238 - Ldebug_info_start
	.long LDIFF_SYM1840
LTDIE_242:

	.byte 5
	.asciz "Mono_CSharp_ConstSpec"

	.byte 72,16
LDIFF_SYM1841=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM1841
	.byte 2,35,0,6
	.asciz "value"

LDIFF_SYM1842=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1842
	.byte 2,35,64,0,7
	.asciz "Mono_CSharp_ConstSpec"

LDIFF_SYM1843=LTDIE_242 - Ldebug_info_start
	.long LDIFF_SYM1843
LTDIE_242_POINTER:

	.byte 13
LDIFF_SYM1844=LTDIE_242 - Ldebug_info_start
	.long LDIFF_SYM1844
LTDIE_242_REFERENCE:

	.byte 14
LDIFF_SYM1845=LTDIE_242 - Ldebug_info_start
	.long LDIFF_SYM1845
LTDIE_241:

	.byte 5
	.asciz "Mono_CSharp_PredefinedMember`1"

	.byte 96,16
LDIFF_SYM1846=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1846
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM1847=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1847
	.byte 2,35,16,6
	.asciz "member"

LDIFF_SYM1848=LTDIE_242_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1848
	.byte 2,35,24,6
	.asciz "declaring_type"

LDIFF_SYM1849=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1849
	.byte 2,35,32,6
	.asciz "declaring_type_predefined"

LDIFF_SYM1850=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1850
	.byte 2,35,40,6
	.asciz "filter"

LDIFF_SYM1851=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1851
	.byte 2,35,48,6
	.asciz "filter_builder"

LDIFF_SYM1852=LTDIE_233_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1852
	.byte 2,35,88,0,7
	.asciz "Mono_CSharp_PredefinedMember`1"

LDIFF_SYM1853=LTDIE_241 - Ldebug_info_start
	.long LDIFF_SYM1853
LTDIE_241_POINTER:

	.byte 13
LDIFF_SYM1854=LTDIE_241 - Ldebug_info_start
	.long LDIFF_SYM1854
LTDIE_241_REFERENCE:

	.byte 14
LDIFF_SYM1855=LTDIE_241 - Ldebug_info_start
	.long LDIFF_SYM1855
LTDIE_243:

	.byte 5
	.asciz "Mono_CSharp_PredefinedMember`1"

	.byte 96,16
LDIFF_SYM1856=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1856
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM1857=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1857
	.byte 2,35,16,6
	.asciz "member"

LDIFF_SYM1858=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1858
	.byte 2,35,24,6
	.asciz "declaring_type"

LDIFF_SYM1859=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1859
	.byte 2,35,32,6
	.asciz "declaring_type_predefined"

LDIFF_SYM1860=LTDIE_224_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1860
	.byte 2,35,40,6
	.asciz "filter"

LDIFF_SYM1861=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1861
	.byte 2,35,48,6
	.asciz "filter_builder"

LDIFF_SYM1862=LTDIE_233_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1862
	.byte 2,35,88,0,7
	.asciz "Mono_CSharp_PredefinedMember`1"

LDIFF_SYM1863=LTDIE_243 - Ldebug_info_start
	.long LDIFF_SYM1863
LTDIE_243_POINTER:

	.byte 13
LDIFF_SYM1864=LTDIE_243 - Ldebug_info_start
	.long LDIFF_SYM1864
LTDIE_243_REFERENCE:

	.byte 14
LDIFF_SYM1865=LTDIE_243 - Ldebug_info_start
	.long LDIFF_SYM1865
LTDIE_231:

	.byte 5
	.asciz "Mono_CSharp_PredefinedMembers"

	.byte 248,3,16
LDIFF_SYM1866=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1866
	.byte 2,35,0,6
	.asciz "ActivatorCreateInstance"

LDIFF_SYM1867=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1867
	.byte 2,35,16,6
	.asciz "ArrayEmpty"

LDIFF_SYM1868=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1868
	.byte 2,35,24,6
	.asciz "AsyncTaskMethodBuilderCreate"

LDIFF_SYM1869=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1869
	.byte 2,35,32,6
	.asciz "AsyncTaskMethodBuilderStart"

LDIFF_SYM1870=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1870
	.byte 2,35,40,6
	.asciz "AsyncTaskMethodBuilderSetResult"

LDIFF_SYM1871=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1871
	.byte 2,35,48,6
	.asciz "AsyncTaskMethodBuilderSetException"

LDIFF_SYM1872=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1872
	.byte 2,35,56,6
	.asciz "AsyncTaskMethodBuilderSetStateMachine"

LDIFF_SYM1873=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1873
	.byte 2,35,64,6
	.asciz "AsyncTaskMethodBuilderOnCompleted"

LDIFF_SYM1874=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1874
	.byte 2,35,72,6
	.asciz "AsyncTaskMethodBuilderOnCompletedUnsafe"

LDIFF_SYM1875=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1875
	.byte 2,35,80,6
	.asciz "AsyncTaskMethodBuilderTask"

LDIFF_SYM1876=LTDIE_238_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1876
	.byte 2,35,88,6
	.asciz "AsyncTaskMethodBuilderGenericCreate"

LDIFF_SYM1877=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1877
	.byte 2,35,96,6
	.asciz "AsyncTaskMethodBuilderGenericStart"

LDIFF_SYM1878=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1878
	.byte 2,35,104,6
	.asciz "AsyncTaskMethodBuilderGenericSetResult"

LDIFF_SYM1879=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1879
	.byte 2,35,112,6
	.asciz "AsyncTaskMethodBuilderGenericSetException"

LDIFF_SYM1880=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1880
	.byte 2,35,120,6
	.asciz "AsyncTaskMethodBuilderGenericSetStateMachine"

LDIFF_SYM1881=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1881
	.byte 3,35,128,1,6
	.asciz "AsyncTaskMethodBuilderGenericOnCompleted"

LDIFF_SYM1882=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1882
	.byte 3,35,136,1,6
	.asciz "AsyncTaskMethodBuilderGenericOnCompletedUnsafe"

LDIFF_SYM1883=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1883
	.byte 3,35,144,1,6
	.asciz "AsyncTaskMethodBuilderGenericTask"

LDIFF_SYM1884=LTDIE_238_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1884
	.byte 3,35,152,1,6
	.asciz "AsyncVoidMethodBuilderCreate"

LDIFF_SYM1885=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1885
	.byte 3,35,160,1,6
	.asciz "AsyncVoidMethodBuilderStart"

LDIFF_SYM1886=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1886
	.byte 3,35,168,1,6
	.asciz "AsyncVoidMethodBuilderSetException"

LDIFF_SYM1887=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1887
	.byte 3,35,176,1,6
	.asciz "AsyncVoidMethodBuilderSetResult"

LDIFF_SYM1888=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1888
	.byte 3,35,184,1,6
	.asciz "AsyncVoidMethodBuilderSetStateMachine"

LDIFF_SYM1889=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1889
	.byte 3,35,192,1,6
	.asciz "AsyncVoidMethodBuilderOnCompleted"

LDIFF_SYM1890=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1890
	.byte 3,35,200,1,6
	.asciz "AsyncVoidMethodBuilderOnCompletedUnsafe"

LDIFF_SYM1891=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1891
	.byte 3,35,208,1,6
	.asciz "AsyncStateMachineAttributeCtor"

LDIFF_SYM1892=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1892
	.byte 3,35,216,1,6
	.asciz "DebuggerBrowsableAttributeCtor"

LDIFF_SYM1893=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1893
	.byte 3,35,224,1,6
	.asciz "DecimalCtor"

LDIFF_SYM1894=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1894
	.byte 3,35,232,1,6
	.asciz "DecimalCtorInt"

LDIFF_SYM1895=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1895
	.byte 3,35,240,1,6
	.asciz "DecimalCtorLong"

LDIFF_SYM1896=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1896
	.byte 3,35,248,1,6
	.asciz "DecimalConstantAttributeCtor"

LDIFF_SYM1897=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1897
	.byte 3,35,128,2,6
	.asciz "DefaultMemberAttributeCtor"

LDIFF_SYM1898=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1898
	.byte 3,35,136,2,6
	.asciz "DelegateCombine"

LDIFF_SYM1899=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1899
	.byte 3,35,144,2,6
	.asciz "DelegateEqual"

LDIFF_SYM1900=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1900
	.byte 3,35,152,2,6
	.asciz "DelegateInequal"

LDIFF_SYM1901=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1901
	.byte 3,35,160,2,6
	.asciz "DelegateRemove"

LDIFF_SYM1902=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1902
	.byte 3,35,168,2,6
	.asciz "DynamicAttributeCtor"

LDIFF_SYM1903=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1903
	.byte 3,35,176,2,6
	.asciz "FieldInfoGetFieldFromHandle"

LDIFF_SYM1904=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1904
	.byte 3,35,184,2,6
	.asciz "FieldInfoGetFieldFromHandle2"

LDIFF_SYM1905=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1905
	.byte 3,35,192,2,6
	.asciz "IDisposableDispose"

LDIFF_SYM1906=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1906
	.byte 3,35,200,2,6
	.asciz "IEnumerableGetEnumerator"

LDIFF_SYM1907=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1907
	.byte 3,35,208,2,6
	.asciz "InterlockedCompareExchange"

LDIFF_SYM1908=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1908
	.byte 3,35,216,2,6
	.asciz "InterlockedCompareExchange_T"

LDIFF_SYM1909=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1909
	.byte 3,35,224,2,6
	.asciz "FixedBufferAttributeCtor"

LDIFF_SYM1910=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1910
	.byte 3,35,232,2,6
	.asciz "MethodInfoGetMethodFromHandle"

LDIFF_SYM1911=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1911
	.byte 3,35,240,2,6
	.asciz "MethodInfoGetMethodFromHandle2"

LDIFF_SYM1912=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1912
	.byte 3,35,248,2,6
	.asciz "MethodInfoCreateDelegate"

LDIFF_SYM1913=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1913
	.byte 3,35,128,3,6
	.asciz "MonitorEnter"

LDIFF_SYM1914=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1914
	.byte 3,35,136,3,6
	.asciz "MonitorEnter_v4"

LDIFF_SYM1915=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1915
	.byte 3,35,144,3,6
	.asciz "MonitorExit"

LDIFF_SYM1916=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1916
	.byte 3,35,152,3,6
	.asciz "RuntimeCompatibilityWrapNonExceptionThrows"

LDIFF_SYM1917=LTDIE_238_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1917
	.byte 3,35,160,3,6
	.asciz "RuntimeHelpersInitializeArray"

LDIFF_SYM1918=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1918
	.byte 3,35,168,3,6
	.asciz "RuntimeHelpersOffsetToStringData"

LDIFF_SYM1919=LTDIE_238_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1919
	.byte 3,35,176,3,6
	.asciz "SecurityActionRequestMinimum"

LDIFF_SYM1920=LTDIE_241_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1920
	.byte 3,35,184,3,6
	.asciz "StringEmpty"

LDIFF_SYM1921=LTDIE_243_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1921
	.byte 3,35,192,3,6
	.asciz "StringEqual"

LDIFF_SYM1922=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1922
	.byte 3,35,200,3,6
	.asciz "StringInequal"

LDIFF_SYM1923=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1923
	.byte 3,35,208,3,6
	.asciz "StructLayoutAttributeCtor"

LDIFF_SYM1924=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1924
	.byte 3,35,216,3,6
	.asciz "StructLayoutCharSet"

LDIFF_SYM1925=LTDIE_243_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1925
	.byte 3,35,224,3,6
	.asciz "StructLayoutSize"

LDIFF_SYM1926=LTDIE_243_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1926
	.byte 3,35,232,3,6
	.asciz "TypeGetTypeFromHandle"

LDIFF_SYM1927=LTDIE_232_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1927
	.byte 3,35,240,3,0,7
	.asciz "Mono_CSharp_PredefinedMembers"

LDIFF_SYM1928=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM1928
LTDIE_231_POINTER:

	.byte 13
LDIFF_SYM1929=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM1929
LTDIE_231_REFERENCE:

	.byte 14
LDIFF_SYM1930=LTDIE_231 - Ldebug_info_start
	.long LDIFF_SYM1930
LTDIE_246:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM1931=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1931
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1932=LTDIE_245_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1932
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM1933=LTDIE_246 - Ldebug_info_start
	.long LDIFF_SYM1933
LTDIE_246_POINTER:

	.byte 13
LDIFF_SYM1934=LTDIE_246 - Ldebug_info_start
	.long LDIFF_SYM1934
LTDIE_246_REFERENCE:

	.byte 14
LDIFF_SYM1935=LTDIE_246 - Ldebug_info_start
	.long LDIFF_SYM1935
LTDIE_247:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM1936=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1936
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM1937=LTDIE_245_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1937
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM1938=LTDIE_247 - Ldebug_info_start
	.long LDIFF_SYM1938
LTDIE_247_POINTER:

	.byte 13
LDIFF_SYM1939=LTDIE_247 - Ldebug_info_start
	.long LDIFF_SYM1939
LTDIE_247_REFERENCE:

	.byte 14
LDIFF_SYM1940=LTDIE_247 - Ldebug_info_start
	.long LDIFF_SYM1940
LTDIE_245:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM1941=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1941
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM1942=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1942
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM1943=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1943
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM1944=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1944
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM1945=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1945
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM1946=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1946
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM1947=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1947
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM1948=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1948
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM1949=LTDIE_246_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1949
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM1950=LTDIE_247_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1950
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM1951=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM1951
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM1952=LTDIE_245 - Ldebug_info_start
	.long LDIFF_SYM1952
LTDIE_245_POINTER:

	.byte 13
LDIFF_SYM1953=LTDIE_245 - Ldebug_info_start
	.long LDIFF_SYM1953
LTDIE_245_REFERENCE:

	.byte 14
LDIFF_SYM1954=LTDIE_245 - Ldebug_info_start
	.long LDIFF_SYM1954
LTDIE_244:

	.byte 5
	.asciz "Mono_CSharp_Evaluator"

	.byte 24,16
LDIFF_SYM1955=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1955
	.byte 2,35,0,6
	.asciz "fields"

LDIFF_SYM1956=LTDIE_245_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1956
	.byte 2,35,16,0,7
	.asciz "Mono_CSharp_Evaluator"

LDIFF_SYM1957=LTDIE_244 - Ldebug_info_start
	.long LDIFF_SYM1957
LTDIE_244_POINTER:

	.byte 13
LDIFF_SYM1958=LTDIE_244 - Ldebug_info_start
	.long LDIFF_SYM1958
LTDIE_244_REFERENCE:

	.byte 14
LDIFF_SYM1959=LTDIE_244 - Ldebug_info_start
	.long LDIFF_SYM1959
LTDIE_23:

	.byte 5
	.asciz "Mono_CSharp_ModuleContainer"

	.byte 128,2,16
LDIFF_SYM1960=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM1960
	.byte 2,35,0,6
	.asciz "pmh"

LDIFF_SYM1961=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1961
	.byte 2,35,88,6
	.asciz "DefaultCharSet"

LDIFF_SYM1962=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1962
	.byte 3,35,240,1,6
	.asciz "anonymous_types"

LDIFF_SYM1963=LTDIE_168_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1963
	.byte 2,35,96,6
	.asciz "array_types"

LDIFF_SYM1964=LTDIE_171_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1964
	.byte 2,35,104,6
	.asciz "pointer_types"

LDIFF_SYM1965=LTDIE_175_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1965
	.byte 2,35,112,6
	.asciz "reference_types"

LDIFF_SYM1966=LTDIE_178_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1966
	.byte 2,35,120,6
	.asciz "attrs_cache"

LDIFF_SYM1967=LTDIE_181_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1967
	.byte 3,35,128,1,6
	.asciz "awaiters"

LDIFF_SYM1968=LTDIE_184_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1968
	.byte 3,35,136,1,6
	.asciz "type_info_cache"

LDIFF_SYM1969=LTDIE_187_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1969
	.byte 3,35,144,1,6
	.asciz "assembly"

LDIFF_SYM1970=LTDIE_190_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1970
	.byte 3,35,152,1,6
	.asciz "context"

LDIFF_SYM1971=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1971
	.byte 3,35,160,1,6
	.asciz "global_ns"

LDIFF_SYM1972=LTDIE_205_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1972
	.byte 3,35,168,1,6
	.asciz "alias_ns"

LDIFF_SYM1973=LTDIE_217_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1973
	.byte 3,35,176,1,6
	.asciz "builder"

LDIFF_SYM1974=LTDIE_220_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1974
	.byte 3,35,184,1,6
	.asciz "has_extenstion_method"

LDIFF_SYM1975=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1975
	.byte 3,35,248,1,6
	.asciz "predefined_attributes"

LDIFF_SYM1976=LTDIE_222_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1976
	.byte 3,35,192,1,6
	.asciz "predefined_types"

LDIFF_SYM1977=LTDIE_230_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1977
	.byte 3,35,200,1,6
	.asciz "predefined_members"

LDIFF_SYM1978=LTDIE_231_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1978
	.byte 3,35,208,1,6
	.asciz "OperatorsBinaryEqualityLifted"

LDIFF_SYM1979=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1979
	.byte 3,35,216,1,6
	.asciz "OperatorsBinaryLifted"

LDIFF_SYM1980=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM1980
	.byte 3,35,224,1,6
	.asciz "<Evaluator>k__BackingField"

LDIFF_SYM1981=LTDIE_244_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1981
	.byte 3,35,232,1,6
	.asciz "<HasTypesFullyDefined>k__BackingField"

LDIFF_SYM1982=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM1982
	.byte 3,35,249,1,0,7
	.asciz "Mono_CSharp_ModuleContainer"

LDIFF_SYM1983=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM1983
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM1984=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM1984
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM1985=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM1985
LTDIE_248:

	.byte 5
	.asciz "Mono_CSharp_ReflectionImporter"

	.byte 56,16
LDIFF_SYM1986=LTDIE_197 - Ldebug_info_start
	.long LDIFF_SYM1986
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_ReflectionImporter"

LDIFF_SYM1987=LTDIE_248 - Ldebug_info_start
	.long LDIFF_SYM1987
LTDIE_248_POINTER:

	.byte 13
LDIFF_SYM1988=LTDIE_248 - Ldebug_info_start
	.long LDIFF_SYM1988
LTDIE_248_REFERENCE:

	.byte 14
LDIFF_SYM1989=LTDIE_248 - Ldebug_info_start
	.long LDIFF_SYM1989
LTDIE_22:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext"

	.byte 32,16
LDIFF_SYM1990=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM1990
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM1991=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1991
	.byte 2,35,16,6
	.asciz "importer"

LDIFF_SYM1992=LTDIE_248_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM1992
	.byte 2,35,24,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext"

LDIFF_SYM1993=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM1993
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM1994=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM1994
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM1995=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM1995
LTDIE_250:

	.byte 8
	.asciz "_Options"

	.byte 4
LDIFF_SYM1996=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM1996
	.byte 9
	.asciz "CheckedScope"

	.byte 1,9
	.asciz "ConstantCheckState"

	.byte 2,9
	.asciz "AllCheckStateFlags"

	.byte 3,9
	.asciz "UnsafeScope"

	.byte 4,9
	.asciz "CatchScope"

	.byte 8,9
	.asciz "FinallyScope"

	.byte 16,9
	.asciz "FieldInitializerScope"

	.byte 32,9
	.asciz "CompoundAssignmentScope"

	.byte 192,0,9
	.asciz "FixedInitializerScope"

	.byte 128,1,9
	.asciz "BaseInitializer"

	.byte 128,2,9
	.asciz "EnumScope"

	.byte 128,4,9
	.asciz "ConstantScope"

	.byte 128,8,9
	.asciz "ConstructorScope"

	.byte 128,16,9
	.asciz "UsingInitializerScope"

	.byte 128,32,9
	.asciz "LockScope"

	.byte 128,192,0,9
	.asciz "TryScope"

	.byte 128,128,1,9
	.asciz "TryWithCatchScope"

	.byte 128,128,2,9
	.asciz "DontSetConditionalAccessReceiver"

	.byte 128,128,4,9
	.asciz "NameOfScope"

	.byte 128,128,8,9
	.asciz "ProbingMode"

	.byte 128,128,128,2,9
	.asciz "InferReturnType"

	.byte 128,128,128,4,9
	.asciz "OmitDebuggingInfo"

	.byte 128,128,128,8,9
	.asciz "ExpressionTreeConversion"

	.byte 128,128,128,16,9
	.asciz "InvokeSpecialName"

	.byte 128,128,128,32,0,7
	.asciz "_Options"

LDIFF_SYM1997=LTDIE_250 - Ldebug_info_start
	.long LDIFF_SYM1997
LTDIE_250_POINTER:

	.byte 13
LDIFF_SYM1998=LTDIE_250 - Ldebug_info_start
	.long LDIFF_SYM1998
LTDIE_250_REFERENCE:

	.byte 14
LDIFF_SYM1999=LTDIE_250 - Ldebug_info_start
	.long LDIFF_SYM1999
LTDIE_249:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder"

	.byte 56,16
LDIFF_SYM2000=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2000
	.byte 2,35,0,6
	.asciz "binder"

LDIFF_SYM2001=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2001
	.byte 2,35,16,6
	.asciz "expr"

LDIFF_SYM2002=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2002
	.byte 2,35,24,6
	.asciz "restrictions"

LDIFF_SYM2003=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2003
	.byte 2,35,32,6
	.asciz "errorSuggestion"

LDIFF_SYM2004=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2004
	.byte 2,35,40,6
	.asciz "<ResolveOptions>k__BackingField"

LDIFF_SYM2005=LTDIE_250 - Ldebug_info_start
	.long LDIFF_SYM2005
	.byte 2,35,48,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder"

LDIFF_SYM2006=LTDIE_249 - Ldebug_info_start
	.long LDIFF_SYM2006
LTDIE_249_POINTER:

	.byte 13
LDIFF_SYM2007=LTDIE_249 - Ldebug_info_start
	.long LDIFF_SYM2007
LTDIE_249_REFERENCE:

	.byte 14
LDIFF_SYM2008=LTDIE_249 - Ldebug_info_start
	.long LDIFF_SYM2008
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpGetMemberBinder:FallbackGetMember"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject"

	.byte 3,51
	.quad Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2009=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2009
	.byte 1,104,3
	.asciz "target"

LDIFF_SYM2010=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2010
	.byte 2,141,24,3
	.asciz "errorSuggestion"

LDIFF_SYM2011=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2011
	.byte 2,141,32,11
	.asciz "ctx"

LDIFF_SYM2012=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2012
	.byte 0,11
	.asciz "expr"

LDIFF_SYM2013=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2013
	.byte 0,11
	.asciz "binder"

LDIFF_SYM2014=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2014
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2015=Lfde6_end - Lfde6_start
	.long LDIFF_SYM2015
Lfde6_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject

LDIFF_SYM2016=Lme_6 - Microsoft_CSharp_RuntimeBinder_CSharpGetMemberBinder_FallbackGetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2016
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,152,20
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_252:

	.byte 5
	.asciz "System_Dynamic_SetMemberBinder"

	.byte 40,16
LDIFF_SYM2017=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM2017
	.byte 2,35,0,6
	.asciz "_name"

LDIFF_SYM2018=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2018
	.byte 2,35,24,6
	.asciz "_ignoreCase"

LDIFF_SYM2019=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2019
	.byte 2,35,32,0,7
	.asciz "System_Dynamic_SetMemberBinder"

LDIFF_SYM2020=LTDIE_252 - Ldebug_info_start
	.long LDIFF_SYM2020
LTDIE_252_POINTER:

	.byte 13
LDIFF_SYM2021=LTDIE_252 - Ldebug_info_start
	.long LDIFF_SYM2021
LTDIE_252_REFERENCE:

	.byte 14
LDIFF_SYM2022=LTDIE_252 - Ldebug_info_start
	.long LDIFF_SYM2022
LTDIE_251:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder"

	.byte 64,16
LDIFF_SYM2023=LTDIE_252 - Ldebug_info_start
	.long LDIFF_SYM2023
	.byte 2,35,0,6
	.asciz "flags"

LDIFF_SYM2024=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM2024
	.byte 2,35,56,6
	.asciz "argumentInfo"

LDIFF_SYM2025=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2025
	.byte 2,35,40,6
	.asciz "callingContext"

LDIFF_SYM2026=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2026
	.byte 2,35,48,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder"

LDIFF_SYM2027=LTDIE_251 - Ldebug_info_start
	.long LDIFF_SYM2027
LTDIE_251_POINTER:

	.byte 13
LDIFF_SYM2028=LTDIE_251 - Ldebug_info_start
	.long LDIFF_SYM2028
LTDIE_251_REFERENCE:

	.byte 14
LDIFF_SYM2029=LTDIE_251 - Ldebug_info_start
	.long LDIFF_SYM2029
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpSetMemberBinder:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo"

	.byte 4,44
	.quad Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2030=LTDIE_251_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2030
	.byte 1,102,3
	.asciz "flags"

LDIFF_SYM2031=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM2031
	.byte 2,141,24,3
	.asciz "name"

LDIFF_SYM2032=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2032
	.byte 2,141,32,3
	.asciz "callingContext"

LDIFF_SYM2033=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2033
	.byte 2,141,40,3
	.asciz "argumentInfo"

LDIFF_SYM2034=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2034
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2035=Lfde7_end - Lfde7_start
	.long LDIFF_SYM2035
Lfde7_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo

LDIFF_SYM2036=Lme_7 - Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder__ctor_Microsoft_CSharp_RuntimeBinder_CSharpBinderFlags_string_System_Type_System_Collections_Generic_IEnumerable_1_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo
	.long LDIFF_SYM2036
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpSetMemberBinder:FallbackSetMember"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject"

	.byte 4,53
	.quad Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2037=LTDIE_251_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2037
	.byte 1,103,3
	.asciz "target"

LDIFF_SYM2038=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2038
	.byte 2,141,56,3
	.asciz "value"

LDIFF_SYM2039=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2039
	.byte 3,141,192,0,3
	.asciz "errorSuggestion"

LDIFF_SYM2040=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2040
	.byte 1,106,11
	.asciz "ctx"

LDIFF_SYM2041=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2041
	.byte 1,102,11
	.asciz "source"

LDIFF_SYM2042=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2042
	.byte 1,101,11
	.asciz "expr"

LDIFF_SYM2043=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2043
	.byte 1,100,11
	.asciz "binder"

LDIFF_SYM2044=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2044
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2045=Lfde8_end - Lfde8_start
	.long LDIFF_SYM2045
Lfde8_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject

LDIFF_SYM2046=Lme_8 - Microsoft_CSharp_RuntimeBinder_CSharpSetMemberBinder_FallbackSetMember_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2046
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11,68,154,10
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter"

	.byte 5,46
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2047=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2047
	.byte 1,104,3
	.asciz "module"

LDIFF_SYM2048=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2048
	.byte 2,141,24,3
	.asciz "importer"

LDIFF_SYM2049=LTDIE_248_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2049
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2050=Lfde9_end - Lfde9_start
	.long LDIFF_SYM2050
Lfde9_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter

LDIFF_SYM2051=Lme_9 - Microsoft_CSharp_RuntimeBinder_DynamicContext__ctor_Mono_CSharp_ModuleContainer_Mono_CSharp_ReflectionImporter
	.long LDIFF_SYM2051
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:get_Module"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module"

	.byte 5,60
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2052=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2052
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2053=Lfde10_end - Lfde10_start
	.long LDIFF_SYM2053
Lfde10_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module

LDIFF_SYM2054=Lme_a - Microsoft_CSharp_RuntimeBinder_DynamicContext_get_Module
	.long LDIFF_SYM2054
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_253:

	.byte 5
	.asciz "Mono_CSharp_AssemblyDefinitionDynamic"

	.byte 96,16
LDIFF_SYM2055=LTDIE_190 - Ldebug_info_start
	.long LDIFF_SYM2055
	.byte 2,35,0,0,7
	.asciz "Mono_CSharp_AssemblyDefinitionDynamic"

LDIFF_SYM2056=LTDIE_253 - Ldebug_info_start
	.long LDIFF_SYM2056
LTDIE_253_POINTER:

	.byte 13
LDIFF_SYM2057=LTDIE_253 - Ldebug_info_start
	.long LDIFF_SYM2057
LTDIE_253_REFERENCE:

	.byte 14
LDIFF_SYM2058=LTDIE_253 - Ldebug_info_start
	.long LDIFF_SYM2058
LTDIE_255:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM2059=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2059
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM2060=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2060
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM2061=LTDIE_255 - Ldebug_info_start
	.long LDIFF_SYM2061
LTDIE_255_POINTER:

	.byte 13
LDIFF_SYM2062=LTDIE_255 - Ldebug_info_start
	.long LDIFF_SYM2062
LTDIE_255_REFERENCE:

	.byte 14
LDIFF_SYM2063=LTDIE_255 - Ldebug_info_start
	.long LDIFF_SYM2063
LTDIE_256:

	.byte 5
	.asciz "System_AssemblyLoadEventHandler"

	.byte 112,16
LDIFF_SYM2064=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2064
	.byte 2,35,0,0,7
	.asciz "System_AssemblyLoadEventHandler"

LDIFF_SYM2065=LTDIE_256 - Ldebug_info_start
	.long LDIFF_SYM2065
LTDIE_256_POINTER:

	.byte 13
LDIFF_SYM2066=LTDIE_256 - Ldebug_info_start
	.long LDIFF_SYM2066
LTDIE_256_REFERENCE:

	.byte 14
LDIFF_SYM2067=LTDIE_256 - Ldebug_info_start
	.long LDIFF_SYM2067
LTDIE_257:

	.byte 5
	.asciz "System_ResolveEventHandler"

	.byte 112,16
LDIFF_SYM2068=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2068
	.byte 2,35,0,0,7
	.asciz "System_ResolveEventHandler"

LDIFF_SYM2069=LTDIE_257 - Ldebug_info_start
	.long LDIFF_SYM2069
LTDIE_257_POINTER:

	.byte 13
LDIFF_SYM2070=LTDIE_257 - Ldebug_info_start
	.long LDIFF_SYM2070
LTDIE_257_REFERENCE:

	.byte 14
LDIFF_SYM2071=LTDIE_257 - Ldebug_info_start
	.long LDIFF_SYM2071
LTDIE_258:

	.byte 5
	.asciz "System_EventHandler"

	.byte 112,16
LDIFF_SYM2072=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2072
	.byte 2,35,0,0,7
	.asciz "System_EventHandler"

LDIFF_SYM2073=LTDIE_258 - Ldebug_info_start
	.long LDIFF_SYM2073
LTDIE_258_POINTER:

	.byte 13
LDIFF_SYM2074=LTDIE_258 - Ldebug_info_start
	.long LDIFF_SYM2074
LTDIE_258_REFERENCE:

	.byte 14
LDIFF_SYM2075=LTDIE_258 - Ldebug_info_start
	.long LDIFF_SYM2075
LTDIE_259:

	.byte 5
	.asciz "System_UnhandledExceptionEventHandler"

	.byte 112,16
LDIFF_SYM2076=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2076
	.byte 2,35,0,0,7
	.asciz "System_UnhandledExceptionEventHandler"

LDIFF_SYM2077=LTDIE_259 - Ldebug_info_start
	.long LDIFF_SYM2077
LTDIE_259_POINTER:

	.byte 13
LDIFF_SYM2078=LTDIE_259 - Ldebug_info_start
	.long LDIFF_SYM2078
LTDIE_259_REFERENCE:

	.byte 14
LDIFF_SYM2079=LTDIE_259 - Ldebug_info_start
	.long LDIFF_SYM2079
LTDIE_260:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM2080=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2080
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM2081=LTDIE_260 - Ldebug_info_start
	.long LDIFF_SYM2081
LTDIE_260_POINTER:

	.byte 13
LDIFF_SYM2082=LTDIE_260 - Ldebug_info_start
	.long LDIFF_SYM2082
LTDIE_260_REFERENCE:

	.byte 14
LDIFF_SYM2083=LTDIE_260 - Ldebug_info_start
	.long LDIFF_SYM2083
LTDIE_254:

	.byte 5
	.asciz "System_AppDomain"

	.byte 152,1,16
LDIFF_SYM2084=LTDIE_255 - Ldebug_info_start
	.long LDIFF_SYM2084
	.byte 2,35,0,6
	.asciz "_mono_app_domain"

LDIFF_SYM2085=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2085
	.byte 2,35,24,6
	.asciz "_evidence"

LDIFF_SYM2086=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2086
	.byte 2,35,32,6
	.asciz "_granted"

LDIFF_SYM2087=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2087
	.byte 2,35,40,6
	.asciz "_principalPolicy"

LDIFF_SYM2088=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2088
	.byte 2,35,48,6
	.asciz "AssemblyLoad"

LDIFF_SYM2089=LTDIE_256_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2089
	.byte 2,35,56,6
	.asciz "AssemblyResolve"

LDIFF_SYM2090=LTDIE_257_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2090
	.byte 2,35,64,6
	.asciz "DomainUnload"

LDIFF_SYM2091=LTDIE_258_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2091
	.byte 2,35,72,6
	.asciz "ProcessExit"

LDIFF_SYM2092=LTDIE_258_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2092
	.byte 2,35,80,6
	.asciz "ResourceResolve"

LDIFF_SYM2093=LTDIE_257_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2093
	.byte 2,35,88,6
	.asciz "TypeResolve"

LDIFF_SYM2094=LTDIE_257_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2094
	.byte 2,35,96,6
	.asciz "UnhandledException"

LDIFF_SYM2095=LTDIE_259_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2095
	.byte 2,35,104,6
	.asciz "FirstChanceException"

LDIFF_SYM2096=LTDIE_260_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2096
	.byte 2,35,112,6
	.asciz "_domain_manager"

LDIFF_SYM2097=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2097
	.byte 2,35,120,6
	.asciz "_activation"

LDIFF_SYM2098=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2098
	.byte 3,35,128,1,6
	.asciz "_applicationIdentity"

LDIFF_SYM2099=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2099
	.byte 3,35,136,1,6
	.asciz "compatibility_switch"

LDIFF_SYM2100=LTDIE_151_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2100
	.byte 3,35,144,1,0,7
	.asciz "System_AppDomain"

LDIFF_SYM2101=LTDIE_254 - Ldebug_info_start
	.long LDIFF_SYM2101
LTDIE_254_POINTER:

	.byte 13
LDIFF_SYM2102=LTDIE_254 - Ldebug_info_start
	.long LDIFF_SYM2102
LTDIE_254_REFERENCE:

	.byte 14
LDIFF_SYM2103=LTDIE_254 - Ldebug_info_start
	.long LDIFF_SYM2103
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:Create"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext_Create"

	.byte 5,66
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_Create
	.quad Lme_b

	.byte 2,118,16,11
	.asciz ""

LDIFF_SYM2104=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2104
	.byte 3,141,192,0,11
	.asciz ""

LDIFF_SYM2105=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2105
	.byte 3,141,200,0,11
	.asciz ""

LDIFF_SYM2106=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2106
	.byte 1,106,11
	.asciz "settings"

LDIFF_SYM2107=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2107
	.byte 1,105,11
	.asciz ""

LDIFF_SYM2108=LTDIE_147_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2108
	.byte 1,106,11
	.asciz "cc"

LDIFF_SYM2109=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2109
	.byte 1,105,11
	.asciz ""

LDIFF_SYM2110=LTDIE_138_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2110
	.byte 1,106,11
	.asciz "module"

LDIFF_SYM2111=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2111
	.byte 1,104,11
	.asciz "temp"

LDIFF_SYM2112=LTDIE_253_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2112
	.byte 1,103,11
	.asciz "importer"

LDIFF_SYM2113=LTDIE_248_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2113
	.byte 1,103,11
	.asciz ""

LDIFF_SYM2114=LTDIE_248_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2114
	.byte 1,106,11
	.asciz "domain"

LDIFF_SYM2115=LTDIE_254_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2115
	.byte 1,106,11
	.asciz "a"

LDIFF_SYM2116=LTDIE_192_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2116
	.byte 1,101,11
	.asciz ""

LDIFF_SYM2117=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2117
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2118=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2118
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2119=Lfde11_end - Lfde11_start
	.long LDIFF_SYM2119
Lfde11_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_Create

LDIFF_SYM2120=Lme_b - Microsoft_CSharp_RuntimeBinder_DynamicContext_Create
	.long LDIFF_SYM2120
	.long 0
	.byte 12,31,0,68,14,192,1,157,24,158,23,68,13,29,68,149,22,150,21,68,151,20,152,19,68,153,18,154,17
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:CreateCompilerExpression"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject"

	.byte 5,124
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2121=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2121
	.byte 1,104,3
	.asciz "info"

LDIFF_SYM2122=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2122
	.byte 1,105,3
	.asciz "value"

LDIFF_SYM2123=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2123
	.byte 1,106,11
	.asciz "value_type"

LDIFF_SYM2124=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2124
	.byte 3,141,208,0,11
	.asciz "type"

LDIFF_SYM2125=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2125
	.byte 1,104,11
	.asciz "c"

LDIFF_SYM2126=LTDIE_127_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2126
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2127=Lfde12_end - Lfde12_start
	.long LDIFF_SYM2127
Lfde12_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject

LDIFF_SYM2128=Lme_c - Microsoft_CSharp_RuntimeBinder_DynamicContext_CreateCompilerExpression_Microsoft_CSharp_RuntimeBinder_CSharpArgumentInfo_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2128
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:ImportType"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type"

	.byte 5,187,1
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2129=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2129
	.byte 2,141,24,3
	.asciz "type"

LDIFF_SYM2130=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2130
	.byte 2,141,32,11
	.asciz ""

LDIFF_SYM2131=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2131
	.byte 2,141,40,11
	.asciz ""

LDIFF_SYM2132=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2132
	.byte 2,141,48,11
	.asciz ""

LDIFF_SYM2133=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2133
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2134=Lfde13_end - Lfde13_start
	.long LDIFF_SYM2134
Lfde13_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type

LDIFF_SYM2135=Lme_d - Microsoft_CSharp_RuntimeBinder_DynamicContext_ImportType_System_Type
	.long LDIFF_SYM2135
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,154,12
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.DynamicContext:.cctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor"

	.byte 5,40
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor
	.quad Lme_e

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2136=Lfde14_end - Lfde14_start
	.long LDIFF_SYM2136
Lfde14_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor

LDIFF_SYM2137=Lme_e - Microsoft_CSharp_RuntimeBinder_DynamicContext__cctor
	.long LDIFF_SYM2137
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_261:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM2138=LTDIE_261 - Ldebug_info_start
	.long LDIFF_SYM2138
LTDIE_261_POINTER:

	.byte 13
LDIFF_SYM2139=LTDIE_261 - Ldebug_info_start
	.long LDIFF_SYM2139
LTDIE_261_REFERENCE:

	.byte 14
LDIFF_SYM2140=LTDIE_261 - Ldebug_info_start
	.long LDIFF_SYM2140
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.Extensions:ToReadOnly<T_REF>"
	.asciz "Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF"

	.byte 6,41
	.quad Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "col"

LDIFF_SYM2141=LTDIE_261_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2141
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2142=Lfde15_end - Lfde15_start
	.long LDIFF_SYM2142
Lfde15_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF

LDIFF_SYM2143=Lme_f - Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.long LDIFF_SYM2143
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_262:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext"

	.byte 48,16
LDIFF_SYM2144=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2144
	.byte 2,35,0,6
	.asciz "module"

LDIFF_SYM2145=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2145
	.byte 2,35,16,6
	.asciz "callingType"

LDIFF_SYM2146=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2146
	.byte 2,35,24,6
	.asciz "ctx"

LDIFF_SYM2147=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2147
	.byte 2,35,32,6
	.asciz "callingTypeImported"

LDIFF_SYM2148=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2148
	.byte 2,35,40,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext"

LDIFF_SYM2149=LTDIE_262 - Ldebug_info_start
	.long LDIFF_SYM2149
LTDIE_262_POINTER:

	.byte 13
LDIFF_SYM2150=LTDIE_262 - Ldebug_info_start
	.long LDIFF_SYM2150
LTDIE_262_REFERENCE:

	.byte 14
LDIFF_SYM2151=LTDIE_262 - Ldebug_info_start
	.long LDIFF_SYM2151
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type"

	.byte 7,49
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2152=LTDIE_262_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2152
	.byte 1,104,3
	.asciz "ctx"

LDIFF_SYM2153=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2153
	.byte 1,105,3
	.asciz "callingType"

LDIFF_SYM2154=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2154
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2155=Lfde16_end - Lfde16_start
	.long LDIFF_SYM2155
Lfde16_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type

LDIFF_SYM2156=Lme_10 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext__ctor_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
	.long LDIFF_SYM2156
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_CurrentType"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType"

	.byte 7,66
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2157=LTDIE_262_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2157
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2158=Lfde17_end - Lfde17_start
	.long LDIFF_SYM2158
Lfde17_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType

LDIFF_SYM2159=Lme_11 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentType
	.long LDIFF_SYM2159
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_CurrentTypeParameters"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters"

	.byte 7,74
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2160
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2161=Lfde18_end - Lfde18_start
	.long LDIFF_SYM2161
Lfde18_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters

LDIFF_SYM2162=Lme_12 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentTypeParameters
	.long LDIFF_SYM2162
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_CurrentMemberDefinition"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition"

	.byte 7,79
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2163=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2163
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2164=Lfde19_end - Lfde19_start
	.long LDIFF_SYM2164
Lfde19_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition

LDIFF_SYM2165=Lme_13 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_CurrentMemberDefinition
	.long LDIFF_SYM2165
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_IsObsolete"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete"

	.byte 7,86
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2166=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2166
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2167=Lfde20_end - Lfde20_start
	.long LDIFF_SYM2167
Lfde20_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete

LDIFF_SYM2168=Lme_14 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsObsolete
	.long LDIFF_SYM2168
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_IsUnsafe"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe"

	.byte 7,93
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2169=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2169
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2170=Lfde21_end - Lfde21_start
	.long LDIFF_SYM2170
Lfde21_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe

LDIFF_SYM2171=Lme_15 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsUnsafe
	.long LDIFF_SYM2171
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_IsStatic"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic"

	.byte 7,99
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2172=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2172
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2173=Lfde22_end - Lfde22_start
	.long LDIFF_SYM2173
Lfde22_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic

LDIFF_SYM2174=Lme_16 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_IsStatic
	.long LDIFF_SYM2174
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:get_Module"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module"

	.byte 7,105
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2175=LTDIE_262_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2175
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2176=Lfde23_end - Lfde23_start
	.long LDIFF_SYM2176
Lfde23_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module

LDIFF_SYM2177=Lme_17 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_get_Module
	.long LDIFF_SYM2177
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:GetSignatureForError"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError"

	.byte 7,111
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2178=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2178
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2179=Lfde24_end - Lfde24_start
	.long LDIFF_SYM2179
Lfde24_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError

LDIFF_SYM2180=Lme_18 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_GetSignatureForError
	.long LDIFF_SYM2180
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:LookupExtensionMethod"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int"

	.byte 7,117
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2181=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2181
	.byte 0,3
	.asciz "name"

LDIFF_SYM2182=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2182
	.byte 0,3
	.asciz "arity"

LDIFF_SYM2183=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2183
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2184=Lfde25_end - Lfde25_start
	.long LDIFF_SYM2184
Lfde25_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int

LDIFF_SYM2185=Lme_19 - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupExtensionMethod_string_int
	.long LDIFF_SYM2185
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_263:

	.byte 8
	.asciz "Mono_CSharp_LookupMode"

	.byte 4
LDIFF_SYM2186=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2186
	.byte 9
	.asciz "Normal"

	.byte 0,9
	.asciz "Probing"

	.byte 1,9
	.asciz "IgnoreAccessibility"

	.byte 2,0,7
	.asciz "Mono_CSharp_LookupMode"

LDIFF_SYM2187=LTDIE_263 - Ldebug_info_start
	.long LDIFF_SYM2187
LTDIE_263_POINTER:

	.byte 13
LDIFF_SYM2188=LTDIE_263 - Ldebug_info_start
	.long LDIFF_SYM2188
LTDIE_263_REFERENCE:

	.byte 14
LDIFF_SYM2189=LTDIE_263 - Ldebug_info_start
	.long LDIFF_SYM2189
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:LookupNamespaceOrType"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location"

	.byte 7,122
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2190=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2190
	.byte 0,3
	.asciz "name"

LDIFF_SYM2191=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2191
	.byte 0,3
	.asciz "arity"

LDIFF_SYM2192=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2192
	.byte 0,3
	.asciz "mode"

LDIFF_SYM2193=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2193
	.byte 0,3
	.asciz "loc"

LDIFF_SYM2194=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2194
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2195=Lfde26_end - Lfde26_start
	.long LDIFF_SYM2195
Lfde26_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location

LDIFF_SYM2196=Lme_1a - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceOrType_string_int_Mono_CSharp_LookupMode_Mono_CSharp_Location
	.long LDIFF_SYM2196
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderContext:LookupNamespaceAlias"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string"

	.byte 7,128,1
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2197=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2197
	.byte 0,3
	.asciz "name"

LDIFF_SYM2198=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2198
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2199=Lfde27_end - Lfde27_start
	.long LDIFF_SYM2199
Lfde27_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string

LDIFF_SYM2200=Lme_1b - Microsoft_CSharp_RuntimeBinder_RuntimeBinderContext_LookupNamespaceAlias_string
	.long LDIFF_SYM2200
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_266:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM2201=LTDIE_266 - Ldebug_info_start
	.long LDIFF_SYM2201
LTDIE_266_POINTER:

	.byte 13
LDIFF_SYM2202=LTDIE_266 - Ldebug_info_start
	.long LDIFF_SYM2202
LTDIE_266_REFERENCE:

	.byte 14
LDIFF_SYM2203=LTDIE_266 - Ldebug_info_start
	.long LDIFF_SYM2203
LTDIE_268:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM2204=LTDIE_268 - Ldebug_info_start
	.long LDIFF_SYM2204
LTDIE_268_POINTER:

	.byte 13
LDIFF_SYM2205=LTDIE_268 - Ldebug_info_start
	.long LDIFF_SYM2205
LTDIE_268_REFERENCE:

	.byte 14
LDIFF_SYM2206=LTDIE_268 - Ldebug_info_start
	.long LDIFF_SYM2206
LTDIE_269:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM2207=LTDIE_234 - Ldebug_info_start
	.long LDIFF_SYM2207
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM2208=LTDIE_269 - Ldebug_info_start
	.long LDIFF_SYM2208
LTDIE_269_POINTER:

	.byte 13
LDIFF_SYM2209=LTDIE_269 - Ldebug_info_start
	.long LDIFF_SYM2209
LTDIE_269_REFERENCE:

	.byte 14
LDIFF_SYM2210=LTDIE_269 - Ldebug_info_start
	.long LDIFF_SYM2210
LTDIE_267:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 40,16
LDIFF_SYM2211=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2211
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM2212=LTDIE_268_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2212
	.byte 2,35,16,6
	.asciz "m_realObject"

LDIFF_SYM2213=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2213
	.byte 2,35,24,6
	.asciz "SerializeObjectState"

LDIFF_SYM2214=LTDIE_269_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2214
	.byte 2,35,32,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM2215=LTDIE_267 - Ldebug_info_start
	.long LDIFF_SYM2215
LTDIE_267_POINTER:

	.byte 13
LDIFF_SYM2216=LTDIE_267 - Ldebug_info_start
	.long LDIFF_SYM2216
LTDIE_267_REFERENCE:

	.byte 14
LDIFF_SYM2217=LTDIE_267 - Ldebug_info_start
	.long LDIFF_SYM2217
LTDIE_265:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM2218=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2218
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM2219=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2219
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM2220=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2220
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM2221=LTDIE_266_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2221
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM2222=LTDIE_265_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2222
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM2223=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2223
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM2224=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2224
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM2225=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2225
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM2226=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2226
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM2227=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2227
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM2228=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2228
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM2229=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2229
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM2230=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2230
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM2231=LTDIE_267_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2231
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM2232=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2232
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM2233=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2233
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM2234=LTDIE_265 - Ldebug_info_start
	.long LDIFF_SYM2234
LTDIE_265_POINTER:

	.byte 13
LDIFF_SYM2235=LTDIE_265 - Ldebug_info_start
	.long LDIFF_SYM2235
LTDIE_265_REFERENCE:

	.byte 14
LDIFF_SYM2236=LTDIE_265 - Ldebug_info_start
	.long LDIFF_SYM2236
LTDIE_264:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderException"

	.byte 136,1,16
LDIFF_SYM2237=LTDIE_265 - Ldebug_info_start
	.long LDIFF_SYM2237
	.byte 2,35,0,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderException"

LDIFF_SYM2238=LTDIE_264 - Ldebug_info_start
	.long LDIFF_SYM2238
LTDIE_264_POINTER:

	.byte 13
LDIFF_SYM2239=LTDIE_264 - Ldebug_info_start
	.long LDIFF_SYM2239
LTDIE_264_REFERENCE:

	.byte 14
LDIFF_SYM2240=LTDIE_264 - Ldebug_info_start
	.long LDIFF_SYM2240
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderException:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor"

	.byte 8,37
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2241=LTDIE_264_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2241
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2242=Lfde28_end - Lfde28_start
	.long LDIFF_SYM2242
Lfde28_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor

LDIFF_SYM2243=Lme_1c - Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor
	.long LDIFF_SYM2243
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderException:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string"

	.byte 8,42
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2244=LTDIE_264_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2244
	.byte 2,141,16,3
	.asciz "message"

LDIFF_SYM2245=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2245
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2246=Lfde29_end - Lfde29_start
	.long LDIFF_SYM2246
Lfde29_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string

LDIFF_SYM2247=Lme_1d - Microsoft_CSharp_RuntimeBinder_RuntimeBinderException__ctor_string
	.long LDIFF_SYM2247
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_270:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException"

	.byte 136,1,16
LDIFF_SYM2248=LTDIE_265 - Ldebug_info_start
	.long LDIFF_SYM2248
	.byte 2,35,0,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException"

LDIFF_SYM2249=LTDIE_270 - Ldebug_info_start
	.long LDIFF_SYM2249
LTDIE_270_POINTER:

	.byte 13
LDIFF_SYM2250=LTDIE_270 - Ldebug_info_start
	.long LDIFF_SYM2250
LTDIE_270_REFERENCE:

	.byte 14
LDIFF_SYM2251=LTDIE_270 - Ldebug_info_start
	.long LDIFF_SYM2251
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderInternalCompilerException:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor"

	.byte 9,37
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2252=LTDIE_270_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2252
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2253=Lfde30_end - Lfde30_start
	.long LDIFF_SYM2253
Lfde30_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor

LDIFF_SYM2254=Lme_1e - Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor
	.long LDIFF_SYM2254
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.RuntimeBinderInternalCompilerException:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string"

	.byte 9,42
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2255=LTDIE_270_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2255
	.byte 2,141,16,3
	.asciz "message"

LDIFF_SYM2256=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2256
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2257=Lfde31_end - Lfde31_start
	.long LDIFF_SYM2257
Lfde31_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string

LDIFF_SYM2258=Lme_1f - Microsoft_CSharp_RuntimeBinder_RuntimeBinderInternalCompilerException__ctor_string
	.long LDIFF_SYM2258
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject"

	.byte 10,48
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2259=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2259
	.byte 1,103,3
	.asciz "binder"

LDIFF_SYM2260=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2260
	.byte 2,141,24,3
	.asciz "expr"

LDIFF_SYM2261=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2261
	.byte 2,141,32,3
	.asciz "errorSuggestion"

LDIFF_SYM2262=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2262
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2263=Lfde32_end - Lfde32_start
	.long LDIFF_SYM2263
Lfde32_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject

LDIFF_SYM2264=Lme_20 - Microsoft_CSharp_RuntimeBinder_CSharpBinder__ctor_System_Dynamic_DynamicMetaObjectBinder_Mono_CSharp_Expression_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2264
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:get_ResolveOptions"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions"

	.byte 10,56
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2265=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2265
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2266=Lfde33_end - Lfde33_start
	.long LDIFF_SYM2266
Lfde33_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions

LDIFF_SYM2267=Lme_21 - Microsoft_CSharp_RuntimeBinder_CSharpBinder_get_ResolveOptions
	.long LDIFF_SYM2267
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:AddRestrictions"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject"

	.byte 10,60
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2268=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2268
	.byte 2,141,16,3
	.asciz "arg"

LDIFF_SYM2269=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2269
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2270=Lfde34_end - Lfde34_start
	.long LDIFF_SYM2270
Lfde34_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject

LDIFF_SYM2271=Lme_22 - Microsoft_CSharp_RuntimeBinder_CSharpBinder_AddRestrictions_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2271
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_272:

	.byte 17
	.asciz "Mono_CSharp_IMemberContext"

	.byte 16,7
	.asciz "Mono_CSharp_IMemberContext"

LDIFF_SYM2272=LTDIE_272 - Ldebug_info_start
	.long LDIFF_SYM2272
LTDIE_272_POINTER:

	.byte 13
LDIFF_SYM2273=LTDIE_272 - Ldebug_info_start
	.long LDIFF_SYM2273
LTDIE_272_REFERENCE:

	.byte 14
LDIFF_SYM2274=LTDIE_272 - Ldebug_info_start
	.long LDIFF_SYM2274
LTDIE_271:

	.byte 5
	.asciz "Mono_CSharp_ResolveContext"

	.byte 56,16
LDIFF_SYM2275=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2275
	.byte 2,35,0,6
	.asciz "flags"

LDIFF_SYM2276=LTDIE_250 - Ldebug_info_start
	.long LDIFF_SYM2276
	.byte 2,35,48,6
	.asciz "CurrentAnonymousMethod"

LDIFF_SYM2277=LTDIE_120_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2277
	.byte 2,35,16,6
	.asciz "CurrentInitializerVariable"

LDIFF_SYM2278=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2278
	.byte 2,35,24,6
	.asciz "CurrentBlock"

LDIFF_SYM2279=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2279
	.byte 2,35,32,6
	.asciz "MemberContext"

LDIFF_SYM2280=LTDIE_272_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2280
	.byte 2,35,40,0,7
	.asciz "Mono_CSharp_ResolveContext"

LDIFF_SYM2281=LTDIE_271 - Ldebug_info_start
	.long LDIFF_SYM2281
LTDIE_271_POINTER:

	.byte 13
LDIFF_SYM2282=LTDIE_271 - Ldebug_info_start
	.long LDIFF_SYM2282
LTDIE_271_REFERENCE:

	.byte 14
LDIFF_SYM2283=LTDIE_271 - Ldebug_info_start
	.long LDIFF_SYM2283
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:Bind"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type"

	.byte 10,72
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2284=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2284
	.byte 2,141,24,3
	.asciz "ctx"

LDIFF_SYM2285=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2285
	.byte 2,141,32,3
	.asciz "callingType"

LDIFF_SYM2286=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2286
	.byte 2,141,40,11
	.asciz "res"

LDIFF_SYM2287=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2287
	.byte 2,141,48,11
	.asciz "rc"

LDIFF_SYM2288=LTDIE_271_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2288
	.byte 1,106,11
	.asciz ""

LDIFF_SYM2289=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2289
	.byte 2,141,56,11
	.asciz ""

LDIFF_SYM2290=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM2290
	.byte 3,141,192,0,11
	.asciz "e"

LDIFF_SYM2291=LTDIE_264_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2291
	.byte 3,141,200,0,11
	.asciz ""

LDIFF_SYM2292=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2292
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2293=Lfde35_end - Lfde35_start
	.long LDIFF_SYM2293
Lfde35_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type

LDIFF_SYM2294=Lme_23 - Microsoft_CSharp_RuntimeBinder_CSharpBinder_Bind_Microsoft_CSharp_RuntimeBinder_DynamicContext_System_Type
	.long LDIFF_SYM2294
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,154,24
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:CreateBinderException"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string"

	.byte 10,100
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2295=LTDIE_249_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2295
	.byte 2,141,16,3
	.asciz "message"

LDIFF_SYM2296=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2296
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2297=Lfde36_end - Lfde36_start
	.long LDIFF_SYM2297
Lfde36_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string

LDIFF_SYM2298=Lme_24 - Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateBinderException_string
	.long LDIFF_SYM2298
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:CreateRestrictionsOnTarget"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject"

	.byte 10,111
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "arg"

LDIFF_SYM2299=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2299
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2300=Lfde37_end - Lfde37_start
	.long LDIFF_SYM2300
Lfde37_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject

LDIFF_SYM2301=Lme_25 - Microsoft_CSharp_RuntimeBinder_CSharpBinder_CreateRestrictionsOnTarget_System_Dynamic_DynamicMetaObject
	.long LDIFF_SYM2301
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.CSharpBinder:.cctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor"

	.byte 10,41
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor
	.quad Lme_26

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2302=Lfde38_end - Lfde38_start
	.long LDIFF_SYM2302
Lfde38_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor

LDIFF_SYM2303=Lme_26 - Microsoft_CSharp_RuntimeBinder_CSharpBinder__cctor
	.long LDIFF_SYM2303
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_273:

	.byte 5
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter"

	.byte 32,16
LDIFF_SYM2304=LTDIE_144 - Ldebug_info_start
	.long LDIFF_SYM2304
	.byte 2,35,0,0,7
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter"

LDIFF_SYM2305=LTDIE_273 - Ldebug_info_start
	.long LDIFF_SYM2305
LTDIE_273_POINTER:

	.byte 13
LDIFF_SYM2306=LTDIE_273 - Ldebug_info_start
	.long LDIFF_SYM2306
LTDIE_273_REFERENCE:

	.byte 14
LDIFF_SYM2307=LTDIE_273 - Ldebug_info_start
	.long LDIFF_SYM2307
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.ErrorPrinter:.ctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor"

	.byte 11,38
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2308=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2308
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2309=Lfde39_end - Lfde39_start
	.long LDIFF_SYM2309
Lfde39_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor

LDIFF_SYM2310=Lme_27 - Microsoft_CSharp_RuntimeBinder_ErrorPrinter__ctor
	.long LDIFF_SYM2310
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.ErrorPrinter:get_HasRelatedSymbolSupport"
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport"

	.byte 11,44
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2311=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2311
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2312=Lfde40_end - Lfde40_start
	.long LDIFF_SYM2312
Lfde40_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport

LDIFF_SYM2313=Lme_28 - Microsoft_CSharp_RuntimeBinder_ErrorPrinter_get_HasRelatedSymbolSupport
	.long LDIFF_SYM2313
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_274:

	.byte 5
	.asciz "Mono_CSharp_AbstractMessage"

	.byte 40,16
LDIFF_SYM2314=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2314
	.byte 2,35,0,6
	.asciz "extra_info"

LDIFF_SYM2315=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2315
	.byte 2,35,16,6
	.asciz "code"

LDIFF_SYM2316=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2316
	.byte 2,35,32,6
	.asciz "location"

LDIFF_SYM2317=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2317
	.byte 2,35,36,6
	.asciz "message"

LDIFF_SYM2318=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2318
	.byte 2,35,24,0,7
	.asciz "Mono_CSharp_AbstractMessage"

LDIFF_SYM2319=LTDIE_274 - Ldebug_info_start
	.long LDIFF_SYM2319
LTDIE_274_POINTER:

	.byte 13
LDIFF_SYM2320=LTDIE_274 - Ldebug_info_start
	.long LDIFF_SYM2320
LTDIE_274_REFERENCE:

	.byte 14
LDIFF_SYM2321=LTDIE_274 - Ldebug_info_start
	.long LDIFF_SYM2321
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.ErrorPrinter:Print"
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool"

	.byte 11,51
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2322=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2322
	.byte 0,3
	.asciz "msg"

LDIFF_SYM2323=LTDIE_274_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2323
	.byte 1,106,3
	.asciz "showFullPath"

LDIFF_SYM2324=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2324
	.byte 0,11
	.asciz "text"

LDIFF_SYM2325=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM2325
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2326=Lfde41_end - Lfde41_start
	.long LDIFF_SYM2326
Lfde41_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool

LDIFF_SYM2327=Lme_29 - Microsoft_CSharp_RuntimeBinder_ErrorPrinter_Print_Mono_CSharp_AbstractMessage_bool
	.long LDIFF_SYM2327
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.ErrorPrinter:.cctor"
	.asciz "Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor"

	.byte 11,36
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor
	.quad Lme_2a

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2328=Lfde42_end - Lfde42_start
	.long LDIFF_SYM2328
Lfde42_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor

LDIFF_SYM2329=Lme_2a - Microsoft_CSharp_RuntimeBinder_ErrorPrinter__cctor
	.long LDIFF_SYM2329
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_275:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM2330=LTDIE_275 - Ldebug_info_start
	.long LDIFF_SYM2330
LTDIE_275_POINTER:

	.byte 13
LDIFF_SYM2331=LTDIE_275 - Ldebug_info_start
	.long LDIFF_SYM2331
LTDIE_275_REFERENCE:

	.byte 14
LDIFF_SYM2332=LTDIE_275 - Ldebug_info_start
	.long LDIFF_SYM2332
	.byte 2
	.asciz "Microsoft.CSharp.RuntimeBinder.Extensions:ToReadOnly<T_GSHAREDVT>"
	.asciz "Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT"

	.byte 6,41
	.quad Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "col"

LDIFF_SYM2333=LTDIE_275_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2333
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2334=Lfde43_end - Lfde43_start
	.long LDIFF_SYM2334
Lfde43_start:

	.long 0
	.align 3
	.quad Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT

LDIFF_SYM2335=Lme_2c - Microsoft_CSharp_RuntimeBinder_Extensions_ToReadOnly_T_GSHAREDVT_System_Collections_Generic_IEnumerable_1_T_GSHAREDVT
	.long LDIFF_SYM2335
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_276:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM2336=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2336
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM2337=LTDIE_276 - Ldebug_info_start
	.long LDIFF_SYM2337
LTDIE_276_POINTER:

	.byte 13
LDIFF_SYM2338=LTDIE_276 - Ldebug_info_start
	.long LDIFF_SYM2338
LTDIE_276_REFERENCE:

	.byte 14
LDIFF_SYM2339=LTDIE_276 - Ldebug_info_start
	.long LDIFF_SYM2339
	.byte 2
	.asciz "System.Array:InternalArray__Insert<T_REF>"
	.asciz "System_Array_InternalArray__Insert_T_REF_int_T_REF"

	.byte 12,160,1
	.quad System_Array_InternalArray__Insert_T_REF_int_T_REF
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2340=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2340
	.byte 2,141,16,3
	.asciz "index"

LDIFF_SYM2341=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2341
	.byte 0,3
	.asciz "item"

LDIFF_SYM2342=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2342
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2343=Lfde44_end - Lfde44_start
	.long LDIFF_SYM2343
Lfde44_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__Insert_T_REF_int_T_REF

LDIFF_SYM2344=Lme_2d - System_Array_InternalArray__Insert_T_REF_int_T_REF
	.long LDIFF_SYM2344
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__RemoveAt"
	.asciz "System_Array_InternalArray__RemoveAt_int"

	.byte 12,165,1
	.quad System_Array_InternalArray__RemoveAt_int
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2345=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2345
	.byte 0,3
	.asciz "index"

LDIFF_SYM2346=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2346
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2347=Lfde45_end - Lfde45_start
	.long LDIFF_SYM2347
Lfde45_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__RemoveAt_int

LDIFF_SYM2348=Lme_2e - System_Array_InternalArray__RemoveAt_int
	.long LDIFF_SYM2348
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IndexOf<T_REF>"
	.asciz "System_Array_InternalArray__IndexOf_T_REF_T_REF"

	.byte 12,170,1
	.quad System_Array_InternalArray__IndexOf_T_REF_T_REF
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2349=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2349
	.byte 1,105,3
	.asciz "item"

LDIFF_SYM2350=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2350
	.byte 1,106,11
	.asciz "length"

LDIFF_SYM2351=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2351
	.byte 1,104,11
	.asciz "i"

LDIFF_SYM2352=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2352
	.byte 1,103,11
	.asciz "value"

LDIFF_SYM2353=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2353
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2354=Lfde46_end - Lfde46_start
	.long LDIFF_SYM2354
Lfde46_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IndexOf_T_REF_T_REF

LDIFF_SYM2355=Lme_2f - System_Array_InternalArray__IndexOf_T_REF_T_REF
	.long LDIFF_SYM2355
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<T_REF>"
	.asciz "System_Array_InternalArray__get_Item_T_REF_int"

	.byte 12,197,1
	.quad System_Array_InternalArray__get_Item_T_REF_int
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2356=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2356
	.byte 2,141,24,3
	.asciz "index"

LDIFF_SYM2357=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2357
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM2358=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2358
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2359=Lfde47_end - Lfde47_start
	.long LDIFF_SYM2359
Lfde47_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_T_REF_int

LDIFF_SYM2360=Lme_30 - System_Array_InternalArray__get_Item_T_REF_int
	.long LDIFF_SYM2360
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__set_Item<T_REF>"
	.asciz "System_Array_InternalArray__set_Item_T_REF_int_T_REF"

	.byte 12,207,1
	.quad System_Array_InternalArray__set_Item_T_REF_int_T_REF
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2361=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2361
	.byte 1,104,3
	.asciz "index"

LDIFF_SYM2362=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2362
	.byte 2,141,48,3
	.asciz "item"

LDIFF_SYM2363=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2363
	.byte 2,141,56,11
	.asciz "oarray"

LDIFF_SYM2364=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2364
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2365=Lfde48_end - Lfde48_start
	.long LDIFF_SYM2365
Lfde48_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__set_Item_T_REF_int_T_REF

LDIFF_SYM2366=Lme_31 - System_Array_InternalArray__set_Item_T_REF_int_T_REF
	.long LDIFF_SYM2366
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_REF>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF"

	.byte 12,78
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2367=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2367
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2368=Lfde49_end - Lfde49_start
	.long LDIFF_SYM2368
Lfde49_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

LDIFF_SYM2369=Lme_32 - System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long LDIFF_SYM2369
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_277:

	.byte 5
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder`1"

	.byte 40,16
LDIFF_SYM2370=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM2370
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM2371=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2371
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM2372=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2372
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM2373=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2373
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM2374=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM2374
	.byte 2,35,24,0,7
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder`1"

LDIFF_SYM2375=LTDIE_277 - Ldebug_info_start
	.long LDIFF_SYM2375
LTDIE_277_POINTER:

	.byte 13
LDIFF_SYM2376=LTDIE_277 - Ldebug_info_start
	.long LDIFF_SYM2376
LTDIE_277_REFERENCE:

	.byte 14
LDIFF_SYM2377=LTDIE_277 - Ldebug_info_start
	.long LDIFF_SYM2377
LTDIE_278:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM2378=LTDIE_278 - Ldebug_info_start
	.long LDIFF_SYM2378
LTDIE_278_POINTER:

	.byte 13
LDIFF_SYM2379=LTDIE_278 - Ldebug_info_start
	.long LDIFF_SYM2379
LTDIE_278_REFERENCE:

	.byte 14
LDIFF_SYM2380=LTDIE_278 - Ldebug_info_start
	.long LDIFF_SYM2380
LTDIE_279:

	.byte 17
	.asciz "System_Collections_Generic_ICollection`1"

	.byte 16,7
	.asciz "System_Collections_Generic_ICollection`1"

LDIFF_SYM2381=LTDIE_279 - Ldebug_info_start
	.long LDIFF_SYM2381
LTDIE_279_POINTER:

	.byte 13
LDIFF_SYM2382=LTDIE_279 - Ldebug_info_start
	.long LDIFF_SYM2382
LTDIE_279_REFERENCE:

	.byte 14
LDIFF_SYM2383=LTDIE_279 - Ldebug_info_start
	.long LDIFF_SYM2383
LTDIE_280:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM2384=LTDIE_280 - Ldebug_info_start
	.long LDIFF_SYM2384
LTDIE_280_POINTER:

	.byte 13
LDIFF_SYM2385=LTDIE_280 - Ldebug_info_start
	.long LDIFF_SYM2385
LTDIE_280_REFERENCE:

	.byte 14
LDIFF_SYM2386=LTDIE_280 - Ldebug_info_start
	.long LDIFF_SYM2386
	.byte 2
	.asciz "System.Runtime.CompilerServices.ReadOnlyCollectionBuilder`1<T_REF>:.ctor"
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF"

	.byte 13,69
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2387=LTDIE_277_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2387
	.byte 2,141,32,3
	.asciz "collection"

LDIFF_SYM2388=LTDIE_278_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2388
	.byte 1,106,11
	.asciz "c"

LDIFF_SYM2389=LTDIE_279_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2389
	.byte 1,105,11
	.asciz "count"

LDIFF_SYM2390=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2390
	.byte 1,106,11
	.asciz "en"

LDIFF_SYM2391=LTDIE_280_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2391
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2392=Lfde50_end - Lfde50_start
	.long LDIFF_SYM2392
Lfde50_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF

LDIFF_SYM2393=Lme_33 - System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF__ctor_System_Collections_Generic_IEnumerable_1_T_REF
	.long LDIFF_SYM2393
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,153,12,154,11
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_281:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 32,16
LDIFF_SYM2394=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM2394
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM2395=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2395
	.byte 2,35,16,6
	.asciz "idx"

LDIFF_SYM2396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2396
	.byte 2,35,24,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM2397=LTDIE_281 - Ldebug_info_start
	.long LDIFF_SYM2397
LTDIE_281_POINTER:

	.byte 13
LDIFF_SYM2398=LTDIE_281 - Ldebug_info_start
	.long LDIFF_SYM2398
LTDIE_281_REFERENCE:

	.byte 14
LDIFF_SYM2399=LTDIE_281 - Ldebug_info_start
	.long LDIFF_SYM2399
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_REF>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_REF__ctor_System_Array"

	.byte 12,239,1
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2400=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM2400
	.byte 2,141,16,3
	.asciz "array"

LDIFF_SYM2401=LTDIE_276_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2401
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2402=Lfde51_end - Lfde51_start
	.long LDIFF_SYM2402
Lfde51_start:

	.long 0
	.align 3
	.quad System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

LDIFF_SYM2403=Lme_34 - System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long LDIFF_SYM2403
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ReadOnlyCollectionBuilder`1<T_REF>:Add"
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF"

	.byte 13,190,1
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2404=LTDIE_277_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2404
	.byte 2,141,16,3
	.asciz "item"

LDIFF_SYM2405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2405
	.byte 2,141,24,11
	.asciz ""

LDIFF_SYM2406=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2406
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2407=Lfde52_end - Lfde52_start
	.long LDIFF_SYM2407
Lfde52_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF

LDIFF_SYM2408=Lme_35 - System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_Add_T_REF
	.long LDIFF_SYM2408
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ReadOnlyCollectionBuilder`1<T_REF>:EnsureCapacity"
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int"

	.byte 13,169,3
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2409=LTDIE_277_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2409
	.byte 2,141,24,3
	.asciz "min"

LDIFF_SYM2410=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2410
	.byte 2,141,32,11
	.asciz "newCapacity"

LDIFF_SYM2411=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2411
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2412=Lfde53_end - Lfde53_start
	.long LDIFF_SYM2412
Lfde53_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int

LDIFF_SYM2413=Lme_36 - System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_EnsureCapacity_int
	.long LDIFF_SYM2413
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.CompilerServices.ReadOnlyCollectionBuilder`1<T_REF>:set_Capacity"
	.asciz "System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int"

	.byte 13,96
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM2414=LTDIE_277_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM2414
	.byte 2,141,24,3
	.asciz "value"

LDIFF_SYM2415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM2415
	.byte 1,106,11
	.asciz "newItems"

LDIFF_SYM2416=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM2416
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM2417=Lfde54_end - Lfde54_start
	.long LDIFF_SYM2417
Lfde54_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int

LDIFF_SYM2418=Lme_37 - System_Runtime_CompilerServices_ReadOnlyCollectionBuilder_1_T_REF_set_Capacity_int
	.long LDIFF_SYM2418
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
