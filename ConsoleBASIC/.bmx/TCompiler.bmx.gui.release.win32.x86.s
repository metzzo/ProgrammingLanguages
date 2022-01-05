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
	extrn	_bbAppDir
	extrn	_bbArrayNew1D
	extrn	_bbEmptyString
	extrn	_bbGCCollect
	extrn	_bbGCFree
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
	extrn	_bbStringAsc
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringEndsWith
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringReplace
	extrn	_bbStringSlice
	extrn	_bbStringSplit
	extrn	_bbStringStartsWith
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_bbStringTrim
	extrn	_brl_blitz_NullMethodError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_CloseFile
	extrn	_brl_filesystem_ReadFile
	extrn	_brl_filesystem_WriteFile
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_retro_Mid
	extrn	_brl_retro_Replace
	extrn	_brl_standardio_Print
	extrn	_brl_stream_LoadString
	extrn	_brl_stream_SaveString
	extrn	_brl_stream_WriteLine
	extrn	_brl_system_OpenURL
	public	__bb_TCGenerator_Delete
	public	__bb_TCGenerator_Generate
	public	__bb_TCGenerator_GenerateToken
	public	__bb_TCGenerator_New
	public	__bb_TCompiler_Create
	public	__bb_TCompiler_CreateToken
	public	__bb_TCompiler_Delete
	public	__bb_TCompiler_Execute
	public	__bb_TCompiler_Generate
	public	__bb_TCompiler_GetVariable
	public	__bb_TCompiler_New
	public	__bb_TCompiler_Parse
	public	__bb_TCompiler_ParseTerm
	public	__bb_TCompiler_PopScope
	public	__bb_TCompiler_PushScope
	public	__bb_TCompiler_PushVariable
	public	__bb_TCompiler_RegisterFunction
	public	__bb_TCompiler_RemoveToken
	public	__bb_TCompiler_TokenGetAfter
	public	__bb_TCompiler_TokenGetBefore
	public	__bb_TCompiler_Tokenize
	public	__bb_TFunction_Create
	public	__bb_TFunction_Delete
	public	__bb_TFunction_Getname
	public	__bb_TFunction_New
	public	__bb_TFunction_ToString
	public	__bb_TGenerator_Delete
	public	__bb_TGenerator_New
	public	__bb_TToken_Create
	public	__bb_TToken_Delete
	public	__bb_TToken_GetCloseToken
	public	__bb_TToken_GetText
	public	__bb_TToken_GetTyp
	public	__bb_TToken_Lexer
	public	__bb_TToken_New
	public	__bb_TToken_Parse
	public	__bb_TToken_ToString
	public	__bb_TVariable_Create
	public	__bb_TVariable_Delete
	public	__bb_TVariable_GetDataType
	public	__bb_TVariable_GetName
	public	__bb_TVariable_New
	public	__bb_main
	public	_bb_IsFLoat
	public	_bb_IsInt
	public	_bb_TCGenerator
	public	_bb_TCompiler
	public	_bb_TFunction
	public	_bb_TGenerator
	public	_bb_TToken
	public	_bb_TVariable
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	cmp	dword [_441],0
	je	_442
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_442:
	mov	dword [_441],1
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
	push	_bb_TGenerator
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TToken
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TVariable
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TFunction
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	esi,eax
	push	_bb_TFunction
	call	_bbObjectNew
	add	esp,4
	push	_187
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+96]
	add	esp,8
	push	_188
	call	_brl_filesystem_ReadFile
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,8
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,4
	mov	ebx,esi
	push	_bb_TCGenerator
	call	_bbObjectNew
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+104]
	add	esp,8
	mov	eax,0
	jmp	_283
_283:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TGenerator_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TGenerator
	mov	eax,0
	jmp	_286
_286:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TGenerator_Delete:
	push	ebp
	mov	ebp,esp
_289:
	mov	eax,0
	jmp	_443
_443:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TGenerator_New
	add	esp,4
	mov	dword [ebx],_bb_TCGenerator
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,0
	jmp	_292
_292:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_295:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_449
	push	eax
	call	_bbGCFree
	add	esp,4
_449:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_451
	push	eax
	call	_bbGCFree
	add	esp,4
_451:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_453
	push	eax
	call	_bbGCFree
	add	esp,4
_453:
	mov	dword [ebx],_bb_TGenerator
	push	ebx
	call	__bb_TGenerator_Delete
	add	esp,4
	mov	eax,0
	jmp	_447
_447:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,edi
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_457
	push	eax
	call	_bbGCFree
	add	esp,4
_457:
	mov	dword [ebx+12],esi
	mov	eax,_22
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_461
	push	eax
	call	_bbGCFree
	add	esp,4
_461:
	mov	dword [ebx+8],esi
	mov	eax,dword [edi+16]
	push	_bb_TToken
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_466
	push	eax
	call	_bbGCFree
	add	esp,4
_466:
	mov	dword [ebx+16],esi
	jmp	_23
