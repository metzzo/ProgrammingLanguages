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
	extrn	_bbEmptyArray
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
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
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
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullMethodError
	extrn	_brl_blitz_NullObjectError
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
	sub	esp,4
	push	ebx
	push	esi
	cmp	dword [_455],0
	je	_456
	mov	eax,0
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_456:
	mov	dword [_455],1
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_454
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
	push	_433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-4],eax
	push	_438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_440
	call	_brl_blitz_NullObjectError
_440:
	push	_bb_TFunction
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	push	_187
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,8
	push	_443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_445
	call	_brl_blitz_NullObjectError
_445:
	push	_188
	call	_brl_filesystem_ReadFile
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	_449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_453
	call	_brl_blitz_NullObjectError
_453:
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
	mov	ebx,0
	jmp	_283
_283:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TGenerator_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_458
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TGenerator
	push	ebp
	push	_457
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_286
_286:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TGenerator_Delete:
	push	ebp
	mov	ebp,esp
_289:
	mov	eax,0
	jmp	_460
_460:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TGenerator_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCGenerator
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	push	ebp
	push	_464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_292
_292:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jnz	_469
	push	eax
	call	_bbGCFree
	add	esp,4
_469:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_471
	push	eax
	call	_bbGCFree
	add	esp,4
_471:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_473
	push	eax
	call	_bbGCFree
	add	esp,4
_473:
	mov	dword [ebx],_bb_TGenerator
	push	ebx
	call	__bb_TGenerator_Delete
	add	esp,4
	mov	eax,0
	jmp	_467
_467:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_581
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_477
	call	_brl_blitz_NullObjectError
_477:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_482
	push	eax
	call	_bbGCFree
	add	esp,4
_482:
	mov	dword [esi+12],ebx
	push	_483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_485
	call	_brl_blitz_NullObjectError
_485:
	mov	ebx,_22
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_490
	push	eax
	call	_bbGCFree
	add	esp,4
_490:
	mov	dword [esi+8],ebx
	push	_491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_493
	call	_brl_blitz_NullObjectError
_493:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_496
	call	_brl_blitz_NullObjectError
_496:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_498
	call	_brl_blitz_NullObjectError
_498:
	push	_bb_TToken
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_502
	push	eax
	call	_bbGCFree
	add	esp,4
_502:
	mov	dword [ebx+16],esi
	push	_503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_23
_25:
	mov	eax,ebp
	push	eax
	push	_536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_508
	call	_brl_blitz_NullObjectError
_508:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_511
	call	_brl_blitz_NullObjectError
_511:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_513
	call	_brl_blitz_NullObjectError
_513:
	push	_26
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_514
	mov	eax,ebp
	push	eax
	push	_523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_517
	call	_brl_blitz_NullObjectError
_517:
	push	_27
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_522
	push	eax
	call	_bbGCFree
	add	esp,4
_522:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
_514:
	push	_524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_526
	call	_brl_blitz_NullObjectError
_526:
	mov	edi,ebx
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_529
	call	_brl_blitz_NullObjectError
_529:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_531
	call	_brl_blitz_NullObjectError
_531:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_535
	push	eax
	call	_bbGCFree
	add	esp,4
_535:
	mov	dword [edi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_23:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_505
	call	_brl_blitz_NullObjectError
_505:
	cmp	dword [ebx+16],_bbNullObject
	jne	_25
_24:
	push	_537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_539
	call	_brl_blitz_NullObjectError
_539:
	push	_28
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_544
	push	eax
	call	_bbGCFree
	add	esp,4
_544:
	mov	dword [esi+8],ebx
	push	_545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_550
	call	_brl_blitz_NullObjectError
_550:
	push	_30
	push	_29
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_554
	push	eax
	call	_bbGCFree
	add	esp,4
_554:
	mov	dword [esi+8],ebx
	push	_555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_557
	call	_brl_blitz_NullObjectError
_557:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_560
	call	_brl_blitz_NullObjectError
_560:
	push	_32
	push	_31
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_564
	push	eax
	call	_bbGCFree
	add	esp,4
_564:
	mov	dword [esi+8],ebx
	push	_565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_567
	call	_brl_blitz_NullObjectError
_567:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_570
	call	_brl_blitz_NullObjectError
_570:
	push	_34
	push	_33
	push	dword [ebx+8]
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_574
	push	eax
	call	_bbGCFree
	add	esp,4
_574:
	mov	dword [esi+8],ebx
	push	_575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_577
	call	_brl_blitz_NullObjectError
_577:
	push	dword [ebx+8]
	call	_brl_standardio_Print
	add	esp,4
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_580
	call	_brl_blitz_NullObjectError
_580:
	mov	ebx,dword [ebx+8]
	jmp	_299
_299:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GenerateToken:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1088
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_584
	call	_brl_blitz_NullObjectError
_584:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	ebx,dword [ebx+16]
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_589
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_590
	push	_37
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_591
	push	_38
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_592
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_593
	push	_68
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_594
	push	_72
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_595
	push	_73
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_596
	push	_75
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_597
	jmp	_588
_589:
	mov	eax,ebp
	push	eax
	push	_611
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	push	dword [esi+12]
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_609
	push	eax
	call	_bbGCFree
	add	esp,4
_609:
	mov	dword [ebx+8],esi
	push	_610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_35
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_590:
	mov	eax,ebp
	push	eax
	push	_625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_617
	call	_brl_blitz_NullObjectError
_617:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	dword [esi+12]
	call	_bbStringToFloat
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_623
	push	eax
	call	_bbGCFree
	add	esp,4
_623:
	mov	dword [ebx+8],esi
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_36
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_591:
	mov	eax,ebp
	push	eax
	push	_847
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_628
	call	_brl_blitz_NullObjectError
_628:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_631
	call	_brl_blitz_NullObjectError
_631:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_635
	call	_brl_blitz_NullObjectError
_635:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_639
	push	eax
	call	_bbGCFree
	add	esp,4
_639:
	mov	dword [edi+16],ebx
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_642
	call	_brl_blitz_NullObjectError
_642:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_649
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_648
	call	_brl_blitz_NullObjectError
_648:
	push	_39
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_649:
	cmp	eax,0
	je	_651
	mov	eax,ebp
	push	eax
	push	_815
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-8],eax
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_1
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_40
_42:
	mov	eax,ebp
	push	eax
	push	_744
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	push	_664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_677
	push	eax
	call	_bbGCFree
	add	esp,4
_677:
	mov	dword [edi+16],ebx
	push	_678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyString
	push	_680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	push	_37
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_685
	mov	eax,ebp
	push	eax
	push	_689
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_685:
	push	_690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_699
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_696
	call	_brl_blitz_NullObjectError
_696:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	push	_39
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_699:
	cmp	eax,0
	je	_701
	mov	eax,ebp
	push	eax
	push	_713
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_706
	call	_brl_blitz_NullObjectError
_706:
	mov	ebx,_43
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_711
	push	eax
	call	_bbGCFree
	add	esp,4
_711:
	mov	dword [esi+12],ebx
	push	_712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_40
_701:
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_721
	push	eax
	call	_bbGCFree
	add	esp,4
_721:
	mov	dword [esi+8],ebx
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_725
	push	_45
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_726
	push	_37
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_726
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_727
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_728
	push	_49
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_729
	push	_50
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_730
	push	_51
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_731
	mov	eax,ebp
	push	eax
	push	_733
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_41
_725:
	mov	eax,ebp
	push	eax
	push	_735
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_44
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_726:
	mov	eax,ebp
	push	eax
	push	_737
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_46
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_727:
	mov	eax,ebp
	push	eax
	push	_739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_47
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_728:
	mov	eax,ebp
	push	eax
	push	_740
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_729:
	mov	eax,ebp
	push	eax
	push	_741
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_730:
	mov	eax,ebp
	push	eax
	push	_742
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_731:
	mov	eax,ebp
	push	eax
	push	_743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_724
_724:
	call	dword [_bbOnDebugLeaveScope]
_40:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	cmp	dword [ebx+16],_bbNullObject
	jne	_42
_41:
	push	_745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_746
_54:
	mov	eax,ebp
	push	eax
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_760
	push	eax
	call	_bbGCFree
	add	esp,4
_760:
	mov	dword [edi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_52:
	add	dword [ebp-16],-1
_746:
	cmp	dword [ebp-16],1
	jge	_54
_53:
	push	_762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_764
	call	_brl_blitz_NullObjectError
_764:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_769
	call	_brl_blitz_NullObjectError
_769:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_775
	push	eax
	call	_bbGCFree
	add	esp,4
_775:
	mov	dword [edi+16],ebx
	push	_776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_778
	call	_brl_blitz_NullObjectError
_778:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_785
	call	_brl_blitz_NullObjectError
_785:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	push	_788
	push	dword [ebp-12]
	mov	eax,dword [esi+12]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebx+12]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [edi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+8]
	dec	dword [eax+4]
	jnz	_792
	push	eax
	call	_bbGCFree
	add	esp,4
_792:
	mov	dword [edi+8],ebx
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_795
	call	_brl_blitz_NullObjectError
_795:
	push	_43
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_800
	push	eax
	call	_bbGCFree
	add	esp,4
_800:
	mov	dword [esi+8],ebx
	push	_801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_806
	call	_brl_blitz_NullObjectError
_806:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_814
	push	eax
	call	_bbGCFree
	add	esp,4
