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
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringAsc
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_brl_linkedlist_ClearList
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_polledinput_WaitKey
	extrn	_brl_retro_Mid
	extrn	_brl_standardio_Input
	extrn	_brl_standardio_Print
	public	__bb_main
	public	_bb_Command
	public	_bb_Digit
	public	_bb_Error
	public	_bb_Expression
	public	_bb_Factor
	public	_bb_GetToken
	public	_bb_In
	public	_bb_Match
	public	_bb_Number
	public	_bb_Parse
	public	_bb_Position
	public	_bb_Term
	public	_bb_Token
	public	_bb_mathlist
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_91],0
	je	_92
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_92:
	mov	dword [_91],1
	push	ebp
	push	_82
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
	push	_64
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_66
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_67
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_70]
	and	eax,1
	cmp	eax,0
	jne	_71
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_mathlist],eax
	or	dword [_70],1
_71:
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	_2
	call	_brl_standardio_Input
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [_bb_In]
	dec	dword [eax+4]
	jnz	_77
	push	eax
	call	_bbGCFree
	add	esp,4
_77:
	mov	dword [_bb_In],ebx
	push	_78
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_Position],1
	push	_79
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Parse
	push	_80
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_WaitKey
	push	_81
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_41
_41:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Parse:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_96
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_93
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_mathlist]
	call	_brl_linkedlist_ClearList
	add	esp,4
	push	_94
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_95
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Command
	mov	ebx,0
	jmp	_43
_43:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Error:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_98
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_18
	call	_brl_standardio_Print
	add	esp,4
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_WaitKey
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_45
_45:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_GetToken:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_In]
	mov	eax,dword [eax+8]
	cmp	dword [_bb_Position],eax
	jle	_104
	push	ebp
	push	_106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_104:
	push	_107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [_bb_Position]
	push	dword [_bb_In]
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	dword [_bb_Token],eax
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_Position],1
	mov	ebx,0
	jmp	_47
_47:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Match:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	dword [_bb_Token],eax
	jne	_112
	push	ebp
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	call	dword [_bbOnDebugLeaveScope]
	jmp	_115
_112:
	push	ebp
	push	_117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_115:
	mov	ebx,0
	jmp	_50
_50:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Command:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Expression
	mov	dword [ebp-4],eax
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],13
	jne	_125
	push	ebp
	push	_127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_52
_125:
	push	ebp
	push	_130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_128:
	mov	ebx,0
	jmp	_52
_52:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Expression:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_153
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Term
	mov	dword [ebp-4],eax
	push	_137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_19
_21:
	push	ebp
	push	_151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],43
	jne	_141
	push	ebp
	push	_145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Term
	add	dword [ebp-4],eax
	push	_144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_24
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_146
_141:
	push	ebp
	push	_150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Term
	sub	dword [ebp-4],eax
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_25
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_146:
	call	dword [_bbOnDebugLeaveScope]
_19:
	mov	eax,dword [_bb_Token]
	cmp	eax,43
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_138
	mov	eax,dword [_bb_Token]
	cmp	eax,45
	sete	al
	movzx	eax,al
_138:
	cmp	eax,0
	jne	_21
_20:
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_54
_54:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Term:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Factor
	mov	dword [ebp-4],eax
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_26
_28:
	push	ebp
	push	_172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],42
	jne	_162
	push	ebp
	push	_166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	call	_bb_Factor
	imul	ebx,eax
	mov	dword [ebp-4],ebx
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_167
_162:
	push	ebp
	push	_171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Factor
	mov	ecx,eax
	mov	eax,dword [ebp-4]
	cdq
	idiv	ecx
	mov	dword [ebp-4],eax
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_32
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_167:
	call	dword [_bbOnDebugLeaveScope]
_26:
	mov	eax,dword [_bb_Token]
	cmp	eax,42
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_159
	mov	eax,dword [_bb_Token]
	cmp	eax,47
	sete	al
	movzx	eax,al
_159:
	cmp	eax,0
	jne	_28
_27:
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_56
_56:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Factor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],40
	jne	_179
	push	ebp
	push	_183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	call	_bb_Match
	add	esp,4
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Expression
	mov	dword [ebp-4],eax
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	41
	call	_bb_Match
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_184
_179:
	push	ebp
	push	_186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Number
	mov	dword [ebp-4],eax
	call	dword [_bbOnDebugLeaveScope]
_184:
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_58
_58:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Number:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_35
_37:
	push	ebp
	push	_196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	imul	ebx,10
	call	_bb_Digit
	add	ebx,eax
	mov	dword [ebp-4],ebx
	call	dword [_bbOnDebugLeaveScope]
