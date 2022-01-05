	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
	extrn	___bb_d3d9max2d_d3d9max2d
	extrn	___bb_data_data
	extrn	___bb_directsoundaudio_directsoundaudio
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_freeaudioaudio_freeaudioaudio
	extrn	___bb_freejoy_freejoy
	extrn	___bb_freeprocess_freeprocess
	extrn	___bb_freetypefont_freetypefont
	extrn	___bb_glew_glew
	extrn	___bb_gnet_gnet
	extrn	___bb_jpgloader_jpgloader
	extrn	___bb_libxml_libxml
	extrn	___bb_macos_macos
	extrn	___bb_map_map
	extrn	___bb_maxlua_maxlua
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_threads_threads
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbAppDir
	extrn	_bbNullObject
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringAsc
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringSlice
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_filesystem_CloseFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_linkedlist_TList
	extrn	_brl_retro_Mid
	extrn	_brl_retro_Replace
	extrn	_brl_stream_WriteLine
	extrn	_brl_system_OpenURL
	public	__bb_main
	public	_bb_AddChild
	public	_bb_Execute
	public	_bb_IsFLoat
	public	_bb_IsInt
	public	_bb_IsString
	public	_bb_IsValidVarName
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_62],0
	je	_63
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_63:
	mov	dword [_62],1
	push	ebp
	push	_60
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
	call	___bb_d3d9max2d_d3d9max2d
	call	___bb_data_data
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_map_map
	call	___bb_maxlua_maxlua
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_threads_threads
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	mov	ebx,0
	jmp	_39
_39:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AddChild:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_77
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_66
	push	ebp
	push	_68
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_43
_66:
	push	_69
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_73
	call	_brl_blitz_NullObjectError
_73:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_76
	call	_brl_blitz_NullObjectError
_76:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+152]
	add	esp,8
	mov	ebx,0
	jmp	_43
_43:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Execute:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_93
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	_26
	push	_25
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-8],eax
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_28
	push	dword [ebp-8]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_26
	push	_25
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	push	_29
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-8]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	_30
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-8]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-8]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	push	dword [ebp-8]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_91
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	_26
	push	_25
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_OpenURL
	add	esp,4
	mov	ebx,0
	jmp	_46
_46:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsInt:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	byte [ebp-4],0
	push	ebp
	push	_118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_101
_35:
	push	ebp
	push	_113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_106
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_106:
	cmp	eax,0
	je	_108
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_108:
	cmp	eax,0
	je	_110
	push	ebp
	push	_112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_49
_110:
	call	dword [_bbOnDebugLeaveScope]
_33:
	add	dword [ebp-12],1
_101:
	cmp	dword [ebp-12],ebx
	jle	_35
_34:
	push	_117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_49
_49:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsFLoat:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],0
	mov	byte [ebp-4],0
	push	ebp
	push	_139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_123
_38:
	push	ebp
	push	_137
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-12]
	push	dword [ebp-8]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_128
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_128:
	cmp	eax,0
	je	_130
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_130:
	cmp	eax,0
	je	_132
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_132:
	cmp	eax,0
	je	_134
	push	ebp
	push	_136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_52
_134:
	call	dword [_bbOnDebugLeaveScope]
_36:
	add	dword [ebp-12],1
_123:
	cmp	dword [ebp-12],ebx
	jle	_38
_37:
	push	_138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_52
_52:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsString:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	1
	push	0
	push	dword [ebp-4]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_143
	mov	eax,dword [ebp-4]
	push	dword [eax+8]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-4]
	call	_bbStringSlice
	add	esp,12
	mov	eax,dword [eax+8]
_143:
	cmp	eax,0
	je	_145
	push	ebp
	push	_147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_55
_145:
	push	ebp
	push	_150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_55
_55:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsValidVarName:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	jmp	_58
_58:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_62:
	dd	0
_61:
	db	"Util_CPB",0
	align	4
_60:
	dd	1
	dd	_61
	dd	0
_78:
	db	"AddChild",0
_79:
	db	"Parent",0
_80:
	db	":bah.libxml.TxmlNode",0
_81:
	db	"Child",0
_82:
	db	"List",0
_83:
	db	":brl.linkedlist.TList",0
	align	4