_814:
	mov	dword [edi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_818
_651:
	mov	eax,ebp
	push	eax
	push	_845
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_821
	call	_brl_blitz_NullObjectError
_821:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_826
	call	_brl_blitz_NullObjectError
_826:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_828
	call	_brl_blitz_NullObjectError
_828:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_832
	push	eax
	call	_bbGCFree
	add	esp,4
_832:
	mov	dword [edi+16],ebx
	push	_833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_835
	call	_brl_blitz_NullObjectError
_835:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_838
	call	_brl_blitz_NullObjectError
_838:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_840
	call	_brl_blitz_NullObjectError
_840:
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_844
	push	eax
	call	_bbGCFree
	add	esp,4
_844:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
_818:
	push	_846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_37
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_592:
	mov	eax,ebp
	push	eax
	push	_860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_850
	call	_brl_blitz_NullObjectError
_850:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_859
	push	eax
	call	_bbGCFree
	add	esp,4
_859:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_588
_593:
	mov	eax,ebp
	push	eax
	push	_996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_863
	call	_brl_blitz_NullObjectError
_863:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	mov	ebx,dword [ebx+12]
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_868
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_869
	push	_67
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_870
	jmp	_867
_868:
	mov	eax,ebp
	push	eax
	push	_928
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	push	_57
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_878
	push	eax
	call	_bbGCFree
	add	esp,4
_878:
	mov	dword [esi+8],ebx
	push	_879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_881
	call	_brl_blitz_NullObjectError
_881:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_892
	push	eax
	call	_bbGCFree
	add	esp,4
_892:
	mov	dword [edi+16],ebx
	push	_893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_58
_60:
	mov	eax,ebp
	push	eax
	push	_919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_904
	call	_brl_blitz_NullObjectError
_904:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_907
	call	_brl_blitz_NullObjectError
_907:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_910
	call	_brl_blitz_NullObjectError
_910:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_914
	call	_brl_blitz_NullObjectError
_914:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_918
	push	eax
	call	_bbGCFree
	add	esp,4
_918:
	mov	dword [edi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_58:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_895
	call	_brl_blitz_NullObjectError
_895:
	mov	eax,dword [ebx+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_900
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	push	_26
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_900:
	cmp	eax,0
	jne	_60
_59:
	push	_920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	_61
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_927
	push	eax
	call	_bbGCFree
	add	esp,4
_927:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_867
_869:
	mov	eax,ebp
	push	eax
	push	_986
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_931
	call	_brl_blitz_NullObjectError
_931:
	push	_63
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_936
	push	eax
	call	_bbGCFree
	add	esp,4
_936:
	mov	dword [esi+8],ebx
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_939
	call	_brl_blitz_NullObjectError
_939:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_942
	call	_brl_blitz_NullObjectError
_942:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_944
	call	_brl_blitz_NullObjectError
_944:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_946
	call	_brl_blitz_NullObjectError
_946:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_950
	push	eax
	call	_bbGCFree
	add	esp,4
_950:
	mov	dword [edi+16],ebx
	push	_951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_64
_66:
	mov	eax,ebp
	push	eax
	push	_977
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_962
	call	_brl_blitz_NullObjectError
_962:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
	mov	edi,ebx
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_968
	call	_brl_blitz_NullObjectError
_968:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_970
	call	_brl_blitz_NullObjectError
_970:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	push	dword [ebx+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_976
	push	eax
	call	_bbGCFree
	add	esp,4
_976:
	mov	dword [edi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_64:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_953
	call	_brl_blitz_NullObjectError
_953:
	mov	eax,dword [ebx+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_958
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_955
	call	_brl_blitz_NullObjectError
_955:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	push	_26
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_958:
	cmp	eax,0
	jne	_66
_65:
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	push	_61
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_985
	push	eax
	call	_bbGCFree
	add	esp,4
_985:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_867
_870:
	mov	eax,ebp
	push	eax
	push	_995
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_989
	call	_brl_blitz_NullObjectError
_989:
	push	_30
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_994
	push	eax
	call	_bbGCFree
	add	esp,4
_994:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_867
_867:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_588
_594:
	mov	eax,ebp
	push	eax
	push	_1036
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1000
	call	_brl_blitz_NullObjectError
_1000:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-28],eax
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_69
_71:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1010
	call	_brl_blitz_NullObjectError
_1010:
	push	_bb_TFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_69
	mov	eax,ebp
	push	eax
	push	_1033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1013
	call	_brl_blitz_NullObjectError
_1013:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_1015
	call	_brl_blitz_NullObjectError
_1015:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	push	dword [ebx+8]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1018
	mov	eax,ebp
	push	eax
	push	_1032
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1021
	call	_brl_blitz_NullObjectError
_1021:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1024
	call	_brl_blitz_NullObjectError
_1024:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1028
	push	eax
	call	_bbGCFree
	add	esp,4
_1028:
	mov	dword [ebx+8],esi
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1031
	call	_brl_blitz_NullObjectError
_1031:
	mov	ebx,dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_1018:
	call	dword [_bbOnDebugLeaveScope]
_69:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_71
_70:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_588
_595:
	mov	eax,ebp
	push	eax
	push	_1056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1039
	call	_brl_blitz_NullObjectError
_1039:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1042
	call	_brl_blitz_NullObjectError
_1042:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1044
	call	_brl_blitz_NullObjectError
_1044:
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1048
	push	eax
	call	_bbGCFree
	add	esp,4
_1048:
	mov	dword [esi+8],ebx
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1051
	call	_brl_blitz_NullObjectError
_1051:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	mov	ebx,dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_596:
	mov	eax,ebp
	push	eax
	push	_1074
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1062
	call	_brl_blitz_NullObjectError
_1062:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	push	_74
	push	dword [esi+12]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1068
	push	eax
	call	_bbGCFree
	add	esp,4
_1068:
	mov	dword [ebx+8],esi
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1071
	call	_brl_blitz_NullObjectError
_1071:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1073
	call	_brl_blitz_NullObjectError
_1073:
	mov	ebx,dword [ebx+12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_302
_597:
	mov	eax,ebp
	push	eax
	push	_1087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1077
	call	_brl_blitz_NullObjectError
_1077:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1080
	call	_brl_blitz_NullObjectError
_1080:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1082
	call	_brl_blitz_NullObjectError
_1082:
	push	dword [ebx+12]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1086
	push	eax
	call	_bbGCFree
	add	esp,4
_1086:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_588
_588:
	mov	ebx,_bbEmptyString
	jmp	_302
_302:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1095
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TToken
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+24],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	push	ebp
	push	_1094
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_305
_305:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jnz	_1098
	push	eax
	call	_bbGCFree
	add	esp,4
_1098:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1100
	push	eax
	call	_bbGCFree
	add	esp,4
_1100:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1102
	push	eax
	call	_bbGCFree
	add	esp,4
_1102:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1104
	push	eax
	call	_bbGCFree
	add	esp,4
_1104:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1106
	push	eax
	call	_bbGCFree
	add	esp,4
_1106:
	mov	eax,0
	jmp	_1096
_1096:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Create:
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
	mov	eax,ebp
	push	eax
	push	_1144
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-12]
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1109
	push	_34
	push	dword [ebp-12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1109:
	cmp	eax,0
	je	_1111
	mov	eax,ebp
	push	eax
	push	_1113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_313
_1111:
	push	_1114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1116
	call	_brl_blitz_NullObjectError
_1116:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1121
	push	eax
	call	_bbGCFree
	add	esp,4
_1121:
	mov	dword [esi+8],ebx
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	push	dword [ebp-12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1123
	mov	eax,ebp
	push	eax
	push	_1132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	push	dword [ebp-12]
	call	_bbStringTrim
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1131
	push	eax
	call	_bbGCFree
	add	esp,4
_1131:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1133
_1123:
	mov	eax,ebp
	push	eax
	push	_1142
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1136
	call	_brl_blitz_NullObjectError
_1136:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1141
	push	eax
	call	_bbGCFree
	add	esp,4
_1141:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_1133:
	push	_1143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_313
_313:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Lexer:
	push	ebp
	mov	ebp,esp
	sub	esp,56
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyString
	mov	dword [ebp-32],_bbEmptyString
	mov	dword [ebp-36],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1147
	call	_brl_blitz_NullObjectError
_1147:
	push	_34
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1148
	mov	eax,ebp
	push	eax
	push	_1157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1151
	call	_brl_blitz_NullObjectError
_1151:
	mov	ebx,_26
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1156
	push	eax
	call	_bbGCFree
	add	esp,4
_1156:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1158
_1148:
	mov	eax,ebp
	push	eax
	push	_1510
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1161
	call	_brl_blitz_NullObjectError
_1161:
	push	_788
	push	dword [ebx+12]
	call	_bbStringStartsWith
	add	esp,8
	cmp	eax,0
	je	_1164
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1163
	call	_brl_blitz_NullObjectError
_1163:
	push	_788
	push	dword [ebx+12]
	call	_bbStringEndsWith
	add	esp,8
_1164:
	cmp	eax,0
	je	_1166
	mov	eax,ebp
	push	eax
	push	_1175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1169
	call	_brl_blitz_NullObjectError
_1169:
	mov	ebx,_37
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1174
	push	eax
	call	_bbGCFree
	add	esp,4
_1174:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1176
_1166:
	mov	eax,ebp
	push	eax
	push	_1509
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1179
	call	_brl_blitz_NullObjectError
_1179:
	push	dword [ebx+12]
	call	_bb_IsInt
	add	esp,4
	cmp	eax,0
	je	_1180
	mov	eax,ebp
	push	eax
	push	_1248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1183
	call	_brl_blitz_NullObjectError
_1183:
	mov	ebx,_35
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1188
	push	eax
	call	_bbGCFree
	add	esp,4
_1188:
	mov	dword [esi+16],ebx
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1191
	call	_brl_blitz_NullObjectError
_1191:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1193
	call	_brl_blitz_NullObjectError
_1193:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1197
	call	_brl_blitz_NullObjectError
_1197:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1199
	call	_brl_blitz_NullObjectError
_1199:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1202
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1202:
	cmp	eax,0
	je	_1204
	mov	eax,ebp
	push	eax
	push	_1247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1207
	call	_brl_blitz_NullObjectError
_1207:
	push	_76
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1210
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
	push	_35
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1210:
	cmp	eax,0
	je	_1212
	mov	eax,ebp
	push	eax
	push	_1245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1215
	call	_brl_blitz_NullObjectError
_1215:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
	push	dword [ebx+12]
	push	_76
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	push	_1219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1221
	call	_brl_blitz_NullObjectError
_1221:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1223
	call	_brl_blitz_NullObjectError
_1223:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1226
	call	_brl_blitz_NullObjectError
_1226:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1236
	push	eax
	call	_bbGCFree
	add	esp,4
_1236:
	mov	dword [esi+12],ebx
	push	_1237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1239
	call	_brl_blitz_NullObjectError
_1239:
	mov	ebx,_36
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1244
	push	eax
	call	_bbGCFree
	add	esp,4
_1244:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_1212:
	call	dword [_bbOnDebugLeaveScope]
_1204:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1251
_1180:
	mov	eax,ebp
	push	eax
	push	_1508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1255
	call	_brl_blitz_NullObjectError
_1255:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	mov	edi,dword [ebx+36]
	mov	eax,edi
	add	eax,24
	mov	esi,eax
	mov	eax,esi
	add	eax,dword [edi+16]
	mov	dword [ebp-52],eax
	jmp	_77
_79:
	mov	eax,dword [esi]
	mov	dword [ebp-20],eax
	add	esi,4
	cmp	dword [ebp-20],_bbNullObject
	je	_77
	mov	eax,ebp
	push	eax
	push	_1276
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1264
	call	_brl_blitz_NullObjectError
_1264:
	push	dword [ebp-20]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1265
	mov	eax,ebp
	push	eax
	push	_1275
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	mov	ebx,_73
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1273
	push	eax
	call	_bbGCFree
	add	esp,4
_1273:
	mov	dword [esi+16],ebx
	push	_1274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_316
_1265:
	call	dword [_bbOnDebugLeaveScope]
_77:
	cmp	esi,dword [ebp-52]
	jne	_79
_78:
	push	_1278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1281
	call	_brl_blitz_NullObjectError
_1281:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	mov	edi,dword [ebx+32]
	mov	eax,edi
	add	eax,24
	mov	esi,eax
	mov	eax,esi
	add	eax,dword [edi+16]
	mov	dword [ebp-48],eax
	jmp	_80
_82:
	mov	eax,dword [esi]
	mov	dword [ebp-24],eax
	add	esi,4
	cmp	dword [ebp-24],_bbNullObject
	je	_80
	mov	eax,ebp
	push	eax
	push	_1302
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1290
	call	_brl_blitz_NullObjectError
_1290:
	push	dword [ebx+12]
	push	dword [ebp-24]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1291
	mov	eax,ebp
	push	eax
	push	_1301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1294
	call	_brl_blitz_NullObjectError
_1294:
	mov	ebx,_55
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1299
	push	eax
	call	_bbGCFree
	add	esp,4
_1299:
	mov	dword [esi+16],ebx
	push	_1300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_316
_1291:
	call	dword [_bbOnDebugLeaveScope]
_80:
	cmp	esi,dword [ebp-48]
	jne	_82
_81:
	push	_1303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1306
	call	_brl_blitz_NullObjectError
_1306:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	mov	edi,dword [ebx+28]
	mov	eax,edi
	add	eax,24
	mov	esi,eax
	mov	eax,esi
	add	eax,dword [edi+16]
	mov	dword [ebp-44],eax
	jmp	_83
_85:
	mov	eax,dword [esi]
	mov	dword [ebp-28],eax
	add	esi,4
	cmp	dword [ebp-28],_bbNullObject
	je	_83
	mov	eax,ebp
	push	eax
	push	_1443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1315
	call	_brl_blitz_NullObjectError
_1315:
	push	dword [ebx+12]
	push	dword [ebp-28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1316
	mov	eax,ebp
	push	eax
	push	_1442
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	push	_86
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1320
	push	_2
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1321
	jmp	_1319
_1320:
	mov	eax,ebp
	push	eax
	push	_1397
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1324
	call	_brl_blitz_NullObjectError
_1324:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1326
	call	_brl_blitz_NullObjectError
_1326:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1328
	call	_brl_blitz_NullObjectError
_1328:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1329
	mov	eax,ebp
	push	eax
	push	_1396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1332
	call	_brl_blitz_NullObjectError
_1332:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1336
	call	_brl_blitz_NullObjectError
_1336:
	mov	ebx,dword [ebx+12]
	push	_86
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1339
	push	_88
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1340
	push	_2
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1341
	jmp	_1338
_1339:
	mov	eax,ebp
	push	eax
	push	_1359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1344
	call	_brl_blitz_NullObjectError
_1344:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1346
	call	_brl_blitz_NullObjectError
_1346:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1348
	call	_brl_blitz_NullObjectError
_1348:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1350
	call	_brl_blitz_NullObjectError
_1350:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1353
	call	_brl_blitz_NullObjectError
_1353:
	mov	ebx,_87
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1358
	push	eax
	call	_bbGCFree
	add	esp,4
_1358:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1338
_1340:
	mov	eax,ebp
	push	eax
	push	_1377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1362
	call	_brl_blitz_NullObjectError
_1362:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1364
	call	_brl_blitz_NullObjectError
_1364:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1366
	call	_brl_blitz_NullObjectError
_1366:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1368
	call	_brl_blitz_NullObjectError
_1368:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1371
	call	_brl_blitz_NullObjectError
_1371:
	mov	ebx,_89
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1376
	push	eax
	call	_bbGCFree
	add	esp,4
_1376:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1338
_1341:
	mov	eax,ebp
	push	eax
	push	_1395
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1380
	call	_brl_blitz_NullObjectError
_1380:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1382
	call	_brl_blitz_NullObjectError
_1382:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1386
	call	_brl_blitz_NullObjectError
_1386:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1389
	call	_brl_blitz_NullObjectError
_1389:
	mov	ebx,_90
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1394
	push	eax
	call	_bbGCFree
	add	esp,4
_1394:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1338
_1338:
	call	dword [_bbOnDebugLeaveScope]
_1329:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1319
_1321:
	mov	eax,ebp
	push	eax
	push	_1432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1400
	call	_brl_blitz_NullObjectError
_1400:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1402
	call	_brl_blitz_NullObjectError
_1402:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1404
	call	_brl_blitz_NullObjectError
_1404:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1411
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1406
	call	_brl_blitz_NullObjectError
_1406:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1408
	call	_brl_blitz_NullObjectError
_1408:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1410
	call	_brl_blitz_NullObjectError
_1410:
	push	_88
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1411:
	cmp	eax,0
	je	_1413
	mov	eax,ebp
	push	eax
	push	_1431
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1416
	call	_brl_blitz_NullObjectError
_1416:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1418
	call	_brl_blitz_NullObjectError
_1418:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1420
	call	_brl_blitz_NullObjectError
_1420:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1422
	call	_brl_blitz_NullObjectError
_1422:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1425
	call	_brl_blitz_NullObjectError
_1425:
	mov	ebx,_91
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1430
	push	eax
	call	_bbGCFree
	add	esp,4
_1430:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_1413:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1319
_1319:
	push	_1433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1435
	call	_brl_blitz_NullObjectError
_1435:
	mov	ebx,_38
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1440
	push	eax
	call	_bbGCFree
	add	esp,4
_1440:
	mov	dword [esi+16],ebx
	push	_1441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_316
_1316:
	call	dword [_bbOnDebugLeaveScope]
_83:
	cmp	esi,dword [ebp-44]
	jne	_85
_84:
	push	_1444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1447
	call	_brl_blitz_NullObjectError
_1447:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1449
	call	_brl_blitz_NullObjectError
_1449:
	mov	edi,dword [ebx+24]
	mov	eax,edi
	add	eax,24
	mov	esi,eax
	mov	eax,esi
	add	eax,dword [edi+16]
	mov	dword [ebp-40],eax
	jmp	_92
_94:
	mov	eax,dword [esi]
	mov	dword [ebp-32],eax
	add	esi,4
	cmp	dword [ebp-32],_bbNullObject
	je	_92
	mov	eax,ebp
	push	eax
	push	_1468
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1456
	call	_brl_blitz_NullObjectError
_1456:
	push	dword [ebp-32]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1457
	mov	eax,ebp
	push	eax
	push	_1467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1460
	call	_brl_blitz_NullObjectError
_1460:
	mov	ebx,_75
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1465
	push	eax
	call	_bbGCFree
	add	esp,4
_1465:
	mov	dword [esi+16],ebx
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_316
_1457:
	call	dword [_bbOnDebugLeaveScope]
_92:
	cmp	esi,dword [ebp-40]
	jne	_94
_93:
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1474
	call	_brl_blitz_NullObjectError
_1474:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1477
	call	_brl_blitz_NullObjectError
_1477:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_95
_97:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1482
	call	_brl_blitz_NullObjectError
_1482:
	push	_bb_TFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_95
	mov	eax,ebp
	push	eax
	push	_1499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_1485
	call	_brl_blitz_NullObjectError
_1485:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1487
	call	_brl_blitz_NullObjectError
_1487:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1488
	mov	eax,ebp
	push	eax
	push	_1498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1491
	call	_brl_blitz_NullObjectError
_1491:
	mov	ebx,_68
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1496
	push	eax
	call	_bbGCFree
	add	esp,4
_1496:
	mov	dword [esi+16],ebx
	push	_1497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_316
_1488:
	call	dword [_bbOnDebugLeaveScope]
_95:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	push	_1500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1502
	call	_brl_blitz_NullObjectError
_1502:
	mov	ebx,_98
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1507
	push	eax
	call	_bbGCFree
	add	esp,4
_1507:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_1251:
	call	dword [_bbOnDebugLeaveScope]
_1176:
	call	dword [_bbOnDebugLeaveScope]
_1158:
	mov	ebx,0
	jmp	_316
_316:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_Parse:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1812
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1514
	call	_brl_blitz_NullObjectError
_1514:
	movzx	eax,byte [ebx+24]
	mov	eax,eax
	cmp	eax,1
	jne	_1515
	mov	eax,ebp
	push	eax
	push	_1517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1515:
	push	_1518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1520
	call	_brl_blitz_NullObjectError
_1520:
	mov	byte [ebx+24],1
	push	_1522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1524
	call	_brl_blitz_NullObjectError
_1524:
	mov	ebx,dword [ebx+16]
	push	_75
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1527
	push	_38
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1528
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1529
	push	_73
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1530
	push	_68
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1531
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1532
	jmp	_1526
_1527:
	mov	eax,ebp
	push	eax
	push	_1645
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1535
	call	_brl_blitz_NullObjectError
_1535:
	mov	ebx,dword [ebx+12]
	push	_99
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1538
	push	_103
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1539
	jmp	_1537
_1538:
	mov	eax,ebp
	push	eax
	push	_1585
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],1
	push	_1542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1544
	call	_brl_blitz_NullObjectError
_1544:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1546
	call	_brl_blitz_NullObjectError
_1546:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_100
_102:
	mov	eax,ebp
	push	eax
	push	_1572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1551
	call	_brl_blitz_NullObjectError
_1551:
	push	_99
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1552
	mov	eax,ebp
	push	eax
	push	_1554
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1555
_1552:
	mov	eax,ebp
	push	eax
	push	_1566
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1558
	call	_brl_blitz_NullObjectError
_1558:
	push	_103
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1559
	mov	eax,ebp
	push	eax
	push	_1565
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-8],1
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	jne	_1562
	mov	eax,ebp
	push	eax
	push	_1564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_101
_1562:
	call	dword [_bbOnDebugLeaveScope]
_1559:
	call	dword [_bbOnDebugLeaveScope]
_1555:
	push	_1567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1569
	call	_brl_blitz_NullObjectError
_1569:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1571
	call	_brl_blitz_NullObjectError
_1571:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_100:
	cmp	dword [ebp-12],_bbNullObject
	jne	_102
_101:
	push	_1573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1575
	call	_brl_blitz_NullObjectError
_1575:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1580
	push	eax
	call	_bbGCFree
	add	esp,4
_1580:
	mov	dword [esi+20],ebx
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	je	_1582
	mov	eax,ebp
	push	eax
	push	_1584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_104
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1582:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1537
_1539:
	mov	eax,ebp
	push	eax
	push	_1644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],1
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1591
	call	_brl_blitz_NullObjectError
_1591:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1593
	call	_brl_blitz_NullObjectError
_1593:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_105
_107:
	mov	eax,ebp
	push	eax
	push	_1619
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1598
	call	_brl_blitz_NullObjectError
_1598:
	push	_99
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1599
	mov	eax,ebp
	push	eax
	push	_1605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-16],1
	push	_1601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jne	_1602
	mov	eax,ebp
	push	eax
	push	_1604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_106
_1602:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1606
_1599:
	mov	eax,ebp
	push	eax
	push	_1613
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1609
	call	_brl_blitz_NullObjectError
_1609:
	push	_103
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1610
	mov	eax,ebp
	push	eax
	push	_1612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_1610:
	call	dword [_bbOnDebugLeaveScope]
_1606:
	push	_1614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1616
	call	_brl_blitz_NullObjectError
_1616:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1618
	call	_brl_blitz_NullObjectError
_1618:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_105:
	cmp	dword [ebp-20],_bbNullObject
	jne	_107
_106:
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1622
	call	_brl_blitz_NullObjectError
_1622:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1627
	push	eax
	call	_bbGCFree
	add	esp,4
_1627:
	mov	dword [esi+20],ebx
	push	_1628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	je	_1629
	mov	eax,ebp
	push	eax
	push	_1631
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_108
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1629:
	push	_1632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1634
	call	_brl_blitz_NullObjectError
_1634:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1636
	call	_brl_blitz_NullObjectError
_1636:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1638
	call	_brl_blitz_NullObjectError
_1638:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_1641
	mov	eax,ebp
	push	eax
	push	_1643
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_109
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1641:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1537
_1537:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1526
_1528:
	mov	eax,ebp
	push	eax
	push	_1646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1526
_1529:
	mov	eax,ebp
	push	eax
	push	_1685
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1649
	call	_brl_blitz_NullObjectError
_1649:
	mov	ebx,dword [ebx+12]
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1652
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1652
	push	_111
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1653
	push	_67
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1654
	jmp	_1651
_1652:
	mov	eax,ebp
	push	eax
	push	_1672
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1657
	call	_brl_blitz_NullObjectError
_1657:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1659
	call	_brl_blitz_NullObjectError
_1659:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1661
	call	_brl_blitz_NullObjectError
_1661:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1663
	call	_brl_blitz_NullObjectError
_1663:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_1664
	mov	eax,ebp
	push	eax
	push	_1666
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_110
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1664:
	push	_1667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1669
	call	_brl_blitz_NullObjectError
_1669:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1671
	call	_brl_blitz_NullObjectError
_1671:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1651
_1653:
	mov	eax,ebp
	push	eax
	push	_1678
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1675
	call	_brl_blitz_NullObjectError
_1675:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1677
	call	_brl_blitz_NullObjectError
_1677:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1651
_1654:
	mov	eax,ebp
	push	eax
	push	_1684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1681
	call	_brl_blitz_NullObjectError
_1681:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1683
	call	_brl_blitz_NullObjectError
_1683:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1651:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1526
_1530:
	mov	eax,ebp
	push	eax
	push	_1754
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1688
	call	_brl_blitz_NullObjectError
_1688:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1690
	call	_brl_blitz_NullObjectError
_1690:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1694
	call	_brl_blitz_NullObjectError
_1694:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	_1695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1697
	call	_brl_blitz_NullObjectError
_1697:
	push	_98
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1698
	mov	eax,ebp
	push	eax
	push	_1728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1701
	call	_brl_blitz_NullObjectError
_1701:
	mov	ebx,_72
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1706
	push	eax
	call	_bbGCFree
	add	esp,4
_1706:
	mov	dword [esi+16],ebx
	push	_1707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TVariable
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_1709
	call	_brl_blitz_NullObjectError
_1709:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1711
	call	_brl_blitz_NullObjectError
_1711:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1713
	call	_brl_blitz_NullObjectError
_1713:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,12
	mov	dword [ebp-28],eax
	push	_1715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1717
	call	_brl_blitz_NullObjectError
_1717:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1719
	call	_brl_blitz_NullObjectError
_1719:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1722
	call	_brl_blitz_NullObjectError
_1722:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1727
	push	eax
	call	_bbGCFree
	add	esp,4
_1727:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
_1698:
	push	_1730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_112
_114:
	mov	eax,ebp
	push	eax
	push	_1753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1733
	call	_brl_blitz_NullObjectError
_1733:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1736
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1735
	call	_brl_blitz_NullObjectError
_1735:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1736:
	cmp	eax,0
	je	_1738
	mov	eax,ebp
	push	eax
	push	_1747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1741
	call	_brl_blitz_NullObjectError
_1741:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1743
	call	_brl_blitz_NullObjectError
_1743:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_1744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1746
	call	_brl_blitz_NullObjectError
_1746:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1738:
	push	_1748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1750
	call	_brl_blitz_NullObjectError
_1750:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1752
	call	_brl_blitz_NullObjectError
_1752:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_112:
	cmp	dword [ebp-24],_bbNullObject
	jne	_114
_113:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1526
_1531:
	mov	eax,ebp
	push	eax
	push	_1767
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1757
	call	_brl_blitz_NullObjectError
_1757:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1759
	call	_brl_blitz_NullObjectError
_1759:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1761
	call	_brl_blitz_NullObjectError
_1761:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_1763
	call	_brl_blitz_NullObjectError
_1763:
	push	dword [ebp-4]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	cmp	eax,0
	jne	_1764
	mov	eax,ebp
	push	eax
	push	_1766
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_115
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1764:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1526
_1532:
	mov	eax,ebp
	push	eax
	push	_1810
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1771
	call	_brl_blitz_NullObjectError
_1771:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1773
	call	_brl_blitz_NullObjectError
_1773:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+80]
	add	esp,4
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1776
	call	_brl_blitz_NullObjectError
_1776:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_116
_118:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1781
	call	_brl_blitz_NullObjectError
_1781:
	push	_bb_TVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_116
	mov	eax,ebp
	push	eax
	push	_1806
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_1784
	call	_brl_blitz_NullObjectError
_1784:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1786
	call	_brl_blitz_NullObjectError
_1786:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1787
	mov	eax,ebp
	push	eax
	push	_1805
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1790
	call	_brl_blitz_NullObjectError
_1790:
	mov	ebx,dword [ebp-32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1795
	push	eax
	call	_bbGCFree
	add	esp,4
_1795:
	mov	dword [esi+28],ebx
	push	_1796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1798
	call	_brl_blitz_NullObjectError
_1798:
	mov	ebx,_72
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1803
	push	eax
	call	_bbGCFree
	add	esp,4
_1803:
	mov	dword [esi+16],ebx
	push	_1804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1787:
	call	dword [_bbOnDebugLeaveScope]
_116:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1779
	call	_brl_blitz_NullObjectError
_1779:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_118
_117:
	push	_1807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1809
	call	_brl_blitz_NullObjectError
_1809:
	push	_120
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	push	_119
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_319
_1526:
	push	_1811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_1
	jmp	_319
_319:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetText:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1816
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1815
	call	_brl_blitz_NullObjectError
_1815:
	mov	ebx,dword [ebx+12]
	jmp	_322
_322:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetTyp:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1820
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	mov	ebx,dword [ebx+16]
	jmp	_325
_325:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_GetCloseToken:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1824
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1823
	call	_brl_blitz_NullObjectError
_1823:
	mov	ebx,dword [ebx+20]
	jmp	_328
_328:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TToken_ToString:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1836
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1827
	call	_brl_blitz_NullObjectError
_1827:
	push	_26
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1828
	push	ebp
	push	_1830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_121
	call	dword [_bbOnDebugLeaveScope]
	jmp	_331
_1828:
	push	_1831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1833
	call	_brl_blitz_NullObjectError
_1833:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1835
	call	_brl_blitz_NullObjectError
_1835:
	push	esi
	mov	eax,dword [esi]
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
	mov	ebx,eax
	jmp	_331
_331:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TVariable
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	push	ebp
	push	_1839
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_334
_334:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jnz	_1843
	push	eax
	call	_bbGCFree
	add	esp,4
_1843:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1845
	push	eax
	call	_bbGCFree
	add	esp,4
_1845:
	mov	eax,0
	jmp	_1841
_1841:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_Create:
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
	push	_1864
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1849
	call	_brl_blitz_NullObjectError
_1849:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1854
	push	eax
	call	_bbGCFree
	add	esp,4
_1854:
	mov	dword [esi+8],ebx
	push	_1855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1862
	push	eax
	call	_bbGCFree
	add	esp,4
_1862:
	mov	dword [esi+12],ebx
	push	_1863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_342
_342:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_GetName:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1868
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1867
	call	_brl_blitz_NullObjectError
_1867:
	mov	ebx,dword [ebx+8]
	jmp	_345
_345:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVariable_GetDataType:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1872
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1871
	call	_brl_blitz_NullObjectError
_1871:
	mov	ebx,dword [ebx+12]
	jmp	_348
_348:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1876
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TFunction
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	push	ebp
	push	_1875
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_351
_351:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jnz	_1879
	push	eax
	call	_bbGCFree
	add	esp,4
_1879:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1881
	push	eax
	call	_bbGCFree
	add	esp,4
_1881:
	mov	eax,0
	jmp	_1877
_1877:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_1892
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1885
	call	_brl_blitz_NullObjectError
_1885:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1890
	push	eax
	call	_bbGCFree
	add	esp,4
_1890:
	mov	dword [esi+8],ebx
	push	_1891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_358
_358:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_ToString:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1894
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_124
	jmp	_361
_361:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TFunction_Getname:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1898
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1897
	call	_brl_blitz_NullObjectError
_1897:
	mov	ebx,dword [ebx+8]
	jmp	_364
_364:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1970
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCompiler
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
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
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
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
	mov	edx,dword [ebp-4]
	mov	dword [edx+28],eax
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
	mov	edx,dword [ebp-4]
	mov	dword [edx+32],eax
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
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],0
	push	128
	push	_1966
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+48],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],edx
	push	ebp
	push	_1969
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_367
_367:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	jnz	_1973
	push	eax
	call	_bbGCFree
	add	esp,4
