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
	extrn	_bbGCFree
	extrn	_bbHandleToObject
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringFromInt
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_linkedlist_TList
	extrn	_brl_standardio_Print
	public	__bb_TObject_Delete
	public	__bb_TObject_New
	public	__bb_TRefManager_Collect
	public	__bb_TRefManager_Delete
	public	__bb_TRefManager_New
	public	__bb_TRef_Create
	public	__bb_TRef_Delete
	public	__bb_TRef_New
	public	__bb_main
	public	_bb_TObject
	public	_bb_TRef
	public	_bb_TRefManager
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	cmp	dword [_118],0
	je	_119
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_119:
	mov	dword [_118],1
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	push	ebp
	push	_107
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
	push	_bb_TRef
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TRefManager
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TObject
	call	_bbObjectRegisterType
	add	esp,4
	push	_73
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRefManager
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TObject
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_80
	call	_brl_blitz_NullObjectError
_80:
	mov	dword [ebx+8],42
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TObject
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_86
	call	_brl_blitz_NullObjectError
_86:
	mov	dword [ebx+8],24
	push	_88
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	push	_92
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	inc	dword [eax+4]
	lea	eax,dword [ebp-16]
	push	eax
	push	dword [ebp-4]
	push	dword [ebp-8]
	call	dword [_bb_TRef+48]
	add	esp,12
	mov	eax,dword [ebp-16]
	dec	dword [eax+4]
	jnz	_93
	push	dword [ebp-16]
	call	_bbGCFree
	add	esp,4
_93:
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	inc	dword [eax+4]
	lea	eax,dword [ebp-20]
	push	eax
	push	dword [ebp-4]
	push	dword [ebp-12]
	call	dword [_bb_TRef+48]
	add	esp,12
	mov	eax,dword [ebp-20]
	dec	dword [eax+4]
	jnz	_96
	push	dword [ebp-20]
	call	_bbGCFree
	add	esp,4
_96:
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	inc	dword [eax+4]
	lea	eax,dword [ebp-24]
	push	eax
	push	dword [ebp-4]
	push	_bb_TObject
	push	dword [ebp-28]
	call	_bbHandleToObject
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	dword [_bb_TRef+48]
	add	esp,12
	mov	eax,dword [ebp-24]
	dec	dword [eax+4]
	jnz	_100
	push	dword [ebp-24]
	call	_bbGCFree
	add	esp,4
_100:
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_106
	call	_brl_blitz_NullObjectError
_106:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,0
	jmp	_45
_45:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRef_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TRef
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	ebx,0
	jmp	_48
_48:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRef_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_51:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_125
	push	eax
	call	_bbGCFree
	add	esp,4
_125:
	mov	eax,0
	jmp	_123
_123:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRef_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRef
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_135
	push	eax
	call	_bbGCFree
	add	esp,4
_135:
	mov	dword [esi+8],ebx
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_140
	call	_brl_blitz_NullObjectError
_140:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	dec	dword [eax+4]
	jnz	_145
	push	eax
	call	_bbGCFree
	add	esp,4
_145:
	mov	eax,dword [ebp-12]
	mov	dword [eax],ebx
	push	_146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax]
	lea	eax,dword [eax+8]
	mov	dword [ebx+12],eax
	mov	ebx,0
	jmp	_56
_56:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRefManager_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TRefManager
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	ebx,0
	jmp	_59
_59:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRefManager_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_62:
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_158
	push	eax
	call	_bbGCFree
	add	esp,4
_158:
	mov	eax,0
	jmp	_156