_25:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	_26
	mov	eax,dword [ebx+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_468
	push	_27
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_472
	push	eax
	call	_bbGCFree
	add	esp,4
_472:
	mov	dword [ebx+8],esi
_468:
	mov	eax,edi
	push	dword [ebx+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_477
	push	eax
	call	_bbGCFree
	add	esp,4
_477:
	mov	dword [ebx+16],esi
_23:
	cmp	dword [ebx+16],_bbNullObject
	jne	_25
_24:
	push	_28
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_481
	push	eax
	call	_bbGCFree
	add	esp,4
_481:
	mov	dword [ebx+8],esi
	push	_30
	push	_29
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_485
	push	eax
	call	_bbGCFree
	add	esp,4
_485:
	mov	dword [ebx+8],esi
	push	_32
	push	_31
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_489
	push	eax
	call	_bbGCFree
	add	esp,4
_489:
	mov	dword [ebx+8],esi
	push	_34
	push	_33
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_493
	push	eax
	call	_bbGCFree
	add	esp,4
_493:
	mov	dword [ebx+8],esi
	push	dword [ebx+8]
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebx+8]
	jmp	_299
_299:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GenerateToken:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	ebx,dword [eax+16]
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_496
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_497
	push	_37
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_498
	push	_38
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_499
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_500
	push	_68
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_501
	push	_72
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_502
	push	_73
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_503
	push	_75
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_504
	jmp	_495
_496:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_508
	push	eax
	call	_bbGCFree
	add	esp,4
_508:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,_35
	jmp	_302
_497:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringToFloat
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_512
	push	eax
	call	_bbGCFree
	add	esp,4
_512:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,_36
	jmp	_302
_498:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_517
	push	eax
	call	_bbGCFree
	add	esp,4
_517:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	push	_38
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_518
	push	_39
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_518:
	cmp	eax,0
	je	_520
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	dword [ebp-8],eax
	mov	edi,_1
	mov	dword [ebp-4],0
	jmp	_40
_42:
	add	dword [ebp-4],1
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_528
	push	eax
	call	_bbGCFree
	add	esp,4
_528:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	esi,_bbEmptyString
	push	_37
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_530
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	esi,eax
_530:
	push	_38
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_532
	push	_39
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_532:
	cmp	eax,0
	je	_534
	mov	ebx,_43
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_538
	push	eax
	call	_bbGCFree
	add	esp,4
_538:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	dword [eax+12],ebx
	jmp	_40
_534:
	mov	eax,dword [ebp-8]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_542
	push	eax
	call	_bbGCFree
	add	esp,4
_542:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	ebx,esi
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_545
	push	_45
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_546
	push	_37
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_546
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_547
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_548
	push	_49
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_549
	push	_50
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_550
	push	_51
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_551
	jmp	_41
_545:
	push	_44
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
	jmp	_544
_546:
	push	_46
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
	jmp	_544
_547:
	push	_47
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
	jmp	_544
_548:
	jmp	_544
_549:
	jmp	_544
_550:
	jmp	_544
_551:
	jmp	_544
_544:
_40:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+16],_bbNullObject
	jne	_42
_41:
	jmp	_552
_54:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_557
	push	eax
	call	_bbGCFree
	add	esp,4
_557:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
_52:
	add	dword [ebp-4],-1
_552:
	cmp	dword [ebp-4],1
	jge	_54
_53:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_562
	push	eax
	call	_bbGCFree
	add	esp,4
_562:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	push	_563
	push	edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	eax,dword [eax+12]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_567
	push	eax
	call	_bbGCFree
	add	esp,4
_567:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	_43
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_571
	push	eax
	call	_bbGCFree
	add	esp,4
_571:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_576
	push	eax
	call	_bbGCFree
	add	esp,4
_576:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	jmp	_577
_520:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_582
	push	eax
	call	_bbGCFree
	add	esp,4
_582:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_586
	push	eax
	call	_bbGCFree
	add	esp,4
_586:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
_577:
	mov	eax,_37
	jmp	_302
_499:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_590
	push	eax
	call	_bbGCFree
	add	esp,4
_590:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_495
_500:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	ebx,dword [eax+12]
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_593
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_594
	push	_67
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_595
	jmp	_592
_593:
	push	_57
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_599
	push	eax
	call	_bbGCFree
	add	esp,4
_599:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_604
	push	eax
	call	_bbGCFree
	add	esp,4
_604:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	jmp	_58
_60:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_612
	push	eax
	call	_bbGCFree
	add	esp,4
_612:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
_58:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_605
	push	_26
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_605:
	cmp	eax,0
	jne	_60
_59:
	push	_61
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_616
	push	eax
	call	_bbGCFree
	add	esp,4
_616:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_592
_594:
	push	_63
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_620
	push	eax
	call	_bbGCFree
	add	esp,4
_620:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_625
	push	eax
	call	_bbGCFree
	add	esp,4
_625:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	jmp	_64
_66:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_633
	push	eax
	call	_bbGCFree
	add	esp,4
_633:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
_64:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_626
	push	_26
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_626:
	cmp	eax,0
	jne	_66
_65:
	push	_61
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_637
	push	eax
	call	_bbGCFree
	add	esp,4
_637:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_592
_595:
	push	_30
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_641
	push	eax
	call	_bbGCFree
	add	esp,4
_641:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_592
_592:
	jmp	_495
_501:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	mov	ebx,dword [eax+20]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_69
_71:
	mov	eax,edi
	push	_bb_TFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_69
	push	dword [esi+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_648
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+24]
	add	esp,4
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_653
	push	eax
	call	_bbGCFree
	add	esp,4
_653:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [esi+12]
	jmp	_302
_648:
_69:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_71
_70:
	jmp	_495
_502:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_657
	push	eax
	call	_bbGCFree
	add	esp,4
_657:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	eax,dword [eax+28]
	mov	eax,dword [eax+12]
	jmp	_302
_503:
	push	_74
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_661
	push	eax
	call	_bbGCFree
	add	esp,4
_661:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	eax,dword [eax+12]
	jmp	_302
_504:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [eax+12]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_665
	push	eax
	call	_bbGCFree
	add	esp,4
_665:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_495
_495:
	mov	eax,_bbEmptyString
	jmp	_302
_302:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TToken
	mov	eax,_bbNullObject
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
	mov	byte [ebx+24],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	dword [ebx+32],0
	mov	eax,0
	jmp	_305
_305:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_308:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_673
	push	eax
	call	_bbGCFree
	add	esp,4
_673:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_675
	push	eax
	call	_bbGCFree
	add	esp,4
_675:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_677
	push	eax
	call	_bbGCFree
	add	esp,4
_677:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_679
	push	eax
	call	_bbGCFree
	add	esp,4
_679:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_681
	push	eax
	call	_bbGCFree
	add	esp,4
_681:
	mov	eax,0
	jmp	_671
_671:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	esi,dword [ebp+16]
	push	_1
	push	esi
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_682
	push	_34
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_682:
	cmp	eax,0
	je	_684
	mov	eax,_bbNullObject
	jmp	_313
_684:
	mov	eax,ebx
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [edi+8]
	dec	dword [eax+4]
	jnz	_688
	push	eax
	call	_bbGCFree
	add	esp,4
_688:
	mov	dword [edi+8],ebx
	push	_34
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_689
	push	esi
	call	_bbStringTrim
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+12]
	dec	dword [eax+4]
	jnz	_693
	push	eax
	call	_bbGCFree
	add	esp,4
_693:
	mov	dword [edi+12],ebx
	jmp	_694
_689:
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [edi+12]
	dec	dword [eax+4]
	jnz	_698
	push	eax
	call	_bbGCFree
	add	esp,4