_77:
	dd	1
	dd	_78
	dd	2
	dd	_79
	dd	_80
	dd	-4
	dd	2
	dd	_81
	dd	_80
	dd	-8
	dd	2
	dd	_82
	dd	_83
	dd	-12
	dd	0
_65:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/Util_CPB.bmx",0
	align	4
_64:
	dd	_65
	dd	5
	dd	2
	align	4
_68:
	dd	3
	dd	0
	dd	0
	align	4
_67:
	dd	_65
	dd	5
	dd	21
	align	4
_69:
	dd	_65
	dd	6
	dd	2
	align	4
_71:
	dd	_65
	dd	7
	dd	2
	align	4
_74:
	dd	_65
	dd	8
	dd	2
_94:
	db	"Execute",0
_95:
	db	"Path",0
_96:
	db	"$",0
_97:
	db	"BatFile",0
_98:
	db	":brl.stream.TStream",0
	align	4
_93:
	dd	1
	dd	_94
	dd	2
	dd	_95
	dd	_96
	dd	-4
	dd	2
	dd	_97
	dd	_98
	dd	-8
	dd	0
	align	4
_84:
	dd	_65
	dd	12
	dd	2
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	92,99,97,108,108,46,98,97,116
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_86:
	dd	_65
	dd	13
	dd	2
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	64,101,99,104,111,32,111,110
	align	4
_87:
	dd	_65
	dd	14
	dd	2
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	99,100,32
	align	4
_88:
	dd	_65
	dd	15
	dd	2
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	103,99,99,32,45,111,32,109,97,105,110,46,101,120,101,32
	align	4
_89:
	dd	_65
	dd	16
	dd	2
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	109,97,105,110,46,101,120,101
	align	4
_90:
	dd	_65
	dd	17
	dd	2
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,117,115,101
	align	4
_91:
	dd	_65
	dd	18
	dd	2
	align	4
_92:
	dd	_65
	dd	20
	dd	2
_119:
	db	"IsInt",0
_120:
	db	"text",0
	align	4
_118:
	dd	1
	dd	_119
	dd	2
	dd	_120
	dd	_96
	dd	-8
	dd	0
	align	4
_99:
	dd	_65
	dd	24
	dd	2
_114:
	db	"i",0
_115:
	db	"a",0
_116:
	db	"b",0
	align	4
_113:
	dd	3
	dd	0
	dd	2
	dd	_114
	dd	_114
	dd	-12
	dd	2
	dd	_115
	dd	_116
	dd	-4
	dd	0
	align	4
_103:
	dd	_65
	dd	25
	dd	3
	align	4
_105:
	dd	_65
	dd	26
	dd	3
	align	4
_112:
	dd	3
	dd	0
	dd	0
	align	4
_111:
	dd	_65
	dd	27
	dd	4
	align	4
_117:
	dd	_65
	dd	30
	dd	2
_140:
	db	"IsFLoat",0
	align	4
_139:
	dd	1
	dd	_140
	dd	2
	dd	_120
	dd	_96
	dd	-8
	dd	0
	align	4
_121:
	dd	_65
	dd	33
	dd	2
	align	4
_137:
	dd	3
	dd	0
	dd	2
	dd	_114
	dd	_114
	dd	-12
	dd	2
	dd	_115
	dd	_116
	dd	-4
	dd	0
	align	4
_125:
	dd	_65
	dd	34
	dd	3
	align	4
_127:
	dd	_65
	dd	35
	dd	3
	align	4
_136:
	dd	3
	dd	0
	dd	0
	align	4
_135:
	dd	_65
	dd	36
	dd	4
	align	4
_138:
	dd	_65
	dd	39
	dd	2
_152:
	db	"IsString",0
_153:
	db	"Text",0
	align	4
_151:
	dd	1
	dd	_152
	dd	2
	dd	_153
	dd	_96
	dd	-4
	dd	0
	align	4
_141:
	dd	_65
	dd	42
	dd	2
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_147:
	dd	3
	dd	0
	dd	0
	align	4
_146:
	dd	_65
	dd	42
	dd	66
	align	4
_150:
	dd	3
	dd	0
	dd	0
	align	4
_149:
	dd	_65
	dd	42
	dd	83
_156:
	db	"IsValidVarName",0
	align	4
_155:
	dd	1
	dd	_156
	dd	2
	dd	_153
	dd	_96
	dd	-4
	dd	0
	align	4
_154:
	dd	_65
	dd	45
	dd	2
