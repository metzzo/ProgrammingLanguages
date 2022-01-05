	format	MS COFF
	extrn	___bb_appstub_appstub
	extrn	___bb_audio_audio
	extrn	___bb_bank_bank
	extrn	___bb_bankstream_bankstream
	extrn	___bb_basic_basic
	extrn	___bb_blitz_blitz
	extrn	___bb_bmploader_bmploader
	extrn	___bb_d3d7max2d_d3d7max2d
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
	extrn	___bb_maxutil_maxutil
	extrn	___bb_oggloader_oggloader
	extrn	___bb_openalaudio_openalaudio
	extrn	___bb_pngloader_pngloader
	extrn	___bb_reflection_reflection
	extrn	___bb_retro_retro
	extrn	___bb_tgaloader_tgaloader
	extrn	___bb_timer_timer
	extrn	___bb_wavloader_wavloader
	extrn	_bbEmptyString
	extrn	_bbNullObject
	extrn	_bbObjectDowncast
	extrn	_bbObjectNew
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringAsc
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_reflection_ArrayTypeId
	extrn	_brl_reflection_ObjectTypeId
	extrn	_brl_reflection_StringTypeId
	extrn	_brl_reflection_TField
	extrn	_brl_reflection_TTypeId
	extrn	_brl_retro_Mid
	public	__bb_main
	public	_bb_After
	public	_bb_Before
	public	_bb_CloneObject
	public	_bb_InsertAfter
	public	_bb_InsertBefore
	public	_bb_IsFLoat
	public	_bb_IsInt
	public	_bb_IsString
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_72],0
	je	_73
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_73:
	mov	dword [_72],1
	push	ebp
	push	_70
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
	call	___bb_directsoundaudio_directsoundaudio
	call	___bb_eventqueue_eventqueue
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_gnet_gnet
	call	___bb_jpgloader_jpgloader
	call	___bb_maxutil_maxutil
	call	___bb_oggloader_oggloader
	call	___bb_openalaudio_openalaudio
	call	___bb_pngloader_pngloader
	call	___bb_reflection_reflection
	call	___bb_retro_retro
	call	___bb_tgaloader_tgaloader
	call	___bb_timer_timer
	call	___bb_wavloader_wavloader
	call	___bb_freejoy_freejoy
	call	___bb_freeprocess_freeprocess
	call	___bb_glew_glew
	call	___bb_macos_macos
	mov	ebx,0
_38:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_CloneObject:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_181
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_74
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_78
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_41
_78:
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_brl_reflection_TTypeId+124]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_82
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_84
	call	_brl_blitz_NullObjectError
