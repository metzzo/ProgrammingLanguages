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
	.reference	_bbStringFromInt
	.reference	_brl_bank_BankSize
	.reference	_brl_bank_CreateBank
	.reference	_brl_bank_PokeByte
	.reference	_brl_bank_PokeInt
	.reference	_brl_bank_ResizeBank
	.reference	_brl_blitz_ArrayBoundsError
	.reference	_brl_blitz_NullObjectError
	.reference	_brl_stream_Eof
	.reference	_brl_stream_ReadByte
	.reference	_brl_stream_ReadInt
	.reference	_brl_stream_ReadString
	.globl	__bb_TVM_Delete
	.globl	__bb_TVM_Execute
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
	cmpl	$0,_137
	je	_138
	mov	$0,%eax
	add	$20,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
_138:
	movl	$1,_137
	movl	%ebp,4(%esp)
	movl	$_60,(%esp)
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
	jmp	_31
_31:
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
	movl	$_143,(%esp)
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
	mov	$_bbEmptyArray,%edx
	incl	4(%edx)
	movl	-4(%ebp),%eax
	movl	%edx,20(%eax)
	mov	$0,%ebx
	jmp	_34
_34:
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
_37:
	movl	20(%ebx),%eax
	decl	4(%eax)
	jnz	_148
	movl	%eax,(%esp)
	call	_bbGCFree
_148:
	movl	16(%ebx),%eax
	decl	4(%eax)
	jnz	_150
	movl	%eax,(%esp)
	call	_bbGCFree
_150:
	movl	12(%ebx),%eax
	decl	4(%eax)
	jnz	_152
	movl	%eax,(%esp)
	call	_bbGCFree
_152:
	movl	8(%ebx),%eax
	decl	4(%eax)
	jnz	_154
	movl	%eax,(%esp)
	call	_bbGCFree
_154:
	movl	$_bbObjectClass,(%ebx)
	movl	%ebx,(%esp)
	call	_bbObjectDtor
	mov	$0,%eax
	jmp	_146
_146:
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
	sub	$12,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	%ebp,4(%esp)
	movl	$_161,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_155,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	cmp	$1,%eax
	je	_160
	jmp	_159
_160:
	jmp	_159
_159:
	mov	$0,%ebx
	jmp	_40
_40:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$12,%esp
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_Load:
	push	%ebp
	mov	%esp,%ebp
	sub	$40,%esp
	push	%ebx
	push	%esi
	push	%edi
	sub	$20,%esp
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	$0,-16(%ebp)
	movl	$0,-20(%ebp)
	movb	$0,-4(%ebp)
	movl	$_bbEmptyString,-24(%ebp)
	mov	%ebp,%eax
	movl	%eax,4(%esp)
	movl	$_254,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_164,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	$0,-16(%ebp)
	movl	$_166,(%esp)
	calll	*_bbOnDebugEnterStm
_9:
	movl	$_167,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$1,-16(%ebp)
	movl	$_168,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	sub	$1,%eax
	movl	%eax,-20(%ebp)
	movl	$_170,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_172
	call	_brl_blitz_NullObjectError
_172:
	mov	%ebx,%esi
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_175
	call	_brl_blitz_NullObjectError
_175:
	movl	-16(%ebp),%eax
	movl	%eax,12(%esp)
	movl	$0,8(%esp)
	movl	16(%ebx),%eax
	movl	%eax,4(%esp)
	movl	$_176,(%esp)
	call	_bbArraySlice
	incl	4(%eax)
	mov	%eax,%ebx
	movl	16(%esi),%eax
	decl	4(%eax)
	jnz	_180
	movl	%eax,(%esp)
	call	_bbGCFree
_180:
	movl	%ebx,16(%esi)
	movl	$_181,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_183
	call	_brl_blitz_NullObjectError
_183:
	movl	16(%ebx),%ebx
	movl	-20(%ebp),%esi
	cmpl	20(%ebx),%esi
	jb	_186
	call	_brl_blitz_ArrayBoundsError
_186:
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
	jnz	_191
	movl	%eax,(%esp)
	call	_bbGCFree