_1973:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1975
	push	eax
	call	_bbGCFree
	add	esp,4
_1975:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1977
	push	eax
	call	_bbGCFree
	add	esp,4
_1977:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1979
	push	eax
	call	_bbGCFree
	add	esp,4
_1979:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1981
	push	eax
	call	_bbGCFree
	add	esp,4
_1981:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1983
	push	eax
	call	_bbGCFree
	add	esp,4
_1983:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1985
	push	eax
	call	_bbGCFree
	add	esp,4
_1985:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1987
	push	eax
	call	_bbGCFree
	add	esp,4
_1987:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1989
	push	eax
	call	_bbGCFree
	add	esp,4
_1989:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1991
	push	eax
	call	_bbGCFree
	add	esp,4
_1991:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1993
	push	eax
	call	_bbGCFree
	add	esp,4
_1993:
	mov	eax,0
	jmp	_1971
_1971:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_2030
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	call	_brl_linkedlist_CreateList
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_2001
	push	eax
	call	_bbGCFree
	add	esp,4
_2001:
	mov	dword [esi+16],ebx
	push	_2002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2004
	call	_brl_blitz_NullObjectError
_2004:
	call	_brl_linkedlist_CreateList
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_2009
	push	eax
	call	_bbGCFree
	add	esp,4
