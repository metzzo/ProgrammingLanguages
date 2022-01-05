	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
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
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_brl_blitz_NullObjectError
	public	__bb_TDataByte_Delete
	public	__bb_TDataByte_New
	public	__bb_TDataDouble_Delete
	public	__bb_TDataDouble_New
	public	__bb_TDataFloat_Delete
	public	__bb_TDataFloat_New
	public	__bb_TDataInt_Delete
	public	__bb_TDataInt_New
	public	__bb_TDataLong_Delete
	public	__bb_TDataLong_New
	public	__bb_TDataShort_Delete
	public	__bb_TDataShort_New
	public	__bb_main
	public	_bb_ByteToObject
	public	_bb_DoubleToObject
	public	_bb_FloatToObject
	public	_bb_IntToObject
	public	_bb_LongToObject
	public	_bb_ShortToObject
	public	_bb_TDataByte
	public	_bb_TDataDouble
	public	_bb_TDataFloat
	public	_bb_TDataInt
	public	_bb_TDataLong
	public	_bb_TDataShort
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_102],0
	je	_103
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_103:
	mov	dword [_102],1
	push	ebp
	push	_100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_appstub_appstub
	call	___bb_audio_audio
	call	___bb_bank_bank
	call	___bb_bankstream_bankstream
	call	___bb_basic_basic
	call	___bb_bmploader_bmploader
	call	___bb_d3d7max2d_d3d7max2d
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
	push	_bb_TDataFloat
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TDataInt
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TDataDouble
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TDataByte
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TDataShort
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TDataLong
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_44
_44:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_FloatToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	fld	dword [ebp+8]
	fstp	dword [ebp-4]
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataFloat
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_109
	call	_brl_blitz_NullObjectError
_109:
	fld	dword [ebp-4]
	fstp	dword [ebx+8]
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_47
_47:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataFloat_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataFloat
	mov	eax,dword [ebp-4]
	fldz
	fstp	dword [eax+8]
	mov	ebx,0
	jmp	_50
_50:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataFloat_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_53:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_119
_119:
	mov	esp,ebp
	pop	ebp
	ret
_bb_IntToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataInt
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+8],eax
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_56
_56:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataInt_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataInt
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	ebx,0
	jmp	_59
_59:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataInt_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_62:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_133
_133:
	mov	esp,ebp
	pop	ebp
	ret
_bb_DoubleToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	fld	qword [ebp+8]
	fstp	qword [ebp-8]
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataDouble
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	fld	qword [ebp-8]
	fstp	qword [ebx+8]
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataDouble_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataDouble
	mov	eax,dword [ebp-4]
	fldz
	fstp	qword [eax+8]
	mov	ebx,0
	jmp	_68
_68:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataDouble_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_71:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_147
_147:
	mov	esp,ebp
	pop	ebp
	ret
_bb_ByteToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	movzx	eax,byte [ebp+8]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataByte
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebx+8],al
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_74
_74:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataByte_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataByte
	mov	eax,dword [ebp-4]
	mov	byte [eax+8],0
	mov	ebx,0
	jmp	_77
_77:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataByte_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_80:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_161
_161:
	mov	esp,ebp
	pop	ebp
	ret
_bb_ShortToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	movzx	eax,word [ebp+8]
	mov	eax,eax
	mov	word [ebp-4],ax
	mov	dword [ebp-8],_bbNullObject
	push	ebp
	push	_169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataShort
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_166
	call	_brl_blitz_NullObjectError
_166:
	movzx	eax,word [ebp-4]
	mov	eax,eax
	mov	word [ebx+8],ax
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_83
_83:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataShort_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataShort
	mov	eax,dword [ebp-4]
	mov	word [eax+8],0
	mov	ebx,0
	jmp	_86
_86:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataShort_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_89:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_175
_175:
	mov	esp,ebp
	pop	ebp
	ret
_bb_LongToObject:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-4],eax
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDataLong
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+8],eax
	mov	eax,dword [ebp-4]
	mov	dword [ebx+12],eax
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_92
_92:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataLong_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDataLong
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	ebx,0
	jmp	_95
_95:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDataLong_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_98:
	mov	dword [eax],_bbObjectClass
	push	eax
	call	_bbObjectDtor
	add	esp,4
	mov	eax,0
	jmp	_189
_189:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_102:
	dd	0
_101:
	db	"Datentypen",0
	align	4
_100:
	dd	1
	dd	_101
	dd	0
_19:
	db	"TDataFloat",0
_20:
	db	"F",0
_21:
	db	"f",0
_22:
	db	"New",0
_23:
	db	"()i",0
_24:
	db	"Delete",0
	align	4
_18:
	dd	2
	dd	_19
	dd	3
	dd	_20
	dd	_21
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataFloat:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_18
	dd	12
	dd	__bb_TDataFloat_New
	dd	__bb_TDataFloat_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_26:
	db	"TDataInt",0
_27:
	db	"I",0
_28:
	db	"i",0
	align	4
_25:
	dd	2
	dd	_26
	dd	3
	dd	_27
	dd	_28
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataInt:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_25
	dd	12
	dd	__bb_TDataInt_New
	dd	__bb_TDataInt_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_30:
	db	"TDataDouble",0
_31:
	db	"d",0
	align	4