_35:
	mov	eax,dword [_bb_Token]
	cmp	eax,48
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_193
	mov	eax,dword [_bb_Token]
	cmp	eax,57
	setle	al
	movzx	eax,al
_193:
	cmp	eax,0
	jne	_37
_36:
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_40
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_60
_60:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Digit:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Token]
	cmp	eax,48
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_204
	mov	eax,dword [_bb_Token]
	cmp	eax,57
	setle	al
	movzx	eax,al
_204:
	cmp	eax,0
	je	_206
	push	ebp
	push	_209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Token]
	sub	eax,48
	mov	dword [ebp-4],eax
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_Token]
	call	_bb_Match
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_210
_206:
	push	ebp
	push	_212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_210:
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_62
_62:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_91:
	dd	0
_83:
	db	"MatheParser",0
_84:
	db	"In",0
_85:
	db	"$",0
	align	4
_bb_In:
	dd	_bbEmptyString
_86:
	db	"Position",0
_87:
	db	"i",0
	align	4
_bb_Position:
	dd	0
_88:
	db	"Token",0
	align	4
_bb_Token:
	dd	0
_89:
	db	"mathlist",0
_90:
	db	":brl.linkedlist.TList",0
	align	4
_bb_mathlist:
	dd	_bbNullObject
	align	4
_82:
	dd	1
	dd	_83
	dd	4
	dd	_84
	dd	_85
	dd	_bb_In
	dd	4
	dd	_86
	dd	_87
	dd	_bb_Position
	dd	4
	dd	_88
	dd	_87
	dd	_bb_Token
	dd	4
	dd	_89
	dd	_90
	dd	_bb_mathlist
	dd	0
_65:
	db	"C:/Dokumente und Einstellungen/Robert/Desktop/Eigene Programme/Simple Script 3/MatheParser.bmx",0
	align	4
_64:
	dd	_65
	dd	3
	dd	1
	align	4
_66:
	dd	_65
	dd	4
	dd	1
	align	4
_67:
	dd	_65
	dd	5
	dd	1
	align	4
_68:
	dd	_65
	dd	6
	dd	1
	align	4
_70:
	dd	0
	align	4
_72:
	dd	_65
	dd	8
	dd	1
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	13
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_78:
	dd	_65
	dd	9
	dd	1
	align	4
_79:
	dd	_65
	dd	10
	dd	1
	align	4
_80:
	dd	_65
	dd	11
	dd	1
	align	4
_81:
	dd	_65
	dd	12
	dd	1
_97:
	db	"Parse",0
	align	4
_96:
	dd	1
	dd	_97
	dd	0
	align	4
_93:
	dd	_65
	dd	16
	dd	2
	align	4
_94:
	dd	_65
	dd	17
	dd	2
	align	4
_95:
	dd	_65
	dd	18
	dd	2
_102:
	db	"Error",0
	align	4
_101:
	dd	1
	dd	_102
	dd	0
	align	4
_98:
	dd	_65
	dd	22
	dd	2
	align	4
_18:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	80,97,114,115,101,32,101,114,114,111,114
	align	4
_99:
	dd	_65
	dd	23
	dd	2
	align	4
_100:
	dd	_65
	dd	24
	dd	2
_110:
	db	"GetToken",0
	align	4
_109:
	dd	1
	dd	_110
	dd	0
	align	4
_103:
	dd	_65
	dd	28
	dd	2
	align	4
_106:
	dd	3
	dd	0
	dd	0
	align	4
_105:
	dd	_65
	dd	28
	dd	31
	align	4
_107:
	dd	_65
	dd	29
	dd	2
	align	4
_108:
	dd	_65
	dd	30
	dd	2
_119:
	db	"Match",0
_120:
	db	"Char",0
	align	4
_118:
	dd	1
	dd	_119
	dd	2
	dd	_120
	dd	_87
	dd	-4
	dd	0
	align	4
_111:
	dd	_65
	dd	34
	dd	2
	align	4
_114:
	dd	3
	dd	0
	dd	0
	align	4
_113:
	dd	_65
	dd	35
	dd	3
	align	4
_117:
	dd	3
	dd	0
	dd	0
	align	4
_116:
	dd	_65
	dd	37
	dd	3
_132:
	db	"Command",0
_133:
	db	"Result",0
	align	4
_131:
	dd	1
	dd	_132
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_121:
	dd	_65
	dd	42
	dd	2
	align	4