_2009:
	mov	dword [esi+40],ebx
	push	_2010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2012
	call	_brl_blitz_NullObjectError
_2012:
	call	_brl_linkedlist_CreateList
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_2017
	push	eax
	call	_bbGCFree
	add	esp,4
_2017:
	mov	dword [esi+20],ebx
	push	_2018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2020
	call	_brl_blitz_NullObjectError
_2020:
	mov	esi,dword [ebx+48]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_2023
	call	_brl_blitz_ArrayBoundsError
_2023:
	shl	ebx,2
	add	esi,ebx
	call	_brl_linkedlist_CreateList
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2028
	push	eax
	call	_bbGCFree
	add	esp,4
_2028:
	mov	dword [esi+24],ebx
	push	_2029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_373
_373:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Tokenize:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyArray
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyString
	mov	dword [ebp-32],0
	mov	dword [ebp-36],_bbEmptyString
	mov	byte [ebp-4],0
	mov	dword [ebp-40],0
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_2032
	mov	eax,ebp
	push	eax
	push	_2034
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_145
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2032:
	push	_2035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_stream_LoadString
	add	esp,4
	mov	dword [ebp-16],eax
	push	_2037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-16]
	push	_34
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	push	_2038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_34
	push	dword [ebp-16]
	call	_bbStringSplit
	add	esp,8
	mov	dword [ebp-20],eax
	push	_2040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	mov	eax,dword [ebp-20]
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp-60]
	add	eax,24
	mov	dword [ebp-56],eax
	mov	edx,dword [ebp-56]
	mov	eax,dword [ebp-60]
	add	edx,dword [eax+16]
	mov	dword [ebp-64],edx
	jmp	_146
_148:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax]
	mov	dword [ebp-24],eax
	add	dword [ebp-56],4
	cmp	dword [ebp-24],_bbNullObject
	je	_146
	mov	eax,ebp
	push	eax
	push	_2110
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	push	_2048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],0
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	mov	dword [ebp-52],eax
	jmp	_2050
_151:
	mov	eax,ebp
	push	eax
	push	_2099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-36],eax
	push	_2054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_788
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2057
	mov	eax,ebp
	push	eax
	push	_2072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	mov	dword [ebp-40],eax
	push	_2060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+8]
	jmp	_2061
_154:
	mov	eax,ebp
	push	eax
	push	_2070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_788
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2064
	mov	eax,ebp
	push	eax
	push	_2069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2067
	call	_brl_blitz_NullObjectError
_2067:
	push	_788
	push	dword [ebp-32]
	push	dword [ebp-40]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_788
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
	push	_2068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_153
_2064:
	call	dword [_bbOnDebugLeaveScope]
_152:
	add	dword [ebp-32],1
_2061:
	cmp	dword [ebp-32],ebx
	jle	_154
_153:
	push	_2071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_149
_2057:
	push	_2074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbEmptyString
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2077
	call	_brl_blitz_NullObjectError
_2077:
	mov	esi,dword [ebx+24]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_155
_157:
	mov	eax,dword [ebx]
	mov	dword [ebp-44],eax
	add	ebx,4
	cmp	dword [ebp-44],_bbNullObject
	je	_155
	mov	eax,ebp
	push	eax
	push	_2094
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-44]
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2083
	mov	eax,ebp
	push	eax
	push	_2093
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2086
	call	_brl_blitz_NullObjectError
_2086:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_2087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2089
	call	_brl_blitz_NullObjectError
_2089:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_2090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_1
	push	_2091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_156
_2083:
	call	dword [_bbOnDebugLeaveScope]
_155:
	cmp	ebx,edi
	jne	_157
_156:
	push	_2095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_2096
	mov	eax,ebp
	push	eax
	push	_2098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_2096:
	call	dword [_bbOnDebugLeaveScope]
_149:
	add	dword [ebp-32],1
_2050:
	mov	eax,dword [ebp-52]
	cmp	dword [ebp-32],eax
	jle	_151
_150:
	push	_2103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2105
	call	_brl_blitz_NullObjectError
_2105:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2108
	call	_brl_blitz_NullObjectError
_2108:
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	_2109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_1
	call	dword [_bbOnDebugLeaveScope]
_146:
	mov	eax,dword [ebp-64]
	cmp	dword [ebp-56],eax
	jne	_148
_147:
	push	_2112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2115
	call	_brl_blitz_NullObjectError
_2115:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2118
	call	_brl_blitz_NullObjectError
_2118:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_158
_160:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2123
	call	_brl_blitz_NullObjectError
_2123:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_158
	mov	eax,ebp
	push	eax
	push	_2127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2126
	call	_brl_blitz_NullObjectError
_2126:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+24]
	add	esp,4
	push	eax
	call	_brl_standardio_Print
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_158:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2121
	call	_brl_blitz_NullObjectError
_2121:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_160
_159:
	mov	ebx,0
	jmp	_377
_377:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_CreateToken:
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
	push	_2148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TToken
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	mov	dword [ebp-12],eax
	push	_2136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_2137
	push	ebp
	push	_2139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_381
_2137:
	push	_2140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2142
	call	_brl_blitz_NullObjectError
_2142:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2144
	call	_brl_blitz_NullObjectError
_2144:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2147
	call	_brl_blitz_NullObjectError
_2147:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,0
	jmp	_381
_381:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_TokenGetBefore:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_2193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_2151
	push	ebp
	push	_2153
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_2151:
	push	_2154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2158
	call	_brl_blitz_NullObjectError
_2158:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_2161
	push	ebp
	push	_2189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2164
	call	_brl_blitz_NullObjectError
_2164:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_2165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_2166
	push	ebp
	push	_2184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2169
	call	_brl_blitz_NullObjectError
_2169:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	push	_2171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_2172
	push	ebp
	push	_2180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2175
	call	_brl_blitz_NullObjectError
_2175:
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2176
	push	ebp
	push	_2178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_2176:
	push	_2179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_2172:
	push	ebp
	push	_2183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_2166:
	push	ebp
	push	_2188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_2161:
	push	ebp
	push	_2192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_385
_385:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_TokenGetAfter:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_2231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	jne	_2196
	push	ebp
	push	_2198
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_389
_2196:
	push	_2199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2201
	call	_brl_blitz_NullObjectError
_2201:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2203
	call	_brl_blitz_NullObjectError
_2203:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_2206
	push	ebp
	push	_2227
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2209
	call	_brl_blitz_NullObjectError
_2209:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_2210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],_bbNullObject
	je	_2211
	push	ebp
	push	_2223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	push	_2216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_2217
	push	ebp
	push	_2219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_389
_2217:
	push	ebp
	push	_2222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_389
_2211:
	push	ebp
	push	_2226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_389
_2206:
	push	ebp
	push	_2230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_389
_389:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RemoveToken:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2234
	call	_brl_blitz_NullObjectError
_2234:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2236
	call	_brl_blitz_NullObjectError
_2236:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	ebx,0
	jmp	_393
_393:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Parse:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_2313
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_2240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2243
	call	_brl_blitz_NullObjectError
_2243:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2246
	call	_brl_blitz_NullObjectError
_2246:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_161
_163:
	cmp	ebx,_bbNullObject
	jne	_2251
	call	_brl_blitz_NullObjectError
_2251:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_161
	mov	eax,ebp
	push	eax
	push	_2262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2254
	call	_brl_blitz_NullObjectError
_2254:
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2255
	mov	eax,ebp
	push	eax
	push	_2257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_2255:
	push	_2258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2260
	call	_brl_blitz_NullObjectError
_2260:
	mov	eax,esi
	mov	edx,dword [ebp-8]
	mov	dword [eax+32],edx
	call	dword [_bbOnDebugLeaveScope]
_161:
	cmp	ebx,_bbNullObject
	jne	_2249
	call	_brl_blitz_NullObjectError
_2249:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_163
_162:
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	push	_2264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2267
	call	_brl_blitz_NullObjectError
_2267:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_2270
	call	_brl_blitz_NullObjectError
_2270:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_164
_166:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2275
	call	_brl_blitz_NullObjectError
_2275:
	push	_bb_TToken
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_164
	mov	eax,ebp
	push	eax
	push	_2306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2278
	call	_brl_blitz_NullObjectError
_2278:
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2281
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2281:
	cmp	eax,0
	je	_2283
	mov	eax,ebp
	push	eax
	push	_2304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-8],1
	push	_2285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2287
	call	_brl_blitz_NullObjectError
_2287:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_2288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2290
	call	_brl_blitz_NullObjectError
_2290:
	mov	esi,ebx
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+56]
	dec	dword [eax+4]
	jnz	_2295
	push	eax
	call	_bbGCFree
	add	esp,4
_2295:
	mov	dword [esi+56],ebx
	push	_2296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2298
	call	_brl_blitz_NullObjectError
_2298:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2301
	mov	eax,ebp
	push	eax
	push	_2303
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	_168
	push	dword [ebp-8]
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
	call	dword [_bbOnDebugLeaveScope]
_2301:
	call	dword [_bbOnDebugLeaveScope]
_2283:
	call	dword [_bbOnDebugLeaveScope]
_164:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2273
	call	_brl_blitz_NullObjectError
_2273:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_166
_165:
	push	_2307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2309
	call	_brl_blitz_NullObjectError
_2309:
	cmp	dword [ebx+52],0
	jle	_2310
	mov	eax,ebp
	push	eax
	push	_2312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-8]
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
	call	dword [_bbOnDebugLeaveScope]
_2310:
	mov	ebx,0
	jmp	_396
_396:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PushVariable:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2316
	call	_brl_blitz_NullObjectError
_2316:
	mov	ebx,dword [ebx+48]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2319
	call	_brl_blitz_NullObjectError
_2319:
	mov	esi,dword [esi+52]
	cmp	esi,dword [ebx+20]
	jb	_2321
	call	_brl_blitz_ArrayBoundsError
_2321:
	mov	ebx,dword [ebx+esi*4+24]
	cmp	ebx,_bbNullObject
	jne	_2323
	call	_brl_blitz_NullObjectError
_2323:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_400
_400:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetVariable:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_linkedlist_CreateList
	mov	dword [ebp-8],eax
	push	_2327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2330
	call	_brl_blitz_NullObjectError
_2330:
	mov	eax,dword [ebx+52]
	mov	dword [ebp-12],eax
	jmp	_2331
_173:
	mov	eax,ebp
	push	eax
	push	_2351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2335
	call	_brl_blitz_NullObjectError
_2335:
	mov	esi,dword [ebx+48]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+20]
	jb	_2338
	call	_brl_blitz_ArrayBoundsError