_698:
	mov	dword [edi+12],ebx
_694:
	mov	eax,edi
	jmp	_313
_313:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Lexer:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	push	_34
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_699
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_703
	push	eax
	call	_bbGCFree
	add	esp,4
_703:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	jmp	_704
_699:
	push	_563
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bbStringStartsWith
	add	esp,8
	cmp	eax,0
	je	_705
	push	_563
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bbStringEndsWith
	add	esp,8
_705:
	cmp	eax,0
	je	_707
	mov	ebx,_37
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_711
	push	eax
	call	_bbGCFree
	add	esp,4
_711:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	jmp	_712
_707:
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bb_IsInt
	add	esp,4
	cmp	eax,0
	je	_713
	mov	ebx,_35
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_717
	push	eax
	call	_bbGCFree
	add	esp,4
_717:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	mov	edi,eax
	cmp	esi,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_722
	cmp	edi,_bbNullObject
	setne	al
	movzx	eax,al
_722:
	cmp	eax,0
	je	_724
	mov	eax,esi
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_727
	mov	eax,edi
	push	_35
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_727:
	cmp	eax,0
	je	_729
	mov	eax,edi
	mov	edx,dword [ebp+8]
	push	dword [edx+12]
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_737
	push	eax
	call	_bbGCFree
	add	esp,4
_737:
	mov	eax,dword [ebp+8]
	mov	dword [eax+12],ebx
	mov	ebx,_36
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_741
	push	eax
	call	_bbGCFree
	add	esp,4
_741:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
_729:
_724:
	jmp	_742
_713:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	esi,dword [eax+36]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_77
_79:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_77
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_748
	mov	ebx,_73
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_752
	push	eax
	call	_bbGCFree
	add	esp,4
_752:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,0
	jmp	_316
_748:
_77:
	cmp	ebx,edi
	jne	_79
_78:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	esi,dword [eax+32]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_80
_82:
	mov	edx,dword [ebx]
	add	ebx,4
	cmp	edx,_bbNullObject
	je	_80
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	push	edx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_758
	mov	ebx,_55
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_762
	push	eax
	call	_bbGCFree
	add	esp,4
_762:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,0
	jmp	_316
_758:
_80:
	cmp	ebx,edi
	jne	_82
_81:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	edi,dword [eax+28]
	mov	eax,edi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [edi+16]
	mov	dword [ebp-4],eax
	jmp	_83
_85:
	mov	esi,dword [ebx]
	add	ebx,4
	cmp	esi,_bbNullObject
	je	_83
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_768
	mov	ebx,esi
	push	_86
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_771
	push	_2
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_772
	jmp	_770
_771:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_38
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_774
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,dword [eax+12]
	push	_86
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_778
	push	_88
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_779
	push	_2
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_780
	jmp	_777
_778:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_87
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_786
	push	eax
	call	_bbGCFree
	add	esp,4
_786:
	mov	eax,dword [ebp+8]
	mov	dword [eax+12],ebx
	jmp	_777
_779:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_89
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_792
	push	eax
	call	_bbGCFree
	add	esp,4
_792:
	mov	eax,dword [ebp+8]
	mov	dword [eax+12],ebx
	jmp	_777
_780:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_90
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_798
	push	eax
	call	_bbGCFree
	add	esp,4
_798:
	mov	eax,dword [ebp+8]
	mov	dword [eax+12],ebx
	jmp	_777
_777:
_774:
	jmp	_770
_772:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_38
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_801
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_88
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_801:
	cmp	eax,0
	je	_803
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,_91
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_809
	push	eax
	call	_bbGCFree
	add	esp,4
_809:
	mov	eax,dword [ebp+8]
	mov	dword [eax+12],ebx
_803:
	jmp	_770
_770:
	mov	ebx,_38
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_813
	push	eax
	call	_bbGCFree
	add	esp,4
_813:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,0
	jmp	_316
_768:
_83:
	cmp	ebx,dword [ebp-4]
	jne	_85
_84:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	esi,dword [eax+24]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_92
_94:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_92
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_819
	mov	ebx,_75
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_823
	push	eax
	call	_bbGCFree
	add	esp,4
_823:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,0
	jmp	_316
_819:
_92:
	cmp	ebx,edi
	jne	_94
_93:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	esi,dword [eax+20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_95
_97:
	push	_bb_TFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_95
	mov	edx,dword [ebp+8]
	push	dword [edx+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_831
	mov	ebx,_68
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_835
	push	eax
	call	_bbGCFree
	add	esp,4
_835:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,0
	jmp	_316
_831:
_95:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	mov	ebx,_98
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_839
	push	eax
	call	_bbGCFree
	add	esp,4
_839:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
_742:
_712:
_704:
	mov	eax,0
	jmp	_316
_316:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Parse:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+24]
	mov	eax,eax
	cmp	eax,1
	jne	_840
	mov	eax,_1
	jmp	_319
_840:
	mov	eax,dword [ebp+8]
	mov	byte [eax+24],1
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+16]
	push	_75
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_843
	push	_38
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_844
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_845
	push	_73
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_846
	push	_68
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_847
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_848
	jmp	_842
_843:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	push	_99
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_851
	push	_103
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_852
	jmp	_850
_851:
	mov	esi,1
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	jmp	_100
_102:
	push	_99
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_856
	add	esi,1
	jmp	_857
_856:
	push	_103
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_858
	sub	esi,1
	cmp	esi,0
	jne	_859
	jmp	_101
_859:
_858:
_857:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
_100:
	cmp	ebx,_bbNullObject
	jne	_102
_101:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_864
	push	eax
	call	_bbGCFree
	add	esp,4
_864:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	cmp	esi,0
	je	_865
	mov	eax,_104
	jmp	_319
_865:
	jmp	_850
_852:
	mov	esi,1
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	jmp	_105
_107:
	push	_99
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_869
	sub	esi,1
	cmp	esi,0
	jne	_870
	jmp	_106
_870:
	jmp	_871
_869:
	push	_103
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_872
	add	esi,1
_872:
_871:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
_105:
	cmp	ebx,_bbNullObject
	jne	_107
_106:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_877
	push	eax
	call	_bbGCFree
	add	esp,4
_877:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	cmp	esi,0
	je	_878
	mov	eax,_108
	jmp	_319
