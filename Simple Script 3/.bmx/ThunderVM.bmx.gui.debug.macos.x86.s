	.reference	___bb_appstub_appstub
	.reference	___bb_audio_audio
	.reference	___bb_bank_bank
	.reference	___bb_bankstream_bankstream
	.reference	___bb_basic_basic
	.reference	___bb_blitz_blitz
	.reference	___bb_bmploader_bmploader
	.reference	___bb_d3d7max2d_d3d7max2d
	.reference	___bb_data_data
	.reference	___bb_directsoundaudio_directsoundaudio
	.reference	___bb_dxgraphics_dxgraphics
	.reference	___bb_event_event
	.reference	___bb_eventqueue_eventqueue
	.reference	___bb_font_font
	.reference	___bb_freeaudioaudio_freeaudioaudio
	.reference	___bb_freejoy_freejoy
	.reference	___bb_freeprocess_freeprocess
	.reference	___bb_freetypefont_freetypefont
	.reference	___bb_glew_glew
	.reference	___bb_glgraphics_glgraphics
	.reference	___bb_glmax2d_glmax2d
	.reference	___bb_gnet_gnet
	.reference	___bb_jpgloader_jpgloader
	.reference	___bb_macos_macos
	.reference	___bb_map_map
	.reference	___bb_maxlua_maxlua
	.reference	___bb_maxutil_maxutil
	.reference	___bb_oggloader_oggloader
	.reference	___bb_openalaudio_openalaudio
	.reference	___bb_pngloader_pngloader
	.reference	___bb_retro_retro
	.reference	___bb_tgaloader_tgaloader
	.reference	___bb_threads_threads
	.reference	___bb_timer_timer
	.reference	___bb_wavloader_wavloader
	.reference	___bb_win32_win32
	.reference	_bbArrayNew1D
	.reference	_bbArraySlice
	.reference	_bbEmptyArray
	.reference	_bbEmptyString
	.reference	_bbGCFree
	.reference	_bbNullObject
	.reference	_bbObjectClass
	.reference	_bbObjectCompare
	.reference	_bbObjectCtor
	.reference	_bbObjectDtor
	.reference	_bbObjectFree
	.reference	_bbObjectRegisterType
	.reference	_bbObjectReserved
	.reference	_bbObjectSendMessage
	.reference	_bbObjectToString
	.reference	_bbOnDebugEnterScope
	.reference	_bbOnDebugEnterStm
	.reference	_bbOnDebugLeaveScope
	.reference	_bbStringClass
	.reference	_brl_bank_BankSize
	.reference	_brl_bank_CreateBank
	.reference	_brl_bank_PeekByte
	.reference	_brl_bank_PokeByte
	.reference	_brl_bank_PokeFloat
	.reference	_brl_bank_PokeInt
	.reference	_brl_bank_ResizeBank
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_blitz_RuntimeError
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadByte
	.reference	_brl_stream_ReadInt
	.reference	_brl_stream_ReadString
	.globl	__bb_TVM_Delete
	.globl	__bb_TVM_ExecOpCode
	.globl	__bb_TVM_Execute
	.globl	__bb_TVM_GetStack
	.globl	__bb_TVM_Load
	.globl	__bb_TVM_MoveStack
	.globl	__bb_TVM_New
	.globl	__bb_TVM_PopStack
	.globl	__bb_TVM_PushStack
	.globl	__bb_main
	.globl	_bb_PokeString
	.globl	_bb_TVM
	.text	
__bb_main:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$20,%esp
	cmpl	$0,_107
	je	_108
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_108:
	movl	$1,_107
	movl	%ebp,4(%esp)
	movl	$_83,(%esp)
	calll	*_bbOnDebugEnterScope
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
	call	___bb_dxgraphics_dxgraphics
	call	___bb_event_event
	call	___bb_eventqueue_eventqueue
	call	___bb_font_font
	call	___bb_freeaudioaudio_freeaudioaudio
	call	___bb_freetypefont_freetypefont
	call	___bb_glgraphics_glgraphics
	call	___bb_glmax2d_glmax2d
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
	call	___bb_win32_win32
	movl	$_bb_TVM,(%esp)
	call	_bbObjectRegisterType
	mov	$0,%ebx
	jmp	_45