_2338:
	mov	edi,dword [esi+ebx*4+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2341
	call	_brl_blitz_NullObjectError
_2341:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_174
_176:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2346
	call	_brl_blitz_NullObjectError
_2346:
	push	_bb_TVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_174
	mov	eax,ebp
	push	eax
	push	_2350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2349
	call	_brl_blitz_NullObjectError
_2349:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_174:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2344
	call	_brl_blitz_NullObjectError
_2344:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_176
_175:
	call	dword [_bbOnDebugLeaveScope]
_171:
	add	dword [ebp-12],-1
_2331:
	cmp	dword [ebp-12],0
	jge	_173
_172:
	push	_2352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_403
_403:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PushScope:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2357
	call	_brl_blitz_NullObjectError
_2357:
	add	dword [ebx+52],1
	push	_2359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2361
	call	_brl_blitz_NullObjectError
_2361:
	mov	ebx,dword [ebx+48]
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2364
	call	_brl_blitz_NullObjectError
_2364:
	mov	esi,dword [esi+52]
	cmp	esi,dword [ebx+20]
	jb	_2366
	call	_brl_blitz_ArrayBoundsError
_2366:
	mov	eax,dword [ebx+esi*4+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_2367
	push	ebp
	push	_2381
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2370
	call	_brl_blitz_NullObjectError
_2370:
	mov	esi,dword [ebx+48]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2373
	call	_brl_blitz_NullObjectError
_2373:
	mov	ebx,dword [ebx+52]
	cmp	ebx,dword [esi+20]
	jb	_2375
	call	_brl_blitz_ArrayBoundsError
_2375:
	shl	ebx,2
	add	esi,ebx
	call	_brl_linkedlist_CreateList
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2380
	push	eax
	call	_bbGCFree
	add	esp,4
_2380:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_2367:
	mov	ebx,0
	jmp	_406
_406:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_PopScope:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_2396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2385
	call	_brl_blitz_NullObjectError
_2385:
	cmp	dword [ebx+52],0
	jle	_2386
	push	ebp
	push	_2391
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2389
	call	_brl_blitz_NullObjectError
_2389:
	sub	dword [ebx+52],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2392
_2386:
	push	ebp
	push	_2394
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_177
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_2392:
	push	_2395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_1
	jmp	_409
_409:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ParseTerm:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbEmptyString
	mov	byte [ebp-4],0
	mov	byte [ebp-8],0
	push	ebp
	push	_2553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2399
	call	_brl_blitz_NullObjectError
_2399:
	cmp	dword [ebx+56],_bbNullObject
	jne	_2400
	push	ebp
	push	_2409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2403
	call	_brl_blitz_NullObjectError
_2403:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+56]
	dec	dword [eax+4]
	jnz	_2408
	push	eax
	call	_bbGCFree
	add	esp,4
_2408:
	mov	dword [esi+56],ebx
	call	dword [_bbOnDebugLeaveScope]
_2400:
	push	_2410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2415
	push	ebp
	push	_2417
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	push	_178
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2415:
	push	_2418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2420
	call	_brl_blitz_NullObjectError
_2420:
	push	_75
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2421
	push	ebp
	push	_2440
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2424
	call	_brl_blitz_NullObjectError
_2424:
	mov	ebx,dword [ebx+12]
	push	_103
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2427
	push	_99
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2427
	jmp	_2426
_2427:
	push	ebp
	push	_2439
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2430
	call	_brl_blitz_NullObjectError
_2430:
	mov	ebx,dword [ebx+56]
	cmp	ebx,_bbNullObject
	jne	_2432
	call	_brl_blitz_NullObjectError
_2432:
	mov	eax,dword [ebx+20]
	cmp	dword [ebp-16],eax
	jne	_2433
	push	ebp
	push	_2435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],2
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2433:
	push	ebp
	push	_2438
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2426:
	call	dword [_bbOnDebugLeaveScope]
_2421:
	push	_2441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2443
	call	_brl_blitz_NullObjectError
_2443:
	push	_35
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2446
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2445
	call	_brl_blitz_NullObjectError
_2445:
	push	_36
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2446:
	cmp	eax,0
	jne	_2450
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2449
	call	_brl_blitz_NullObjectError
_2449:
	push	_37
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2450:
	cmp	eax,0
	jne	_2454
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2453
	call	_brl_blitz_NullObjectError
_2453:
	push	_72
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2454:
	cmp	eax,0
	je	_2456
	push	ebp
	push	_2494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2459
	call	_brl_blitz_NullObjectError
_2459:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_2462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2464
	call	_brl_blitz_NullObjectError
_2464:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2466
	call	_brl_blitz_NullObjectError
_2466:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2471
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2468
	call	_brl_blitz_NullObjectError
_2468:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2470
	call	_brl_blitz_NullObjectError
_2470:
	push	_75
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2471:
	cmp	eax,0
	je	_2473
	push	ebp
	push	_2488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2476
	call	_brl_blitz_NullObjectError
_2476:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2478
	call	_brl_blitz_NullObjectError
_2478:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	eax,eax
	mov	byte [ebp-4],al
	push	_2480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,0
	jne	_2481
	push	ebp
	push	_2483
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2481:
	push	_2484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,2
	jne	_2485
	push	ebp
	push	_2487
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],2
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2485:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2490
_2473:
	push	ebp
	push	_2492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2490:
	push	_2493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2456:
	push	ebp
	push	_2552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2498
	call	_brl_blitz_NullObjectError
_2498:
	push	_38
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2499
	push	ebp
	push	_2548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2502
	call	_brl_blitz_NullObjectError
_2502:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2504
	call	_brl_blitz_NullObjectError
_2504:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_2505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2507
	call	_brl_blitz_NullObjectError
_2507:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2509
	call	_brl_blitz_NullObjectError
_2509:
	push	_35
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2514
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2511
	call	_brl_blitz_NullObjectError
_2511:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2513
	call	_brl_blitz_NullObjectError
_2513:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2514:
	cmp	eax,0
	jne	_2520
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2519
	call	_brl_blitz_NullObjectError
_2519:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2520:
	cmp	eax,0
	jne	_2526
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2523
	call	_brl_blitz_NullObjectError
_2523:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2525
	call	_brl_blitz_NullObjectError
_2525:
	push	_72
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2526:
	cmp	eax,0
	je	_2528
	push	ebp
	push	_2543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2531
	call	_brl_blitz_NullObjectError
_2531:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2533
	call	_brl_blitz_NullObjectError
_2533:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	eax,eax
	mov	byte [ebp-8],al
	push	_2535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_2536
	push	ebp
	push	_2538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2536:
	push	_2539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,2
	jne	_2540
	push	ebp
	push	_2542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],2
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2540:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2544
_2528:
	push	ebp
	push	_2546
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2544:
	push	_2547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_2499:
	push	ebp
	push	_2551
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_413
_413:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-24]
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RegisterFunction:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2557
	call	_brl_blitz_NullObjectError
_2557:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_2559
	call	_brl_blitz_NullObjectError
_2559:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_417
_417:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2563
	call	_brl_blitz_NullObjectError
_2563:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	mov	ebx,eax
	jmp	_421
_421:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Execute:
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
	push	_2576
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_179
	call	_brl_filesystem_WriteFile
	add	esp,4
	push	eax
	push	dword [ebp-8]
	call	_brl_stream_SaveString
	add	esp,8
	push	_2566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbGCCollect
	push	_2567
	call	dword [_bbOnDebugEnterStm]
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
	call	_brl_filesystem_WriteFile
	add	esp,4
	mov	dword [ebp-12],eax
	push	_2569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_182
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
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
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_184
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_185
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_186
	push	dword [ebp-12]
	call	_brl_stream_WriteLine
	add	esp,8
	push	_2574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_filesystem_CloseFile
	add	esp,4
	push	_2575
	call	dword [_bbOnDebugEnterStm]
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
	mov	ebx,0
	jmp	_425
_425:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_2595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_2580
_191:
	push	ebp
	push	_2592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2582
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
	push	_2584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_2585
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_2585:
	cmp	eax,0
	je	_2587
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_2587:
	cmp	eax,0
	je	_2589
	push	ebp
	push	_2591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_428
_2589:
	call	dword [_bbOnDebugLeaveScope]
_189:
	add	dword [ebp-12],1
_2580:
	cmp	dword [ebp-12],ebx
	jle	_191
_190:
	push	_2594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_428
_428:
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
	push	_2616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	eax,dword [ebp-8]
	mov	ebx,dword [eax+8]
	jmp	_2600
_194:
	push	ebp
	push	_2614
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2602
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
	push	_2604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,48
	setl	al
	movzx	eax,al
	cmp	eax,0
	jne	_2605
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,57
	setg	al
	movzx	eax,al
_2605:
	cmp	eax,0
	je	_2607
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,46
	setne	al
	movzx	eax,al
_2607:
	cmp	eax,0
	je	_2609
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,45
	setne	al
	movzx	eax,al
_2609:
	cmp	eax,0
	je	_2611
	push	ebp
	push	_2613
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_431
_2611:
	call	dword [_bbOnDebugLeaveScope]
_192:
	add	dword [ebp-12],1
_2600:
	cmp	dword [ebp-12],ebx
	jle	_194
_193:
	push	_2615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-16],1
	jmp	_431
_431:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-16]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_455:
	dd	0
_244:
	db	"TCompiler",0
_206:
	db	"Compiler",0
_207:
	db	":TCompiler",0
	align	4
_454:
	dd	1
	dd	_244
	dd	2
	dd	_206
	dd	_207
	dd	-4
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
_434:
	db	"C:/Users/Coolo/Documents/Programmieren/ConsoleBASIC/TCompiler.bmx",0
	align	4
_433:
	dd	_434
	dd	267
	dd	1
	align	4
_438:
	dd	_434
	dd	268
	dd	1
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	80,82,73,78,84
	align	4
_443:
	dd	_434
	dd	269
	dd	1
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	83,99,114,105,112,116,46,116,120,116
	align	4
_446:
	dd	_434
	dd	270
	dd	1
	align	4
_449:
	dd	_434
	dd	271
	dd	1
_459:
	db	"Self",0
	align	4
_458:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_247
	dd	-4
	dd	0
	align	4
_457:
	dd	3
	dd	0
	dd	0
_466:
	db	":TCGenerator",0
	align	4
_465:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_466
	dd	-4
	dd	0
	align	4
_464:
	dd	3
	dd	0
	dd	0
	align	4
_581:
	dd	1
	dd	_200
	dd	2
	dd	_459
	dd	_466
	dd	-4
	dd	2
	dd	_206
	dd	_207
	dd	-8
	dd	0
_475:
	db	"C:/Users/Coolo/Documents/Programmieren/ConsoleBASIC/TGenerator.bmx",0
	align	4
_474:
	dd	_475
	dd	11
	dd	3
	align	4
_483:
	dd	_475
	dd	12
	dd	3
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	35
	dw	35,105,110,99,108,117,100,101,32,60,115,116,100,105,111,46
	dw	104,62,32,10,32,105,110,116,32,109,97,105,110,40,41,32
	dw	10,123,32
	align	4
_491:
	dd	_475
	dd	13
	dd	3
	align	4
_503:
	dd	_475
	dd	14
	dd	3
	align	4
_536:
	dd	3
	dd	0
	dd	0
	align	4
_506:
	dd	_475
	dd	15
	dd	4
	align	4
_509:
	dd	_475
	dd	16
	dd	4
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_523:
	dd	3
	dd	0
	dd	0
	align	4
_515:
	dd	_475
	dd	16
	dd	27
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_524:
	dd	_475
	dd	17
	dd	4
	align	4
_537:
	dd	_475
	dd	19
	dd	3
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
	align	4
_545:
	dd	_475
	dd	20
	dd	3
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
_555:
	dd	_475
	dd	21
	dd	3
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
_565:
	dd	_475
	dd	22
	dd	3
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
_575:
	dd	_475
	dd	23
	dd	3
	align	4
_578:
	dd	_475
	dd	24
	dd	3
	align	4
_1088:
	dd	1
	dd	_210
	dd	2
	dd	_459
	dd	_466
	dd	-4
	dd	0
	align	4
_582:
	dd	_475
	dd	27
	dd	3
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
_611:
	dd	3
	dd	0
	dd	0
	align	4
_598:
	dd	_475
	dd	29
	dd	5
	align	4
_610:
	dd	_475
	dd	30
	dd	5
	align	4
_625:
	dd	3
	dd	0
	dd	0
	align	4
_612:
	dd	_475
	dd	32
	dd	5
	align	4
_624:
	dd	_475
	dd	33
	dd	5
	align	4
_847:
	dd	3
	dd	0
	dd	0
	align	4
_626:
	dd	_475
	dd	36
	dd	5
	align	4
_640:
	dd	_475
	dd	37
	dd	5
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
_816:
	db	"OldCode",0
_817:
	db	"Symbol",0
	align	4
_815:
	dd	3
	dd	0
	dd	2
	dd	_816
	dd	_205
	dd	-8
	dd	2
	dd	_817
	dd	_205
	dd	-12
	dd	2
	dd	_222
	dd	_222
	dd	-16
	dd	0
	align	4
_652:
	dd	_475
	dd	38
	dd	6
	align	4
_656:
	dd	_475
	dd	39
	dd	6
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_658:
	dd	_475
	dd	40
	dd	6
	align	4
_660:
	dd	_475
	dd	41
	dd	6
	align	4
_744:
	dd	3
	dd	0
	dd	2
	dd	_215
	dd	_205
	dd	-20
	dd	0
	align	4
_663:
	dd	_475
	dd	42
	dd	7
	align	4
_664:
	dd	_475
	dd	43
	dd	7
	align	4
_678:
	dd	_475
	dd	44
	dd	7
	align	4
_680:
	dd	_475
	dd	45
	dd	7
	align	4
_689:
	dd	3
	dd	0
	dd	0
	align	4
_686:
	dd	_475
	dd	46
	dd	8
	align	4
_690:
	dd	_475
	dd	48
	dd	7
	align	4
_713:
	dd	3
	dd	0
	dd	0
	align	4
_702:
	dd	_475
	dd	48
	dd	50
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_712:
	dd	_475
	dd	48
	dd	66
	align	4
_714:
	dd	_475
	dd	49
	dd	7
	align	4
_722:
	dd	_475
	dd	50
	dd	7
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
_733:
	dd	3
	dd	0
	dd	0
	align	4
_732:
	dd	_475
	dd	66
	dd	9
	align	4
_735:
	dd	3
	dd	0
	dd	0
	align	4
_734:
	dd	_475
	dd	52
	dd	9
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,100
	align	4
_737:
	dd	3
	dd	0
	dd	0
	align	4
_736:
	dd	_475
	dd	54
	dd	9
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,115
	align	4
_739:
	dd	3
	dd	0
	dd	0
	align	4
_738:
	dd	_475
	dd	56
	dd	9
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	37,102
	align	4
_740:
	dd	3
	dd	0
	dd	0
	align	4
_741:
	dd	3
	dd	0
	dd	0
	align	4
_742:
	dd	3
	dd	0
	dd	0
	align	4