_156:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRefManager_Collect:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	mov	edi,dword [ebx+8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_165
	call	_brl_blitz_NullObjectError
_165:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_22
_24:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_170
	call	_brl_blitz_NullObjectError
_170:
	push	_bb_TRef
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_22
	push	_171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_173
	call	_brl_blitz_NullObjectError
_173:
	mov	eax,dword [ebx+12]
	movzx	eax,byte [eax]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_22:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_24
_23:
	mov	ebx,0
	jmp	_65
_65:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TObject_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TObject
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	mov	ebx,0
	jmp	_68
_68:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TObject_Delete:
	push	ebp
	mov	ebp,esp
_71:
	mov	eax,0
	jmp	_176
_176:
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_118:
	dd	0
_108:
	db	"GarbageCollector_Test",0
_109:
	db	"RF",0
_110:
	db	":TRefManager",0
_111:
	db	"Obj1",0
_28:
	db	":TObject",0
_112:
	db	"Obj2",0
_113:
	db	"R1",0
_114:
	db	":TRef",0
_115:
	db	"R2",0
_116:
	db	"R3",0
_117:
	db	"Obj3",0
_44:
	db	"i",0
	align	4
_107:
	dd	1
	dd	_108
	dd	2
	dd	_109
	dd	_110
	dd	-4
	dd	2
	dd	_111
	dd	_28
	dd	-8
	dd	2
	dd	_112
	dd	_28
	dd	-12
	dd	2
	dd	_113
	dd	_114
	dd	-16
	dd	2
	dd	_115
	dd	_114
	dd	-20
	dd	2
	dd	_116
	dd	_114
	dd	-24
	dd	2
	dd	_117
	dd	_44
	dd	-28
	dd	0
_26:
	db	"TRef",0
_27:
	db	"Class",0
_29:
	db	"RefPtr",0
_30:
	db	"*b",0
_31:
	db	"New",0
_32:
	db	"()i",0
_33:
	db	"Delete",0
_34:
	db	"Create",0
_35:
	db	"(:TObject,:TRefManager,*:TRef)i",0
	align	4
_25:
	dd	2
	dd	_26
	dd	3
	dd	_27
	dd	_28
	dd	8
	dd	3
	dd	_29
	dd	_30
	dd	12
	dd	6
	dd	_31
	dd	_32
	dd	16
	dd	6
	dd	_33
	dd	_32
	dd	20
	dd	7
	dd	_34
	dd	_35
	dd	48
	dd	0
	align	4
_bb_TRef:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_25
	dd	16
	dd	__bb_TRef_New
	dd	__bb_TRef_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TRef_Create
_37:
	db	"TRefManager",0
_38:
	db	"Refs",0
_39:
	db	":brl.linkedlist.TList",0
_40:
	db	"Collect",0
	align	4
_36:
	dd	2
	dd	_37
	dd	3
	dd	_38
	dd	_39
	dd	8
	dd	6
	dd	_31
	dd	_32
	dd	16
	dd	6
	dd	_33
	dd	_32
	dd	20
	dd	6
	dd	_40
	dd	_32
	dd	48
	dd	0
	align	4
_bb_TRefManager:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_36
	dd	12
	dd	__bb_TRefManager_New
	dd	__bb_TRefManager_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TRefManager_Collect
_42:
	db	"TObject",0
_43:
	db	"Test",0
	align	4
_41:
	dd	2
	dd	_42
	dd	3
	dd	_43
	dd	_44
	dd	8
	dd	6
	dd	_31
	dd	_32
	dd	16
	dd	6
	dd	_33
	dd	_32
	dd	20
	dd	0
	align	4
_bb_TObject:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_41
	dd	12
	dd	__bb_TObject_New
	dd	__bb_TObject_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_74:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/GarbageCollector_Test.bmx",0
	align	4
_73:
	dd	_74
	dd	32
	dd	1
	align	4
_76:
	dd	_74
	dd	34
	dd	1
	align	4
_78:
	dd	_74
	dd	35
	dd	1
	align	4
_82:
	dd	_74
	dd	36
	dd	1
	align	4
_84:
	dd	_74
	dd	37
	dd	1
	align	4
_88:
	dd	_74
	dd	39
	dd	1
	align	4
_92:
	dd	_74
	dd	40
	dd	1
	align	4
_95:
	dd	_74
	dd	41
	dd	1
	align	4
_98:
	dd	_74
	dd	42
	dd	1
	align	4
_102:
	dd	_74
	dd	48
	dd	1
	align	4
_103:
	dd	_74
	dd	49
	dd	1
	align	4
_104:
	dd	_74
	dd	50
	dd	1
_122:
	db	"Self",0
	align	4
_121:
	dd	1
	dd	_31
	dd	2
	dd	_122
	dd	_114
	dd	-4
	dd	0
_151:
	db	"O",0
_152:
	db	"R",0
_153:
	db	"Ref",0
	align	4
_150:
	dd	1
	dd	_34
	dd	2
	dd	_151
	dd	_28
	dd	-4
	dd	2
	dd	_109
	dd	_110
	dd	-8
	dd	5
	dd	_152
	dd	_114
	dd	-12
	dd	2
	dd	_153
	dd	_114
	dd	-16
	dd	0
	align	4
_126:
	dd	_74
	dd	10
	dd	3
	align	4
_128:
	dd	_74
	dd	11
	dd	3
	align	4
_136:
	dd	_74
	dd	12
	dd	3
	align	4
_141:
	dd	_74
	dd	13
	dd	3
	align	4
_146:
	dd	_74
	dd	14
	dd	3
	align	4
_155:
	dd	1
	dd	_31
	dd	2
	dd	_122
	dd	_110
	dd	-4
	dd	0
	align	4
_174:
	dd	1
	dd	_40
	dd	2
	dd	_122
	dd	_110
	dd	-4
	dd	2
	dd	_152
	dd	_114
	dd	-8
	dd	0
	align	4
_159:
	dd	_74
	dd	20
	dd	3
	align	4
_171:
	dd	_74
	dd	21
	dd	4
	align	4
_175:
	dd	1
	dd	_31
	dd	2
	dd	_122
	dd	_28
	dd	-4
	dd	0