_84:
	push	dword [_brl_reflection_StringTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	je	_85
	push	_86
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbStringClass
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_88
	mov	ebx,_bbEmptyString
_88:
	jmp	_41
_85:
	push	_89
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_91
	call	_brl_blitz_NullObjectError
_91:
	push	dword [_brl_reflection_ArrayTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	je	_92
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_95
	call	_brl_blitz_NullObjectError
_95:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	cmp	eax,0
	jle	_96
	push	_97
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_99
	call	_brl_blitz_NullObjectError
_99:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_101
	call	_brl_blitz_NullObjectError
_101:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_103
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_107
	call	_brl_blitz_NullObjectError
_107:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	mov	edi,eax
	jmp	_108
_20:
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_112
	call	_brl_blitz_NullObjectError
_112:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_114
	call	_brl_blitz_NullObjectError
_114:
	push	dword [_brl_reflection_ArrayTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	jne	_119
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_116
	call	_brl_blitz_NullObjectError
_116:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_118
	call	_brl_blitz_NullObjectError
_118:
	push	dword [_brl_reflection_StringTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
_119:
	cmp	eax,0
	jne	_125
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_122
	call	_brl_blitz_NullObjectError
_122:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_124
	call	_brl_blitz_NullObjectError
_124:
	push	dword [_brl_reflection_ObjectTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
_125:
	cmp	eax,0
	je	_127
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_132
	call	_brl_blitz_NullObjectError
_132:
	push	dword [ebp-16]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,12
	push	eax
	call	_bb_CloneObject
	add	esp,4
	push	eax
	push	dword [ebp-16]
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,16
	jmp	_133
_127:
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_136
	call	_brl_blitz_NullObjectError
_136:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	push	dword [ebp-16]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,12
	push	eax
	push	dword [ebp-16]
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+116]
	add	esp,16
_133:
_18:
	add	dword [ebp-16],1
_108:
	cmp	dword [ebp-16],edi
	jl	_20
_19:
_103:
_96:
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_41
_92:
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_144
	call	_brl_blitz_NullObjectError
_144:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	mov	dword [ebp-28],eax
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_21
_23:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	push	_brl_reflection_TField
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_21
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_155
	call	_brl_blitz_NullObjectError
_155:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_159
	call	_brl_blitz_NullObjectError
_159:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_162
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_161
	call	_brl_blitz_NullObjectError
_161:
	push	_bbEmptyString
	push	_24
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_162:
	cmp	eax,0
	je	_164
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	push	_25
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	eax,dword [eax+8]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_168
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_173
	call	_brl_blitz_NullObjectError
_173:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bb_CloneObject
	add	esp,4
	push	eax
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+88]
	add	esp,12
	jmp	_174
_168:
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_179
	call	_brl_blitz_NullObjectError
_179:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+88]
	add	esp,12
_174:
_164:
_21:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_23
_22:
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
_41:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
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
	push	_204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_194
_28:
	push	_196
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
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_199
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_199:
	cmp	eax,0
	je	_201
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_44
_201:
_26:
	add	dword [ebp-12],1
_194:
	cmp	dword [ebp-12],ebx
	jle	_28
_27:
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
_44:
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
	push	_224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_212
_31:
	push	_214
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
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_217
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_217:
	cmp	eax,0
	je	_219
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_219:
	cmp	eax,0
	je	_221
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_47
_221:
_29:
	add	dword [ebp-12],1
_212:
	cmp	dword [ebp-12],ebx
	jle	_31
_30:
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
_47:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsString:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	push	ebp
	push	_244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+8]
	jmp	_228
_34:
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [ebp-8]
	push	dword [ebp-4]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	dword [ebp-12],eax
	push	_232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,65
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_233
	mov	eax,dword [ebp-12]
	cmp	eax,90
	setg	al
	movzx	eax,al
_233:
	cmp	eax,0
	je	_235
	mov	eax,dword [ebp-12]
	cmp	eax,95
	setne	al
	movzx	eax,al
_235:
	cmp	eax,0
	je	_237
	mov	eax,dword [ebp-12]
	cmp	eax,97
	setl	al
	movzx	eax,al
_237:
	cmp	eax,0
	je	_239
	mov	eax,dword [ebp-12]
	cmp	eax,122
	setg	al
	movzx	eax,al
_239:
	cmp	eax,0
	je	_241
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_50
_241:
_32:
	add	dword [ebp-8],1
_228:
	cmp	dword [ebp-8],ebx
	jle	_34
_33:
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
_50:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_After:
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
	push	_264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_247
	mov	eax,dword [ebp-4]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_247:
	cmp	eax,0
	je	_249
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_54
_249:
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_253
	call	_brl_blitz_NullObjectError
_253:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_258
	push	_259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	jmp	_54
_258:
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
_54:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Before:
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
	push	_289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_271
	push	_272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_blitz_RuntimeError
	add	esp,4
_271:
	push	_273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_274
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	call	_brl_blitz_RuntimeError
	add	esp,4
_274:
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_278
	call	_brl_blitz_NullObjectError
_278:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_283
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	jmp	_58
_283:
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
_58:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_InsertAfter:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_295
	call	_brl_blitz_NullObjectError
_295:
	push	dword [ebp-12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	push	eax
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,12
	mov	ebx,0
_63:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_InsertBefore:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_301
	push	_302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	call	_brl_blitz_RuntimeError
	add	esp,4
_301:
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	push	dword [ebp-12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	push	eax
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	ebx,0
_68:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_72:
	dd	0
_71:
	db	"Util",0
	align	4
_70:
	dd	1
	dd	_71
	dd	0
_182:
	db	"CloneObject",0
_183:
	db	"obj",0
_184:
	db	":Object",0
_185:
	db	"cobj",0
_186:
	db	"objId",0
_187:
	db	":brl.reflection.TTypeId",0
_188:
	db	"i",0
_189:
	db	"fld",0
_190:
	db	":brl.reflection.TField",0
_191:
	db	"fldId",0
	align	4
_181:
	dd	1
	dd	_182
	dd	2
	dd	_183
	dd	_184
	dd	-4
	dd	2
	dd	_185
	dd	_184
	dd	-8
	dd	2
	dd	_186
	dd	_187
	dd	-12
	dd	2
	dd	_188
	dd	_188
	dd	-16
	dd	2
	dd	_189
	dd	_190
	dd	-20
	dd	2
	dd	_191
	dd	_187
	dd	-24
	dd	0
_75:
	db	"E:/Eigene Programme/Simple Script 3/Classes/Util.bmx",0
	align	4
_74:
	dd	_75
	dd	9
	dd	2
	align	4
_77:
	dd	_75
	dd	11
	dd	2
	align	4
_79:
	dd	_75
	dd	11
	dd	19
	align	4
_80:
	dd	_75
	dd	13
	dd	2
	align	4
_82:
	dd	_75
	dd	15
	dd	2
	align	4
_86:
	dd	_75
	dd	16
	dd	3
	align	4
_89:
	dd	_75
	dd	19
	dd	2
	align	4
_93:
	dd	_75
	dd	20
	dd	3
	align	4
_97:
	dd	_75
	dd	21
	dd	4
	align	4
_102:
	dd	_75
	dd	23
	dd	4
	align	4
_104:
	dd	_75
	dd	24
	dd	5
	align	4
_110:
	dd	_75
	dd	25
	dd	6
	align	4
_128:
	dd	_75
	dd	27
	dd	7
	align	4
_134:
	dd	_75
	dd	29
	dd	7
	align	4
_139:
	dd	_75
	dd	35
	dd	3
	align	4
_140:
	dd	_75
	dd	38
	dd	2
	align	4
_141:
	dd	_75
	dd	40
	dd	2
	align	4
_153:
	dd	_75
	dd	41
	dd	3
	align	4
_157:
	dd	_75
	dd	43
	dd	3
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,111,67,108,111,110,101
	align	4
_165:
	dd	_75
	dd	44
	dd	4
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	67,108,111,110,101
	align	4
_169:
	dd	_75
	dd	45
	dd	5
	align	4
_175:
	dd	_75
	dd	47
	dd	5
	align	4
_180:
	dd	_75
	dd	52
	dd	2
_205:
	db	"IsInt",0
_206:
	db	"text",0
_207:
	db	"$",0
_208:
	db	"a",0
_209:
	db	"b",0
	align	4
_204:
	dd	1
	dd	_205
	dd	2
	dd	_206
	dd	_207
	dd	-8
	dd	2
	dd	_188
	dd	_188
	dd	-12
	dd	2
	dd	_208
	dd	_209
	dd	-4
	dd	0
	align	4
_192:
	dd	_75
	dd	57
	dd	2
	align	4
_196:
	dd	_75
	dd	58
	dd	3
	align	4
_198:
	dd	_75
	dd	59
	dd	3
	align	4
_202:
	dd	_75
	dd	60
	dd	4
	align	4
_203:
	dd	_75
	dd	63
	dd	2
_225:
	db	"IsFLoat",0
	align	4
_224:
	dd	1
	dd	_225
	dd	2
	dd	_206
	dd	_207
	dd	-8
	dd	2
	dd	_188
	dd	_188
	dd	-12
	dd	2
	dd	_208
	dd	_209
	dd	-4
	dd	0
	align	4
_210:
	dd	_75
	dd	66
	dd	2
	align	4
_214:
	dd	_75
	dd	67
	dd	3
	align	4
_216:
	dd	_75
	dd	68
	dd	3
	align	4
_222:
	dd	_75
	dd	69
	dd	4
	align	4
_223:
	dd	_75
	dd	72
	dd	2
_245:
	db	"IsString",0
	align	4
_244:
	dd	1
	dd	_245
	dd	2
	dd	_206
	dd	_207
	dd	-4
	dd	2
	dd	_188
	dd	_188
	dd	-8
	dd	2
	dd	_208
	dd	_188
	dd	-12
	dd	0
	align	4
_226:
	dd	_75
	dd	75
	dd	2
	align	4
_230:
	dd	_75
	dd	76
	dd	3
	align	4
_232:
	dd	_75
	dd	77
	dd	3
	align	4
_242:
	dd	_75
	dd	78
	dd	4
	align	4
_243:
	dd	_75
	dd	81
	dd	2
_265:
	db	"After",0
_266:
	db	"list",0
_267:
	db	":brl.linkedlist.TList",0
_268:
	db	"link",0
_269:
	db	":brl.linkedlist.TLink",0
	align	4
_264:
	dd	1
	dd	_265
	dd	2
	dd	_266
	dd	_267
	dd	-4
	dd	2
	dd	_183
	dd	_184
	dd	-8
	dd	2
	dd	_268
	dd	_269
	dd	-12
	dd	0
	align	4
_246:
	dd	_75
	dd	84
	dd	2
	align	4
_250:
	dd	_75
	dd	84
	dd	33
	align	4
_251:
	dd	_75
	dd	85
	dd	2
	align	4
_257:
	dd	_75
	dd	86
	dd	2
	align	4
_259:
	dd	_75
	dd	87
	dd	3
	align	4
_263:
	dd	_75
	dd	89
	dd	3
_290:
	db	"Before",0
	align	4
_289:
	dd	1
	dd	_290
	dd	2
	dd	_266
	dd	_267
	dd	-4
	dd	2
	dd	_183
	dd	_184
	dd	-8
	dd	2
	dd	_268
	dd	_269
	dd	-12
	dd	0
	align	4
_270:
	dd	_75
	dd	96
	dd	2
	align	4
_272:
	dd	_75
	dd	96
	dd	20
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	85,110,103,252,108,116,105,103,101,32,76,105,115,116,101
	align	4
_273:
	dd	_75
	dd	97
	dd	2
	align	4
_275:
	dd	_75
	dd	97
	dd	19
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	85,110,103,252,108,116,105,103,101,115,32,79,98,106,101,107
	dw	116
	align	4
_276:
	dd	_75
	dd	98
	dd	3
	align	4
_282:
	dd	_75
	dd	99
	dd	2
	align	4
_284:
	dd	_75
	dd	100
	dd	3
	align	4
_288:
	dd	_75
	dd	102
	dd	3
_297:
	db	"InsertAfter",0
_298:
	db	"me",0
_299:
	db	"other",0
	align	4
_296:
	dd	1
	dd	_297
	dd	2
	dd	_266
	dd	_267
	dd	-4
	dd	2
	dd	_298
	dd	_184
	dd	-8
	dd	2
	dd	_299
	dd	_184
	dd	-12
	dd	0
	align	4
_291:
	dd	_75
	dd	109
	dd	2
_309:
	db	"InsertBefore",0
	align	4
_308:
	dd	1
	dd	_309
	dd	2
	dd	_266
	dd	_267
	dd	-4
	dd	2
	dd	_298
	dd	_184
	dd	-8
	dd	2
	dd	_299
	dd	_184
	dd	-12
	dd	0
	align	4
_300:
	dd	_75
	dd	115
	dd	2
	align	4
_302:
	dd	_75
	dd	115
	dd	18
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	79,98,106,101,107,116,32,101,120,105,115,116,105,101,114,116
	dw	32,110,105,99,104,116
	align	4
_303:
	dd	_75
	dd	116
	dd	2