_743:
	dd	3
	dd	0
	dd	0
	align	4
_745:
	dd	_475
	dd	69
	dd	6
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_747:
	dd	_475
	dd	70
	dd	7
	align	4
_762:
	dd	_475
	dd	73
	dd	6
	align	4
_776:
	dd	_475
	dd	74
	dd	6
	align	4
_788:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_793:
	dd	_475
	dd	75
	dd	6
	align	4
_801:
	dd	_475
	dd	76
	dd	6
	align	4
_845:
	dd	3
	dd	0
	dd	0
	align	4
_819:
	dd	_475
	dd	78
	dd	6
	align	4
_833:
	dd	_475
	dd	79
	dd	6
	align	4
_846:
	dd	_475
	dd	82
	dd	5
	align	4
_860:
	dd	3
	dd	0
	dd	0
	align	4
_848:
	dd	_475
	dd	84
	dd	5
	align	4
_996:
	dd	3
	dd	0
	dd	0
	align	4
_861:
	dd	_475
	dd	86
	dd	5
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
_928:
	dd	3
	dd	0
	dd	0
	align	4
_871:
	dd	_475
	dd	88
	dd	7
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,102,32
	align	4
_879:
	dd	_475
	dd	89
	dd	7
	align	4
_893:
	dd	_475
	dd	90
	dd	7
	align	4
_919:
	dd	3
	dd	0
	dd	0
	align	4
_902:
	dd	_475
	dd	91
	dd	8
	align	4
_905:
	dd	_475
	dd	92
	dd	8
	align	4
_920:
	dd	_475
	dd	94
	dd	7
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,123
	align	4
_986:
	dd	3
	dd	0
	dd	0
	align	4
_929:
	dd	_475
	dd	96
	dd	7
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	119,104,105,108,101,32
	align	4
_937:
	dd	_475
	dd	97
	dd	7
	align	4
_951:
	dd	_475
	dd	98
	dd	7
	align	4
_977:
	dd	3
	dd	0
	dd	0
	align	4
_960:
	dd	_475
	dd	99
	dd	8
	align	4
_963:
	dd	_475
	dd	100
	dd	8
	align	4
_978:
	dd	_475
	dd	102
	dd	7
	align	4
_995:
	dd	3
	dd	0
	dd	0
	align	4
_987:
	dd	_475
	dd	104
	dd	7
	align	4
_1036:
	dd	3
	dd	0
	dd	0
	align	4
_997:
	dd	_475
	dd	107
	dd	5
_1034:
	db	"Func",0
_1035:
	db	":TFunction",0
	align	4
_1033:
	dd	3
	dd	0
	dd	2
	dd	_1034
	dd	_1035
	dd	-24
	dd	0
	align	4
_1011:
	dd	_475
	dd	108
	dd	6
	align	4
_1032:
	dd	3
	dd	0
	dd	0
	align	4
_1019:
	dd	_475
	dd	109
	dd	7
	align	4
_1029:
	dd	_475
	dd	110
	dd	7
	align	4
_1056:
	dd	3
	dd	0
	dd	0
	align	4
_1037:
	dd	_475
	dd	114
	dd	5
	align	4
_1049:
	dd	_475
	dd	115
	dd	5
	align	4
_1074:
	dd	3
	dd	0
	dd	0
	align	4
_1057:
	dd	_475
	dd	117
	dd	5
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_1069:
	dd	_475
	dd	118
	dd	5
	align	4
_1087:
	dd	3
	dd	0
	dd	0
	align	4
_1075:
	dd	_475
	dd	120
	dd	5
	align	4
_1095:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1094:
	dd	3
	dd	0
	dd	0
	align	4
_1144:
	dd	1
	dd	_223
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	2
	dd	_206
	dd	_207
	dd	-8
	dd	2
	dd	_214
	dd	_205
	dd	-12
	dd	0
_1108:
	db	"C:/Users/Coolo/Documents/Programmieren/ConsoleBASIC/TToken.bmx",0
	align	4
_1107:
	dd	_1108
	dd	11
	dd	3
	align	4
_1113:
	dd	3
	dd	0
	dd	0
	align	4
_1112:
	dd	_1108
	dd	11
	dd	41
	align	4
_1114:
	dd	_1108
	dd	12
	dd	3
	align	4
_1122:
	dd	_1108
	dd	13
	dd	3
	align	4
_1132:
	dd	3
	dd	0
	dd	0
	align	4
_1124:
	dd	_1108
	dd	13
	dd	22
	align	4
_1142:
	dd	3
	dd	0
	dd	0
	align	4
_1134:
	dd	_1108
	dd	13
	dd	49
	align	4
_1143:
	dd	_1108
	dd	14
	dd	3
	align	4
_1511:
	dd	1
	dd	_225
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1145:
	dd	_1108
	dd	18
	dd	3
	align	4
_1157:
	dd	3
	dd	0
	dd	0
	align	4
_1149:
	dd	_1108
	dd	19
	dd	4
	align	4
_1510:
	dd	3
	dd	0
	dd	0
	align	4
_1159:
	dd	_1108
	dd	20
	dd	3
	align	4
_1175:
	dd	3
	dd	0
	dd	0
	align	4
_1167:
	dd	_1108
	dd	21
	dd	4
	align	4
_1509:
	dd	3
	dd	0
	dd	0
	align	4
_1177:
	dd	_1108
	dd	22
	dd	3
_1249:
	db	"Token1",0
_1250:
	db	"Token2",0
	align	4
_1248:
	dd	3
	dd	0
	dd	2
	dd	_1249
	dd	_209
	dd	-8
	dd	2
	dd	_1250
	dd	_209
	dd	-12
	dd	0
	align	4
_1181:
	dd	_1108
	dd	23
	dd	4
	align	4
_1189:
	dd	_1108
	dd	24
	dd	4
	align	4
_1195:
	dd	_1108
	dd	25
	dd	4
	align	4
_1201:
	dd	_1108
	dd	26
	dd	4
	align	4
_1247:
	dd	3
	dd	0
	dd	0
	align	4
_1205:
	dd	_1108
	dd	27
	dd	5
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
_1246:
	db	"Value",0
	align	4
_1245:
	dd	3
	dd	0
	dd	2
	dd	_1246
	dd	_205
	dd	-16
	dd	0
	align	4
_1213:
	dd	_1108
	dd	28
	dd	6
	align	4
_1219:
	dd	_1108
	dd	29
	dd	6
	align	4
_1224:
	dd	_1108
	dd	30
	dd	6
	align	4
_1229:
	dd	_1108
	dd	31
	dd	6
	align	4
_1237:
	dd	_1108
	dd	32
	dd	6
	align	4
_1508:
	dd	3
	dd	0
	dd	0
	align	4
_1252:
	dd	_1108
	dd	36
	dd	4
_1277:
	db	"DataType",0
	align	4
_1276:
	dd	3
	dd	0
	dd	2
	dd	_1277
	dd	_205
	dd	-20
	dd	0
	align	4
_1262:
	dd	_1108
	dd	37
	dd	5
	align	4
_1275:
	dd	3
	dd	0
	dd	0
	align	4
_1266:
	dd	_1108
	dd	38
	dd	6
	align	4
_1274:
	dd	_1108
	dd	39
	dd	6
	align	4
_1278:
	dd	_1108
	dd	42
	dd	4
	align	4
_1302:
	dd	3
	dd	0
	dd	2
	dd	_254
	dd	_205
	dd	-24
	dd	0
	align	4
_1288:
	dd	_1108
	dd	43
	dd	5
	align	4
_1301:
	dd	3
	dd	0
	dd	0
	align	4
_1292:
	dd	_1108
	dd	44
	dd	6
	align	4
_1300:
	dd	_1108
	dd	45
	dd	6
	align	4
_1303:
	dd	_1108
	dd	48
	dd	4
	align	4
_1443:
	dd	3
	dd	0
	dd	2
	dd	_253
	dd	_205
	dd	-28
	dd	0
	align	4
_1313:
	dd	_1108
	dd	49
	dd	5
	align	4
_1442:
	dd	3
	dd	0
	dd	0
	align	4
_1317:
	dd	_1108
	dd	50
	dd	6
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
_1397:
	dd	3
	dd	0
	dd	0
	align	4
_1322:
	dd	_1108
	dd	52
	dd	8
	align	4
_1396:
	dd	3
	dd	0
	dd	0
	align	4
_1330:
	dd	_1108
	dd	53
	dd	9
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_1359:
	dd	3
	dd	0
	dd	0
	align	4
_1342:
	dd	_1108
	dd	55
	dd	11
	align	4
_1351:
	dd	_1108
	dd	56
	dd	11
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_1377:
	dd	3
	dd	0
	dd	0
	align	4
_1360:
	dd	_1108
	dd	58
	dd	11
	align	4
_1369:
	dd	_1108
	dd	59
	dd	11
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_1395:
	dd	3
	dd	0
	dd	0
	align	4
_1378:
	dd	_1108
	dd	61
	dd	11
	align	4
_1387:
	dd	_1108
	dd	62
	dd	11
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_1432:
	dd	3
	dd	0
	dd	0
	align	4
_1398:
	dd	_1108
	dd	66
	dd	8
	align	4
_1431:
	dd	3
	dd	0
	dd	0
	align	4
_1414:
	dd	_1108
	dd	67
	dd	9
	align	4
_1423:
	dd	_1108
	dd	68
	dd	9
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_1433:
	dd	_1108
	dd	71
	dd	6
	align	4
_1441:
	dd	_1108
	dd	72
	dd	6
	align	4
_1444:
	dd	_1108
	dd	75
	dd	4
	align	4
_1468:
	dd	3
	dd	0
	dd	2
	dd	_251
	dd	_205
	dd	-32
	dd	0
	align	4
_1454:
	dd	_1108
	dd	76
	dd	5
	align	4
_1467:
	dd	3
	dd	0
	dd	0
	align	4
_1458:
	dd	_1108
	dd	77
	dd	6
	align	4
_1466:
	dd	_1108
	dd	78
	dd	6
	align	4
_1469:
	dd	_1108
	dd	81
	dd	4
	align	4
_1499:
	dd	3
	dd	0
	dd	2
	dd	_1034
	dd	_1035
	dd	-36
	dd	0
	align	4
_1483:
	dd	_1108
	dd	82
	dd	5
	align	4
_1498:
	dd	3
	dd	0
	dd	0
	align	4
_1489:
	dd	_1108
	dd	83
	dd	6
	align	4
_1497:
	dd	_1108
	dd	84
	dd	6
	align	4
_1500:
	dd	_1108
	dd	87
	dd	4
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	85,78,75,78,79,87,78
	align	4
_1812:
	dd	1
	dd	_226
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1512:
	dd	_1108
	dd	91
	dd	3
	align	4
_1517:
	dd	3
	dd	0
	dd	0
	align	4
_1516:
	dd	_1108
	dd	92
	dd	4
	align	4
_1518:
	dd	_1108
	dd	94
	dd	3
	align	4
_1522:
	dd	_1108
	dd	95
	dd	3
	align	4
_1645:
	dd	3
	dd	0
	dd	0
	align	4
_1533:
	dd	_1108
	dd	97
	dd	5
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
_1586:
	db	"StepIn",0
	align	4
_1585:
	dd	3
	dd	0
	dd	2
	dd	_1586
	dd	_222
	dd	-8
	dd	2
	dd	_208
	dd	_209
	dd	-12
	dd	0
	align	4
_1540:
	dd	_1108
	dd	99
	dd	7
	align	4
_1542:
	dd	_1108
	dd	100
	dd	7
	align	4
_1548:
	dd	_1108
	dd	101
	dd	7
	align	4
_1572:
	dd	3
	dd	0
	dd	0
	align	4
_1549:
	dd	_1108
	dd	102
	dd	8
	align	4
_1554:
	dd	3
	dd	0
	dd	0
	align	4
_1553:
	dd	_1108
	dd	103
	dd	9
	align	4
_1566:
	dd	3
	dd	0
	dd	0
	align	4
_1556:
	dd	_1108
	dd	104
	dd	8
	align	4
_1565:
	dd	3
	dd	0
	dd	0
	align	4
_1560:
	dd	_1108
	dd	105
	dd	9
	align	4
_1561:
	dd	_1108
	dd	106
	dd	9
	align	4
_1564:
	dd	3
	dd	0
	dd	0
	align	4
_1563:
	dd	_1108
	dd	106
	dd	26
	align	4
_1567:
	dd	_1108
	dd	108
	dd	8
	align	4
_1573:
	dd	_1108
	dd	110
	dd	7
	align	4
_1581:
	dd	_1108
	dd	111
	dd	7
	align	4
_1584:
	dd	3
	dd	0
	dd	0
	align	4
_1583:
	dd	_1108
	dd	112
	dd	8
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,40,39
	align	4
_1644:
	dd	3
	dd	0
	dd	2
	dd	_1586
	dd	_222
	dd	-16
	dd	2
	dd	_208
	dd	_209
	dd	-20
	dd	0
	align	4
_1587:
	dd	_1108
	dd	115
	dd	7
	align	4
_1589:
	dd	_1108
	dd	116
	dd	7
	align	4
_1595:
	dd	_1108
	dd	117
	dd	7
	align	4
_1619:
	dd	3
	dd	0
	dd	0
	align	4
_1596:
	dd	_1108
	dd	118
	dd	8
	align	4
_1605:
	dd	3
	dd	0
	dd	0
	align	4
_1600:
	dd	_1108
	dd	119
	dd	9
	align	4
_1601:
	dd	_1108
	dd	120
	dd	9
	align	4
_1604:
	dd	3
	dd	0
	dd	0
	align	4
_1603:
	dd	_1108
	dd	120
	dd	26
	align	4
_1613:
	dd	3
	dd	0
	dd	0
	align	4