_29:
	dd	2
	dd	_30
	dd	3
	dd	_31
	dd	_31
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataDouble:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_29
	dd	16
	dd	__bb_TDataDouble_New
	dd	__bb_TDataDouble_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_33:
	db	"TDataByte",0
_34:
	db	"B",0
_35:
	db	"b",0
	align	4
_32:
	dd	2
	dd	_33
	dd	3
	dd	_34
	dd	_35
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataByte:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_32
	dd	9
	dd	__bb_TDataByte_New
	dd	__bb_TDataByte_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_37:
	db	"TDataShort",0
_38:
	db	"S",0
_39:
	db	"s",0
	align	4
_36:
	dd	2
	dd	_37
	dd	3
	dd	_38
	dd	_39
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataShort:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_36
	dd	10
	dd	__bb_TDataShort_New
	dd	__bb_TDataShort_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_41:
	db	"TDataLong",0
_42:
	db	"L",0
_43:
	db	"l",0
	align	4
_40:
	dd	2
	dd	_41
	dd	3
	dd	_42
	dd	_43
	dd	8
	dd	6
	dd	_22
	dd	_23
	dd	16
	dd	6
	dd	_24
	dd	_23
	dd	20
	dd	0
	align	4
_bb_TDataLong:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_40
	dd	16
	dd	__bb_TDataLong_New
	dd	__bb_TDataLong_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_113:
	db	"FloatToObject",0
_114:
	db	"F2",0
_115:
	db	"F1",0
_116:
	db	":TDataFloat",0
	align	4
_112:
	dd	1
	dd	_113
	dd	2
	dd	_114
	dd	_21
	dd	-4
	dd	2
	dd	_115
	dd	_116
	dd	-8
	dd	0
_105:
	db	"C:/Dokumente und Einstellungen/Robert/Desktop/Eigene Programme/Simple Script 3/Datentypen.bmx",0
	align	4
_104:
	dd	_105
	dd	4
	dd	2
	align	4
_107:
	dd	_105
	dd	5
	dd	2
	align	4
_111:
	dd	_105
	dd	6
	dd	2
_118:
	db	"Self",0
	align	4
_117:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_116
	dd	-4
	dd	0
_128:
	db	"IntToObject",0
_129:
	db	"I2",0
_130:
	db	"I1",0
_131:
	db	":TDataInt",0
	align	4
_127:
	dd	1
	dd	_128
	dd	2
	dd	_129
	dd	_28
	dd	-4
	dd	2
	dd	_130
	dd	_131
	dd	-8
	dd	0
	align	4
_120:
	dd	_105
	dd	14
	dd	2
	align	4
_122:
	dd	_105
	dd	15
	dd	2
	align	4
_126:
	dd	_105
	dd	16
	dd	2
	align	4
_132:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_131
	dd	-4
	dd	0
_142:
	db	"DoubleToObject",0
_143:
	db	"D2",0
_144:
	db	"D1",0
_145:
	db	":TDataDouble",0
	align	4
_141:
	dd	1
	dd	_142
	dd	2
	dd	_143
	dd	_31
	dd	-8
	dd	2
	dd	_144
	dd	_145
	dd	-12
	dd	0
	align	4
_134:
	dd	_105
	dd	23
	dd	2
	align	4
_136:
	dd	_105
	dd	24
	dd	2
	align	4
_140:
	dd	_105
	dd	25
	dd	2
	align	4
_146:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_145
	dd	-4
	dd	0
_156:
	db	"ByteToObject",0
_157:
	db	"B2",0
_158:
	db	"B1",0
_159:
	db	":TDataByte",0
	align	4
_155:
	dd	1
	dd	_156
	dd	2
	dd	_157
	dd	_35
	dd	-4
	dd	2
	dd	_158
	dd	_159
	dd	-8
	dd	0
	align	4
_148:
	dd	_105
	dd	32
	dd	2
	align	4
_150:
	dd	_105
	dd	33
	dd	2
	align	4
_154:
	dd	_105
	dd	34
	dd	2
	align	4
_160:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_159
	dd	-4
	dd	0
_170:
	db	"ShortToObject",0
_171:
	db	"S2",0
_172:
	db	"S1",0
_173:
	db	":TDataShort",0
	align	4
_169:
	dd	1
	dd	_170
	dd	2
	dd	_171
	dd	_39
	dd	-4
	dd	2
	dd	_172
	dd	_173
	dd	-8
	dd	0
	align	4
_162:
	dd	_105
	dd	42
	dd	2
	align	4
_164:
	dd	_105
	dd	43
	dd	2
	align	4
_168:
	dd	_105
	dd	44
	dd	2
	align	4
_174:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_173
	dd	-4
	dd	0
_184:
	db	"LongToObject",0
_185:
	db	"L2",0
_186:
	db	"L1",0
_187:
	db	":TDataLong",0
	align	4
_183:
	dd	1
	dd	_184
	dd	2
	dd	_185
	dd	_43
	dd	-8
	dd	2
	dd	_186
	dd	_187
	dd	-12
	dd	0
	align	4
_176:
	dd	_105
	dd	52
	dd	2
	align	4
_178:
	dd	_105
	dd	53
	dd	2
	align	4
_182:
	dd	_105
	dd	54
	dd	2
	align	4
_188:
	dd	1
	dd	_22
	dd	2
	dd	_118
	dd	_187
	dd	-4
	dd	0