_878:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_881
	mov	eax,_109
	jmp	_319
_881:
	jmp	_850
_850:
	jmp	_842
_844:
	jmp	_842
_845:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_884
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_884
	push	_111
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_885
	push	_67
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_886
	jmp	_883
_884:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_889
	mov	eax,_110
	jmp	_319
_889:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,4
	jmp	_883
_885:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,4
	jmp	_883
_886:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	jmp	_319
_883:
	jmp	_842
_846:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	esi,eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	_98
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_897
	mov	ebx,_72
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_901
	push	eax
	call	_bbGCFree
	add	esp,4
_901:
	mov	dword [esi+16],ebx
	push	_bb_TVariable
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_910
	push	eax
	call	_bbGCFree
	add	esp,4
_910:
	mov	dword [esi+28],ebx
_897:
	jmp	_112
_114:
	push	_38
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_913
	push	_86
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_913:
	cmp	eax,0
	je	_915
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	esi,eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,4
	jmp	_319
_915:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	esi,eax
_112:
	cmp	esi,_bbNullObject
	jne	_114
_113:
	jmp	_842
_847:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_921
	mov	eax,_115
	jmp	_319
_921:
	jmp	_842
_848:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_116
_118:
	mov	eax,edi
	push	_bb_TVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_116
	mov	eax,esi
	mov	edx,dword [ebp+8]
	push	dword [edx+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_930
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_934
	push	eax
	call	_bbGCFree
	add	esp,4
_934:
	mov	eax,dword [ebp+8]
	mov	dword [eax+28],ebx
	mov	ebx,_72
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_938
	push	eax
	call	_bbGCFree
	add	esp,4
_938:
	mov	eax,dword [ebp+8]
	mov	dword [eax+16],ebx
	mov	eax,_1
	jmp	_319
_930:
_116:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_118
_117:
	mov	eax,dword [ebp+8]
	push	_120
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	_119
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_319
_842:
	mov	eax,_1
	jmp	_319
_319:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetText:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	jmp	_322
_322:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetTyp:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	jmp	_325
_325:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetCloseToken:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	jmp	_328
_328:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_ToString:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_26
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_940
	mov	eax,_121
	jmp	_331
_940:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	_123
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	push	_122
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_331
_331:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TVariable
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,0
	jmp	_334
_334:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_337:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_947
	push	eax
	call	_bbGCFree
	add	esp,4
_947:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_949
	push	eax
	call	_bbGCFree
	add	esp,4
_949:
	mov	eax,0
	jmp	_945
_945:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_Create:
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
	jnz	_953
	push	eax
	call	_bbGCFree
	add	esp,4
_953:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_957
	push	eax
	call	_bbGCFree
	add	esp,4
_957:
	mov	dword [esi+12],ebx
	mov	eax,esi
	jmp	_342
_342:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_GetName:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	jmp	_345
_345:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_GetDataType:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	jmp	_348
_348:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TFunction
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,0
	jmp	_351
_351:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_354:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_962
	push	eax
	call	_bbGCFree
	add	esp,4
_962:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_964
	push	eax
	call	_bbGCFree
	add	esp,4
_964:
	mov	eax,0
	jmp	_960
_960:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_968
	push	eax
	call	_bbGCFree
	add	esp,4
_968:
	mov	dword [esi+8],ebx
	mov	eax,esi
	jmp	_358
_358:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_ToString:
	push	ebp
	mov	ebp,esp
	mov	eax,_124
	jmp	_361
_361:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_Getname:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	jmp	_364
_364:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TCompiler
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	push	19
	push	_205
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_39
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_125
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_126
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_127
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_128
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_88
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_2
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_129
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_103
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_99
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	mov	edx,_130
	inc	dword [edx+4]
	mov	dword [eax+64],edx
	mov	edx,_131
	inc	dword [edx+4]
	mov	dword [eax+68],edx
	mov	edx,_32
	inc	dword [edx+4]
	mov	dword [eax+72],edx
	mov	edx,_30
	inc	dword [edx+4]
	mov	dword [eax+76],edx
	mov	edx,_86
	inc	dword [edx+4]
	mov	dword [eax+80],edx
	mov	edx,_132
	inc	dword [edx+4]
	mov	dword [eax+84],edx
	mov	edx,_133
	inc	dword [edx+4]
	mov	dword [eax+88],edx
	mov	edx,_76
	inc	dword [edx+4]
	mov	dword [eax+92],edx
	mov	edx,_74
	inc	dword [edx+4]
	mov	dword [eax+96],edx
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	push	18
	push	_205
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_39
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_125
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_126
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_127
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_128
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_88
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_2
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_89
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_90
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_91
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	mov	edx,_87
	inc	dword [edx+4]
	mov	dword [eax+64],edx
	mov	edx,_86
	inc	dword [edx+4]
	mov	dword [eax+68],edx
	mov	edx,_76
	inc	dword [edx+4]
	mov	dword [eax+72],edx
	mov	edx,_134
	inc	dword [edx+4]
	mov	dword [eax+76],edx
	mov	edx,_135
	inc	dword [edx+4]
	mov	dword [eax+80],edx
	mov	edx,_136
	inc	dword [edx+4]
	mov	dword [eax+84],edx
	mov	edx,_137
	inc	dword [edx+4]
	mov	dword [eax+88],edx
	mov	edx,_138
	inc	dword [edx+4]
	mov	dword [eax+92],edx
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	push	10
	push	_205
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_67
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_62
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_111
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_139
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_56
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_140
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_141
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_142
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_143
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_144
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	push	7
	push	_205
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_35
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_50
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_49
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_36
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_51
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_45
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_48
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+40],eax
	mov	dword [ebx+44],0
	push	128
	push	_1036
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+48],eax
	mov	dword [ebx+52],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+56],eax
	mov	eax,0
	jmp	_367
_367:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_370:
	mov	eax,dword [ebx+56]
	dec	dword [eax+4]
	jnz	_1041
	push	eax
	call	_bbGCFree
	add	esp,4
_1041:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1043
	push	eax
	call	_bbGCFree
	add	esp,4
_1043:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1045
	push	eax
	call	_bbGCFree
	add	esp,4
_1045:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1047
	push	eax
	call	_bbGCFree
	add	esp,4