_45:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_New:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_114,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_bbObjectCtor
	movl	-4(%ebp),%eax
	movl	$_bb_TVM,(%eax)
	mov	$_bbEmptyString,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,8(%eax)
	mov	$_bbNullObject,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,12(%eax)
	mov	$_bbEmptyArray,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,16(%eax)
	movl	-4(%ebp),%eax
	movl	$0,20(%eax)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	movl	%eax,4(%esp)
	movl	$_112,(%esp)
	call	_bbArrayNew1D
	incl	4(%eax)
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	$0,28(%eax)
	movl	-4(%ebp),%eax
	movl	$0,32(%eax)
	movl	-4(%ebp),%eax
	movl	$0,36(%eax)
	movl	-4(%ebp),%eax
	movb	$0,40(%eax)
	mov	$0,%ebx
	jmp	_48
_48:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_Delete:
	push	%ebp
	mov	%esp,%ebp
	push	%ebx
	sub	$4,%esp
	movl	8(%ebp),%ebx
_51:
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_119
	movl	%eax,(%esp)
	call	_bbGCFree
_119:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_121
	movl	%eax,(%esp)
	call	_bbGCFree
_121:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_123
	movl	%eax,(%esp)
	call	_bbGCFree
_123:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_125
	movl	%eax,(%esp)
	call	_bbGCFree
_125:
	movl	$_bbObjectClass,(%ebx)
	movl	%ebx,(%esp)
	call	_bbObjectDtor
	mov	$0,%eax
	jmp	_117
_117:
	add	$4,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_Execute:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_136,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_126,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-8(%ebp)
	movl	$0,-8(%ebp)
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_130
	call	_brl_blitz_NullObjectError
_130:
	movl	20(%ebx),%esi
	jmp	_131
_9:
	movl	$_133,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_135
	call	_brl_blitz_NullObjectError
_135:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,-8(%ebp)
_7:
	addl	$1,-8(%ebp)
_131:
	cmpl	%esi,-8(%ebp)
	jle	_9
_8:
	mov	$0,%ebx
	jmp	_54