_1607:
	dd	_1108
	dd	121
	dd	8
	align	4
_1612:
	dd	3
	dd	0
	dd	0
	align	4
_1611:
	dd	_1108
	dd	122
	dd	9
	align	4
_1614:
	dd	_1108
	dd	124
	dd	8
	align	4
_1620:
	dd	_1108
	dd	126
	dd	7
	align	4
_1628:
	dd	_1108
	dd	127
	dd	7
	align	4
_1631:
	dd	3
	dd	0
	dd	0
	align	4
_1630:
	dd	_1108
	dd	128
	dd	8
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,41,39
	align	4
_1632:
	dd	_1108
	dd	130
	dd	7
	align	4
_1643:
	dd	3
	dd	0
	dd	0
	align	4
_1642:
	dd	_1108
	dd	131
	dd	8
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110,46
	align	4
_1646:
	dd	3
	dd	0
	dd	0
	align	4
_1685:
	dd	3
	dd	0
	dd	0
	align	4
_1647:
	dd	_1108
	dd	137
	dd	5
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	70,79,82
	align	4
_1672:
	dd	3
	dd	0
	dd	0
	align	4
_1655:
	dd	_1108
	dd	139
	dd	7
	align	4
_1666:
	dd	3
	dd	0
	dd	0
	align	4
_1665:
	dd	_1108
	dd	140
	dd	8
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110
	align	4
_1667:
	dd	_1108
	dd	142
	dd	7
	align	4
_1678:
	dd	3
	dd	0
	dd	0
	align	4
_1673:
	dd	_1108
	dd	144
	dd	7
	align	4
_1684:
	dd	3
	dd	0
	dd	0
	align	4
_1679:
	dd	_1108
	dd	146
	dd	7
	align	4
_1754:
	dd	3
	dd	0
	dd	2
	dd	_208
	dd	_209
	dd	-24
	dd	0
	align	4
_1686:
	dd	_1108
	dd	149
	dd	5
	align	4
_1692:
	dd	_1108
	dd	150
	dd	5
	align	4
_1695:
	dd	_1108
	dd	151
	dd	5
_1729:
	db	"variable",0
	align	4
_1728:
	dd	3
	dd	0
	dd	2
	dd	_1729
	dd	_220
	dd	-28
	dd	0
	align	4
_1699:
	dd	_1108
	dd	152
	dd	6
	align	4
_1707:
	dd	_1108
	dd	153
	dd	6
	align	4
_1715:
	dd	_1108
	dd	154
	dd	6
	align	4
_1720:
	dd	_1108
	dd	155
	dd	6
	align	4
_1730:
	dd	_1108
	dd	157
	dd	5
	align	4
_1753:
	dd	3
	dd	0
	dd	0
	align	4
_1731:
	dd	_1108
	dd	158
	dd	6
	align	4
_1747:
	dd	3
	dd	0
	dd	0
	align	4
_1739:
	dd	_1108
	dd	159
	dd	7
	align	4
_1744:
	dd	_1108
	dd	160
	dd	7
	align	4
_1748:
	dd	_1108
	dd	162
	dd	6
	align	4
_1767:
	dd	3
	dd	0
	dd	0
	align	4
_1755:
	dd	_1108
	dd	165
	dd	5
	align	4
_1766:
	dd	3
	dd	0
	dd	0
	align	4
_1765:
	dd	_1108
	dd	166
	dd	6
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	69,120,112,101,99,116,105,110,103,32,69,120,112,114,101,115
	dw	115,105,111,110,33
	align	4
_1810:
	dd	3
	dd	0
	dd	0
	align	4
_1768:
	dd	_1108
	dd	169
	dd	5
	align	4
_1806:
	dd	3
	dd	0
	dd	2
	dd	_219
	dd	_220
	dd	-32
	dd	0
	align	4
_1782:
	dd	_1108
	dd	170
	dd	6
	align	4
_1805:
	dd	3
	dd	0
	dd	0
	align	4
_1788:
	dd	_1108
	dd	171
	dd	7
	align	4
_1796:
	dd	_1108
	dd	172
	dd	7
	align	4
_1804:
	dd	_1108
	dd	173
	dd	7
	align	4
_1807:
	dd	_1108
	dd	176
	dd	5
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
_1811:
	dd	_1108
	dd	178
	dd	3
	align	4
_1816:
	dd	1
	dd	_227
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1813:
	dd	_1108
	dd	182
	dd	3
	align	4
_1820:
	dd	1
	dd	_228
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1817:
	dd	_1108
	dd	185
	dd	3
	align	4
_1824:
	dd	1
	dd	_229
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1821:
	dd	_1108
	dd	188
	dd	3
	align	4
_1836:
	dd	1
	dd	_231
	dd	2
	dd	_459
	dd	_209
	dd	-4
	dd	0
	align	4
_1825:
	dd	_1108
	dd	191
	dd	3
	align	4
_1830:
	dd	3
	dd	0
	dd	0
	align	4
_1829:
	dd	_1108
	dd	191
	dd	20
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	84,111,107,101,110,58,32,78,69,87,76,73,78,69
	align	4
_1831:
	dd	_1108
	dd	192
	dd	3
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
_1840:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_220
	dd	-4
	dd	0
	align	4
_1839:
	dd	3
	dd	0
	dd	0
	align	4
_1864:
	dd	1
	dd	_223
	dd	2
	dd	_459
	dd	_220
	dd	-4
	dd	2
	dd	_234
	dd	_205
	dd	-8
	dd	2
	dd	_1277
	dd	_205
	dd	-12
	dd	0
_1847:
	db	"C:/Users/Coolo/Documents/Programmieren/ConsoleBASIC/TVariable.bmx",0
	align	4
_1846:
	dd	_1847
	dd	5
	dd	3
	align	4
_1855:
	dd	_1847
	dd	6
	dd	3
	align	4
_1863:
	dd	_1847
	dd	8
	dd	3
	align	4
_1868:
	dd	1
	dd	_237
	dd	2
	dd	_459
	dd	_220
	dd	-4
	dd	0
	align	4
_1865:
	dd	_1847
	dd	11
	dd	3
	align	4
_1872:
	dd	1
	dd	_238
	dd	2
	dd	_459
	dd	_220
	dd	-4
	dd	0
	align	4
_1869:
	dd	_1847
	dd	14
	dd	3
	align	4
_1876:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_1035
	dd	-4
	dd	0
	align	4
_1875:
	dd	3
	dd	0
	dd	0
	align	4
_1892:
	dd	1
	dd	_223
	dd	2
	dd	_459
	dd	_1035
	dd	-4
	dd	2
	dd	_234
	dd	_205
	dd	-8
	dd	0
_1883:
	db	"C:/Users/Coolo/Documents/Programmieren/ConsoleBASIC/TFunction.bmx",0
	align	4
_1882:
	dd	_1883
	dd	6
	dd	3
	align	4
_1891:
	dd	_1883
	dd	8
	dd	3
	align	4
_1894:
	dd	1
	dd	_231
	dd	2
	dd	_459
	dd	_1035
	dd	-4
	dd	0
	align	4
_1893:
	dd	_1883
	dd	11
	dd	3
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,114,105,110,116,102
	align	4
_1898:
	dd	1
	dd	_242
	dd	2
	dd	_459
	dd	_1035
	dd	-4
	dd	0
	align	4
_1895:
	dd	_1883
	dd	14
	dd	3
	align	4
_1970:
	dd	1
	dd	_197
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	0
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
_1966:
	db	":brl.linkedlist.TList",0
	align	4
_1969:
	dd	3
	dd	0
	dd	0
	align	4
_2030:
	dd	1
	dd	_223
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	0
	align	4
_1994:
	dd	_434
	dd	22
	dd	3
	align	4
_2002:
	dd	_434
	dd	23
	dd	3
	align	4
_2010:
	dd	_434
	dd	24
	dd	3
	align	4
_2018:
	dd	_434
	dd	25
	dd	3
	align	4
_2029:
	dd	_434
	dd	26
	dd	3
_2129:
	db	"Stream",0
_2130:
	db	":brl.stream.TStream",0
_2131:
	db	"Lines",0
	align	4
_2128:
	dd	1
	dd	_262
	dd	2
	dd	_459
	dd	_207
	dd	-8
	dd	2
	dd	_2129
	dd	_2130
	dd	-12
	dd	2
	dd	_214
	dd	_205
	dd	-16
	dd	2
	dd	_2131
	dd	_252
	dd	-20
	dd	0
	align	4
_2031:
	dd	_434
	dd	32
	dd	3
	align	4
_2034:
	dd	3
	dd	0
	dd	0
	align	4
_2033:
	dd	_434
	dd	32
	dd	17
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	70,105,108,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116
	align	4
_2035:
	dd	_434
	dd	33
	dd	3
	align	4
_2037:
	dd	_434
	dd	34
	dd	3
	align	4
_2038:
	dd	_434
	dd	35
	dd	3
	align	4
_2040:
	dd	_434
	dd	36
	dd	3
_2111:
	db	"CurrentWord",0
	align	4
_2110:
	dd	3
	dd	0
	dd	2
	dd	_221
	dd	_205
	dd	-24
	dd	2
	dd	_2111
	dd	_205
	dd	-28
	dd	0
	align	4
_2046:
	dd	_434
	dd	37
	dd	4
	align	4
_2048:
	dd	_434
	dd	38
	dd	4
_2100:
	db	"I",0
_2101:
	db	"Char",0
_2102:
	db	"Find",0
	align	4
_2099:
	dd	3
	dd	0
	dd	2
	dd	_2100
	dd	_222
	dd	-32
	dd	2
	dd	_2101
	dd	_205
	dd	-36
	dd	2
	dd	_2102
	dd	_218
	dd	-4
	dd	0
	align	4
_2052:
	dd	_434
	dd	39
	dd	5
	align	4
_2054:
	dd	_434
	dd	40
	dd	5
	align	4
_2056:
	dd	_434
	dd	41
	dd	5
_2073:
	db	"Start",0
	align	4
_2072:
	dd	3
	dd	0
	dd	2
	dd	_2073
	dd	_222
	dd	-40
	dd	0
	align	4
_2058:
	dd	_434
	dd	42
	dd	6
	align	4
_2060:
	dd	_434
	dd	43
	dd	6
	align	4
_2070:
	dd	3
	dd	0
	dd	0
	align	4
_2063:
	dd	_434
	dd	44
	dd	7
	align	4
_2069:
	dd	3
	dd	0
	dd	0
	align	4
_2065:
	dd	_434
	dd	45
	dd	8
	align	4
_2068:
	dd	_434
	dd	46
	dd	8
	align	4
_2071:
	dd	_434
	dd	49
	dd	6
	align	4
_2074:
	dd	_434
	dd	51
	dd	5
	align	4
_2094:
	dd	3
	dd	0
	dd	2
	dd	_251
	dd	_205
	dd	-44
	dd	0
	align	4
_2082:
	dd	_434
	dd	52
	dd	6
	align	4
_2093:
	dd	3
	dd	0
	dd	0
	align	4
_2084:
	dd	_434
	dd	53
	dd	7
	align	4
_2087:
	dd	_434
	dd	54
	dd	7
	align	4
_2090:
	dd	_434
	dd	55
	dd	7
	align	4
_2091:
	dd	_434
	dd	56
	dd	7
	align	4
_2092:
	dd	_434
	dd	57
	dd	7
	align	4
_2095:
	dd	_434
	dd	60
	dd	5
	align	4
_2098:
	dd	3
	dd	0
	dd	0
	align	4
_2097:
	dd	_434
	dd	61
	dd	6
	align	4
_2103:
	dd	_434
	dd	64
	dd	4
	align	4
_2106:
	dd	_434
	dd	65
	dd	4
	align	4
_2109:
	dd	_434
	dd	66
	dd	4
	align	4
_2112:
	dd	_434
	dd	68
	dd	3
	align	4
_2127:
	dd	3
	dd	0
	dd	2
	dd	_208
	dd	_209
	dd	-48
	dd	0
	align	4
_2124:
	dd	_434
	dd	69
	dd	4
_2149:
	db	"Obj",0
	align	4
_2148:
	dd	1
	dd	_264
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_214
	dd	_205
	dd	-8
	dd	2
	dd	_2149
	dd	_209
	dd	-12
	dd	0
	align	4
_2132:
	dd	_434
	dd	76
	dd	3
	align	4
_2136:
	dd	_434
	dd	77
	dd	3
	align	4
_2139:
	dd	3
	dd	0
	dd	0
	align	4
_2138:
	dd	_434
	dd	77
	dd	14
	align	4
_2140:
	dd	_434
	dd	78
	dd	3
	align	4
_2145:
	dd	_434
	dd	79
	dd	3
_2194:
	db	":brl.linkedlist.TLink",0
	align	4
_2193:
	dd	1
	dd	_266
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_208
	dd	_209
	dd	-8
	dd	2
	dd	_2149
	dd	_2194
	dd	-12
	dd	0
	align	4
_2150:
	dd	_434
	dd	85
	dd	3
	align	4
_2153:
	dd	3
	dd	0
	dd	0
	align	4
_2152:
	dd	_434
	dd	85
	dd	17
	align	4
_2154:
	dd	_434
	dd	86
	dd	3
	align	4
_2160:
	dd	_434
	dd	87
	dd	3
	align	4
_2189:
	dd	3
	dd	0
	dd	0
	align	4
_2162:
	dd	_434
	dd	88
	dd	4
	align	4
_2165:
	dd	_434
	dd	89
	dd	4
_2185:
	db	"Val",0
	align	4
_2184:
	dd	3
	dd	0
	dd	2
	dd	_2185
	dd	_209
	dd	-16
	dd	0
	align	4
_2167:
	dd	_434
	dd	90
	dd	5
	align	4