_123:
	dd	_65
	dd	44
	dd	2
	align	4
_124:
	dd	_65
	dd	45
	dd	2
	align	4
_127:
	dd	3
	dd	0
	dd	0
	align	4
_126:
	dd	_65
	dd	46
	dd	3
	align	4
_130:
	dd	3
	dd	0
	dd	0
	align	4
_129:
	dd	_65
	dd	48
	dd	3
_154:
	db	"Expression",0
	align	4
_153:
	dd	1
	dd	_154
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_134:
	dd	_65
	dd	53
	dd	2
	align	4
_136:
	dd	_65
	dd	55
	dd	2
	align	4
_137:
	dd	_65
	dd	56
	dd	2
	align	4
_151:
	dd	3
	dd	0
	dd	0
	align	4
_140:
	dd	_65
	dd	57
	dd	3
	align	4
_145:
	dd	3
	dd	0
	dd	0
	align	4
_142:
	dd	_65
	dd	58
	dd	4
	align	4
_143:
	dd	_65
	dd	59
	dd	4
	align	4
_144:
	dd	_65
	dd	60
	dd	4
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,43
	align	4
_150:
	dd	3
	dd	0
	dd	0
	align	4
_147:
	dd	_65
	dd	62
	dd	4
	align	4
_148:
	dd	_65
	dd	63
	dd	4
	align	4
_149:
	dd	_65
	dd	64
	dd	4
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,45
	align	4
_152:
	dd	_65
	dd	68
	dd	2
_175:
	db	"Term",0
	align	4
_174:
	dd	1
	dd	_175
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_155:
	dd	_65
	dd	72
	dd	2
	align	4
_157:
	dd	_65
	dd	74
	dd	2
	align	4
_158:
	dd	_65
	dd	75
	dd	2
	align	4
_172:
	dd	3
	dd	0
	dd	0
	align	4
_161:
	dd	_65
	dd	76
	dd	3
	align	4
_166:
	dd	3
	dd	0
	dd	0
	align	4
_163:
	dd	_65
	dd	77
	dd	4
	align	4
_164:
	dd	_65
	dd	78
	dd	4
	align	4
_165:
	dd	_65
	dd	79
	dd	4
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,42
	align	4
_171:
	dd	3
	dd	0
	dd	0
	align	4
_168:
	dd	_65
	dd	81
	dd	4
	align	4
_169:
	dd	_65
	dd	82
	dd	4
	align	4
_170:
	dd	_65
	dd	83
	dd	4
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,47
	align	4
_173:
	dd	_65
	dd	87
	dd	2
_189:
	db	"Factor",0
	align	4
_188:
	dd	1
	dd	_189
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_176:
	dd	_65
	dd	91
	dd	2
	align	4
_178:
	dd	_65
	dd	93
	dd	2
	align	4
_183:
	dd	3
	dd	0
	dd	0
	align	4
_180:
	dd	_65
	dd	94
	dd	3
	align	4
_181:
	dd	_65
	dd	95
	dd	3
	align	4
_182:
	dd	_65
	dd	96
	dd	3
	align	4
_186:
	dd	3
	dd	0
	dd	0
	align	4
_185:
	dd	_65
	dd	98
	dd	3
	align	4
_187:
	dd	_65
	dd	101
	dd	2
_200:
	db	"Number",0
	align	4
_199:
	dd	1
	dd	_200
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_190:
	dd	_65
	dd	105
	dd	2
	align	4
_192:
	dd	_65
	dd	107
	dd	2
	align	4
_196:
	dd	3
	dd	0
	dd	0
	align	4
_195:
	dd	_65
	dd	108
	dd	3
	align	4
_197:
	dd	_65
	dd	111
	dd	2
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	73,78,84,32
	align	4
_198:
	dd	_65
	dd	112
	dd	2
_215:
	db	"Digit",0
	align	4
_214:
	dd	1
	dd	_215
	dd	2
	dd	_133
	dd	_87
	dd	-4
	dd	0
	align	4
_201:
	dd	_65
	dd	116
	dd	2
	align	4
_203:
	dd	_65
	dd	118
	dd	2
	align	4
_209:
	dd	3
	dd	0
	dd	0
	align	4
_207:
	dd	_65
	dd	119
	dd	3
	align	4
_208:
	dd	_65
	dd	120
	dd	3
	align	4
_212:
	dd	3
	dd	0
	dd	0
	align	4
_211:
	dd	_65
	dd	122
	dd	3
	align	4
_213:
	dd	_65
	dd	125
	dd	2
