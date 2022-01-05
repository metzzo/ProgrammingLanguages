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
	extrn	_bbEmptyArray
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
	cmp	dword [_73],0
	je	_74
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_74:
	mov	dword [_73],1
	push	ebp
	push	_71
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
	mov	ebx,0
	jmp	_39
_39:
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
	push	_182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_75
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_79
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_42
_79:
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_brl_reflection_TTypeId+128]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_85
	call	_brl_blitz_NullObjectError
_85:
	push	dword [_brl_reflection_StringTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	je	_86
	push	_87
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbStringClass
	push	dword [ebp-4]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_89
	mov	ebx,_bbEmptyString
_89:
	jmp	_42
_86:
	push	_90
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_92
	call	_brl_blitz_NullObjectError
_92:
	push	dword [_brl_reflection_ArrayTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	je	_93
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_96
	call	_brl_blitz_NullObjectError
_96:
	push	0
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,12
	cmp	eax,0
	jle	_97
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_100
	call	_brl_blitz_NullObjectError
_100:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_102
	call	_brl_blitz_NullObjectError
_102:
	push	_bbEmptyArray
	push	0
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,12
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	mov	dword [ebp-8],eax
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_104
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_108
	call	_brl_blitz_NullObjectError
_108:
	push	0
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,12
	mov	edi,eax
	jmp	_109
_20:
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_113
	call	_brl_blitz_NullObjectError
_113:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_115
	call	_brl_blitz_NullObjectError
_115:
	push	dword [_brl_reflection_ArrayTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	cmp	eax,0
	jne	_120
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_117
	call	_brl_blitz_NullObjectError
_117:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_119
	call	_brl_blitz_NullObjectError
_119:
	push	dword [_brl_reflection_StringTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
_120:
	cmp	eax,0
	jne	_126
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_123
	call	_brl_blitz_NullObjectError
_123:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_125
	call	_brl_blitz_NullObjectError
_125:
	push	dword [_brl_reflection_ObjectTypeId]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
_126:
	cmp	eax,0
	je	_128
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_131
	call	_brl_blitz_NullObjectError
_131:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_133
	call	_brl_blitz_NullObjectError
_133:
	push	dword [ebp-16]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,12
	push	eax
	call	_bb_CloneObject
	add	esp,4
	push	eax
	push	dword [ebp-16]
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+120]
	add	esp,16
	jmp	_134
_128:
	push	_135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_137
	call	_brl_blitz_NullObjectError
_137:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	push	dword [ebp-16]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,12
	push	eax
	push	dword [ebp-16]
	push	dword [ebp-8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+120]
	add	esp,16
_134:
_18:
	add	dword [ebp-16],1
_109:
	cmp	dword [ebp-16],edi
	jl	_20
_19:
_104:
_97:
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_42
_93:
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	push	dword [eax]
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-8],eax
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_145
	call	_brl_blitz_NullObjectError
_145:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	mov	dword [ebp-28],eax
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_21
_23:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_153
	call	_brl_blitz_NullObjectError
_153:
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
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_156
	call	_brl_blitz_NullObjectError
_156:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_163
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
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
_163:
	cmp	eax,0
	je	_165
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_168
	call	_brl_blitz_NullObjectError
_168:
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
	jne	_169
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_174
	call	_brl_blitz_NullObjectError
_174:
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
	jmp	_175
_169:
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_178
	call	_brl_blitz_NullObjectError
_178:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_180
	call	_brl_blitz_NullObjectError
_180:
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
_175:
_165:
_21:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_151
	call	_brl_blitz_NullObjectError
_151:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_23
_22:
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_42
_42:
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
	push	_205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_195
_28:
	push	_197
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
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_200
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_200:
	cmp	eax,0
	je	_202
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_45
_202:
_26:
	add	dword [ebp-12],1
_195:
	cmp	dword [ebp-12],ebx
	jle	_28
_27:
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_45
_45:
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
	push	_225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_213
_31:
	push	_215
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
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_218
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_218:
	cmp	eax,0
	je	_220
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_220:
	cmp	eax,0
	je	_222
	push	_223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_48
_222:
_29:
	add	dword [ebp-12],1
_213:
	cmp	dword [ebp-12],ebx
	jle	_31
_30:
	push	_224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_48
_48:
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
	push	_245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],1
	mov	eax,dword [ebp-4]
	mov	ebx,dword [eax+8]
	jmp	_229
_34:
	push	_231
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
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,65
	setl	al
	movzx	eax,al
	cmp	eax,0
	je	_234
	mov	eax,dword [ebp-12]
	cmp	eax,90
	setg	al
	movzx	eax,al
_234:
	cmp	eax,0
	je	_236
	mov	eax,dword [ebp-12]
	cmp	eax,95
	setne	al
	movzx	eax,al
_236:
	cmp	eax,0
	je	_238
	mov	eax,dword [ebp-12]
	cmp	eax,97
	setl	al
	movzx	eax,al
_238:
	cmp	eax,0
	je	_240
	mov	eax,dword [ebp-12]
	cmp	eax,122
	setg	al
	movzx	eax,al
_240:
	cmp	eax,0
	je	_242
	push	_243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	jmp	_51
_242:
_32:
	add	dword [ebp-8],1
_229:
	cmp	dword [ebp-8],ebx
	jle	_34
_33:
	push	_244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_51
_51:
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
	push	_270
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_248
	mov	eax,dword [ebp-4]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_248:
	cmp	eax,0
	je	_250
	push	_251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_55
_250:
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_255
	push	_256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_blitz_RuntimeError
	add	esp,4
_255:
	push	_257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_259
	call	_brl_blitz_NullObjectError
_259:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_264
	push	_265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	jmp	_55
_264:
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_55
_55:
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
	push	_295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-4],_bbNullObject
	jne	_277
	push	_278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	call	_brl_blitz_RuntimeError
	add	esp,4