_54:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_ExecOpCode:
	push	%ebp
	mov	%esp,%ebp
	sub	$80,%esp
	push	%ebx
	push	%esi
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$_bbNullObject,-16(%ebp)
	movb	$0,-4(%ebp)
	movl	$0,-20(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-68(%ebp)
	movl	$0,-72(%ebp)
	movl	$0,-76(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_216,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_137,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_139
	call	_brl_blitz_NullObjectError
_139:
	movl	16(%ebx),%esi
	movl	-12(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_142
	call	_brl_blitz_ArrayBoundsError
_142:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,-16(%ebp)
	movl	$_144,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PeekByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movl	$_146,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_148
	call	_brl_blitz_NullObjectError
_148:
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movb	%al,40(%ebx)
	movl	$_150,(%esp)
	calll	*_bbOnDebugEnterStm
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movb	%al,-80(%ebp)
	movzbl	-80(%ebp),%edx
	movl	-20(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_153
	movzbl	-80(%ebp),%edx
	movl	-24(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_155
	movzbl	-80(%ebp),%edx
	movl	-28(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_157
	movzbl	-80(%ebp),%edx
	movl	-32(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_159
	movzbl	-80(%ebp),%edx
	movl	-36(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_161
	movzbl	-80(%ebp),%edx
	movl	-40(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_163
	movzbl	-80(%ebp),%edx
	movl	-44(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_165
	movzbl	-80(%ebp),%edx
	movl	-48(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_167
	movzbl	-80(%ebp),%edx
	movl	-52(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_169
	movzbl	-80(%ebp),%edx
	movl	-56(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_171
	movzbl	-80(%ebp),%edx
	movl	-60(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_173
	movzbl	-80(%ebp),%edx
	movl	-64(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_175
	jmp	_152
_153:
	movl	$_177,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_179
	call	_brl_blitz_NullObjectError
_179:
	movl	-12(%ebp),%eax
	add	$1,%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,-12(%ebp)
	movl	$_180,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_182
	call	_brl_blitz_NullObjectError
_182:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	movzbl	40(%ebx),%eax
	mov	%eax,%eax
	movl	%eax,4(%esp)
	movl	%esi,(%esp)
	movl	(%esi),%eax
	calll	*60(%eax)
	jmp	_152
_155:
	movl	$_185,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_187
	call	_brl_blitz_NullObjectError
_187:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*64(%eax)
	jmp	_152
_157:
	movl	$_188,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_190
	call	_brl_blitz_NullObjectError
_190:
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*68(%eax)
	jmp	_152
_159:
	jmp	_152
_161:
	jmp	_152
_163:
	jmp	_152
_165:
	movl	$_191,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_193
	call	_brl_blitz_NullObjectError
_193:
	movl	$9,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	movl	$_194,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_196
	call	_brl_blitz_NullObjectError
_196:
	movl	-12(%ebp),%eax
	add	$1,%eax
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*52(%eax)
	movl	%eax,-12(%ebp)
	jmp	_152
_167:
	jmp	_152
_169:
	movl	$_197,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$1,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PeekByte
	cmpl	-68(%ebp),%eax
	je	_200
	cmpl	-72(%ebp),%eax
	je	_202
	cmpl	-76(%ebp),%eax
	je	_204
	jmp	_199
_200:
	movl	$_206,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
	movl	$1,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	jmp	_199
_202:
	movl	$_209,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_211
	call	_brl_blitz_NullObjectError
_211:
	movl	$2,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	jmp	_199
_204:
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	movl	$3,4(%esp)
	movl	%ebx,(%esp)
	movl	(%ebx),%eax
	calll	*60(%eax)
	jmp	_199
_199:
	jmp	_152
_171:
	jmp	_152
_173:
	jmp	_152
_175:
	jmp	_152
_152:
	movl	$_215,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%ebx
	jmp	_58
_58:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_Load:
	push	%ebp
	mov	%esp,%ebp
	sub	$96,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$28,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movb	$0,-4(%ebp)
	movl	$0,-24(%ebp)
	movl	$0,-28(%ebp)
	movl	$0,-32(%ebp)
	movl	$0,-36(%ebp)
	movl	$0,-40(%ebp)
	movl	$0,-44(%ebp)
	movl	$0,-48(%ebp)
	movl	$0,-52(%ebp)
	movl	$0,-56(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-64(%ebp)
	movl	$0,-68(%ebp)
	movl	$_bbEmptyString,-72(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_366,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_236,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$_238,(%esp)
	calll	*_bbOnDebugEnterStm
_12:
	movl	$_239,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$1,-16(%ebp)
	movl	$_240,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	sub	$1,%eax
	movl	%eax,-20(%ebp)
	movl	$_242,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	mov	%ebx,%esi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_247
	call	_brl_blitz_NullObjectError
_247:
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	16(%ebx),%eax
	movl	%eax,4(%esp)
	movl	$_219,(%esp)
	call	_bbArraySlice
	incl	4(%eax)
	mov	%eax,%ebx
	movl	16(%esi),%eax
	decl	4(%eax)
	jnz	_251
	movl	%eax,(%esp)
	call	_bbGCFree
_251:
	movl	%ebx,16(%esi)
	movl	$_252,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	movl	16(%ebx),%ebx
	movl	-20(%ebp),%esi
	cmpl	20(%ebx),%esi
	jb	_257
	call	_brl_blitz_ArrayBoundsError
_257:
	mov	%ebx,%eax
	mov	%esi,%edx
	shl	$2,%edx
	add	%edx,%eax
	mov	%eax,%ebx
	movl	$1,(%esp)
	call	_brl_bank_CreateBank
	incl	4(%eax)
	mov	%eax,%esi
	movl	24(%ebx),%eax
	decl	4(%eax)
	jnz	_262
	movl	%eax,(%esp)
	call	_bbGCFree
_262:
	movl	%esi,24(%ebx)
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movl	$_265,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_267
	call	_brl_blitz_NullObjectError
_267:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_270
	call	_brl_blitz_ArrayBoundsError
_270:
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movl	%eax,8(%esp)
	movl	$0,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeByte
	movl	$_271,(%esp)
	calll	*_bbOnDebugEnterStm
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movb	%al,-76(%ebp)
	movzbl	-76(%ebp),%edx
	movl	-24(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_274
	movzbl	-76(%ebp),%edx
	movl	-28(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_276
	movzbl	-76(%ebp),%edx
	movl	-32(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_278
	movzbl	-76(%ebp),%edx
	movl	-36(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_280
	movzbl	-76(%ebp),%edx
	movl	-40(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-44(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-48(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-52(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-56(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-60(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	movzbl	-76(%ebp),%edx
	movl	-64(%ebp),%eax
	and	$0xff,%eax
	cmp	%eax,%edx
	je	_282
	jmp	_273
_274:
	movl	$_290,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_292
	call	_brl_blitz_NullObjectError
_292:
	movl	16(%ebx),%eax
	movl	%eax,-92(%ebp)
	movl	-20(%ebp),%edi
	movl	-92(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_295
	call	_brl_blitz_ArrayBoundsError
_295:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_300
	call	_brl_blitz_ArrayBoundsError
_300:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-92(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_301,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_306
	call	_brl_blitz_ArrayBoundsError
_306:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	jmp	_273
_276:
	movl	$_307,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	movl	16(%ebx),%eax
	movl	%eax,-88(%ebp)
	movl	-20(%ebp),%edi
	movl	-88(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_312
	call	_brl_blitz_ArrayBoundsError
_312:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_317
	call	_brl_blitz_ArrayBoundsError
_317:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-88(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_318,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_323
	call	_brl_blitz_ArrayBoundsError
_323:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,-96(%ebp)
	fildl	-96(%ebp)
	fstps	8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeFloat
	jmp	_273
_278:
	movl	$_324,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,-68(%ebp)
	movl	$_326,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-68(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadString
	movl	%eax,-72(%ebp)
	movl	$_328,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_330
	call	_brl_blitz_NullObjectError
_330:
	movl	16(%ebx),%eax
	movl	%eax,-84(%ebp)
	movl	-20(%ebp),%edi
	movl	-84(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_333
	call	_brl_blitz_ArrayBoundsError
_333:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_335
	call	_brl_blitz_NullObjectError
_335:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_338
	call	_brl_blitz_ArrayBoundsError
_338:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	movl	-72(%ebp),%edx
	addl	8(%edx),%eax
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-84(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_339,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_344
	call	_brl_blitz_ArrayBoundsError
_344:
	movl	-72(%ebp),%eax
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bb_PokeString
	jmp	_273
_280:
	movl	$_345,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	movl	16(%ebx),%eax
	movl	%eax,-80(%ebp)
	movl	-20(%ebp),%edi
	movl	-80(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_350
	call	_brl_blitz_ArrayBoundsError
_350:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_352
	call	_brl_blitz_NullObjectError
_352:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_355
	call	_brl_blitz_ArrayBoundsError
_355:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-80(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_356,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_358
	call	_brl_blitz_NullObjectError
_358:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_361
	call	_brl_blitz_ArrayBoundsError
_361:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	jmp	_273
_282:
	jmp	_273
_273:
_10:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_12
_11:
	movl	$_362,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	movl	-16(%ebp),%eax
	sub	$1,%eax
	movl	%eax,20(%ebx)
	mov	$0,%ebx
	jmp	_62
_62:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$28,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_PushStack:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	push	%esi
	sub	$8,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_382,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_375,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-4(%ebp),%esi
	cmp	$_bbNullObject,%esi
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	movl	-4(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	movl	32(%ebx),%eax
	cmpl	%eax,28(%esi)
	jne	_380
	movl	$_381,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$_13,(%esp)
	call	_brl_blitz_RuntimeError
_380:
	mov	$0,%ebx
	jmp	_66
_66:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$8,%esp
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_PopStack:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_384,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_69
_69:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_MoveStack:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_385,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_72
_72:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_GetStack:
	push	%ebp
	mov	%esp,%ebp
	sub	$8,%esp
	push	%ebx
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_386,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_76
_76:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_bb_PokeString:
	push	%ebp
	mov	%esp,%ebp
	sub	$16,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_399,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_387,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	movl	$_388,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$4,-8(%ebp)
	movl	$_389,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_391,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	8(%edx),%eax
	sub	$1,%eax
	mov	%eax,%edi
	jmp	_392
_16:
	movl	$_394,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%eax
	subl	-16(%ebp),%eax
	mov	%eax,%ebx
	cmpl	8(%esi),%ebx
	jb	_397
	call	_brl_blitz_ArrayBoundsError
_397:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeByte
_14:
	addl	$1,-8(%ebp)
_392:
	cmpl	%edi,-8(%ebp)
	jle	_16
_15:
	movl	$_398,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	jmp	_81
_81:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
	.data	
	.align	4
_107:
	.long	0
_84:
	.asciz	"ThunderVM"
_85:
	.asciz	"STACK_VARINT"
_32:
	.asciz	"b"
	.align	4
_86:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	49
_87:
	.asciz	"STACK_VARFLOAT"
	.align	4
_88:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	50
_89:
	.asciz	"STACK_VARSTRING"
	.align	4
_90:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	51
_91:
	.asciz	"STACK_VARDOUBLE"
	.align	4
_92:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	52
_93:
	.asciz	"STACK_VARBYTE"
	.align	4
_94:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	53
_95:
	.asciz	"STACK_VARSHORT"
	.align	4
_96:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	54
_97:
	.asciz	"STACK_VARLONG"
	.align	4
_98:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	55
_99:
	.asciz	"STACK_FUNC"
	.align	4
_100:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	56
_101:
	.asciz	"STACK_VAR"
	.align	4
_102:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	57
_103:
	.asciz	"STACK_IDLE"
	.align	4
_104:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,48
_105:
	.asciz	"STACKSIZE"
_26:
	.asciz	"i"
	.align	4
_106:
	.long	_bbStringClass
	.long	2147483647
	.long	4
	.short	49,48,50,52
	.align	4
_83:
	.long	1
	.long	_84
	.long	1
	.long	_85
	.long	_32
	.long	_86
	.long	1
	.long	_87
	.long	_32
	.long	_88
	.long	1
	.long	_89
	.long	_32
	.long	_90
	.long	1
	.long	_91
	.long	_32
	.long	_92
	.long	1
	.long	_93
	.long	_32
	.long	_94
	.long	1
	.long	_95
	.long	_32
	.long	_96
	.long	1
	.long	_97
	.long	_32
	.long	_98
	.long	1
	.long	_99
	.long	_32
	.long	_100
	.long	1
	.long	_101
	.long	_32
	.long	_102
	.long	1
	.long	_103
	.long	_32
	.long	_104
	.long	1
	.long	_105
	.long	_26
	.long	_106
	.long	0
_18:
	.asciz	"TVM"
_19:
	.asciz	"Name"
_20:
	.asciz	"$"
_21:
	.asciz	"Stream"
_22:
	.asciz	":brl.stream.TStream"
_23:
	.asciz	"File"
_24:
	.asciz	"[]:brl.bank.TBank"
_25:
	.asciz	"Size"
_27:
	.asciz	"Stack"
_28:
	.asciz	"STackPos"
_29:
	.asciz	"StackSize"
_30:
	.asciz	"Pointer"
_31:
	.asciz	"LastOpCode"
_33:
	.asciz	"New"
_34:
	.asciz	"()i"
_35:
	.asciz	"Delete"
_36:
	.asciz	"Execute"
_37:
	.asciz	"ExecOpCode"
_38:
	.asciz	"(i)i"
_39:
	.asciz	"Load"
_40:
	.asciz	"(:brl.stream.TStream)i"
_41:
	.asciz	"PushStack"
_42:
	.asciz	"PopStack"
_43:
	.asciz	"MoveStack"
_44:
	.asciz	"GetStack"
	.align	4
_17:
	.long	2
	.long	_18
	.long	3
	.long	_19
	.long	_20
	.long	8
	.long	3
	.long	_21
	.long	_22
	.long	12
	.long	3
	.long	_23
	.long	_24
	.long	16
	.long	3
	.long	_25
	.long	_26
	.long	20
	.long	3
	.long	_27
	.long	_24
	.long	24
	.long	3
	.long	_28
	.long	_26
	.long	28
	.long	3
	.long	_29
	.long	_26
	.long	32
	.long	3
	.long	_30
	.long	_26
	.long	36
	.long	3
	.long	_31
	.long	_32
	.long	40
	.long	6
	.long	_33
	.long	_34
	.long	16
	.long	6
	.long	_35
	.long	_34
	.long	20
	.long	6
	.long	_36
	.long	_34
	.long	48
	.long	6
	.long	_37
	.long	_38
	.long	52
	.long	6
	.long	_39
	.long	_40
	.long	56
	.long	6
	.long	_41
	.long	_38
	.long	60
	.long	6
	.long	_42
	.long	_34
	.long	64
	.long	6
	.long	_43
	.long	_34
	.long	68
	.long	6
	.long	_44
	.long	_38
	.long	72
	.long	0
	.align	4
_bb_TVM:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_17
	.long	41
	.long	__bb_TVM_New
	.long	__bb_TVM_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TVM_Execute
	.long	__bb_TVM_ExecOpCode
	.long	__bb_TVM_Load
	.long	__bb_TVM_PushStack
	.long	__bb_TVM_PopStack
	.long	__bb_TVM_MoveStack
	.long	__bb_TVM_GetStack
_115:
	.asciz	"Self"
_116:
	.asciz	":TVM"
	.align	4
_114:
	.long	1
	.long	_33
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	0
_112:
	.asciz	":brl.bank.TBank"
	.align	4
_136:
	.long	1
	.long	_36
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	2
	.long	_26
	.long	_26
	.long	-8
	.long	0
_127:
	.asciz	"/Users/robertfischer/Desktop/Eigene Programme/Simple Script 3/ThunderVM.bmx"
	.align	4
_126:
	.long	_127
	.long	69
	.long	3
	.align	4
_133:
	.long	_127
	.long	70
	.long	4
_217:
	.asciz	"Pos"
_218:
	.asciz	"Bank"
_219:
	.asciz	":brl.bank.TBank"
_220:
	.asciz	"OpCode"
_221:
	.asciz	"OP_PUSH"
_222:
	.asciz	"OP_POP"
_223:
	.asciz	"OP_MOVE"
_224:
	.asciz	"OP_INT"
_225:
	.asciz	"OP_FLOAT"
_226:
	.asciz	"OP_STRING"
_227:
	.asciz	"OP_REGISTERCLASS"
_228:
	.asciz	"OP_SIZE"
_229:
	.asciz	"OP_REGISTERFIELD"
_230:
	.asciz	"OP_INDEX"
_231:
	.asciz	"OP_REGISTERFUNC"
_232:
	.asciz	"OP_CALL"
_233:
	.asciz	"IS_INT"
_234:
	.asciz	"IS_FLOAT"
_235:
	.asciz	"IS_STRING"
	.align	4
_216:
	.long	1
	.long	_37
	.long	2
	.long	_115
	.long	_116
	.long	-8
	.long	2
	.long	_217
	.long	_26
	.long	-12
	.long	2
	.long	_218
	.long	_219
	.long	-16
	.long	2
	.long	_220
	.long	_32
	.long	-4
	.long	2
	.long	_221
	.long	_26
	.long	-20
	.long	2
	.long	_222
	.long	_26
	.long	-24
	.long	2
	.long	_223
	.long	_26
	.long	-28
	.long	2
	.long	_224
	.long	_26
	.long	-32
	.long	2
	.long	_225
	.long	_26
	.long	-36
	.long	2
	.long	_226
	.long	_26
	.long	-40
	.long	2
	.long	_227
	.long	_26
	.long	-44
	.long	2
	.long	_228
	.long	_26
	.long	-48
	.long	2
	.long	_229
	.long	_26
	.long	-52
	.long	2
	.long	_230
	.long	_26
	.long	-56
	.long	2
	.long	_231
	.long	_26
	.long	-60
	.long	2
	.long	_232
	.long	_26
	.long	-64
	.long	2
	.long	_233
	.long	_26
	.long	-68
	.long	2
	.long	_234
	.long	_26
	.long	-72
	.long	2
	.long	_235
	.long	_26
	.long	-76
	.long	0
	.align	4
_137:
	.long	_127
	.long	78
	.long	3
	.align	4
_144:
	.long	_127
	.long	79
	.long	3
	.align	4
_146:
	.long	_127
	.long	80
	.long	3
	.align	4
_150:
	.long	_127
	.long	81
	.long	3
	.align	4
_177:
	.long	_127
	.long	83
	.long	5
	.align	4
_180:
	.long	_127
	.long	84
	.long	5
	.align	4
_185:
	.long	_127
	.long	88
	.long	5
	.align	4
_188:
	.long	_127
	.long	90
	.long	5
	.align	4
_191:
	.long	_127
	.long	99
	.long	5
	.align	4
_194:
	.long	_127
	.long	100
	.long	5
	.align	4
_197:
	.long	_127
	.long	106
	.long	5
	.align	4
_206:
	.long	_127
	.long	108
	.long	7
	.align	4
_209:
	.long	_127
	.long	110
	.long	7
	.align	4
_212:
	.long	_127
	.long	112
	.long	7
	.align	4
_215:
	.long	_127
	.long	135
	.long	3
_367:
	.asciz	"id"
_368:
	.asciz	"ReadTyp"
_369:
	.asciz	"OP_STATIC"
_370:
	.asciz	"OP_FILE"
_371:
	.asciz	"OP_PAR"
_372:
	.asciz	"OP_EXIT"
_373:
	.asciz	"Off"
_374:
	.asciz	"Text"
	.align	4
_366:
	.long	1
	.long	_39
	.long	2
	.long	_115
	.long	_116
	.long	-8
	.long	2
	.long	_23
	.long	_22
	.long	-12
	.long	2
	.long	_26
	.long	_26
	.long	-16
	.long	2
	.long	_367
	.long	_26
	.long	-20
	.long	2
	.long	_368
	.long	_32
	.long	-4
	.long	2
	.long	_224
	.long	_26
	.long	-24
	.long	2
	.long	_225
	.long	_26
	.long	-28
	.long	2
	.long	_226
	.long	_26
	.long	-32
	.long	2
	.long	_228
	.long	_26
	.long	-36
	.long	2
	.long	_222
	.long	_26
	.long	-40
	.long	2
	.long	_221
	.long	_26
	.long	-44
	.long	2
	.long	_223
	.long	_26
	.long	-48
	.long	2
	.long	_369
	.long	_26
	.long	-52
	.long	2
	.long	_370
	.long	_26
	.long	-56
	.long	2
	.long	_371
	.long	_26
	.long	-60
	.long	2
	.long	_372
	.long	_26
	.long	-64
	.long	2
	.long	_373
	.long	_26
	.long	-68
	.long	2
	.long	_374
	.long	_20
	.long	-72
	.long	0
	.align	4
_236:
	.long	_127
	.long	139
	.long	3
	.align	4
_238:
	.long	_127
	.long	165
	.long	3
	.align	4
_239:
	.long	_127
	.long	141
	.long	4
	.align	4
_240:
	.long	_127
	.long	142
	.long	4
	.align	4
_242:
	.long	_127
	.long	143
	.long	4
	.align	4
_252:
	.long	_127
	.long	144
	.long	4
	.align	4
_263:
	.long	_127
	.long	145
	.long	4
	.align	4
_265:
	.long	_127
	.long	146
	.long	4
	.align	4
_271:
	.long	_127
	.long	147
	.long	4
	.align	4
_290:
	.long	_127
	.long	149
	.long	6
	.align	4
_301:
	.long	_127
	.long	150
	.long	6
	.align	4
_307:
	.long	_127
	.long	152
	.long	6
	.align	4
_318:
	.long	_127
	.long	153
	.long	6
	.align	4
_324:
	.long	_127
	.long	155
	.long	6
	.align	4
_326:
	.long	_127
	.long	156
	.long	6
	.align	4
_328:
	.long	_127
	.long	157
	.long	6
	.align	4
_339:
	.long	_127
	.long	158
	.long	6
	.align	4
_345:
	.long	_127
	.long	160
	.long	6
	.align	4
_356:
	.long	_127
	.long	161
	.long	6
	.align	4
_362:
	.long	_127
	.long	166
	.long	3
_383:
	.asciz	"Typ"
	.align	4
_382:
	.long	1
	.long	_41
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	2
	.long	_383
	.long	_26
	.long	-8
	.long	0
	.align	4
_375:
	.long	_127
	.long	173
	.long	3
	.align	4
_381:
	.long	_127
	.long	173
	.long	30
	.align	4
_13:
	.long	_bbStringClass
	.long	2147483647
	.long	15
	.short	83,116,97,99,107,32,79,118,101,114,102,108,111,119,33
	.align	4
_384:
	.long	1
	.long	_42
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	0
	.align	4
_385:
	.long	1
	.long	_43
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	0
	.align	4
_386:
	.long	1
	.long	_44
	.long	2
	.long	_115
	.long	_116
	.long	-4
	.long	2
	.long	_217
	.long	_26
	.long	-8
	.long	0
_400:
	.asciz	"PokeString"
_401:
	.asciz	"Str"
_402:
	.asciz	"Off2"
	.align	4
_399:
	.long	1
	.long	_400
	.long	2
	.long	_218
	.long	_219
	.long	-4
	.long	2
	.long	_373
	.long	_26
	.long	-8
	.long	2
	.long	_401
	.long	_20
	.long	-12
	.long	2
	.long	_402
	.long	_26
	.long	-16
	.long	0
	.align	4
_387:
	.long	_127
	.long	193
	.long	2
	.align	4
_388:
	.long	_127
	.long	194
	.long	2
	.align	4
_389:
	.long	_127
	.long	195
	.long	2
	.align	4
_391:
	.long	_127
	.long	196
	.long	2
	.align	4
_394:
	.long	_127
	.long	197
	.long	3
	.align	4
_398:
	.long	_127
	.long	199
	.long	2
