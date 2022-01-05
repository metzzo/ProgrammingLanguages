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
	extrn	_bah_libxml_TxmlNode
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbStringClass
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_linkedlist_TList
	extrn	_brl_map_TMap
	public	___bb_crossplatformbasic_tcompiler_identifier
	public	__bb_TIdentifierFunction_AddParameter
	public	__bb_TIdentifierFunction_Delete
	public	__bb_TIdentifierFunction_New
	public	__bb_TIdentifierFunction_use
	public	__bb_TIdentifierType_Delete
	public	__bb_TIdentifierType_New
	public	__bb_TIdentifierVariable_Delete
	public	__bb_TIdentifierVariable_New
	public	__bb_TIdentifierVariable_ToNode
	public	__bb_TIdentifier_Create
	public	__bb_TIdentifier_Delete
	public	__bb_TIdentifier_New
	public	__bb_TIdentifier_ToNode
	public	__bb_TParameter_Create
	public	__bb_TParameter_Delete
	public	__bb_TParameter_New
	public	_bb_TIdentifier
	public	_bb_TIdentifierFunction
	public	_bb_TIdentifierType
	public	_bb_TIdentifierVariable
	public	_bb_TParameter
	section	"code" code
___bb_crossplatformbasic_tcompiler_identifier:
	push	ebp
	mov	ebp,esp
	cmp	dword [_129],0
	je	_130
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_130:
	mov	dword [_129],1
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
	push	_bb_TIdentifier
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TIdentifierType
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_69
_69:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TIdentifier
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,0
	jmp	_72
_72:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_75:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_135
	push	eax
	call	_bbGCFree
	add	esp,4
_135:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_137
	push	eax
	call	_bbGCFree
	add	esp,4
_137:
	mov	eax,0
	jmp	_133
_133:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,dword [ebp+16]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_141
	push	eax
	call	_bbGCFree
	add	esp,4
_141:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_145
	push	eax
	call	_bbGCFree
	add	esp,4
_145:
	mov	dword [esi+12],ebx
	mov	eax,esi
	jmp	_80
_80:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_ToNode:
	push	ebp
	mov	ebp,esp
	mov	eax,_bbNullObject
	jmp	_84
_84:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifier_New
	add	esp,4
	mov	dword [ebx],_bb_TIdentifierFunction
	push	_brl_map_TMap
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	byte [ebx+24],0
	mov	byte [ebx+25],0
	mov	eax,0
	jmp	_87
_87:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_90:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_150
	push	eax
	call	_bbGCFree
	add	esp,4
_150:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_152
	push	eax
	call	_bbGCFree
	add	esp,4
_152:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_148
_148:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_use:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,dword [ebp+8]
	mov	byte [eax+25],1
	mov	byte [ebp-4],0
	jmp	_93
_93:
	movzx	eax,byte [ebp-4]
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_AddParameter:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp+20]
	push	ebx
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [edi+16]
	push	ebx
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
	mov	eax,dword [edi+20]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_99
_99:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifier_New
	add	esp,4
	mov	dword [ebx],_bb_TIdentifierVariable
	mov	dword [ebx+16],0
	mov	eax,0
	jmp	_102
_102:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_105:
	mov	dword [eax],_bb_TIdentifier
	push	eax
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_157
_157:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_ToNode:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	cmp	dword [esi+16],0
	je	_158
	cmp	eax,_bbNullObject
	jne	_159
	push	_25
	call	_brl_blitz_RuntimeError
	add	esp,4
_159:
	call	_bbEnd
	push	_bbNullObject
	push	_26
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	_4
	push	_bbNullObject
	push	_27
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	_4
	push	_bbNullObject
	push	_28
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	dword [esi+12]
	push	_27
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	edx,1
	mov	eax,dword [esi+16]
	jmp	_165
_31:
_29:
	add	edx,1
_165:
	cmp	edx,eax
	jle	_31
_30:
	jmp	_167
_158:
	push	_bbNullObject
	push	_28
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	push	dword [esi+12]
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	jmp	_109
_167:
	mov	eax,_bbNullObject
	jmp	_109
_109:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierType_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifier_New
	add	esp,4
	mov	dword [ebx],_bb_TIdentifierType
	mov	eax,0
	jmp	_112
_112:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierType_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_115:
	mov	dword [eax],_bb_TIdentifier
	push	eax
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_170
_170:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TParameter
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,0
	jmp	_118
_118:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_121:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_177
	push	eax
	call	_bbGCFree
	add	esp,4
_177:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_179
	push	eax
	call	_bbGCFree
	add	esp,4
_179:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_181
	push	eax
	call	_bbGCFree
	add	esp,4