_277:
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_280
	push	_281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_37
	call	_brl_blitz_RuntimeError
	add	esp,4
_280:
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_289
	push	_290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_292
	call	_brl_blitz_NullObjectError
_292:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	ebx,eax
	jmp	_59
_289:
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_59
_59:
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
	push	_302
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
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
	jmp	_64
_64:
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
	push	_314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_307
	push	_308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	call	_brl_blitz_RuntimeError
	add	esp,4
_307:
	push	_309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_311
	call	_brl_blitz_NullObjectError
_311:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_313
	call	_brl_blitz_NullObjectError
_313:
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
	jmp	_69
_69:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_73:
	dd	0
_72:
	db	"Util",0
	align	4
_71:
	dd	1
	dd	_72
	dd	0
_183:
	db	"CloneObject",0
_184:
	db	"obj",0
_185:
	db	":Object",0
_186:
	db	"cobj",0
_187:
	db	"objId",0
_188:
	db	":brl.reflection.TTypeId",0
_189:
	db	"i",0
_190:
	db	"fld",0
_191:
	db	":brl.reflection.TField",0
_192:
	db	"fldId",0
	align	4
_182:
	dd	1
	dd	_183
	dd	2
	dd	_184
	dd	_185
	dd	-4
	dd	2
	dd	_186
	dd	_185
	dd	-8
	dd	2
	dd	_187
	dd	_188
	dd	-12
	dd	2
	dd	_189
	dd	_189
	dd	-16
	dd	2
	dd	_190
	dd	_191
	dd	-20
	dd	2
	dd	_192
	dd	_188
	dd	-24
	dd	0
_76:
	db	"C:/Dokumente und Einstellungen/Robert/Desktop/Eigene Programme/Simple Script 3/Classes/Util.bmx",0
	align	4
_75:
	dd	_76
	dd	9
	dd	2
	align	4
_78:
	dd	_76
	dd	11
	dd	2
	align	4
_80:
	dd	_76
	dd	11
	dd	19
	align	4
_81:
	dd	_76
	dd	13
	dd	2
	align	4
_83:
	dd	_76
	dd	15
	dd	2
	align	4
_87:
	dd	_76
	dd	16
	dd	3
	align	4
_90:
	dd	_76
	dd	19
	dd	2
	align	4
_94:
	dd	_76
	dd	20
	dd	3
	align	4
_98:
	dd	_76
	dd	21
	dd	4
	align	4
_103:
	dd	_76
	dd	23
	dd	4
	align	4
_105:
	dd	_76
	dd	24
	dd	5
	align	4
_111:
	dd	_76
	dd	25
	dd	6
	align	4
_129:
	dd	_76
	dd	27
	dd	7
	align	4
_135:
	dd	_76
	dd	29
	dd	7
	align	4
_140:
	dd	_76
	dd	35
	dd	3
	align	4
_141:
	dd	_76
	dd	38
	dd	2
	align	4
_142:
	dd	_76
	dd	40
	dd	2
	align	4
_154:
	dd	_76
	dd	41
	dd	3
	align	4
_158:
	dd	_76
	dd	43
	dd	3
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,111,67,108,111,110,101
	align	4
_166:
	dd	_76
	dd	44
	dd	4
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	67,108,111,110,101
	align	4
_170:
	dd	_76
	dd	45
	dd	5
	align	4
_176:
	dd	_76
	dd	47
	dd	5
	align	4
_181:
	dd	_76
	dd	52
	dd	2
_206:
	db	"IsInt",0
_207:
	db	"text",0
_208:
	db	"$",0
_209:
	db	"a",0
_210:
	db	"b",0
	align	4
_205:
	dd	1
	dd	_206
	dd	2
	dd	_207
	dd	_208
	dd	-8
	dd	2
	dd	_189
	dd	_189
	dd	-12
	dd	2
	dd	_209
	dd	_210
	dd	-4
	dd	0
	align	4
_193:
	dd	_76
	dd	57
	dd	2
	align	4
