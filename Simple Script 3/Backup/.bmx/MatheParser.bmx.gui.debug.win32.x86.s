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
	cmp	dword [_96],0
	je	_97
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_97:
	mov	dword [_96],1
	push	ebp
	push	_87
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
	push	_68
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_71
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_74]
	and	eax,1
	cmp	eax,0
	jne	_75
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	dword [_bb_mathlist],eax
	or	dword [_74],1
_75:
	push	_76
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_20:
_18:
	push	ebp
	push	_85
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_77
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_78
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
	jnz	_82
	push	eax
	call	_bbGCFree
	add	esp,4
_82:
	mov	dword [_bb_In],ebx
	push	_83
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [_bb_Position],1
	push	_84
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Parse
	call	dword [_bbOnDebugLeaveScope]
	jmp	_20
_bb_Parse:
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
	push	dword [_bb_mathlist]
	call	_brl_linkedlist_ClearList
	add	esp,4
	push	_99
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Command
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_21
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	mov	ebx,0
	jmp	_47
_47:
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
	push	_106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_22
	call	_brl_standardio_Print
	add	esp,4
	push	_104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_polledinput_WaitKey
	push	_105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_49
_49:
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
	push	_114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_In]
	mov	eax,dword [eax+8]
	cmp	dword [_bb_Position],eax
	jle	_109
	push	ebp
	push	_111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_109:
	push	_112
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
	push	_113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [_bb_Position],1
	mov	ebx,0
	jmp	_51
_51:
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
	push	_123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	dword [_bb_Token],eax
	jne	_117
	push	ebp
	push	_119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	call	dword [_bbOnDebugLeaveScope]
	jmp	_120
_117:
	push	ebp
	push	_122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_120:
	mov	ebx,0
	jmp	_54
_54:
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
	push	_136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Expression
	mov	dword [ebp-4],eax
	push	_129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],13
	jne	_130
	push	ebp
	push	_132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_56
_130:
	push	ebp
	push	_135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_133:
	mov	ebx,0
	jmp	_56
_56:
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
	push	_158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Term
	mov	dword [ebp-4],eax
	push	_142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_23
_25:
	push	ebp
	push	_156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],43
	jne	_146
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
	add	dword [ebp-4],eax
	push	_149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_28
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_151
_146:
	push	ebp
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Term
	sub	dword [ebp-4],eax
	push	_154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_29
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_151:
	call	dword [_bbOnDebugLeaveScope]
_23:
	mov	eax,dword [_bb_Token]
	cmp	eax,43
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_143
	mov	eax,dword [_bb_Token]
	cmp	eax,45
	sete	al
	movzx	eax,al
_143:
	cmp	eax,0
	jne	_25
_24:
	push	_157
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
_bb_Term:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Factor
	mov	dword [ebp-4],eax
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_30
_32:
	push	ebp
	push	_177
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],42
	jne	_167
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
	mov	ebx,dword [ebp-4]
	call	_bb_Factor
	imul	ebx,eax
	mov	dword [ebp-4],ebx
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_35
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_172
_167:
	push	ebp
	push	_176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_GetToken
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Factor
	mov	ecx,eax
	mov	eax,dword [ebp-4]
	cdq
	idiv	ecx
	mov	dword [ebp-4],eax
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_36
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_172:
	call	dword [_bbOnDebugLeaveScope]
_30:
	mov	eax,dword [_bb_Token]
	cmp	eax,42
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_164
	mov	eax,dword [_bb_Token]
	cmp	eax,47
	sete	al
	movzx	eax,al
_164:
	cmp	eax,0
	jne	_32
_31:
	push	_178
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
_bb_Factor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_Token],40
	jne	_184
	push	ebp
	push	_188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	40
	call	_bb_Match
	add	esp,4
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Expression
	mov	dword [ebp-4],eax
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	41
	call	_bb_Match
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_189
_184:
	push	ebp
	push	_191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Number
	mov	dword [ebp-4],eax
	call	dword [_bbOnDebugLeaveScope]
_189:
	push	_192
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
_bb_Number:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	dword [ebp-4],0
	push	ebp
	push	_204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_39
_41:
	push	ebp
	push	_201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	imul	ebx,10
	call	_bb_Digit
	add	ebx,eax
	mov	dword [ebp-4],ebx
	call	dword [_bbOnDebugLeaveScope]
_39:
	mov	eax,dword [_bb_Token]
	cmp	eax,48
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_198
	mov	eax,dword [_bb_Token]
	cmp	eax,57
	setle	al
	movzx	eax,al