_1047:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1049
	push	eax
	call	_bbGCFree
	add	esp,4
_1049:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1051
	push	eax
	call	_bbGCFree
	add	esp,4
_1051:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1053
	push	eax
	call	_bbGCFree
	add	esp,4
_1053:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1055
	push	eax
	call	_bbGCFree
	add	esp,4
_1055:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1057
	push	eax
	call	_bbGCFree
	add	esp,4
_1057:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1059
	push	eax
	call	_bbGCFree
	add	esp,4
_1059:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1061
	push	eax
	call	_bbGCFree
	add	esp,4
_1061:
	mov	eax,0
	jmp	_1039
_1039:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1065
	push	eax
	call	_bbGCFree
	add	esp,4
_1065:
	mov	dword [ebx+16],esi
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1069
	push	eax
	call	_bbGCFree
	add	esp,4
_1069:
	mov	dword [ebx+40],esi
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1073
	push	eax
	call	_bbGCFree
	add	esp,4
_1073:
	mov	dword [ebx+20],esi
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_1077
	push	eax
	call	_bbGCFree
	add	esp,4
_1077:
	mov	eax,dword [ebx+48]
	mov	dword [eax+24],esi
	mov	eax,ebx
	jmp	_373
_373:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Tokenize:
	push	ebp
	mov	ebp,esp
	sub	esp,40
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+12]
	cmp	ebx,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_1078
	push	_145
	call	_brl_blitz_RuntimeError
	add	esp,4
_1078:
	push	ebx
	call	_brl_stream_LoadString
	add	esp,4
	push	eax
	push	_34
	call	_bbStringConcat
	add	esp,8
	push	_34
	push	eax
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	add	eax,24
	mov	dword [ebp-32],eax
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp-36]
	add	edx,dword [eax+16]
	mov	dword [ebp-40],edx
	jmp	_146
_148:
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax]
	mov	dword [ebp-20],eax
	add	dword [ebp-32],4
	cmp	dword [ebp-20],_bbNullObject
	je	_146
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-8],0
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	mov	dword [ebp-28],eax
	jmp	_1088
_151:
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	push	dword [ebp-8]
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-16],eax
	mov	byte [ebp-4],0
	push	_563
	push	dword [ebp-16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1092
	mov	eax,dword [ebp-8]
	add	eax,1
	mov	esi,eax
	add	dword [ebp-8],1
	mov	eax,dword [ebp-20]
	mov	ebx,dword [eax+8]
	jmp	_1094
_154:
	push	_563
	mov	eax,dword [ebp-8]
	add	eax,1
	push	eax
	push	dword [ebp-8]
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1096
	mov	ebx,dword [ebp+8]
	push	_563
	push	dword [ebp-8]
	push	esi
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_563
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	jmp	_153
_1096:
_152:
	add	dword [ebp-8],1
_1094:
	cmp	dword [ebp-8],ebx
	jle	_154
_153:
	jmp	_149
_1092:
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+24]
	mov	eax,edi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [edi+16]
	mov	dword [ebp-12],eax
	jmp	_155
_157:
	mov	esi,dword [ebx]
	add	ebx,4
	cmp	esi,_bbNullObject
	je	_155
	push	esi
	push	dword [ebp-16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1103
	mov	eax,dword [ebp+8]
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-24],_1
	mov	byte [ebp-4],1
	jmp	_156
_1103:
_155:
	cmp	ebx,dword [ebp-12]
	jne	_157
_156:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_1106
	push	dword [ebp-16]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
_1106:
_149:
	add	dword [ebp-8],1
_1088:
	mov	eax,dword [ebp-28]
	cmp	dword [ebp-8],eax
	jle	_151
_150:
	mov	eax,dword [ebp+8]
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_34
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
_146:
	mov	eax,dword [ebp-40]
	cmp	dword [ebp-32],eax
	jne	_148
_147:
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_158
_160:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_158
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+24]
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
_158:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_160
_159:
	mov	eax,0
	jmp	_377
_377:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_CreateToken:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	_bb_TToken
	call	_bbObjectNew
	add	esp,4
	push	ebx
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_1118
	mov	eax,0
	jmp	_381
_1118:
	mov	eax,dword [esi+16]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	eax,0
	jmp	_381
_381:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_TokenGetBefore:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	cmp	edx,_bbNullObject
	jne	_1121
	mov	eax,_bbNullObject
	jmp	_385
_1121:
	mov	eax,dword [eax+16]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1124
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	cmp	eax,_bbNullObject
	je	_1126
	push	_bb_TToken
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_1129
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1131
	mov	eax,_bbNullObject
	jmp	_385
_1131:
	mov	eax,ebx
	jmp	_385
_1129:
	mov	eax,_bbNullObject
	jmp	_385
_1126:
	mov	eax,_bbNullObject
	jmp	_385
_1124:
	mov	eax,_bbNullObject
	jmp	_385
_385:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_TokenGetAfter:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	cmp	edx,_bbNullObject
	jne	_1135
	mov	eax,_bbNullObject
	jmp	_389
_1135:
	mov	eax,dword [eax+16]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1138
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	cmp	eax,_bbNullObject
	je	_1140
	push	_bb_TToken
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1143
	jmp	_389
_1143:
	mov	eax,_bbNullObject
	jmp	_389
_1140:
	mov	eax,_bbNullObject
	jmp	_389
_1138:
	mov	eax,_bbNullObject
	jmp	_389
_389:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RemoveToken:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [eax+16]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	mov	eax,0
	jmp	_393
_393:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Parse:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+16]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_161
_163:
	mov	eax,edi
	push	_bb_TToken
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_161
	mov	eax,esi
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1156
	add	dword [ebp-4],1
_1156:
	mov	eax,dword [ebp-4]
	mov	dword [esi+32],eax
_161:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_163
_162:
	mov	dword [ebp-4],0
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+16]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_164
_166:
	mov	eax,dword [ebp-8]
	push	_bb_TToken
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_164
	mov	eax,esi
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1165
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1165:
	cmp	eax,0
	je	_1167
	add	dword [ebp-4],1
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	esi,eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+56]
	dec	dword [eax+4]
	jnz	_1172
	push	eax
	call	_bbGCFree
	add	esp,4