_197:
	dd	_76
	dd	58
	dd	3
	align	4
_199:
	dd	_76
	dd	59
	dd	3
	align	4
_203:
	dd	_76
	dd	60
	dd	4
	align	4
_204:
	dd	_76
	dd	63
	dd	2
_226:
	db	"IsFLoat",0
	align	4
_225:
	dd	1
	dd	_226
	dd	2
	dd	_207
	dd	_208
	dd	-8
	dd	2
	dd	_189
	dd	_189
	dd	-12
	dd	2
	dd	_209
	dd	_210
	dd	-4
	dd	0
	align	4
_211:
	dd	_76
	dd	66
	dd	2
	align	4
_215:
	dd	_76
	dd	67
	dd	3
	align	4
_217:
	dd	_76
	dd	68
	dd	3
	align	4
_223:
	dd	_76
	dd	69
	dd	4
	align	4
_224:
	dd	_76
	dd	72
	dd	2
_246:
	db	"IsString",0
	align	4
_245:
	dd	1
	dd	_246
	dd	2
	dd	_207
	dd	_208
	dd	-4
	dd	2
	dd	_189
	dd	_189
	dd	-8
	dd	2
	dd	_209
	dd	_189
	dd	-12
	dd	0
	align	4
_227:
	dd	_76
	dd	75
	dd	2
	align	4
_231:
	dd	_76
	dd	76
	dd	3
	align	4
_233:
	dd	_76
	dd	77
	dd	3
	align	4
_243:
	dd	_76
	dd	78
	dd	4
	align	4
_244:
	dd	_76
	dd	81
	dd	2
_271:
	db	"After",0
_272:
	db	"list",0
_273:
	db	":brl.linkedlist.TList",0
_274:
	db	"link",0
_275:
	db	":brl.linkedlist.TLink",0
	align	4
_270:
	dd	1
	dd	_271
	dd	2
	dd	_272
	dd	_273
	dd	-4
	dd	2
	dd	_184
	dd	_185
	dd	-8
	dd	2
	dd	_274
	dd	_275
	dd	-12
	dd	0
	align	4
_247:
	dd	_76
	dd	84
	dd	2
	align	4
_251:
	dd	_76
	dd	84
	dd	33
	align	4
_252:
	dd	_76
	dd	85
	dd	2
	align	4
_256:
	dd	_76
	dd	85
	dd	34
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	79,98,106,32,105,115,116,32,110,105,99,104,116,32,105,110
	dw	32,108,105,115,116
	align	4
_257:
	dd	_76
	dd	86
	dd	2
	align	4
_263:
	dd	_76
	dd	88
	dd	2
	align	4
_265:
	dd	_76
	dd	89
	dd	3
	align	4
_269:
	dd	_76
	dd	91
	dd	3
_296:
	db	"Before",0
	align	4
_295:
	dd	1
	dd	_296
	dd	2
	dd	_272
	dd	_273
	dd	-4
	dd	2
	dd	_184
	dd	_185
	dd	-8
	dd	2
	dd	_274
	dd	_275
	dd	-12
	dd	0
	align	4
_276:
	dd	_76
	dd	98
	dd	2
	align	4
_278:
	dd	_76
	dd	98
	dd	20
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	85,110,103,252,108,116,105,103,101,32,76,105,115,116,101
	align	4
_279:
	dd	_76
	dd	99
	dd	2
	align	4
_281:
	dd	_76
	dd	99
	dd	19
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	85,110,103,252,108,116,105,103,101,115,32,79,98,106,101,107
	dw	116
	align	4
_282:
	dd	_76
	dd	100
	dd	3
	align	4
_288:
	dd	_76
	dd	101
	dd	2
	align	4
_290:
	dd	_76
	dd	102
	dd	3
	align	4
_294:
	dd	_76
	dd	104
	dd	3
_303:
	db	"InsertAfter",0
_304:
	db	"me",0
_305:
	db	"other",0
	align	4
_302:
	dd	1
	dd	_303
	dd	2
	dd	_272
	dd	_273
	dd	-4
	dd	2
	dd	_304
	dd	_185
	dd	-8
	dd	2
	dd	_305
	dd	_185
	dd	-12
	dd	0
	align	4
_297:
	dd	_76
	dd	111
	dd	2
_315:
	db	"InsertBefore",0
	align	4
_314:
	dd	1
	dd	_315
	dd	2
	dd	_272
	dd	_273
	dd	-4
	dd	2
	dd	_304
	dd	_185
	dd	-8
	dd	2
	dd	_305
	dd	_185
	dd	-12
	dd	0
	align	4
_306:
	dd	_76
	dd	117
	dd	2
	align	4
_308:
	dd	_76
	dd	117
	dd	18
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	79,98,106,101,107,116,32,101,120,105,115,116,105,101,114,116
	dw	32,110,105,99,104,116
	align	4
_309:
	dd	_76
	dd	118
	dd	2