_198:
	cmp	eax,0
	jne	_41
_40:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_44
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	push	_203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_64
_64:
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
	push	_219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	push	_208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Token]
	cmp	eax,48
	setge	al
	movzx	eax,al
	cmp	eax,0
	je	_209
	mov	eax,dword [_bb_Token]
	cmp	eax,57
	setle	al
	movzx	eax,al
_209:
	cmp	eax,0
	je	_211
	push	ebp
	push	_214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_Token]
	sub	eax,48
	mov	dword [ebp-4],eax
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_Token]
	call	_bb_Match
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_215
_211:
	push	ebp
	push	_217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Error
	call	dword [_bbOnDebugLeaveScope]
_215:
	push	_218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_66
_66:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_96:
	dd	0
_88:
	db	"MatheParser",0
_89:
	db	"In",0
_90:
	db	"$",0
	align	4
_bb_In:
	dd	_bbEmptyString
_91:
	db	"Position",0
_92:
	db	"i",0
	align	4
_bb_Position:
	dd	0
_93:
	db	"Token",0
	align	4
_bb_Token:
	dd	0
_94:
	db	"mathlist",0
_95:
	db	":brl.linkedlist.TList",0
	align	4
_bb_mathlist:
	dd	_bbNullObject
	align	4
_87:
	dd	1
	dd	_88
	dd	4
	dd	_89
	dd	_90
	dd	_bb_In
	dd	4
	dd	_91
	dd	_92
	dd	_bb_Position
	dd	4
	dd	_93
	dd	_92
	dd	_bb_Token
	dd	4
	dd	_94
	dd	_95
	dd	_bb_mathlist
	dd	0
_69:
	db	"C:/Dokumente und Einstellungen/Robert/Desktop/Eigene Programme/Simple Script 3/Backup/MatheParser.bmx",0
	align	4
_68:
	dd	_69
	dd	3
	dd	1
	align	4
_70:
	dd	_69
	dd	4
	dd	1
	align	4
_71:
	dd	_69
	dd	5
	dd	1
	align	4
_72:
	dd	_69
	dd	6
	dd	1
	align	4
_74:
	dd	0
	align	4
_76:
	dd	_69
	dd	12
	dd	1
	align	4
_85:
	dd	3
	dd	0
	dd	0
	align	4
_77:
	dd	_69
	dd	8
	dd	1
	align	4
_78:
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
_83:
	dd	_69
	dd	9
	dd	1
	align	4
_84:
	dd	_69
	dd	10
	dd	1
_102:
	db	"Parse",0
	align	4
_101:
	dd	1
	dd	_102
	dd	0
	align	4
_98:
	dd	_69
	dd	17
	dd	2
	align	4
_99:
	dd	_69
	dd	18
	dd	2
	align	4
_100:
	dd	_69
	dd	19
	dd	2
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	69,114,103,101,98,110,105,115,58,32
_107:
	db	"Error",0
	align	4
_106:
	dd	1
	dd	_107
	dd	0
	align	4
_103:
	dd	_69
	dd	23
	dd	2
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	80,97,114,115,101,32,101,114,114,111,114
	align	4
_104:
	dd	_69
	dd	24
	dd	2
	align	4
_105:
	dd	_69
	dd	25
	dd	2
_115:
	db	"GetToken",0
	align	4
_114:
	dd	1
	dd	_115
	dd	0
	align	4
_108:
	dd	_69
	dd	29
	dd	2
	align	4
_111:
	dd	3
	dd	0
	dd	0
	align	4
_110:
	dd	_69
	dd	29
	dd	31
	align	4
_112:
	dd	_69
	dd	30
	dd	2
	align	4
_113:
	dd	_69
	dd	31
	dd	2
_124:
	db	"Match",0
_125:
	db	"Char",0
	align	4
_123:
	dd	1
	dd	_124
	dd	2
	dd	_125
	dd	_92
	dd	-4
	dd	0
	align	4
_116:
	dd	_69
	dd	35
	dd	2
	align	4
_119:
	dd	3
	dd	0
	dd	0
	align	4
_118:
	dd	_69
	dd	36
	dd	3
	align	4
_122:
	dd	3
	dd	0
	dd	0
	align	4
_121:
	dd	_69
	dd	38
	dd	3
_137:
	db	"Command",0
_138:
	db	"Result",0
	align	4
_136:
	dd	1
	dd	_137
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_126:
	dd	_69
	dd	43
	dd	2
	align	4
_128:
	dd	_69
	dd	45
	dd	2
	align	4