_1172:
	mov	eax,dword [ebp+8]
	mov	dword [eax+56],ebx
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	push	_1
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1175
	push	ebx
	push	_168
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_167
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_RuntimeError
	add	esp,4
_1175:
_1167:
_164:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_166
_165:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+52],0
	jle	_1176
	push	_170
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_169
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_RuntimeError
	add	esp,4
_1176:
	mov	eax,0
	jmp	_396
_396:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PushVariable:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	ecx,dword [ebp+12]
	mov	edx,dword [eax+48]
	mov	eax,dword [eax+52]
	mov	eax,dword [edx+eax*4+24]
	push	ecx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_400
_400:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetVariable:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	call	_brl_linkedlist_CreateList
	mov	edi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	mov	dword [ebp-4],eax
	jmp	_1180
_173:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+48]
	mov	eax,dword [ebp-4]
	mov	esi,dword [edx+eax*4+24]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_174
_176:
	mov	eax,ebx
	push	_bb_TVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_174
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_174:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_176
_175:
_171:
	add	dword [ebp-4],-1
_1180:
	cmp	dword [ebp-4],0
	jge	_173
_172:
	mov	eax,edi
	jmp	_403
_403:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PushScope:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	add	dword [ebx+52],1
	mov	edx,dword [ebx+48]
	mov	eax,dword [ebx+52]
	mov	eax,dword [edx+eax*4+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_1188
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	esi,eax
	mov	edx,dword [ebx+48]
	mov	eax,dword [ebx+52]
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_1192
	push	eax
	call	_bbGCFree
	add	esp,4
_1192:
	mov	edx,dword [ebx+48]
	mov	eax,dword [ebx+52]
	mov	dword [edx+eax*4+24],esi
_1188:
	mov	eax,0
	jmp	_406
_406:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PopScope:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	cmp	dword [eax+52],0
	jle	_1193
	sub	dword [eax+52],1
	jmp	_1194
_1193:
	mov	eax,_177
	jmp	_409
_1194:
	mov	eax,_1
	jmp	_409
_409:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ParseTerm:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	cmp	dword [edi+56],_bbNullObject
	jne	_1195
	mov	eax,ebx
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [edi+56]
	dec	dword [eax+4]
	jnz	_1199
	push	eax
	call	_bbGCFree
	add	esp,4
_1199:
	mov	dword [edi+56],esi
_1195:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	esi,eax
	push	_1
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1202
	push	esi
	push	_178
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_RuntimeError
	add	esp,4
_1202:
	push	_75
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1203
	mov	esi,dword [ebx+12]
	push	_103
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1206
	push	_99
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1206
	jmp	_1205
_1206:
	mov	eax,dword [edi+56]
	cmp	ebx,dword [eax+20]
	jne	_1207
	mov	byte [ebp-4],2
	jmp	_413
_1207:
	mov	byte [ebp-4],1
	jmp	_413
_1205:
_1203:
	push	_35
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1209
	push	_36
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1209:
	cmp	eax,0
	jne	_1211
	push	_37
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1211:
	cmp	eax,0
	jne	_1213
	push	_72
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1213:
	cmp	eax,0
	je	_1215
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_38
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1222
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_75
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1222:
	cmp	eax,0
	je	_1224
	mov	esi,edi
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,8
	mov	eax,eax
	mov	byte [ebp-8],al
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_1228
	mov	byte [ebp-4],0
	jmp	_413
_1228:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,2
	jne	_1229
	mov	byte [ebp-4],2
	jmp	_413
_1229:
	jmp	_1230
_1224:
	mov	byte [ebp-4],0
	jmp	_413
_1230:
	mov	byte [ebp-4],1
	jmp	_413
_1215:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1232
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_35
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1239
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_36
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1239:
	cmp	eax,0
	jne	_1243
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_37
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1243:
	cmp	eax,0
	jne	_1246
	mov	eax,edi
	push	_72
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1246:
	cmp	eax,0
	je	_1248
	mov	esi,edi
	mov	eax,edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,8
	mov	eax,eax
	mov	byte [ebp-12],al
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	cmp	eax,0
	jne	_1252
	mov	byte [ebp-4],0
	jmp	_413
_1252:
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	cmp	eax,2
	jne	_1253
	mov	byte [ebp-4],2
	jmp	_413
_1253:
	jmp	_1254
_1248:
	mov	byte [ebp-4],0
	jmp	_413
_1254:
	mov	byte [ebp-4],1
	jmp	_413
_1232:
	mov	byte [ebp-4],0
	jmp	_413
_413:
	movzx	eax,byte [ebp-4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RegisterFunction:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	eax,dword [eax+20]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_417
_417:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Generate:
	push	ebp
	mov	ebp,esp
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	jmp	_421
_421:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Execute:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+12]
	push	_179
	call	_brl_filesystem_WriteFile
	add	esp,4
	push	eax
	push	ebx
	call	_brl_stream_SaveString
	add	esp,8
	call	_bbGCCollect
	push	_181
	push	_180
	push	_127
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	ebx,eax
	push	_182
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_180
	push	_127
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	push	_183
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_184
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_185
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	_186
	push	ebx
	call	_brl_stream_WriteLine
	add	esp,8
	push	ebx
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_181
	push	_180
	push	_127
	push	dword [_bbAppDir]
	call	_brl_retro_Replace
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_OpenURL
	add	esp,4
	mov	eax,0
	jmp	_425
_425:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsInt:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,1
	mov	edi,dword [esi+8]
	jmp	_1260
_191:
	push	1
	push	ebx
	push	esi
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_1263
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_1263:
	cmp	eax,0
	je	_1265
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_1265:
	cmp	eax,0
	je	_1267
	mov	byte [ebp-8],0
	jmp	_428
_1267:
_189:
	add	ebx,1
_1260:
	cmp	ebx,edi
	jle	_191
_190:
	mov	byte [ebp-8],1
	jmp	_428
_428:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_IsFLoat:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,1
	mov	edi,dword [esi+8]
	jmp	_1269
_194:
	push	1
	push	ebx
	push	esi
	call	_brl_retro_Mid
	add	esp,12
	push	eax
	call	_bbStringAsc
	add	esp,4
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_1272
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_1272:
	cmp	eax,0
	je	_1274
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_1274:
	cmp	eax,0
	je	_1276
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_1276:
	cmp	eax,0
	je	_1278
	mov	byte [ebp-8],0
	jmp	_431
_1278:
_192:
	add	ebx,1
_1269:
	cmp	ebx,edi
	jle	_194
_193:
	mov	byte [ebp-8],1
	jmp	_431
_431:
	movzx	eax,byte [ebp-8]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_441:
	dd	0
_196:
	db	"TGenerator",0
_197:
	db	"New",0
_198:
	db	"()i",0
_199:
	db	"Delete",0
_200:
	db	"Generate",0
_201:
	db	"(:TCompiler)$",0
	align	4
_195:
	dd	2
	dd	_196
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_200
	dd	_201
	dd	48
	dd	0
	align	4
_bb_TGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_195
	dd	8
	dd	__bb_TGenerator_New
	dd	__bb_TGenerator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_brl_blitz_NullMethodError
_203:
	db	"TCGenerator",0
_204:
	db	"Code",0
_205:
	db	"$",0
_206:
	db	"Compiler",0
_207:
	db	":TCompiler",0
_208:
	db	"Token",0
_209:
	db	":TToken",0
_210:
	db	"GenerateToken",0
_211:
	db	"()$",0
	align	4
_202:
	dd	2
	dd	_203
	dd	3
	dd	_204
	dd	_205
	dd	8
	dd	3
	dd	_206
	dd	_207
	dd	12
	dd	3
	dd	_208
	dd	_209
	dd	16
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_200
	dd	_201
	dd	48
	dd	6
	dd	_210
	dd	_211
	dd	52
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bb_TGenerator
	dd	_bbObjectFree
	dd	_202
	dd	20
	dd	__bb_TCGenerator_New
	dd	__bb_TCGenerator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCGenerator_Generate
	dd	__bb_TCGenerator_GenerateToken
_213:
	db	"TToken",0
_214:
	db	"Text",0
_215:
	db	"Typ",0
_216:
	db	"CloseToken",0
_217:
	db	"Parsed",0
_218:
	db	"b",0
_219:
	db	"Variable",0
_220:
	db	":TVariable",0
_221:
	db	"Line",0
_222:
	db	"i",0
_223:
	db	"Create",0
_224:
	db	"(:TCompiler,$):TToken",0
_225:
	db	"Lexer",0
_226:
	db	"Parse",0
_227:
	db	"GetText",0
_228:
	db	"GetTyp",0
_229:
	db	"GetCloseToken",0
_230:
	db	"():TToken",0
_231:
	db	"ToString",0
	align	4
_212:
	dd	2
	dd	_213
	dd	3
	dd	_206
	dd	_207
	dd	8
	dd	3
	dd	_214
	dd	_205
	dd	12
	dd	3
	dd	_215
	dd	_205
	dd	16
	dd	3
	dd	_216
	dd	_209
	dd	20
	dd	3
	dd	_217
	dd	_218
	dd	24
	dd	3
	dd	_219
	dd	_220
	dd	28
	dd	3
	dd	_221
	dd	_222
	dd	32
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_223
	dd	_224
	dd	48
	dd	6
	dd	_225
	dd	_198
	dd	52
	dd	6
	dd	_226
	dd	_211
	dd	56
	dd	6
	dd	_227
	dd	_211
	dd	60
	dd	6
	dd	_228
	dd	_211
	dd	64
	dd	6
	dd	_229
	dd	_230
	dd	68
	dd	6
	dd	_231
	dd	_211
	dd	24
	dd	0
	align	4
_bb_TToken:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_212
	dd	36
	dd	__bb_TToken_New
	dd	__bb_TToken_Delete
	dd	__bb_TToken_ToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TToken_Create
	dd	__bb_TToken_Lexer
	dd	__bb_TToken_Parse
	dd	__bb_TToken_GetText
	dd	__bb_TToken_GetTyp
	dd	__bb_TToken_GetCloseToken
_233:
	db	"TVariable",0
_234:
	db	"Name",0
_235:
	db	"Datatype",0
_236:
	db	"($,$):TVariable",0
_237:
	db	"GetName",0
_238:
	db	"GetDataType",0
	align	4
_232:
	dd	2
	dd	_233
	dd	3
	dd	_234
	dd	_205
	dd	8
	dd	3
	dd	_235
	dd	_205
	dd	12
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_223
	dd	_236
	dd	48
	dd	6
	dd	_237
	dd	_211
	dd	52
	dd	6
	dd	_238
	dd	_211
	dd	56
	dd	0
	align	4
_bb_TVariable:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_232
	dd	16
	dd	__bb_TVariable_New
	dd	__bb_TVariable_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TVariable_Create
	dd	__bb_TVariable_GetName
	dd	__bb_TVariable_GetDataType
_240:
	db	"TFunction",0
_241:
	db	"($):TFunction",0
_242:
	db	"Getname",0
	align	4
_239:
	dd	2
	dd	_240
	dd	3
	dd	_234
	dd	_205
	dd	8
	dd	3
	dd	_235
	dd	_205
	dd	12
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_223
	dd	_241
	dd	48
	dd	6
	dd	_231
	dd	_211
	dd	24
	dd	6
	dd	_242
	dd	_211
	dd	52
	dd	0
	align	4
_bb_TFunction:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_239
	dd	16
	dd	__bb_TFunction_New
	dd	__bb_TFunction_Delete
	dd	__bb_TFunction_ToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TFunction_Create
	dd	__bb_TFunction_Getname
_244:
	db	"TCompiler",0
_245:
	db	"FileText",0
_246:
	db	"Generator",0
_247:
	db	":TGenerator",0
_248:
	db	"TokenList",0
_249:
	db	":brl.linkedlist.TList",0
_250:
	db	"FunctionList",0
_251:
	db	"SplitKey",0
_252:
	db	"[]$",0
_253:
	db	"Operator",0
_254:
	db	"Keyword",0
_255:
	db	"StringContainer",0
_256:
	db	"CurrentLine",0
_257:
	db	"VariableScope",0
_258:
	db	"[]:brl.linkedlist.TList",0
_259:
	db	"VariablePos",0
_260:
	db	"ParseToken",0
_261:
	db	"():TCompiler",0
_262:
	db	"Tokenize",0
_263:
	db	"(:brl.stream.TStream)i",0
_264:
	db	"CreateToken",0
_265:
	db	"($)i",0
_266:
	db	"TokenGetBefore",0
_267:
	db	"(:TToken):TToken",0
_268:
	db	"TokenGetAfter",0
_269:
	db	"RemoveToken",0
_270:
	db	"(:TToken)i",0
_271:
	db	"PushVariable",0
_272:
	db	"(:TVariable)i",0
_273:
	db	"GetVariable",0
_274:
	db	"():brl.linkedlist.TList",0
_275:
	db	"PushScope",0
_276:
	db	"PopScope",0
_277:
	db	"ParseTerm",0
_278:
	db	"(:TToken)b",0
_279:
	db	"RegisterFunction",0
_280:
	db	"(:TFunction)i",0
_281:
	db	"(:TGenerator)$",0
_282:
	db	"Execute",0
	align	4
_243:
	dd	2
	dd	_244
	dd	3
	dd	_245
	dd	_205
	dd	8
	dd	3
	dd	_246
	dd	_247
	dd	12
	dd	3
	dd	_248
	dd	_249
	dd	16
	dd	3
	dd	_250
	dd	_249
	dd	20
	dd	3
	dd	_251
	dd	_252
	dd	24
	dd	3
	dd	_253
	dd	_252
	dd	28
	dd	3
	dd	_254
	dd	_252
	dd	32
	dd	3
	dd	_235
	dd	_252
	dd	36
	dd	3
	dd	_255
	dd	_249
	dd	40
	dd	3
	dd	_256
	dd	_222
	dd	44
	dd	3
	dd	_257
	dd	_258
	dd	48
	dd	3
	dd	_259
	dd	_222
	dd	52
	dd	3
	dd	_260
	dd	_209
	dd	56
	dd	6
	dd	_197
	dd	_198
	dd	16
	dd	6
	dd	_199
	dd	_198
	dd	20
	dd	6
	dd	_223
	dd	_261
	dd	48
	dd	6
	dd	_262
	dd	_263
	dd	52
	dd	6
	dd	_264
	dd	_265
	dd	56
	dd	6
	dd	_266
	dd	_267
	dd	60
	dd	6
	dd	_268
	dd	_267
	dd	64
	dd	6
	dd	_269
	dd	_270
	dd	68
	dd	6
	dd	_226
	dd	_198
	dd	72
	dd	6
	dd	_271
	dd	_272
	dd	76
	dd	6
	dd	_273
	dd	_274
	dd	80
	dd	6
	dd	_275
	dd	_198
	dd	84
	dd	6
	dd	_276
	dd	_211
	dd	88
	dd	6
	dd	_277
	dd	_278
	dd	92
	dd	6
	dd	_279
	dd	_280
	dd	96
	dd	6
	dd	_200
	dd	_281
	dd	100
	dd	6
	dd	_282
	dd	_265
	dd	104
	dd	0
	align	4
_bb_TCompiler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_243
	dd	60
	dd	__bb_TCompiler_New
	dd	__bb_TCompiler_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCompiler_Create
	dd	__bb_TCompiler_Tokenize
	dd	__bb_TCompiler_CreateToken
	dd	__bb_TCompiler_TokenGetBefore
	dd	__bb_TCompiler_TokenGetAfter
	dd	__bb_TCompiler_RemoveToken
	dd	__bb_TCompiler_Parse
	dd	__bb_TCompiler_PushVariable
	dd	__bb_TCompiler_GetVariable
	dd	__bb_TCompiler_PushScope
	dd	__bb_TCompiler_PopScope
	dd	__bb_TCompiler_ParseTerm
	dd	__bb_TCompiler_RegisterFunction
	dd	__bb_TCompiler_Generate
	dd	__bb_TCompiler_Execute
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	80,82,73,78,84
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	83,99,114,105,112,116,46,116,120,116
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	35,105,110,99,108,117,100,101,32,60,115,116,100,105,111,46
	dw	104,62,32,10,32,105,110,116,32,109,97,105,110,40,41,32
	dw	10,123,32
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,59
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,59
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	10,59,32
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	73,78,84
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	70,76,79,65,84
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	84,69,88,84
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	79,80,69,82,65,84,79,82
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	75,69,89,87,79,82,68
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	70,85,78,67,84,73,79,78
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	86,65,82,73,65,66,76,69
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	68,65,84,65,84,89,80,69
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	83,80,76,73,84,75,69,89
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	83,84,82,73,78,71
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	66,89,84,69
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,72,79,82,84
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	76,79,78,71
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	68,79,85,66,76,69
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,100
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,115
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,102
	align	4
_563:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	73,70
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	87,72,73,76,69
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	69,78,68
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,102,32
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,123
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	119,104,105,108,101,32
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_2:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	85,78,75,78,79,87,78
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,40,39
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,41,39
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110,46
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	70,79,82
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110,33
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	39
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	67,97,110,110,111,116,32,102,105,110,100,32,115,121,109,98
	dw	111,108,32,39
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	84,111,107,101,110,58,32,78,69,87,76,73,78,69
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	32,86,97,108,117,101,58,32
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	84,111,107,101,110,58,32
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,114,105,110,116,102
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	33
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_132:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	78,69,87
	align	4
_135:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	65,78,68
	align	4
_136:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	79,82
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	88,79,82
	align	4
_138:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	77,79,68
	align	4
_139:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	73,78
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	70,85,78,67
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	67,76,65,83,83
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	80,82,86
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	80,85,66
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	83,84,65,84,73,67
_1036:
	db	":brl.linkedlist.TList",0
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	70,105,108,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,32
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	83,121,110,116,97,120,32,101,114,114,111,114,32,105,110,32
	dw	76,105,110,101,32
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	58,32,85,110,101,120,112,101,99,116,101,100,32,101,110,100
	dw	32,111,102,32,102,105,108,101
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	83,121,110,116,97,120,32,101,114,114,111,114,32,105,110,32
	dw	76,105,110,101
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,101,120,112,101,99,116,101,100,32,69,78,68
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	83,121,110,116,97,120,32,101,114,114,111,114,58,32
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,105,110,46,99
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	92,99,97,108,108,46,98,97,116
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	64,101,99,104,111,32,111,110
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	99,100,32
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	103,99,99,32,45,111,32,109,97,105,110,46,101,120,101,32
	dw	109,97,105,110,46,99
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	109,97,105,110,46,101,120,101
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,117,115,101