_191:
	movl	%esi,24(%ebx)
	movl	$_192,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadByte
	mov	%eax,%eax
	and	$0xff,%eax
	mov	%eax,%eax
	movb	%al,-4(%ebp)
	movl	$_194,(%esp)
	calll	*_bbOnDebugEnterStm
	movzbl	-4(%ebp),%eax
	mov	%eax,%eax
	movb	%al,-28(%ebp)
	movzbl	-28(%ebp),%eax
	cmp	$15,%eax
	je	_197
	movzbl	-28(%ebp),%eax
	cmp	$16,%eax
	je	_198
	movzbl	-28(%ebp),%eax
	cmp	$21,%eax
	je	_199
	movzbl	-28(%ebp),%eax
	cmp	$4,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$1,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$9,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$37,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$13,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$12,%eax
	je	_200
	movzbl	-28(%ebp),%eax
	cmp	$3,%eax
	je	_200
	jmp	_196
_197:
	movl	$_201,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
	movl	16(%ebx),%eax
	movl	%eax,-40(%ebp)
	movl	-20(%ebp),%edi
	movl	-40(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_206
	call	_brl_blitz_ArrayBoundsError
_206:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_211
	call	_brl_blitz_ArrayBoundsError
_211:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-40(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_212,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_217
	call	_brl_blitz_ArrayBoundsError
_217:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	jmp	_196
_198:
	movl	$_218,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	movl	16(%ebx),%eax
	movl	%eax,-36(%ebp)
	movl	-20(%ebp),%edi
	movl	-36(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_223
	call	_brl_blitz_ArrayBoundsError
_223:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_228
	call	_brl_blitz_ArrayBoundsError
_228:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	add	$4,%eax
	movl	%eax,4(%esp)
	movl	-36(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_229,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_231
	call	_brl_blitz_NullObjectError
_231:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_234
	call	_brl_blitz_ArrayBoundsError
_234:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	jmp	_196
_199:
	movl	$_235,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadString
	movl	%eax,-24(%ebp)
	movl	$_237,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	movl	16(%ebx),%eax
	movl	%eax,-32(%ebp)
	movl	-20(%ebp),%edi
	movl	-32(%ebp),%eax
	cmpl	20(%eax),%edi
	jb	_242
	call	_brl_blitz_ArrayBoundsError
_242:
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_247
	call	_brl_blitz_ArrayBoundsError
_247:
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_BankSize
	movl	-24(%ebp),%edx
	addl	8(%edx),%eax
	movl	%eax,4(%esp)
	movl	-32(%ebp),%eax
	movl	24(%eax,%edi,4),%eax
	movl	%eax,(%esp)
	call	_brl_bank_ResizeBank
	movl	$_248,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	cmp	$_bbNullObject,%ebx
	jne	_250
	call	_brl_blitz_NullObjectError
_250:
	movl	16(%ebx),%esi
	movl	-20(%ebp),%ebx
	cmpl	20(%esi),%ebx
	jb	_253
	call	_brl_blitz_ArrayBoundsError
_253:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_ReadInt
	movl	%eax,(%esp)
	call	_bbStringFromInt
	movl	%eax,8(%esp)
	movl	$1,4(%esp)
	movl	24(%esi,%ebx,4),%eax
	movl	%eax,(%esp)
	call	_bb_PokeString
	jmp	_196
_200:
	jmp	_196
_196:
_7:
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_stream_Eof
	cmp	$0,%eax
	je	_9
_8:
	mov	$0,%ebx
	jmp	_44
_44:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$20,%esp
	pop	%edi
	pop	%esi
	pop	%ebx
	mov	%ebp,%esp
	pop	%ebp
	ret
__bb_TVM_PushStack:
	push	%ebp
	mov	%esp,%ebp
	sub	$4,%esp
	push	%ebx
	sub	$16,%esp
	movl	8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	%ebp,4(%esp)
	movl	$_258,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_47
_47:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	movl	$_259,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_50
_50:
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
	movl	$_260,(%esp)
	calll	*_bbOnDebugEnterScope
	mov	$0,%ebx
	jmp	_53
_53:
	calll	*_bbOnDebugLeaveScope
	mov	%ebx,%eax
	add	$16,%esp
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
	movl	$_273,(%esp)
	calll	*_bbOnDebugEnterScope
	movl	$_261,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeInt
	movl	$_262,(%esp)
	calll	*_bbOnDebugEnterStm
	addl	$4,-8(%ebp)
	movl	$_263,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	$_265,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-16(%ebp),%eax
	movl	-12(%ebp),%edx
	addl	8(%edx),%eax
	mov	%eax,%edi
	jmp	_266
_12:
	movl	$_268,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-12(%ebp),%esi
	movl	-8(%ebp),%eax
	subl	-16(%ebp),%eax
	mov	%eax,%ebx
	cmpl	8(%esi),%ebx
	jb	_271
	call	_brl_blitz_ArrayBoundsError
_271:
	movzwl	12(%esi,%ebx,2),%eax
	mov	%eax,%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	_brl_bank_PokeByte
_10:
	addl	$1,-8(%ebp)
_266:
	cmpl	%edi,-8(%ebp)
	jle	_12
_11:
	movl	$_272,(%esp)
	calll	*_bbOnDebugEnterStm
	movl	-8(%ebp),%ebx
	jmp	_58
_58:
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
_137:
	.long	0
_61:
	.asciz	"VM"
_62:
	.asciz	"OP_PUSH"
_63:
	.asciz	"b"
	.align	4
_64:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	49
_65:
	.asciz	"OP_CHECK"
	.align	4
_66:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	50
_67:
	.asciz	"OP_EXIT"
	.align	4
_68:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	51
_69:
	.asciz	"OP_POP"
	.align	4
_70:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	52
_71:
	.asciz	"OP_SCOPE"
	.align	4
_72:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	53
_73:
	.asciz	"OP_ENDSCOPE"
	.align	4
_74:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	54
_75:
	.asciz	"OP_CALL"
	.align	4
_76:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	55
_77:
	.asciz	"OP_HOLD"
	.align	4
_78:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	56
_79:
	.asciz	"OP_MOVE"
	.align	4
_80:
	.long	_bbStringClass
	.long	2147483647
	.long	1
	.short	57
_81:
	.asciz	"OP_VAR"
	.align	4
_82:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,48
_83:
	.asciz	"OP_REGISTERFUNC"
	.align	4
_84:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,49
_85:
	.asciz	"OP_PAR"
	.align	4
_86:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,50
_87:
	.asciz	"OP_FILE"
	.align	4
_88:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,51
_89:
	.asciz	"OP_JUMP"
	.align	4
_90:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,52
_91:
	.asciz	"OP_INT"
	.align	4
_92:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,53
_93:
	.asciz	"OP_FLOAT"
	.align	4
_94:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,54
_95:
	.asciz	"OP_DOUBLE"
	.align	4
_96:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,55
_97:
	.asciz	"OP_SHORT"
	.align	4
_98:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,56
_99:
	.asciz	"OP_LONG"
	.align	4
_100:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	49,57
_101:
	.asciz	"OP_BYTE"
	.align	4
_102:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,48
_103:
	.asciz	"OP_STRING"
	.align	4
_104:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,49
_105:
	.asciz	"OP_POINTER"
	.align	4
_106:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,50
_107:
	.asciz	"OP_OPERATOR"
	.align	4
_108:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,51
_109:
	.asciz	"OP_RETURN"
	.align	4
_110:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,52
_111:
	.asciz	"OP_FUNCINDEX"
	.align	4
_112:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,53
_113:
	.asciz	"OP_NULL"
	.align	4
_114:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,54
_115:
	.asciz	"OP_CREATECLASS"
	.align	4
_116:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,55
_117:
	.asciz	"OP_CALLFROMPOINTER"
	.align	4
_118:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,56
_119:
	.asciz	"OP_PUSHFROMPOINTER"
	.align	4
_120:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	50,57
_121:
	.asciz	"OP_POPFROMPOINTER"
	.align	4
_122:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,48
_123:
	.asciz	"OP_VARFROMPOINTER"
	.align	4
_124:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,50
_125:
	.asciz	"OP_REGISTERCLASS"
	.align	4
_126:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,51
_127:
	.asciz	"OP_REGISTERFIELD"
	.align	4
_128:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,52
_129:
	.asciz	"OP_TYPE"
	.align	4
_130:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,53
_131:
	.asciz	"OP_INDEX"
	.align	4
_132:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,54
_133:
	.asciz	"OP_STATIC"
	.align	4
_134:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,55
_135:
	.asciz	"OP_SIZE"
	.align	4
_136:
	.long	_bbStringClass
	.long	2147483647
	.long	2
	.short	51,56
	.align	4
_60:
	.long	1
	.long	_61
	.long	1
	.long	_62
	.long	_63
	.long	_64
	.long	1
	.long	_65
	.long	_63
	.long	_66
	.long	1
	.long	_67
	.long	_63
	.long	_68
	.long	1
	.long	_69
	.long	_63
	.long	_70
	.long	1
	.long	_71
	.long	_63
	.long	_72
	.long	1
	.long	_73
	.long	_63
	.long	_74
	.long	1
	.long	_75
	.long	_63
	.long	_76
	.long	1
	.long	_77
	.long	_63
	.long	_78
	.long	1
	.long	_79
	.long	_63
	.long	_80
	.long	1
	.long	_81
	.long	_63
	.long	_82
	.long	1
	.long	_83
	.long	_63
	.long	_84
	.long	1
	.long	_85
	.long	_63
	.long	_86
	.long	1
	.long	_87
	.long	_63
	.long	_88
	.long	1
	.long	_89
	.long	_63
	.long	_90
	.long	1
	.long	_91
	.long	_63
	.long	_92
	.long	1
	.long	_93
	.long	_63
	.long	_94
	.long	1
	.long	_95
	.long	_63
	.long	_96
	.long	1
	.long	_97
	.long	_63
	.long	_98
	.long	1
	.long	_99
	.long	_63
	.long	_100
	.long	1
	.long	_101
	.long	_63
	.long	_102
	.long	1
	.long	_103
	.long	_63
	.long	_104
	.long	1
	.long	_105
	.long	_63
	.long	_106
	.long	1
	.long	_107
	.long	_63
	.long	_108
	.long	1
	.long	_109
	.long	_63
	.long	_110
	.long	1
	.long	_111
	.long	_63
	.long	_112
	.long	1
	.long	_113
	.long	_63
	.long	_114
	.long	1
	.long	_115
	.long	_63
	.long	_116
	.long	1
	.long	_117
	.long	_63
	.long	_118
	.long	1
	.long	_119
	.long	_63
	.long	_120
	.long	1
	.long	_121
	.long	_63
	.long	_122
	.long	1
	.long	_123
	.long	_63
	.long	_124
	.long	1
	.long	_125
	.long	_63
	.long	_126
	.long	1
	.long	_127
	.long	_63
	.long	_128
	.long	1
	.long	_129
	.long	_63
	.long	_130
	.long	1
	.long	_131
	.long	_63
	.long	_132
	.long	1
	.long	_133
	.long	_63
	.long	_134
	.long	1
	.long	_135
	.long	_63
	.long	_136
	.long	0
_14:
	.asciz	"TVM"
_15:
	.asciz	"Name"
_16:
	.asciz	"$"
_17:
	.asciz	"Stream"
_18:
	.asciz	":brl.stream.TStream"
_19:
	.asciz	"File"
_20:
	.asciz	"[]:brl.bank.TBank"
_21:
	.asciz	"Stack"
_22:
	.asciz	"New"
_23:
	.asciz	"()i"
_24:
	.asciz	"Delete"
_25:
	.asciz	"Execute"
_26:
	.asciz	"Load"
_27:
	.asciz	"(:brl.stream.TStream)i"
_28:
	.asciz	"PushStack"
_29:
	.asciz	"PopStack"
_30:
	.asciz	"MoveStack"
	.align	4
_13:
	.long	2
	.long	_14
	.long	3
	.long	_15
	.long	_16
	.long	8
	.long	3
	.long	_17
	.long	_18
	.long	12
	.long	3
	.long	_19
	.long	_20
	.long	16
	.long	3
	.long	_21
	.long	_20
	.long	20
	.long	6
	.long	_22
	.long	_23
	.long	16
	.long	6
	.long	_24
	.long	_23
	.long	20
	.long	6
	.long	_25
	.long	_23
	.long	48
	.long	6
	.long	_26
	.long	_27
	.long	52
	.long	6
	.long	_28
	.long	_23
	.long	56
	.long	6
	.long	_29
	.long	_23
	.long	60
	.long	6
	.long	_30
	.long	_23
	.long	64
	.long	0
	.align	4
_bb_TVM:
	.long	_bbObjectClass
	.long	_bbObjectFree
	.long	_13
	.long	24
	.long	__bb_TVM_New
	.long	__bb_TVM_Delete
	.long	_bbObjectToString
	.long	_bbObjectCompare
	.long	_bbObjectSendMessage
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	_bbObjectReserved
	.long	__bb_TVM_Execute
	.long	__bb_TVM_Load
	.long	__bb_TVM_PushStack
	.long	__bb_TVM_PopStack
	.long	__bb_TVM_MoveStack
_144:
	.asciz	"Self"
_145:
	.asciz	":TVM"
	.align	4
_143:
	.long	1
	.long	_22
	.long	2
	.long	_144
	.long	_145
	.long	-4
	.long	0
_162:
	.asciz	"Readtype"
_163:
	.asciz	"i"
	.align	4
_161:
	.long	1
	.long	_25
	.long	2
	.long	_144
	.long	_145
	.long	-4
	.long	2
	.long	_162
	.long	_163
	.long	-8
	.long	0
_156:
	.asciz	"/Users/robertfischer/Desktop/Eigene Programme/Simple Script 3/VM.bmx"
	.align	4
_155:
	.long	_156
	.long	49
	.long	3
_255:
	.asciz	"id"
_256:
	.asciz	"ReadTyp"
_257:
	.asciz	"Text"
	.align	4
_254:
	.long	1
	.long	_26
	.long	2
	.long	_144
	.long	_145
	.long	-8
	.long	2
	.long	_19
	.long	_18
	.long	-12
	.long	2
	.long	_163
	.long	_163
	.long	-16
	.long	2
	.long	_255
	.long	_163
	.long	-20
	.long	2
	.long	_256
	.long	_63
	.long	-4
	.long	2
	.long	_257
	.long	_16
	.long	-24
	.long	0
	.align	4
_164:
	.long	_156
	.long	57
	.long	3
	.align	4
_166:
	.long	_156
	.long	79
	.long	3
	.align	4
_167:
	.long	_156
	.long	59
	.long	4
	.align	4
_168:
	.long	_156
	.long	60
	.long	4
	.align	4
_170:
	.long	_156
	.long	61
	.long	4
_176:
	.asciz	":brl.bank.TBank"
	.align	4
_181:
	.long	_156
	.long	62
	.long	4
	.align	4
_192:
	.long	_156
	.long	63
	.long	4
	.align	4
_194:
	.long	_156
	.long	65
	.long	4
	.align	4
_201:
	.long	_156
	.long	67
	.long	6
	.align	4
_212:
	.long	_156
	.long	68
	.long	6
	.align	4
_218:
	.long	_156
	.long	70
	.long	6
	.align	4
_229:
	.long	_156
	.long	71
	.long	6
	.align	4
_235:
	.long	_156
	.long	73
	.long	6
	.align	4
_237:
	.long	_156
	.long	74
	.long	6
	.align	4
_248:
	.long	_156
	.long	75
	.long	6
	.align	4
_258:
	.long	1
	.long	_28
	.long	2
	.long	_144
	.long	_145
	.long	-4
	.long	0
	.align	4
_259:
	.long	1
	.long	_29
	.long	2
	.long	_144
	.long	_145
	.long	-4
	.long	0
	.align	4
_260:
	.long	1
	.long	_30
	.long	2
	.long	_144
	.long	_145
	.long	-4
	.long	0
_274:
	.asciz	"PokeString"
_275:
	.asciz	"Bank"
_276:
	.asciz	"Off"
_277:
	.asciz	"Str"
_278:
	.asciz	"Off2"
	.align	4
_273:
	.long	1
	.long	_274
	.long	2
	.long	_275
	.long	_176
	.long	-4
	.long	2
	.long	_276
	.long	_163
	.long	-8
	.long	2
	.long	_277
	.long	_16
	.long	-12
	.long	2
	.long	_278
	.long	_163
	.long	-16
	.long	0
	.align	4
_261:
	.long	_156
	.long	100
	.long	2
	.align	4
_262:
	.long	_156
	.long	101
	.long	2
	.align	4
_263:
	.long	_156
	.long	102
	.long	2
	.align	4
_265:
	.long	_156
	.long	103
	.long	2
	.align	4
_268:
	.long	_156
	.long	104
	.long	3
	.align	4
_272:
	.long	_156
	.long	106
	.long	2