_129:
	dd	_69
	dd	46
	dd	2
	align	4
_132:
	dd	3
	dd	0
	dd	0
	align	4
_131:
	dd	_69
	dd	47
	dd	3
	align	4
_135:
	dd	3
	dd	0
	dd	0
	align	4
_134:
	dd	_69
	dd	49
	dd	3
_159:
	db	"Expression",0
	align	4
_158:
	dd	1
	dd	_159
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_139:
	dd	_69
	dd	54
	dd	2
	align	4
_141:
	dd	_69
	dd	56
	dd	2
	align	4
_142:
	dd	_69
	dd	57
	dd	2
	align	4
_156:
	dd	3
	dd	0
	dd	0
	align	4
_145:
	dd	_69
	dd	58
	dd	3
	align	4
_150:
	dd	3
	dd	0
	dd	0
	align	4
_147:
	dd	_69
	dd	59
	dd	4
	align	4
_148:
	dd	_69
	dd	60
	dd	4
	align	4
_149:
	dd	_69
	dd	61
	dd	4
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,43
	align	4
_155:
	dd	3
	dd	0
	dd	0
	align	4
_152:
	dd	_69
	dd	63
	dd	4
	align	4
_153:
	dd	_69
	dd	64
	dd	4
	align	4
_154:
	dd	_69
	dd	65
	dd	4
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,45
	align	4
_157:
	dd	_69
	dd	69
	dd	2
_180:
	db	"Term",0
	align	4
_179:
	dd	1
	dd	_180
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_160:
	dd	_69
	dd	73
	dd	2
	align	4
_162:
	dd	_69
	dd	75
	dd	2
	align	4
_163:
	dd	_69
	dd	76
	dd	2
	align	4
_177:
	dd	3
	dd	0
	dd	0
	align	4
_166:
	dd	_69
	dd	77
	dd	3
	align	4
_171:
	dd	3
	dd	0
	dd	0
	align	4
_168:
	dd	_69
	dd	78
	dd	4
	align	4
_169:
	dd	_69
	dd	79
	dd	4
	align	4
_170:
	dd	_69
	dd	80
	dd	4
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,42
	align	4
_176:
	dd	3
	dd	0
	dd	0
	align	4
_173:
	dd	_69
	dd	82
	dd	4
	align	4
_174:
	dd	_69
	dd	83
	dd	4
	align	4
_175:
	dd	_69
	dd	84
	dd	4
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,80,69,82,65,84,79,82,32,47
	align	4
_178:
	dd	_69
	dd	88
	dd	2
_194:
	db	"Factor",0
	align	4
_193:
	dd	1
	dd	_194
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_181:
	dd	_69
	dd	92
	dd	2
	align	4
_183:
	dd	_69
	dd	94
	dd	2
	align	4
_188:
	dd	3
	dd	0
	dd	0
	align	4
_185:
	dd	_69
	dd	95
	dd	3
	align	4
_186:
	dd	_69
	dd	96
	dd	3
	align	4
_187:
	dd	_69
	dd	97
	dd	3
	align	4
_191:
	dd	3
	dd	0
	dd	0
	align	4
_190:
	dd	_69
	dd	99
	dd	3
	align	4
_192:
	dd	_69
	dd	102
	dd	2
_205:
	db	"Number",0
	align	4
_204:
	dd	1
	dd	_205
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_195:
	dd	_69
	dd	106
	dd	2
	align	4
_197:
	dd	_69
	dd	108
	dd	2
	align	4
_201:
	dd	3
	dd	0
	dd	0
	align	4
_200:
	dd	_69
	dd	109
	dd	3
	align	4
_202:
	dd	_69
	dd	112
	dd	2
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	73,78,84,32
	align	4
_203:
	dd	_69
	dd	113
	dd	2
_220:
	db	"Digit",0
	align	4
_219:
	dd	1
	dd	_220
	dd	2
	dd	_138
	dd	_92
	dd	-4
	dd	0
	align	4
_206:
	dd	_69
	dd	117
	dd	2
	align	4
_208:
	dd	_69
	dd	119
	dd	2
	align	4
_214:
	dd	3
	dd	0
	dd	0
	align	4
_212:
	dd	_69
	dd	120
	dd	3
	align	4
_213:
	dd	_69
	dd	121
	dd	3
	align	4
_217:
	dd	3
	dd	0
	dd	0
	align	4
_216:
	dd	_69
	dd	123
	dd	3
	align	4
_218:
	dd	_69
	dd	126
	dd	2