_2171:
	dd	_434
	dd	91
	dd	5
	align	4
_2180:
	dd	3
	dd	0
	dd	0
	align	4
_2173:
	dd	_434
	dd	92
	dd	6
	align	4
_2178:
	dd	3
	dd	0
	dd	0
	align	4
_2177:
	dd	_434
	dd	92
	dd	32
	align	4
_2179:
	dd	_434
	dd	93
	dd	6
	align	4
_2183:
	dd	3
	dd	0
	dd	0
	align	4
_2182:
	dd	_434
	dd	95
	dd	6
	align	4
_2188:
	dd	3
	dd	0
	dd	0
	align	4
_2187:
	dd	_434
	dd	98
	dd	5
	align	4
_2192:
	dd	3
	dd	0
	dd	0
	align	4
_2191:
	dd	_434
	dd	101
	dd	4
	align	4
_2231:
	dd	1
	dd	_268
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_208
	dd	_209
	dd	-8
	dd	2
	dd	_2149
	dd	_2194
	dd	-12
	dd	0
	align	4
_2195:
	dd	_434
	dd	108
	dd	3
	align	4
_2198:
	dd	3
	dd	0
	dd	0
	align	4
_2197:
	dd	_434
	dd	108
	dd	17
	align	4
_2199:
	dd	_434
	dd	109
	dd	3
	align	4
_2205:
	dd	_434
	dd	110
	dd	3
	align	4
_2227:
	dd	3
	dd	0
	dd	0
	align	4
_2207:
	dd	_434
	dd	111
	dd	4
	align	4
_2210:
	dd	_434
	dd	112
	dd	4
	align	4
_2223:
	dd	3
	dd	0
	dd	2
	dd	_2185
	dd	_209
	dd	-16
	dd	0
	align	4
_2212:
	dd	_434
	dd	113
	dd	5
	align	4
_2216:
	dd	_434
	dd	114
	dd	5
	align	4
_2219:
	dd	3
	dd	0
	dd	0
	align	4
_2218:
	dd	_434
	dd	115
	dd	6
	align	4
_2222:
	dd	3
	dd	0
	dd	0
	align	4
_2221:
	dd	_434
	dd	117
	dd	6
	align	4
_2226:
	dd	3
	dd	0
	dd	0
	align	4
_2225:
	dd	_434
	dd	120
	dd	5
	align	4
_2230:
	dd	3
	dd	0
	dd	0
	align	4
_2229:
	dd	_434
	dd	123
	dd	4
	align	4
_2237:
	dd	1
	dd	_269
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_208
	dd	_209
	dd	-8
	dd	0
	align	4
_2232:
	dd	_434
	dd	130
	dd	3
	align	4
_2313:
	dd	1
	dd	_226
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_221
	dd	_222
	dd	-8
	dd	0
	align	4
_2238:
	dd	_434
	dd	136
	dd	3
	align	4
_2240:
	dd	_434
	dd	137
	dd	3
	align	4
_2262:
	dd	3
	dd	0
	dd	2
	dd	_208
	dd	_209
	dd	-12
	dd	0
	align	4
_2252:
	dd	_434
	dd	138
	dd	4
	align	4
_2257:
	dd	3
	dd	0
	dd	0
	align	4
_2256:
	dd	_434
	dd	138
	dd	32
	align	4
_2258:
	dd	_434
	dd	139
	dd	4
	align	4
_2263:
	dd	_434
	dd	141
	dd	3
	align	4
_2264:
	dd	_434
	dd	142
	dd	3
	align	4
_2306:
	dd	3
	dd	0
	dd	2
	dd	_208
	dd	_209
	dd	-16
	dd	0
	align	4
_2276:
	dd	_434
	dd	143
	dd	4
_2305:
	db	"Output",0
	align	4
_2304:
	dd	3
	dd	0
	dd	2
	dd	_2305
	dd	_205
	dd	-20
	dd	0
	align	4
_2284:
	dd	_434
	dd	144
	dd	5
	align	4
_2285:
	dd	_434
	dd	145
	dd	5
	align	4
_2288:
	dd	_434
	dd	146
	dd	5
	align	4
_2296:
	dd	_434
	dd	147
	dd	5
	align	4
_2300:
	dd	_434
	dd	148
	dd	5
	align	4
_2303:
	dd	3
	dd	0
	dd	0
	align	4
_2302:
	dd	_434
	dd	149
	dd	6
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
_2307:
	dd	_434
	dd	153
	dd	3
	align	4
_2312:
	dd	3
	dd	0
	dd	0
	align	4
_2311:
	dd	_434
	dd	154
	dd	4
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
_2324:
	dd	1
	dd	_271
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_219
	dd	_220
	dd	-8
	dd	0
	align	4
_2314:
	dd	_434
	dd	161
	dd	3
_2354:
	db	"List",0
	align	4
_2353:
	dd	1
	dd	_273
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_2354
	dd	_249
	dd	-8
	dd	0
	align	4
_2325:
	dd	_434
	dd	167
	dd	3
	align	4
_2327:
	dd	_434
	dd	168
	dd	3
	align	4
_2351:
	dd	3
	dd	0
	dd	2
	dd	_222
	dd	_222
	dd	-12
	dd	0
	align	4
_2332:
	dd	_434
	dd	169
	dd	4
	align	4
_2350:
	dd	3
	dd	0
	dd	2
	dd	_219
	dd	_220
	dd	-16
	dd	0
	align	4
_2347:
	dd	_434
	dd	170
	dd	5
	align	4
_2352:
	dd	_434
	dd	174
	dd	3
	align	4
_2382:
	dd	1
	dd	_275
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	0
	align	4
_2355:
	dd	_434
	dd	180
	dd	3
	align	4
_2359:
	dd	_434
	dd	181
	dd	3
	align	4
_2381:
	dd	3
	dd	0
	dd	0
	align	4
_2368:
	dd	_434
	dd	182
	dd	4
	align	4
_2396:
	dd	1
	dd	_276
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	0
	align	4
_2383:
	dd	_434
	dd	189
	dd	3
	align	4
_2391:
	dd	3
	dd	0
	dd	0
	align	4
_2387:
	dd	_434
	dd	190
	dd	4
	align	4
_2394:
	dd	3
	dd	0
	dd	0
	align	4
_2393:
	dd	_434
	dd	192
	dd	4
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,101,120,112,101,99,116,101,100,32,69,78,68
	align	4
_2395:
	dd	_434
	dd	194
	dd	3
_2554:
	db	"CurrentToken",0
	align	4
_2553:
	dd	1
	dd	_277
	dd	2
	dd	_459
	dd	_207
	dd	-12
	dd	2
	dd	_2554
	dd	_209
	dd	-16
	dd	2
	dd	_2305
	dd	_205
	dd	-20
	dd	0
	align	4
_2397:
	dd	_434
	dd	201
	dd	3
	align	4
_2409:
	dd	3
	dd	0
	dd	0
	align	4
_2401:
	dd	_434
	dd	201
	dd	22
	align	4
_2410:
	dd	_434
	dd	202
	dd	3
	align	4
_2414:
	dd	_434
	dd	203
	dd	3
	align	4
_2417:
	dd	3
	dd	0
	dd	0
	align	4
_2416:
	dd	_434
	dd	204
	dd	4
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	83,121,110,116,97,120,32,101,114,114,111,114,58,32
	align	4
_2418:
	dd	_434
	dd	206
	dd	3
	align	4
_2440:
	dd	3
	dd	0
	dd	0
	align	4
_2422:
	dd	_434
	dd	207
	dd	4
	align	4
_2439:
	dd	3
	dd	0
	dd	0
	align	4
_2428:
	dd	_434
	dd	209
	dd	6
	align	4
_2435:
	dd	3
	dd	0
	dd	0
	align	4
_2434:
	dd	_434
	dd	210
	dd	7
	align	4
_2438:
	dd	3
	dd	0
	dd	0
	align	4
_2437:
	dd	_434
	dd	212
	dd	7
	align	4
_2441:
	dd	_434
	dd	216
	dd	3
	align	4
_2494:
	dd	3
	dd	0
	dd	0
	align	4
_2457:
	dd	_434
	dd	217
	dd	4
	align	4
_2462:
	dd	_434
	dd	218
	dd	4
_2489:
	db	"Val1",0
	align	4
_2488:
	dd	3
	dd	0
	dd	2
	dd	_2489
	dd	_218
	dd	-4
	dd	0
	align	4
_2474:
	dd	_434
	dd	219
	dd	5
	align	4
_2480:
	dd	_434
	dd	220
	dd	5
	align	4
_2483:
	dd	3
	dd	0
	dd	0
	align	4
_2482:
	dd	_434
	dd	220
	dd	15
	align	4
_2484:
	dd	_434
	dd	221
	dd	5
	align	4
_2487:
	dd	3
	dd	0
	dd	0
	align	4
_2486:
	dd	_434
	dd	221
	dd	15
	align	4
_2492:
	dd	3
	dd	0
	dd	0
	align	4
_2491:
	dd	_434
	dd	223
	dd	5
	align	4
_2493:
	dd	_434
	dd	225
	dd	4
	align	4
_2552:
	dd	3
	dd	0
	dd	0
	align	4
_2496:
	dd	_434
	dd	226
	dd	3
	align	4
_2548:
	dd	3
	dd	0
	dd	0
	align	4
_2500:
	dd	_434
	dd	227
	dd	4
	align	4
_2505:
	dd	_434
	dd	228
	dd	4
	align	4
_2543:
	dd	3
	dd	0
	dd	2
	dd	_2489
	dd	_218
	dd	-8
	dd	0
	align	4
_2529:
	dd	_434
	dd	229
	dd	5
	align	4
_2535:
	dd	_434
	dd	230
	dd	5
	align	4
_2538:
	dd	3
	dd	0
	dd	0
	align	4
_2537:
	dd	_434
	dd	230
	dd	15
	align	4
_2539:
	dd	_434
	dd	231
	dd	5
	align	4
_2542:
	dd	3
	dd	0
	dd	0
	align	4
_2541:
	dd	_434
	dd	231
	dd	15
	align	4
_2546:
	dd	3
	dd	0
	dd	0
	align	4
_2545:
	dd	_434
	dd	233
	dd	5
	align	4
_2547:
	dd	_434
	dd	235
	dd	4
	align	4
_2551:
	dd	3
	dd	0
	dd	0
	align	4
_2550:
	dd	_434
	dd	237
	dd	4
	align	4
_2560:
	dd	1
	dd	_279
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_1034
	dd	_1035
	dd	-8
	dd	0
	align	4
_2555:
	dd	_434
	dd	241
	dd	3
	align	4
_2564:
	dd	1
	dd	_200
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_246
	dd	_247
	dd	-8
	dd	0
	align	4
_2561:
	dd	_434
	dd	247
	dd	3
_2577:
	db	"BatFile",0
	align	4
_2576:
	dd	1
	dd	_282
	dd	2
	dd	_459
	dd	_207
	dd	-4
	dd	2
	dd	_204
	dd	_205
	dd	-8
	dd	2
	dd	_2577
	dd	_2130
	dd	-12
	dd	0
	align	4
_2565:
	dd	_434
	dd	253
	dd	3
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,97,105,110,46,99
	align	4
_2566:
	dd	_434
	dd	254
	dd	3
	align	4
_2567:
	dd	_434
	dd	255
	dd	3
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
_2569:
	dd	_434
	dd	256
	dd	3
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	64,101,99,104,111,32,111,110
	align	4
_2570:
	dd	_434
	dd	257
	dd	3
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	99,100,32
	align	4
_2571:
	dd	_434
	dd	258
	dd	3
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	103,99,99,32,45,111,32,109,97,105,110,46,101,120,101,32
	dw	109,97,105,110,46,99
	align	4
_2572:
	dd	_434
	dd	259
	dd	3
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	109,97,105,110,46,101,120,101
	align	4
_2573:
	dd	_434
	dd	260
	dd	3
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,117,115,101
	align	4
_2574:
	dd	_434
	dd	261
	dd	3
	align	4
_2575:
	dd	_434
	dd	263
	dd	3
_2596:
	db	"IsInt",0
_2597:
	db	"text",0
	align	4
_2595:
	dd	1
	dd	_2596
	dd	2
	dd	_2597
	dd	_205
	dd	-8
	dd	0
	align	4
_2578:
	dd	_434
	dd	276
	dd	2
_2593:
	db	"a",0
	align	4
_2592:
	dd	3
	dd	0
	dd	2
	dd	_222
	dd	_222
	dd	-12
	dd	2
	dd	_2593
	dd	_218
	dd	-4
	dd	0
	align	4
_2582:
	dd	_434
	dd	277
	dd	3
	align	4
_2584:
	dd	_434
	dd	278
	dd	3
	align	4
_2591:
	dd	3
	dd	0
	dd	0
	align	4
_2590:
	dd	_434
	dd	279
	dd	4
	align	4
_2594:
	dd	_434
	dd	282
	dd	2
_2617:
	db	"IsFLoat",0
	align	4
_2616:
	dd	1
	dd	_2617
	dd	2
	dd	_2597
	dd	_205
	dd	-8
	dd	0
	align	4
_2598:
	dd	_434
	dd	285
	dd	2
	align	4
_2614:
	dd	3
	dd	0
	dd	2
	dd	_222
	dd	_222
	dd	-12
	dd	2
	dd	_2593
	dd	_218
	dd	-4
	dd	0
	align	4
_2602:
	dd	_434
	dd	286
	dd	3
	align	4
_2604:
	dd	_434
	dd	287
	dd	3
	align	4
_2613:
	dd	3
	dd	0
	dd	0
	align	4
_2612:
	dd	_434
	dd	288
	dd	4
	align	4
_2615:
	dd	_434
	dd	291
	dd	2