_181:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_183
	push	eax
	call	_bbGCFree
	add	esp,4
_183:
	mov	eax,0
	jmp	_175
_175:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	edi,dword [ebp+16]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_187
	push	eax
	call	_bbGCFree
	add	esp,4
_187:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_191
	push	eax
	call	_bbGCFree
	add	esp,4
_191:
	mov	dword [esi+12],ebx
	mov	ebx,dword [ebp+20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_195
	push	eax
	call	_bbGCFree
	add	esp,4
_195:
	mov	dword [esi+16],ebx
	mov	eax,esi
	jmp	_127
_127:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_129:
	dd	0
_33:
	db	"TIdentifier",0
_34:
	db	"Datatype",0
_35:
	db	"$",0
_36:
	db	"Name",0
_37:
	db	"New",0
_38:
	db	"()i",0
_39:
	db	"Delete",0
_40:
	db	"Create",0
_41:
	db	"($,$):TIdentifier",0
_42:
	db	"ToNode",0
_43:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_32:
	dd	2
	dd	_33
	dd	3
	dd	_34
	dd	_35
	dd	8
	dd	3
	dd	_36
	dd	_35
	dd	12
	dd	6
	dd	_37
	dd	_38
	dd	16
	dd	6
	dd	_39
	dd	_38
	dd	20
	dd	6
	dd	_40
	dd	_41
	dd	48
	dd	6
	dd	_42
	dd	_43
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_32
	dd	16
	dd	__bb_TIdentifier_New
	dd	__bb_TIdentifier_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
_45:
	db	"TIdentifierFunction",0
_46:
	db	"Param",0
_47:
	db	":brl.map.TMap",0
_48:
	db	"ParamList",0
_49:
	db	":brl.linkedlist.TList",0
_50:
	db	"UserFunc",0
_51:
	db	"b",0
_52:
	db	"Used",0
_53:
	db	"use",0
_54:
	db	"()b",0
_55:
	db	"AddParameter",0
_56:
	db	"($,$,$)i",0
	align	4
_44:
	dd	2
	dd	_45
	dd	3
	dd	_46
	dd	_47
	dd	16
	dd	3
	dd	_48
	dd	_49
	dd	20
	dd	3
	dd	_50
	dd	_51
	dd	24
	dd	3
	dd	_52
	dd	_51
	dd	25
	dd	6
	dd	_37
	dd	_38
	dd	16
	dd	6
	dd	_39
	dd	_38
	dd	20
	dd	6
	dd	_53
	dd	_54
	dd	56
	dd	6
	dd	_55
	dd	_56
	dd	60
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_44
	dd	26
	dd	__bb_TIdentifierFunction_New
	dd	__bb_TIdentifierFunction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
	dd	__bb_TIdentifierFunction_use
	dd	__bb_TIdentifierFunction_AddParameter
_58:
	db	"TIdentifierVariable",0
_59:
	db	"IsArray",0
_60:
	db	"i",0
	align	4
_57:
	dd	2
	dd	_58
	dd	3
	dd	_59
	dd	_60
	dd	16
	dd	6
	dd	_37
	dd	_38
	dd	16
	dd	6
	dd	_39
	dd	_38
	dd	20
	dd	6
	dd	_42
	dd	_43
	dd	52
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_57
	dd	20
	dd	__bb_TIdentifierVariable_New
	dd	__bb_TIdentifierVariable_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifierVariable_ToNode
_62:
	db	"TIdentifierType",0
	align	4
_61:
	dd	2
	dd	_62
	dd	6
	dd	_37
	dd	_38
	dd	16
	dd	6
	dd	_39
	dd	_38
	dd	20
	dd	0
	align	4
_bb_TIdentifierType:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_61
	dd	16
	dd	__bb_TIdentifierType_New
	dd	__bb_TIdentifierType_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
_64:
	db	"TParameter",0
_65:
	db	"Pre",0
_66:
	db	"Node",0
_67:
	db	":bah.libxml.TxmlNode",0
_68:
	db	"($,$,$):TParameter",0
	align	4
_63:
	dd	2
	dd	_64
	dd	3
	dd	_36
	dd	_35
	dd	8
	dd	3
	dd	_34
	dd	_35
	dd	12
	dd	3
	dd	_65
	dd	_35
	dd	16
	dd	3
	dd	_66
	dd	_67
	dd	20
	dd	6
	dd	_37
	dd	_38
	dd	16
	dd	6
	dd	_39
	dd	_38
	dd	20
	dd	6
	dd	_40
	dd	_68
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_63
	dd	24
	dd	__bb_TParameter_New
	dd	__bb_TParameter_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TParameter_Create
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	67,97,110,110,111,116,32,102,105,110,100,32,73,110,102,111
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
