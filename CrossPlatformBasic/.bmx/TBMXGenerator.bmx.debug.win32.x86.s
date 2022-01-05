	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	_bah_libxml_TxmlAttribute
	extrn	_bah_libxml_TxmlDoc
	extrn	_bah_libxml_TxmlNode
	extrn	_bbArrayNew1D
	extrn	_bbArraySlice
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringContains
	extrn	_bbStringFind
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringReplace
	extrn	_bbStringSlice
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_bbStringToUpper
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_stream_SaveString
	public	___bb_crossplatformbasic_tbmxgenerator
	public	__bb_TBMXGenerator_AllDatatype
	public	__bb_TBMXGenerator_ArrayDef
	public	__bb_TBMXGenerator_Block
	public	__bb_TBMXGenerator_Delete
	public	__bb_TBMXGenerator_Generate
	public	__bb_TBMXGenerator_GetNextMathString
	public	__bb_TBMXGenerator_GetRealDatatype
	public	__bb_TBMXGenerator_GetTabs
	public	__bb_TBMXGenerator_IsType
	public	__bb_TBMXGenerator_New
	public	__bb_TBMXGenerator_VarDef
	public	_bb_TBMXGenerator
	section	"code" code
___bb_crossplatformbasic_tbmxgenerator:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_366],0
	je	_367
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_367:
	mov	dword [_366],1
	push	ebp
	push	_365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_363]
	and	eax,1
	cmp	eax,0
	jne	_364
	push	8
	push	_286
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_25
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_26
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_27
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_28
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_29
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_30
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_31
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_27
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	inc	dword [eax+4]
	mov	dword [__bb_TBMXGenerator_AllDatatype],eax
	or	dword [_363],1
_364:
	push	_bb_TBMXGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_308
_308:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TBMXGenerator
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	push	ebp
	push	_370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_311
_311:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_314:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_376
	push	eax
	call	_bbGCFree
	add	esp,4
_376:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_378
	push	eax
	call	_bbGCFree
	add	esp,4
_378:
	mov	eax,0
	jmp	_374
_374:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,108
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbEmptyString
	mov	dword [ebp-36],_bbEmptyString
	mov	dword [ebp-40],0
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbEmptyString
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbEmptyString
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],_bbEmptyString
	mov	dword [ebp-72],_bbEmptyString
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_874
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_383
	call	_brl_blitz_NullObjectError
_383:
	mov	ebx,_32
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_388
	push	eax
	call	_bbGCFree
	add	esp,4
_388:
	mov	dword [esi+8],ebx
	push	_389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_391
	call	_brl_blitz_NullObjectError
_391:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_396
	call	_brl_blitz_NullObjectError
_396:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-104],eax
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_399
	call	_brl_blitz_NullObjectError
_399:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-108],eax
	jmp	_33
_35:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_33
	mov	eax,ebp
	push	eax
	push	_861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_407
	call	_brl_blitz_NullObjectError
_407:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_410
	push	_43
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_411
	push	_69
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_412
	push	_66
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_413
	jmp	_409
_410:
	mov	eax,ebp
	push	eax
	push	_466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_417
	mov	eax,ebp
	push	eax
	push	_465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_421
	call	_brl_blitz_NullObjectError
_421:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-92],eax
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_424
	call	_brl_blitz_NullObjectError
_424:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_37
_39:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_429
	call	_brl_blitz_NullObjectError
_429:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_37
	mov	eax,ebp
	push	eax
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_432
	call	_brl_blitz_NullObjectError
_432:
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_433
	mov	eax,ebp
	push	eax
	push	_444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_436
	call	_brl_blitz_NullObjectError
_436:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	push	_41
	push	1
	push	dword [ebp-28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_443
	push	eax
	call	_bbGCFree
	add	esp,4
_443:
	mov	dword [ebx+8],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_445
_433:
	mov	eax,ebp
	push	eax
	push	_461
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	push	_42
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_449
	mov	eax,ebp
	push	eax
	push	_460
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_452
	call	_brl_blitz_NullObjectError
_452:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_455
	call	_brl_blitz_NullObjectError
_455:
	push	_41
	push	1
	push	dword [ebp-28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_459
	push	eax
	call	_bbGCFree
	add	esp,4
_459:
	mov	dword [ebx+8],esi
	call	dword [_bbOnDebugLeaveScope]
_449:
	call	dword [_bbOnDebugLeaveScope]
_445:
	call	dword [_bbOnDebugLeaveScope]
_37:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_417:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_411:
	mov	eax,ebp
	push	eax
	push	_710
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_472
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_471
	call	_brl_blitz_NullObjectError
_471:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_472:
	cmp	eax,0
	je	_476
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_475
	call	_brl_blitz_NullObjectError
_475:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	sete	al
	movzx	eax,al
_476:
	cmp	eax,0
	jne	_490
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_479
	call	_brl_blitz_NullObjectError
_479:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_484
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_481
	call	_brl_blitz_NullObjectError
_481:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	push	_46
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_484:
	cmp	eax,0
	je	_488
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_487
	call	_brl_blitz_NullObjectError
_487:
	push	_4
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_488:
_490:
	cmp	eax,0
	je	_492
	mov	eax,ebp
	push	eax
	push	_706
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_495
	call	_brl_blitz_NullObjectError
_495:
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_499
	call	_brl_blitz_NullObjectError
_499:
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_503
	call	_brl_blitz_NullObjectError
_503:
	push	0
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-36],eax
	push	_504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_506
	call	_brl_blitz_NullObjectError
_506:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_509
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_508
	call	_brl_blitz_NullObjectError
_508:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	setg	al
	movzx	eax,al
_509:
	cmp	eax,0
	je	_511
	mov	eax,ebp
	push	eax
	push	_513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	push	dword [ebp-36]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
_511:
	push	_514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_516
	call	_brl_blitz_NullObjectError
_516:
	push	_44
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-40],eax
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	push	_52
	push	dword [ebp-36]
	push	_51
	push	dword [ebp-32]
	push	_50
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	jnz	_525
	push	eax
	call	_bbGCFree
	add	esp,4
_525:
	mov	dword [ebx+8],esi
	push	_526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbEmptyString
	push	_528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_530
	call	_brl_blitz_NullObjectError
_530:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_531
	mov	eax,ebp
	push	eax
	push	_580
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_535
	call	_brl_blitz_NullObjectError
_535:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-96],eax
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_538
	call	_brl_blitz_NullObjectError
_538:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_53
_55:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_543
	call	_brl_blitz_NullObjectError
_543:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_53
	mov	eax,ebp
	push	eax
	push	_579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_546
	call	_brl_blitz_NullObjectError
_546:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_547
	mov	eax,ebp
	push	eax
	push	_577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_550
	call	_brl_blitz_NullObjectError
_550:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_552
	call	_brl_blitz_NullObjectError
_552:
	push	0
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-52],eax
	push	_554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_556
	call	_brl_blitz_NullObjectError
_556:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_559
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_558
	call	_brl_blitz_NullObjectError
_558:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	setg	al
	movzx	eax,al
_559:
	cmp	eax,0
	je	_561
	mov	eax,ebp
	push	eax
	push	_563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	push	dword [ebp-52]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-52],eax
	call	dword [_bbOnDebugLeaveScope]
_561:
	push	_564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_566
	call	_brl_blitz_NullObjectError
_566:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	push	_59
	push	dword [ebp-52]
	push	_58
	push	_46
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_57
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_573
	push	eax
	call	_bbGCFree
	add	esp,4
_573:
	mov	dword [ebx+8],esi
	push	_574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_576
	call	_brl_blitz_NullObjectError
_576:
	push	_61
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_60
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-44]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-44],eax
	call	dword [_bbOnDebugLeaveScope]
_547:
	call	dword [_bbOnDebugLeaveScope]
_53:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_541
	call	_brl_blitz_NullObjectError
_541:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_55
_54:
	call	dword [_bbOnDebugLeaveScope]
_531:
	push	_581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_583
	call	_brl_blitz_NullObjectError
_583:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_586
	call	_brl_blitz_NullObjectError
_586:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_588
	call	_brl_blitz_NullObjectError
_588:
	mov	eax,dword [ebx+8]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [esi+8]
	call	_bbStringSlice
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+8]
	dec	dword [eax+4]
	jnz	_592
	push	eax
	call	_bbGCFree
	add	esp,4
_592:
	mov	dword [edi+8],ebx
	push	_593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-40],0
	je	_594
	mov	eax,ebp
	push	eax
	push	_657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_600
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_599
	call	_brl_blitz_NullObjectError
_599:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	sete	al
	movzx	eax,al
_600:
	cmp	eax,0
	je	_602
	mov	eax,ebp
	push	eax
	push	_656
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	push	_62
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_610
	push	eax
	call	_bbGCFree
	add	esp,4
_610:
	mov	dword [esi+8],ebx
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	add	dword [ebx+12],1
	push	_615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_63
_65:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_626
	call	_brl_blitz_NullObjectError
_626:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	je	_63
	mov	eax,ebp
	push	eax
	push	_643
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_629
	call	_brl_blitz_NullObjectError
_629:
	push	_66
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_630
	mov	eax,ebp
	push	eax
	push	_642
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_633
	call	_brl_blitz_NullObjectError
_633:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_636
	call	_brl_blitz_NullObjectError
_636:
	push	dword [ebp-56]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_640
	push	eax
	call	_bbGCFree
	add	esp,4
_640:
	mov	dword [ebx+8],esi
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_64
_630:
	call	dword [_bbOnDebugLeaveScope]
_63:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_624
	call	_brl_blitz_NullObjectError
_624:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_65
_64:
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	sub	dword [ebx+12],1
	push	_648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_650
	call	_brl_blitz_NullObjectError
_650:
	push	_67
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_655
	push	eax
	call	_bbGCFree
	add	esp,4
_655:
	mov	dword [esi+8],ebx
	call	dword [_bbOnDebugLeaveScope]
_602:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_658
_594:
	mov	eax,ebp
	push	eax
	push	_704
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	push	dword [ebp-32]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_664
	push	_4
	push	dword [ebp-60]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_664:
	cmp	eax,0
	je	_666
	mov	eax,ebp
	push	eax
	push	_703
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	push	_62
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_674
	push	eax
	call	_bbGCFree
	add	esp,4
_674:
	mov	dword [esi+8],ebx
	push	_675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
	add	dword [ebx+12],1
	push	_679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_681
	call	_brl_blitz_NullObjectError
_681:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_684
	call	_brl_blitz_NullObjectError
_684:
	push	_62
	mov	eax,dword [ebp-44]
	push	dword [eax+8]
	push	1
	push	dword [ebp-44]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_68
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_688
	push	eax
	call	_bbGCFree
	add	esp,4
_688:
	mov	dword [esi+8],ebx
	push	_689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	sub	dword [ebx+12],1
	push	_693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_695
	call	_brl_blitz_NullObjectError
_695:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_698
	call	_brl_blitz_NullObjectError
_698:
	push	_67
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
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
	jnz	_702
	push	eax
	call	_bbGCFree
	add	esp,4
_702:
	mov	dword [ebx+8],esi
	call	dword [_bbOnDebugLeaveScope]
_666:
	call	dword [_bbOnDebugLeaveScope]
_658:
	call	dword [_bbOnDebugLeaveScope]
_492:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_412:
	mov	eax,ebp
	push	eax
	push	_849
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-64]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_716
	mov	eax,ebp
	push	eax
	push	_846
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TBMXGenerator_AllDatatype]
	push	_286
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_721
	push	eax
	call	_bbGCFree
	add	esp,4
_721:
	mov	dword [__bb_TBMXGenerator_AllDatatype],ebx
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	cmp	ebx,dword [eax+20]
	jb	_724
	call	_brl_blitz_ArrayBoundsError
_724:
	mov	esi,dword [__bb_TBMXGenerator_AllDatatype]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-64]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_729
	push	eax
	call	_bbGCFree
	add	esp,4
_729:
	mov	dword [esi+24],ebx
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbEmptyString
	push	_732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-64]
	push	_71
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	add	dword [ebx+12],1
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbEmptyString
	push	_739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_741
	call	_brl_blitz_NullObjectError
_741:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_742
	mov	eax,ebp
	push	eax
	push	_784
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-100],eax
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-88],eax
	jmp	_73
_75:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_754
	call	_brl_blitz_NullObjectError
_754:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-76],eax
	cmp	dword [ebp-76],_bbNullObject
	je	_73
	mov	eax,ebp
	push	eax
	push	_783
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_757
	call	_brl_blitz_NullObjectError
_757:
	push	_76
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_758
	mov	eax,ebp
	push	eax
	push	_781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_761
	call	_brl_blitz_NullObjectError
_761:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_47
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-80],eax
	push	_767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_769
	call	_brl_blitz_NullObjectError
_769:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	_41
	push	dword [ebp-80]
	push	_58
	push	_46
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_77
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-84],eax
	cmp	dword [ebp-84],_bbNullObject
	jne	_774
	call	_brl_blitz_NullObjectError
_774:
	mov	edi,dword [ebp-76]
	cmp	edi,_bbNullObject
	jne	_776
	call	_brl_blitz_NullObjectError
_776:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_778
	call	_brl_blitz_NullObjectError
_778:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_780
	call	_brl_blitz_NullObjectError
_780:
	push	_41
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_79
	push	_46
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_78
	push	dword [ebp-84]
	mov	eax,dword [ebp-84]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	call	dword [_bbOnDebugLeaveScope]
_758:
	call	dword [_bbOnDebugLeaveScope]
_73:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_75
_74:
	call	dword [_bbOnDebugLeaveScope]
_742:
	push	_785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_787
	call	_brl_blitz_NullObjectError
_787:
	sub	dword [ebx+12],1
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	push	_80
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_794
	call	_brl_blitz_NullObjectError
_794:
	push	dword [ebp-68]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_799
	push	eax
	call	_bbGCFree
	add	esp,4
_799:
	mov	dword [esi+8],ebx
	push	_800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_802
	call	_brl_blitz_NullObjectError
_802:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_805
	call	_brl_blitz_NullObjectError
_805:
	push	_83
	push	dword [ebp-64]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_82
	push	dword [ebp-64]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_51
	push	dword [ebp-64]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_81
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_809
	push	eax
	call	_bbGCFree
	add	esp,4
_809:
	mov	dword [esi+8],ebx
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	add	dword [ebx+12],1
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	push	dword [ebp-72]
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_821
	push	eax
	call	_bbGCFree
	add	esp,4
_821:
	mov	dword [esi+8],ebx
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_827
	call	_brl_blitz_NullObjectError
_827:
	push	_84
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
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
	jnz	_831
	push	eax
	call	_bbGCFree
	add	esp,4
_831:
	mov	dword [ebx+8],esi
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_834
	call	_brl_blitz_NullObjectError
_834:
	sub	dword [ebx+12],1
	push	_836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_838
	call	_brl_blitz_NullObjectError
_838:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_841
	call	_brl_blitz_NullObjectError
_841:
	push	_67
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
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
	jnz	_845
	push	eax
	call	_bbGCFree
	add	esp,4
_845:
	mov	dword [ebx+8],esi
	call	dword [_bbOnDebugLeaveScope]
_716:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_413:
	mov	eax,ebp
	push	eax
	push	_860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	push	dword [ebp-24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_859
	push	eax
	call	_bbGCFree
	add	esp,4
_859:
	mov	dword [ebx+8],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_409:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_402
	call	_brl_blitz_NullObjectError
_402:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	push	_41
	push	dword [esi+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_870
	push	eax
	call	_bbGCFree
	add	esp,4
_870:
	mov	dword [esi+8],ebx
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	push	dword [ebp-12]
	push	dword [ebx+8]
	call	_brl_stream_SaveString
	add	esp,8
	mov	ebx,0
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
__bb_TBMXGenerator_GetTabs:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
	push	ebp
	push	_891
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_885
	call	_brl_blitz_NullObjectError
_885:
	mov	ebx,dword [ebx+12]
	jmp	_886
_87:
	push	ebp
	push	_889
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_88
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_85:
	add	dword [ebp-12],1
_886:
	cmp	dword [ebp-12],ebx
	jle	_87
_86:
	push	_890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_322
_322:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_Block:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_896
	call	_brl_blitz_NullObjectError
_896:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_897
	mov	eax,ebp
	push	eax
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_901
	call	_brl_blitz_NullObjectError
_901:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_904
	call	_brl_blitz_NullObjectError
_904:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_89
_91:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_89
	mov	eax,ebp
	push	eax
	push	_931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	push	_92
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
	je	_915
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_914
	call	_brl_blitz_NullObjectError
_914:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_915:
	cmp	eax,0
	je	_917
	mov	eax,ebp
	push	eax
	push	_930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	dword [eax+8],0
	jle	_925
	mov	eax,ebp
	push	eax
	push	_929
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	push	_41
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_925:
	call	dword [_bbOnDebugLeaveScope]
_917:
	call	dword [_bbOnDebugLeaveScope]
_89:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_907
	call	_brl_blitz_NullObjectError
_907:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	call	dword [_bbOnDebugLeaveScope]
_897:
	push	_933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_326
_326:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_GetNextMathString:
	push	ebp
	mov	ebp,esp
	sub	esp,256
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbEmptyString
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbEmptyString
	mov	dword [ebp-120],_bbEmptyString
	mov	dword [ebp-124],_bbEmptyString
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbEmptyString
	mov	dword [ebp-140],_bbEmptyString
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	byte [ebp-8],0
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-152],_bbEmptyString
	mov	dword [ebp-160],0
	mov	dword [ebp-164],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2060
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyString
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	jne	_938
	mov	eax,ebp
	push	eax
	push	_940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_330
_938:
	push	_941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_943
	call	_brl_blitz_NullObjectError
_943:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_93
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_946
	push	_94
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_946
	push	_101
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_947
	push	_106
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_948
	push	_111
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_949
	push	_116
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_950
	push	_121
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_951
	push	_126
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_952
	push	_130
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_953
	push	_135
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_954
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_955
	push	_145
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_956
	push	_150
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_957
	push	_155
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_958
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_959
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_960
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_961
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_962
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_962
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_963
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_964
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_965
	push	_174
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_966
	push	_181
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_967
	push	_183
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_968
	push	_189
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_969
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_970
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_971
	push	_206
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_972
	push	_211
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_973
	push	_213
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_974
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_975
	push	_217
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_976
	push	_232
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_977
	push	_234
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_978
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_979
	push	_47
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_980
	push	_242
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_981
	push	_247
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_982
	jmp	_945
_946:
	mov	eax,ebp
	push	eax
	push	_1015
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_986
	call	_brl_blitz_NullObjectError
_986:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-240],eax
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_989
	call	_brl_blitz_NullObjectError
_989:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_95
_97:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_95
	mov	eax,ebp
	push	eax
	push	_1014
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1000
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1001
	jmp	_999
_1000:
	mov	eax,ebp
	push	eax
	push	_1007
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1004
	call	_brl_blitz_NullObjectError
_1004:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	push	_99
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_999
_1001:
	mov	eax,ebp
	push	eax
	push	_1013
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1010
	call	_brl_blitz_NullObjectError
_1010:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1012
	call	_brl_blitz_NullObjectError
_1012:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_999
_999:
	call	dword [_bbOnDebugLeaveScope]
_95:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_947:
	mov	eax,ebp
	push	eax
	push	_1048
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1019
	call	_brl_blitz_NullObjectError
_1019:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-236],eax
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_102
_104:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_102
	mov	eax,ebp
	push	eax
	push	_1047
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1030
	call	_brl_blitz_NullObjectError
_1030:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1033
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1034
	jmp	_1032
_1033:
	mov	eax,ebp
	push	eax
	push	_1040
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1037
	call	_brl_blitz_NullObjectError
_1037:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1039
	call	_brl_blitz_NullObjectError
_1039:
	push	_105
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1032
_1034:
	mov	eax,ebp
	push	eax
	push	_1046
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1045
	call	_brl_blitz_NullObjectError
_1045:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1032
_1032:
	call	dword [_bbOnDebugLeaveScope]
_102:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_104
_103:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_948:
	mov	eax,ebp
	push	eax
	push	_1081
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-232],eax
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_1055
	call	_brl_blitz_NullObjectError
_1055:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_107
_109:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1060
	call	_brl_blitz_NullObjectError
_1060:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_107
	mov	eax,ebp
	push	eax
	push	_1080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1063
	call	_brl_blitz_NullObjectError
_1063:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1066
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1067
	jmp	_1065
_1066:
	mov	eax,ebp
	push	eax
	push	_1073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1070
	call	_brl_blitz_NullObjectError
_1070:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1072
	call	_brl_blitz_NullObjectError
_1072:
	push	_110
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1065
_1067:
	mov	eax,ebp
	push	eax
	push	_1079
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1076
	call	_brl_blitz_NullObjectError
_1076:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1078
	call	_brl_blitz_NullObjectError
_1078:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1065
_1065:
	call	dword [_bbOnDebugLeaveScope]
_107:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1058
	call	_brl_blitz_NullObjectError
_1058:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_109
_108:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_949:
	mov	eax,ebp
	push	eax
	push	_1114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1085
	call	_brl_blitz_NullObjectError
_1085:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-228],eax
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_1088
	call	_brl_blitz_NullObjectError
_1088:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_112
_114:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1093
	call	_brl_blitz_NullObjectError
_1093:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_112
	mov	eax,ebp
	push	eax
	push	_1113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1096
	call	_brl_blitz_NullObjectError
_1096:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1099
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1100
	jmp	_1098
_1099:
	mov	eax,ebp
	push	eax
	push	_1106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1103
	call	_brl_blitz_NullObjectError
_1103:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1105
	call	_brl_blitz_NullObjectError
_1105:
	push	_115
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1098
_1100:
	mov	eax,ebp
	push	eax
	push	_1112
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1111
	call	_brl_blitz_NullObjectError
_1111:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1098
_1098:
	call	dword [_bbOnDebugLeaveScope]
_112:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1091
	call	_brl_blitz_NullObjectError
_1091:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_114
_113:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_950:
	mov	eax,ebp
	push	eax
	push	_1147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1118
	call	_brl_blitz_NullObjectError
_1118:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-224],eax
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_1121
	call	_brl_blitz_NullObjectError
_1121:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_117
_119:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1126
	call	_brl_blitz_NullObjectError
_1126:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_117
	mov	eax,ebp
	push	eax
	push	_1146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1132
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1133
	jmp	_1131
_1132:
	mov	eax,ebp
	push	eax
	push	_1139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1136
	call	_brl_blitz_NullObjectError
_1136:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	push	_120
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1131
_1133:
	mov	eax,ebp
	push	eax
	push	_1145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1142
	call	_brl_blitz_NullObjectError
_1142:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_1144
	call	_brl_blitz_NullObjectError
_1144:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1131
_1131:
	call	dword [_bbOnDebugLeaveScope]
_117:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1124
	call	_brl_blitz_NullObjectError
_1124:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_951:
	mov	eax,ebp
	push	eax
	push	_1180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1151
	call	_brl_blitz_NullObjectError
_1151:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-220],eax
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_122
_124:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1159
	call	_brl_blitz_NullObjectError
_1159:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	je	_122
	mov	eax,ebp
	push	eax
	push	_1179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1165
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1166
	jmp	_1164
_1165:
	mov	eax,ebp
	push	eax
	push	_1172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1169
	call	_brl_blitz_NullObjectError
_1169:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	push	_125
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1164
_1166:
	mov	eax,ebp
	push	eax
	push	_1178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1164
_1164:
	call	dword [_bbOnDebugLeaveScope]
_122:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1157
	call	_brl_blitz_NullObjectError
_1157:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_124
_123:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_952:
	mov	eax,ebp
	push	eax
	push	_1213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1184
	call	_brl_blitz_NullObjectError
_1184:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-216],eax
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_1187
	call	_brl_blitz_NullObjectError
_1187:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_127
_129:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1192
	call	_brl_blitz_NullObjectError
_1192:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_127
	mov	eax,ebp
	push	eax
	push	_1212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1195
	call	_brl_blitz_NullObjectError
_1195:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1198
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1199
	jmp	_1197
_1198:
	mov	eax,ebp
	push	eax
	push	_1205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1202
	call	_brl_blitz_NullObjectError
_1202:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1204
	call	_brl_blitz_NullObjectError
_1204:
	push	_5
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1197
_1199:
	mov	eax,ebp
	push	eax
	push	_1211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1208
	call	_brl_blitz_NullObjectError
_1208:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1210
	call	_brl_blitz_NullObjectError
_1210:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1197
_1197:
	call	dword [_bbOnDebugLeaveScope]
_127:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1190
	call	_brl_blitz_NullObjectError
_1190:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_129
_128:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_953:
	mov	eax,ebp
	push	eax
	push	_1246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-212],eax
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_1220
	call	_brl_blitz_NullObjectError
_1220:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_131
_133:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1225
	call	_brl_blitz_NullObjectError
_1225:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	je	_131
	mov	eax,ebp
	push	eax
	push	_1245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1231
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1232
	jmp	_1230
_1231:
	mov	eax,ebp
	push	eax
	push	_1238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1235
	call	_brl_blitz_NullObjectError
_1235:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1237
	call	_brl_blitz_NullObjectError
_1237:
	push	_134
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1230
_1232:
	mov	eax,ebp
	push	eax
	push	_1244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1241
	call	_brl_blitz_NullObjectError
_1241:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1243
	call	_brl_blitz_NullObjectError
_1243:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1230
_1230:
	call	dword [_bbOnDebugLeaveScope]
_131:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1223
	call	_brl_blitz_NullObjectError
_1223:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_133
_132:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_954:
	mov	eax,ebp
	push	eax
	push	_1279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1250
	call	_brl_blitz_NullObjectError
_1250:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-208],eax
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_136
_138:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1258
	call	_brl_blitz_NullObjectError
_1258:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	je	_136
	mov	eax,ebp
	push	eax
	push	_1278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1261
	call	_brl_blitz_NullObjectError
_1261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1264
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1265
	jmp	_1263
_1264:
	mov	eax,ebp
	push	eax
	push	_1271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1268
	call	_brl_blitz_NullObjectError
_1268:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1270
	call	_brl_blitz_NullObjectError
_1270:
	push	_139
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1263
_1265:
	mov	eax,ebp
	push	eax
	push	_1277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1274
	call	_brl_blitz_NullObjectError
_1274:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1276
	call	_brl_blitz_NullObjectError
_1276:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1263
_1263:
	call	dword [_bbOnDebugLeaveScope]
_136:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1256
	call	_brl_blitz_NullObjectError
_1256:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_138
_137:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_955:
	mov	eax,ebp
	push	eax
	push	_1312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-204],eax
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_1286
	call	_brl_blitz_NullObjectError
_1286:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_141
_143:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1291
	call	_brl_blitz_NullObjectError
_1291:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	je	_141
	mov	eax,ebp
	push	eax
	push	_1311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1294
	call	_brl_blitz_NullObjectError
_1294:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1297
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1298
	jmp	_1296
_1297:
	mov	eax,ebp
	push	eax
	push	_1304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1301
	call	_brl_blitz_NullObjectError
_1301:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1303
	call	_brl_blitz_NullObjectError
_1303:
	push	_144
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1296
_1298:
	mov	eax,ebp
	push	eax
	push	_1310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1307
	call	_brl_blitz_NullObjectError
_1307:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1309
	call	_brl_blitz_NullObjectError
_1309:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1296
_1296:
	call	dword [_bbOnDebugLeaveScope]
_141:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1289
	call	_brl_blitz_NullObjectError
_1289:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_143
_142:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_956:
	mov	eax,ebp
	push	eax
	push	_1345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1316
	call	_brl_blitz_NullObjectError
_1316:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-200],eax
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_1319
	call	_brl_blitz_NullObjectError
_1319:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_146
_148:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1324
	call	_brl_blitz_NullObjectError
_1324:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-64],eax
	cmp	dword [ebp-64],_bbNullObject
	je	_146
	mov	eax,ebp
	push	eax
	push	_1344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1330
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1331
	jmp	_1329
_1330:
	mov	eax,ebp
	push	eax
	push	_1337
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1336
	call	_brl_blitz_NullObjectError
_1336:
	push	_149
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1329
_1331:
	mov	eax,ebp
	push	eax
	push	_1343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1340
	call	_brl_blitz_NullObjectError
_1340:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_1342
	call	_brl_blitz_NullObjectError
_1342:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1329
_1329:
	call	dword [_bbOnDebugLeaveScope]
_146:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1322
	call	_brl_blitz_NullObjectError
_1322:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_148
_147:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_957:
	mov	eax,ebp
	push	eax
	push	_1378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1349
	call	_brl_blitz_NullObjectError
_1349:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-196],eax
	mov	ebx,dword [ebp-196]
	cmp	ebx,_bbNullObject
	jne	_1352
	call	_brl_blitz_NullObjectError
_1352:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_151
_153:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	je	_151
	mov	eax,ebp
	push	eax
	push	_1377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1360
	call	_brl_blitz_NullObjectError
_1360:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1363
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1364
	jmp	_1362
_1363:
	mov	eax,ebp
	push	eax
	push	_1370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1367
	call	_brl_blitz_NullObjectError
_1367:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1369
	call	_brl_blitz_NullObjectError
_1369:
	push	_154
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1362
_1364:
	mov	eax,ebp
	push	eax
	push	_1376
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_1375
	call	_brl_blitz_NullObjectError
_1375:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1362
_1362:
	call	dword [_bbOnDebugLeaveScope]
_151:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1355
	call	_brl_blitz_NullObjectError
_1355:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_153
_152:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_958:
	mov	eax,ebp
	push	eax
	push	_1411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1382
	call	_brl_blitz_NullObjectError
_1382:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-192],eax
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_1385
	call	_brl_blitz_NullObjectError
_1385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_156
_158:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1390
	call	_brl_blitz_NullObjectError
_1390:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	je	_156
	mov	eax,ebp
	push	eax
	push	_1410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_1393
	call	_brl_blitz_NullObjectError
_1393:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1396
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1397
	jmp	_1395
_1396:
	mov	eax,ebp
	push	eax
	push	_1403
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1400
	call	_brl_blitz_NullObjectError
_1400:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_1402
	call	_brl_blitz_NullObjectError
_1402:
	push	_159
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1395
_1397:
	mov	eax,ebp
	push	eax
	push	_1409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1406
	call	_brl_blitz_NullObjectError
_1406:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_1408
	call	_brl_blitz_NullObjectError
_1408:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1395
_1395:
	call	dword [_bbOnDebugLeaveScope]
_156:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1388
	call	_brl_blitz_NullObjectError
_1388:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_158
_157:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_959:
	mov	eax,ebp
	push	eax
	push	_1415
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1414
	call	_brl_blitz_NullObjectError
_1414:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_960:
	mov	eax,ebp
	push	eax
	push	_1420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1419
	call	_brl_blitz_NullObjectError
_1419:
	push	_4
	push	_1417
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_1417
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_961:
	mov	eax,ebp
	push	eax
	push	_1424
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1423
	call	_brl_blitz_NullObjectError
_1423:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToFloat
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_962:
	mov	eax,ebp
	push	eax
	push	_1428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1427
	call	_brl_blitz_NullObjectError
_1427:
	push	_61
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_61
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_963:
	mov	eax,ebp
	push	eax
	push	_1438
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp-248],eax
	cmp	dword [ebp-248],_bbNullObject
	jne	_1431
	call	_brl_blitz_NullObjectError
_1431:
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_1433
	call	_brl_blitz_NullObjectError
_1433:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1435
	call	_brl_blitz_NullObjectError
_1435:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1437
	call	_brl_blitz_NullObjectError
_1437:
	push	_165
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_68
	push	0
	push	_164
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-248]
	mov	eax,dword [ebp-248]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_964:
	mov	eax,ebp
	push	eax
	push	_1481
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1441
	call	_brl_blitz_NullObjectError
_1441:
	push	_68
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1444
	call	_brl_blitz_NullObjectError
_1444:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_1446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-76],_bbNullObject
	je	_1447
	mov	eax,ebp
	push	eax
	push	_1477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_1450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	eax,dword [ebp-76]
	mov	dword [ebp-184],eax
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_1454
	call	_brl_blitz_NullObjectError
_1454:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_167
_169:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1459
	call	_brl_blitz_NullObjectError
_1459:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	je	_167
	mov	eax,ebp
	push	eax
	push	_1476
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1462
	call	_brl_blitz_NullObjectError
_1462:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1463
	mov	eax,ebp
	push	eax
	push	_1475
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1466
	call	_brl_blitz_NullObjectError
_1466:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_1468
	call	_brl_blitz_NullObjectError
_1468:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_1471
	call	_brl_blitz_NullObjectError
_1471:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,4
	cmp	dword [ebp-80],eax
	je	_1472
	mov	eax,ebp
	push	eax
	push	_1474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_59
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1472:
	call	dword [_bbOnDebugLeaveScope]
_1463:
	call	dword [_bbOnDebugLeaveScope]
_167:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1457
	call	_brl_blitz_NullObjectError
_1457:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_169
_168:
	call	dword [_bbOnDebugLeaveScope]
_1447:
	push	_1480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_165
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_965:
	mov	eax,ebp
	push	eax
	push	_1520
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1487
	call	_brl_blitz_NullObjectError
_1487:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1490
	call	_brl_blitz_NullObjectError
_1490:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_171
_173:
	cmp	ebx,_bbNullObject
	jne	_1495
	call	_brl_blitz_NullObjectError
_1495:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-84],eax
	cmp	dword [ebp-84],_bbNullObject
	je	_171
	mov	eax,ebp
	push	eax
	push	_1514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_1498
	call	_brl_blitz_NullObjectError
_1498:
	push	_40
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1499
	mov	eax,ebp
	push	eax
	push	_1503
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1502
	call	_brl_blitz_NullObjectError
_1502:
	push	0
	push	dword [ebp-84]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,12
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1504
_1499:
	mov	eax,ebp
	push	eax
	push	_1513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_1507
	call	_brl_blitz_NullObjectError
_1507:
	push	_42
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1508
	mov	eax,ebp
	push	eax
	push	_1512
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1511
	call	_brl_blitz_NullObjectError
_1511:
	push	0
	push	dword [ebp-84]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,12
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1508:
	call	dword [_bbOnDebugLeaveScope]
_1504:
	call	dword [_bbOnDebugLeaveScope]
_171:
	cmp	ebx,_bbNullObject
	jne	_1493
	call	_brl_blitz_NullObjectError
_1493:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_173
_172:
	push	_1515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1517
	call	_brl_blitz_NullObjectError
_1517:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1519
	call	_brl_blitz_NullObjectError
_1519:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+248]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_966:
	mov	eax,ebp
	push	eax
	push	_1560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_175
	push	_1522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1525
	call	_brl_blitz_NullObjectError
_1525:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1528
	call	_brl_blitz_NullObjectError
_1528:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_176
_178:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1533
	call	_brl_blitz_NullObjectError
_1533:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-88],eax
	cmp	dword [ebp-88],_bbNullObject
	je	_176
	mov	eax,ebp
	push	eax
	push	_1549
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	push	_179
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1537
	mov	eax,ebp
	push	eax
	push	_1548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1540
	call	_brl_blitz_NullObjectError
_1540:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_1542
	call	_brl_blitz_NullObjectError
_1542:
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1545
	call	_brl_blitz_NullObjectError
_1545:
	add	dword [ebx+12],1
	push	_1547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_177
_1537:
	call	dword [_bbOnDebugLeaveScope]
_176:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1531
	call	_brl_blitz_NullObjectError
_1531:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_178
_177:
	push	_1550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1552
	call	_brl_blitz_NullObjectError
_1552:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1555
	call	_brl_blitz_NullObjectError
_1555:
	sub	dword [ebx+12],1
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1559
	call	_brl_blitz_NullObjectError
_1559:
	push	_180
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_967:
	mov	eax,ebp
	push	eax
	push	_1575
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1563
	call	_brl_blitz_NullObjectError
_1563:
	sub	dword [ebx+12],1
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1567
	call	_brl_blitz_NullObjectError
_1567:
	push	_182
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_41
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1570
	call	_brl_blitz_NullObjectError
_1570:
	add	dword [ebx+12],1
	push	_1572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1574
	call	_brl_blitz_NullObjectError
_1574:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_968:
	mov	eax,ebp
	push	eax
	push	_1615
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_184
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1580
	call	_brl_blitz_NullObjectError
_1580:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1583
	call	_brl_blitz_NullObjectError
_1583:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_185
_187:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1588
	call	_brl_blitz_NullObjectError
_1588:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-92],eax
	cmp	dword [ebp-92],_bbNullObject
	je	_185
	mov	eax,ebp
	push	eax
	push	_1604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_1591
	call	_brl_blitz_NullObjectError
_1591:
	push	_179
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1592
	mov	eax,ebp
	push	eax
	push	_1603
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1595
	call	_brl_blitz_NullObjectError
_1595:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_1597
	call	_brl_blitz_NullObjectError
_1597:
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1600
	call	_brl_blitz_NullObjectError
_1600:
	add	dword [ebx+12],1
	push	_1602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_186
_1592:
	call	dword [_bbOnDebugLeaveScope]
_185:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1586
	call	_brl_blitz_NullObjectError
_1586:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_187
_186:
	push	_1605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1607
	call	_brl_blitz_NullObjectError
_1607:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1610
	call	_brl_blitz_NullObjectError
_1610:
	sub	dword [ebx+12],1
	push	_1612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1614
	call	_brl_blitz_NullObjectError
_1614:
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_969:
	mov	eax,ebp
	push	eax
	push	_1655
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_190
	push	_1617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1619
	call	_brl_blitz_NullObjectError
_1619:
	add	dword [ebx+12],1
	push	_1621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1623
	call	_brl_blitz_NullObjectError
_1623:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1626
	call	_brl_blitz_NullObjectError
_1626:
	sub	dword [ebx+12],1
	push	_1628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1630
	call	_brl_blitz_NullObjectError
_1630:
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1634
	call	_brl_blitz_NullObjectError
_1634:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1637
	call	_brl_blitz_NullObjectError
_1637:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_192
_194:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1642
	call	_brl_blitz_NullObjectError
_1642:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-96],eax
	cmp	dword [ebp-96],_bbNullObject
	je	_192
	mov	eax,ebp
	push	eax
	push	_1654
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1645
	call	_brl_blitz_NullObjectError
_1645:
	push	_179
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1646
	mov	eax,ebp
	push	eax
	push	_1653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1649
	call	_brl_blitz_NullObjectError
_1649:
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_1651
	call	_brl_blitz_NullObjectError
_1651:
	push	_165
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_193
_1646:
	call	dword [_bbOnDebugLeaveScope]
_192:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_194
_193:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_970:
	mov	eax,ebp
	push	eax
	push	_1698
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbEmptyString
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1661
	call	_brl_blitz_NullObjectError
_1661:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-244],eax
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_1664
	call	_brl_blitz_NullObjectError
_1664:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_196
_198:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1669
	call	_brl_blitz_NullObjectError
_1669:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-104],eax
	cmp	dword [ebp-104],_bbNullObject
	je	_196
	mov	eax,ebp
	push	eax
	push	_1691
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1672
	call	_brl_blitz_NullObjectError
_1672:
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1673
	mov	eax,ebp
	push	eax
	push	_1680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1676
	call	_brl_blitz_NullObjectError
_1676:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1678
	call	_brl_blitz_NullObjectError
_1678:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-100],eax
	push	_1679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1673:
	push	_1681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1683
	call	_brl_blitz_NullObjectError
_1683:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1684
	mov	eax,ebp
	push	eax
	push	_1690
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1687
	call	_brl_blitz_NullObjectError
_1687:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1689
	call	_brl_blitz_NullObjectError
_1689:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1684:
	call	dword [_bbOnDebugLeaveScope]
_196:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1667
	call	_brl_blitz_NullObjectError
_1667:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_198
_197:
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1694
	call	_brl_blitz_NullObjectError
_1694:
	push	_199
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_1695
	mov	eax,ebp
	push	eax
	push	_1697
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_41
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1695:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_971:
	mov	eax,ebp
	push	eax
	push	_1737
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_201
	push	_1700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1702
	call	_brl_blitz_NullObjectError
_1702:
	add	dword [ebx+12],1
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1707
	call	_brl_blitz_NullObjectError
_1707:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-180],eax
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_1710
	call	_brl_blitz_NullObjectError
_1710:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_202
_204:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1715
	call	_brl_blitz_NullObjectError
_1715:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-108],eax
	cmp	dword [ebp-108],_bbNullObject
	je	_202
	mov	eax,ebp
	push	eax
	push	_1726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_1718
	call	_brl_blitz_NullObjectError
_1718:
	push	_179
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1719
	mov	eax,ebp
	push	eax
	push	_1725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1722
	call	_brl_blitz_NullObjectError
_1722:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_1724
	call	_brl_blitz_NullObjectError
_1724:
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1719:
	call	dword [_bbOnDebugLeaveScope]
_202:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1713
	call	_brl_blitz_NullObjectError
_1713:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_204
_203:
	push	_1727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1729
	call	_brl_blitz_NullObjectError
_1729:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1732
	call	_brl_blitz_NullObjectError
_1732:
	sub	dword [ebx+12],1
	push	_1734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1736
	call	_brl_blitz_NullObjectError
_1736:
	push	_205
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_972:
	mov	eax,ebp
	push	eax
	push	_1777
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1741
	call	_brl_blitz_NullObjectError
_1741:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1744
	call	_brl_blitz_NullObjectError
_1744:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_207
_209:
	cmp	ebx,_bbNullObject
	jne	_1749
	call	_brl_blitz_NullObjectError
_1749:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-112],eax
	cmp	dword [ebp-112],_bbNullObject
	je	_207
	mov	eax,ebp
	push	eax
	push	_1776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1752
	call	_brl_blitz_NullObjectError
_1752:
	push	_179
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
	cmp	eax,0
	je	_1755
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1754
	call	_brl_blitz_NullObjectError
_1754:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1755:
	cmp	eax,0
	je	_1757
	mov	eax,ebp
	push	eax
	push	_1775
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1760
	call	_brl_blitz_NullObjectError
_1760:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1762
	call	_brl_blitz_NullObjectError
_1762:
	push	_41
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_210
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1765
	call	_brl_blitz_NullObjectError
_1765:
	add	dword [ebx+12],1
	push	_1767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1769
	call	_brl_blitz_NullObjectError
_1769:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1772
	call	_brl_blitz_NullObjectError
_1772:
	sub	dword [ebx+12],1
	push	_1774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_208
_1757:
	call	dword [_bbOnDebugLeaveScope]
_207:
	cmp	ebx,_bbNullObject
	jne	_1747
	call	_brl_blitz_NullObjectError
_1747:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_209
_208:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_973:
	mov	eax,ebp
	push	eax
	push	_1790
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_212
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1781
	call	_brl_blitz_NullObjectError
_1781:
	add	dword [ebx+12],1
	push	_1783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1785
	call	_brl_blitz_NullObjectError
_1785:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1788
	call	_brl_blitz_NullObjectError
_1788:
	sub	dword [ebx+12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_974:
	mov	eax,ebp
	push	eax
	push	_1792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_214
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_975:
	mov	eax,ebp
	push	eax
	push	_1794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_216
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_976:
	mov	eax,ebp
	push	eax
	push	_1890
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbEmptyString
	push	_1797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbEmptyString
	push	_1799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbEmptyString
	push	_1801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1804
	call	_brl_blitz_NullObjectError
_1804:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-252],eax
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_1807
	call	_brl_blitz_NullObjectError
_1807:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-256],eax
	jmp	_218
_220:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-128],eax
	cmp	dword [ebp-128],_bbNullObject
	je	_218
	mov	eax,ebp
	push	eax
	push	_1874
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1815
	call	_brl_blitz_NullObjectError
_1815:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_221
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1818
	push	_227
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1819
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1820
	push	_228
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1821
	mov	eax,ebp
	push	eax
	push	_1823
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_219
_1818:
	mov	eax,ebp
	push	eax
	push	_1855
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1827
	call	_brl_blitz_NullObjectError
_1827:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-168],eax
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_1830
	call	_brl_blitz_NullObjectError
_1830:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_222
_224:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1835
	call	_brl_blitz_NullObjectError
_1835:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-132],eax
	cmp	dword [ebp-132],_bbNullObject
	je	_222
	mov	eax,ebp
	push	eax
	push	_1853
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
	push	_225
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1839
	mov	eax,ebp
	push	eax
	push	_1851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1842
	call	_brl_blitz_NullObjectError
_1842:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1844
	call	_brl_blitz_NullObjectError
_1844:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	push	dword [ebp-136]
	call	_bbStringContains
	add	esp,8
	cmp	eax,0
	je	_1847
	mov	eax,ebp
	push	eax
	push	_1849
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_149
	push	dword [ebp-136]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	0
	push	dword [ebp-136]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_1847:
	push	_1850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	push	_226
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1839:
	call	dword [_bbOnDebugLeaveScope]
_222:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1833
	call	_brl_blitz_NullObjectError
_1833:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1817
_1819:
	mov	eax,ebp
	push	eax
	push	_1861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1858
	call	_brl_blitz_NullObjectError
_1858:
	mov	esi,dword [ebp-128]
	cmp	esi,_bbNullObject
	jne	_1860
	call	_brl_blitz_NullObjectError
_1860:
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_149
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-124],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1817
_1820:
	mov	eax,ebp
	push	eax
	push	_1867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1864
	call	_brl_blitz_NullObjectError
_1864:
	mov	esi,dword [ebp-128]
	cmp	esi,_bbNullObject
	jne	_1866
	call	_brl_blitz_NullObjectError
_1866:
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-120],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1817
_1821:
	mov	eax,ebp
	push	eax
	push	_1873
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1870
	call	_brl_blitz_NullObjectError
_1870:
	mov	esi,dword [ebp-128]
	cmp	esi,_bbNullObject
	jne	_1872
	call	_brl_blitz_NullObjectError
_1872:
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-116],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1817
_1817:
	call	dword [_bbOnDebugLeaveScope]
_218:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_1810
	call	_brl_blitz_NullObjectError
_1810:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_220
_219:
	push	_1875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_41
	push	dword [ebp-116]
	push	_230
	push	dword [ebp-120]
	push	_229
	push	dword [ebp-124]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	add	dword [ebx+12],1
	push	_1880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1882
	call	_brl_blitz_NullObjectError
_1882:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1885
	call	_brl_blitz_NullObjectError
_1885:
	sub	dword [ebx+12],1
	push	_1887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1889
	call	_brl_blitz_NullObjectError
_1889:
	push	_231
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_977:
	mov	eax,ebp
	push	eax
	push	_1899
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1896
	call	_brl_blitz_NullObjectError
_1896:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1898
	call	_brl_blitz_NullObjectError
_1898:
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_233
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_978:
	mov	eax,ebp
	push	eax
	push	_1901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_235
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_979:
	mov	eax,ebp
	push	eax
	push	_1941
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_1904
	call	_brl_blitz_NullObjectError
_1904:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1906
	call	_brl_blitz_NullObjectError
_1906:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1908
	call	_brl_blitz_NullObjectError
_1908:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_47
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-140],eax
	push	_1910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1912
	call	_brl_blitz_NullObjectError
_1912:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1914
	call	_brl_blitz_NullObjectError
_1914:
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_1916
	call	_brl_blitz_NullObjectError
_1916:
	push	_4
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_4
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_1917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1920
	call	_brl_blitz_NullObjectError
_1920:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-176],eax
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_1923
	call	_brl_blitz_NullObjectError
_1923:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_237
_239:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1928
	call	_brl_blitz_NullObjectError
_1928:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-144],eax
	cmp	dword [ebp-144],_bbNullObject
	je	_237
	mov	eax,ebp
	push	eax
	push	_1939
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_1931
	call	_brl_blitz_NullObjectError
_1931:
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1932
	mov	eax,ebp
	push	eax
	push	_1938
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1935
	call	_brl_blitz_NullObjectError
_1935:
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_1937
	call	_brl_blitz_NullObjectError
_1937:
	push	_241
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_240
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_1932:
	call	dword [_bbOnDebugLeaveScope]
_237:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1926
	call	_brl_blitz_NullObjectError
_1926:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_239
_238:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_980:
	mov	eax,ebp
	push	eax
	push	_1947
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1944
	call	_brl_blitz_NullObjectError
_1944:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1946
	call	_brl_blitz_NullObjectError
_1946:
	push	_4
	push	_bah_libxml_TxmlNode
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_4
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_981:
	mov	eax,ebp
	push	eax
	push	_1980
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1951
	call	_brl_blitz_NullObjectError
_1951:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-188],eax
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_1954
	call	_brl_blitz_NullObjectError
_1954:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_243
_245:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1959
	call	_brl_blitz_NullObjectError
_1959:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-148],eax
	cmp	dword [ebp-148],_bbNullObject
	je	_243
	mov	eax,ebp
	push	eax
	push	_1979
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1962
	call	_brl_blitz_NullObjectError
_1962:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_98
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1965
	push	_100
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1966
	jmp	_1964
_1965:
	mov	eax,ebp
	push	eax
	push	_1972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1969
	call	_brl_blitz_NullObjectError
_1969:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1971
	call	_brl_blitz_NullObjectError
_1971:
	push	_246
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1964
_1966:
	mov	eax,ebp
	push	eax
	push	_1978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1975
	call	_brl_blitz_NullObjectError
_1975:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1977
	call	_brl_blitz_NullObjectError
_1977:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1964
_1964:
	call	dword [_bbOnDebugLeaveScope]
_243:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1957
	call	_brl_blitz_NullObjectError
_1957:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_245
_244:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_982:
	mov	eax,ebp
	push	eax
	push	_2056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_1983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1985
	call	_brl_blitz_NullObjectError
_1985:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1986
	mov	eax,ebp
	push	eax
	push	_2007
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1990
	call	_brl_blitz_NullObjectError
_1990:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1993
	call	_brl_blitz_NullObjectError
_1993:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_248
_250:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1998
	call	_brl_blitz_NullObjectError
_1998:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-156],eax
	cmp	dword [ebp-156],_bbNullObject
	je	_248
	mov	eax,ebp
	push	eax
	push	_2005
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_2001
	call	_brl_blitz_NullObjectError
_2001:
	push	_251
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2002
	mov	eax,ebp
	push	eax
	push	_2004
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-8],al
	call	dword [_bbOnDebugLeaveScope]
_2002:
	call	dword [_bbOnDebugLeaveScope]
_248:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_250
_249:
	call	dword [_bbOnDebugLeaveScope]
_1986:
	push	_2008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2010
	call	_brl_blitz_NullObjectError
_2010:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2012
	call	_brl_blitz_NullObjectError
_2012:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	push	_47
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-152],eax
	push	_2014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_2015
	mov	eax,ebp
	push	eax
	push	_2043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	push	_2018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_253
	push	dword [ebp-152]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_252
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	push	_2019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2022
	call	_brl_blitz_NullObjectError
_2022:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-172],eax
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_2025
	call	_brl_blitz_NullObjectError
_2025:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_254
_256:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2030
	call	_brl_blitz_NullObjectError
_2030:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-164],eax
	cmp	dword [ebp-164],_bbNullObject
	je	_254
	mov	eax,ebp
	push	eax
	push	_2042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_2033
	call	_brl_blitz_NullObjectError
_2033:
	push	_251
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2034
	mov	eax,ebp
	push	eax
	push	_2041
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-160],1
	push	_2036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_2038
	call	_brl_blitz_NullObjectError
_2038:
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_2040
	call	_brl_blitz_NullObjectError
_2040:
	push	_241
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_240
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_2034:
	call	dword [_bbOnDebugLeaveScope]
_254:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2028
	call	_brl_blitz_NullObjectError
_2028:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_256
_255:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2045
_2015:
	mov	eax,ebp
	push	eax
	push	_2047
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-152]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_252
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_2045:
	push	_2048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_2050
	call	_brl_blitz_NullObjectError
_2050:
	push	dword [ebp-152]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	je	_2051
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	sete	al
	movzx	eax,al
_2051:
	cmp	eax,0
	je	_2053
	mov	eax,ebp
	push	eax
	push	_2055
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_165
	push	dword [ebp-20]
	push	_68
	push	dword [ebp-152]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_257
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_2053:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_945
_945:
	push	_2059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_330
_330:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_VarDef:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-24],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_2120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	push	_2064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2067
	call	_brl_blitz_NullObjectError
_2067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2070
	call	_brl_blitz_NullObjectError
_2070:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_258
_260:
	cmp	ebx,_bbNullObject
	jne	_2075
	call	_brl_blitz_NullObjectError
_2075:
	push	_bah_libxml_TxmlAttribute
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_258
	mov	eax,ebp
	push	eax
	push	_2091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2078
	call	_brl_blitz_NullObjectError
_2078:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_46
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2081
	push	_47
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2082
	jmp	_2080
_2081:
	mov	eax,ebp
	push	eax
	push	_2086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2085
	call	_brl_blitz_NullObjectError
_2085:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2080
_2082:
	mov	eax,ebp
	push	eax
	push	_2090
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_2089
	call	_brl_blitz_NullObjectError
_2089:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2080
_2080:
	call	dword [_bbOnDebugLeaveScope]
_258:
	cmp	ebx,_bbNullObject
	jne	_2073
	call	_brl_blitz_NullObjectError
_2073:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_260
_259:
	push	_2094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_2096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2099
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2099
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2099
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2099
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2100
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2100
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2101
	jmp	_2098
_2099:
	mov	eax,ebp
	push	eax
	push	_2103
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_261
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2098
_2100:
	mov	eax,ebp
	push	eax
	push	_2105
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_262
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2098
_2101:
	mov	eax,ebp
	push	eax
	push	_2109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_2108
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2098
_2098:
	push	_2110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2112
	call	_brl_blitz_NullObjectError
_2112:
	push	0
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-20],eax
	push	_2113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	je	_2114
	mov	eax,ebp
	push	eax
	push	_2116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	_58
	push	dword [ebp-16]
	push	_263
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_335
_2114:
	mov	eax,ebp
	push	eax
	push	_2119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	_58
	push	dword [ebp-16]
	push	_264
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_335
_335:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_ArrayDef:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],0
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],0
	mov	eax,ebp
	push	eax
	push	_2176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],0
	push	_2128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2131
	call	_brl_blitz_NullObjectError
_2131:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_265
_267:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2139
	call	_brl_blitz_NullObjectError
_2139:
	push	_bah_libxml_TxmlAttribute
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_265
	mov	eax,ebp
	push	eax
	push	_2168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2142
	call	_brl_blitz_NullObjectError
_2142:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2145
	push	_47
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2146
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2147
	jmp	_2144
_2145:
	mov	eax,ebp
	push	eax
	push	_2151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2150
	call	_brl_blitz_NullObjectError
_2150:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2144
_2146:
	mov	eax,ebp
	push	eax
	push	_2157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_2154
	call	_brl_blitz_NullObjectError
_2154:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2144
_2147:
	mov	eax,ebp
	push	eax
	push	_2167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_2160
	call	_brl_blitz_NullObjectError
_2160:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-24],eax
	push	_2161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],1
	mov	ebx,dword [ebp-24]
	jmp	_2163
_270:
	mov	eax,ebp
	push	eax
	push	_2166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_268:
	add	dword [ebp-32],1
_2163:
	cmp	dword [ebp-32],ebx
	jle	_270
_269:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2144
_2144:
	call	dword [_bbOnDebugLeaveScope]
_265:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2137
	call	_brl_blitz_NullObjectError
_2137:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_267
_266:
	push	_2169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-12],0
	je	_2170
	mov	eax,ebp
	push	eax
	push	_2172
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	push	_58
	push	dword [ebp-16]
	push	_263
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_340
_2170:
	mov	eax,ebp
	push	eax
	push	_2175
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	push	_58
	push	dword [ebp-16]
	push	_264
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_340
_340:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_GetRealDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	ebp
	push	_2215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	push	_2179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2182
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2183
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2184
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2185
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2186
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2187
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2188
	push	_278
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2189
	push	ebp
	push	_2191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	_bbStringToUpper
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2181
_2182:
	push	ebp
	push	_2193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_271
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2183:
	push	ebp
	push	_2195
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_272
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2184:
	push	ebp
	push	_2197
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_273
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2185:
	push	ebp
	push	_2199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_274
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2186:
	push	ebp
	push	_2201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_275
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2187:
	push	ebp
	push	_2203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_276
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2188:
	push	ebp
	push	_2205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_277
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2189:
	push	ebp
	push	_2207
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_272
	call	dword [_bbOnDebugLeaveScope]
	jmp	_345
_2181:
	push	_2208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],1
	mov	ebx,dword [ebp-12]
	jmp	_2210
_281:
	push	ebp
	push	_2213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_49
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_279:
	add	dword [ebp-20],1
_2210:
	cmp	dword [ebp-20],ebx
	jle	_281
_280:
	push	_2214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_345
_345:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_IsType:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2227
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_282
	push	_4
	push	_115
	push	dword [ebp-8]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	mov	dword [ebp-8],eax
	push	_2219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_278
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2222
	push	ebp
	push	_2224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_349
_2222:
	push	ebp
	push	_2226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_349
_349:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_366:
	dd	0
_284:
	db	"TBMXGenerator",0
	align	4
_365:
	dd	1
	dd	_284
	dd	0
_352:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TBMXGenerator.bmx",0
	align	4
_351:
	dd	_352
	dd	6
	dd	2
	align	4
_363:
	dd	0
_286:
	db	"$",0
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,111,97,116
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	98,121,116,101
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
__bb_TBMXGenerator_AllDatatype:
	dd	_bbEmptyArray
_285:
	db	"Output",0
_287:
	db	"ScopeCount",0
_288:
	db	"i",0
_289:
	db	"CurrentArray",0
_290:
	db	"Dimensionen",0
_291:
	db	"New",0
_292:
	db	"()i",0
_293:
	db	"Delete",0
_294:
	db	"Generate",0
_295:
	db	"($,$)i",0
_296:
	db	"GetTabs",0
_297:
	db	"()$",0
_298:
	db	"Block",0
_299:
	db	"(:bah.libxml.TxmlNode)$",0
_300:
	db	"GetNextMathString",0
_301:
	db	"VarDef",0
_302:
	db	"(:bah.libxml.TxmlNode,i)$",0
_303:
	db	"ArrayDef",0
_304:
	db	"GetRealDatatype",0
_305:
	db	"($,i)$",0
_306:
	db	"IsType",0
_307:
	db	"($)b",0
	align	4
_283:
	dd	2
	dd	_284
	dd	3
	dd	_285
	dd	_286
	dd	8
	dd	3
	dd	_287
	dd	_288
	dd	12
	dd	3
	dd	_289
	dd	_286
	dd	16
	dd	3
	dd	_290
	dd	_288
	dd	20
	dd	6
	dd	_291
	dd	_292
	dd	16
	dd	6
	dd	_293
	dd	_292
	dd	20
	dd	6
	dd	_294
	dd	_295
	dd	48
	dd	6
	dd	_296
	dd	_297
	dd	52
	dd	6
	dd	_298
	dd	_299
	dd	56
	dd	6
	dd	_300
	dd	_299
	dd	60
	dd	6
	dd	_301
	dd	_302
	dd	64
	dd	6
	dd	_303
	dd	_302
	dd	68
	dd	6
	dd	_304
	dd	_305
	dd	72
	dd	6
	dd	_306
	dd	_307
	dd	76
	dd	0
	align	4
_bb_TBMXGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_283
	dd	24
	dd	__bb_TBMXGenerator_New
	dd	__bb_TBMXGenerator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TBMXGenerator_Generate
	dd	__bb_TBMXGenerator_GetTabs
	dd	__bb_TBMXGenerator_Block
	dd	__bb_TBMXGenerator_GetNextMathString
	dd	__bb_TBMXGenerator_VarDef
	dd	__bb_TBMXGenerator_ArrayDef
	dd	__bb_TBMXGenerator_GetRealDatatype
	dd	__bb_TBMXGenerator_IsType
_372:
	db	"Self",0
_373:
	db	":TBMXGenerator",0
	align	4
_371:
	dd	1
	dd	_291
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	0
	align	4
_370:
	dd	3
	dd	0
	dd	0
_875:
	db	"InputPath",0
_876:
	db	"OutputPath",0
_877:
	db	"File",0
_878:
	db	":bah.libxml.TxmlDoc",0
_879:
	db	"Root",0
_464:
	db	":bah.libxml.TxmlNode",0
	align	4
_874:
	dd	1
	dd	_294
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_875
	dd	_286
	dd	-8
	dd	2
	dd	_876
	dd	_286
	dd	-12
	dd	2
	dd	_877
	dd	_878
	dd	-16
	dd	2
	dd	_879
	dd	_464
	dd	-20
	dd	0
	align	4
_379:
	dd	_352
	dd	11
	dd	3
	align	4
_381:
	dd	_352
	dd	12
	dd	3
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,117,112,101,114,83,116,114,105,99,116,10
	align	4
_389:
	dd	_352
	dd	14
	dd	3
	align	4
_393:
	dd	_352
	dd	15
	dd	3
_862:
	db	"Node",0
	align	4
_861:
	dd	3
	dd	0
	dd	2
	dd	_862
	dd	_464
	dd	-24
	dd	0
	align	4
_405:
	dd	_352
	dd	16
	dd	4
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_466:
	dd	3
	dd	0
	dd	0
	align	4
_414:
	dd	_352
	dd	18
	dd	6
	align	4
_465:
	dd	3
	dd	0
	dd	0
	align	4
_418:
	dd	_352
	dd	19
	dd	7
_463:
	db	"Node2",0
	align	4
_462:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-28
	dd	0
	align	4
_430:
	dd	_352
	dd	20
	dd	8
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_444:
	dd	3
	dd	0
	dd	0
	align	4
_434:
	dd	_352
	dd	21
	dd	9
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_461:
	dd	3
	dd	0
	dd	0
	align	4
_446:
	dd	_352
	dd	22
	dd	8
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_460:
	dd	3
	dd	0
	dd	0
	align	4
_450:
	dd	_352
	dd	23
	dd	9
	align	4
_710:
	dd	3
	dd	0
	dd	0
	align	4
_467:
	dd	_352
	dd	28
	dd	6
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
_707:
	db	"Name",0
_578:
	db	"Datatype",0
_708:
	db	"UserFunc",0
_709:
	db	"DatatypesText",0
	align	4
_706:
	dd	3
	dd	0
	dd	2
	dd	_707
	dd	_286
	dd	-32
	dd	2
	dd	_578
	dd	_286
	dd	-36
	dd	2
	dd	_708
	dd	_288
	dd	-40
	dd	2
	dd	_709
	dd	_286
	dd	-44
	dd	0
	align	4
_493:
	dd	_352
	dd	29
	dd	7
	align	4
_497:
	dd	_352
	dd	30
	dd	7
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_501:
	dd	_352
	dd	32
	dd	7
	align	4
_504:
	dd	_352
	dd	33
	dd	7
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_513:
	dd	3
	dd	0
	dd	0
	align	4
_512:
	dd	_352
	dd	33
	dd	83
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
	align	4
_514:
	dd	_352
	dd	34
	dd	7
	align	4
_518:
	dd	_352
	dd	35
	dd	7
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,32
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	10,70,117,110,99,116,105,111,110,32
	align	4
_526:
	dd	_352
	dd	36
	dd	7
	align	4
_528:
	dd	_352
	dd	37
	dd	7
	align	4
_580:
	dd	3
	dd	0
	dd	0
	align	4
_532:
	dd	_352
	dd	38
	dd	8
	align	4
_579:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-48
	dd	0
	align	4
_544:
	dd	_352
	dd	39
	dd	9
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_577:
	dd	3
	dd	0
	dd	2
	dd	_578
	dd	_286
	dd	-52
	dd	0
	align	4
_548:
	dd	_352
	dd	40
	dd	10
	align	4
_554:
	dd	_352
	dd	41
	dd	10
	align	4
_563:
	dd	3
	dd	0
	dd	0
	align	4
_562:
	dd	_352
	dd	41
	dd	88
	align	4
_564:
	dd	_352
	dd	42
	dd	10
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,58
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,95
	align	4
_574:
	dd	_352
	dd	43
	dd	10
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	44,32,95
	align	4
_581:
	dd	_352
	dd	47
	dd	7
	align	4
_593:
	dd	_352
	dd	48
	dd	7
	align	4
_657:
	dd	3
	dd	0
	dd	0
	align	4
_595:
	dd	_352
	dd	49
	dd	8
	align	4
_656:
	dd	3
	dd	0
	dd	0
	align	4
_603:
	dd	_352
	dd	50
	dd	9
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,10
	align	4
_611:
	dd	_352
	dd	51
	dd	9
	align	4
_615:
	dd	_352
	dd	52
	dd	9
	align	4
_643:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-56
	dd	0
	align	4
_627:
	dd	_352
	dd	53
	dd	10
	align	4
_642:
	dd	3
	dd	0
	dd	0
	align	4
_631:
	dd	_352
	dd	54
	dd	11
	align	4
_641:
	dd	_352
	dd	55
	dd	11
	align	4
_644:
	dd	_352
	dd	58
	dd	9
	align	4
_648:
	dd	_352
	dd	59
	dd	9
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	69,110,100,70,117,110,99,116,105,111,110,10
_705:
	db	"RealName",0
	align	4
_704:
	dd	3
	dd	0
	dd	2
	dd	_705
	dd	_286
	dd	-60
	dd	0
	align	4
_659:
	dd	_352
	dd	62
	dd	8
	align	4
_663:
	dd	_352
	dd	63
	dd	8
	align	4
_703:
	dd	3
	dd	0
	dd	0
	align	4
_667:
	dd	_352
	dd	64
	dd	9
	align	4
_675:
	dd	_352
	dd	65
	dd	9
	align	4
_679:
	dd	_352
	dd	66
	dd	9
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_689:
	dd	_352
	dd	67
	dd	9
	align	4
_693:
	dd	_352
	dd	68
	dd	9
	align	4
_849:
	dd	3
	dd	0
	dd	2
	dd	_707
	dd	_286
	dd	-64
	dd	0
	align	4
_711:
	dd	_352
	dd	73
	dd	6
	align	4
_715:
	dd	_352
	dd	74
	dd	6
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
_847:
	db	"Text",0
_848:
	db	"InitFunc",0
	align	4
_846:
	dd	3
	dd	0
	dd	2
	dd	_847
	dd	_286
	dd	-68
	dd	2
	dd	_848
	dd	_286
	dd	-72
	dd	0
	align	4
_717:
	dd	_352
	dd	75
	dd	7
	align	4
_722:
	dd	_352
	dd	76
	dd	7
	align	4
_730:
	dd	_352
	dd	77
	dd	7
	align	4
_732:
	dd	_352
	dd	78
	dd	7
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,10
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	84,121,112,101,32
	align	4
_733:
	dd	_352
	dd	79
	dd	7
	align	4
_737:
	dd	_352
	dd	81
	dd	7
	align	4
_739:
	dd	_352
	dd	82
	dd	7
	align	4
_784:
	dd	3
	dd	0
	dd	0
	align	4
_743:
	dd	_352
	dd	83
	dd	8
	align	4
_783:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-76
	dd	0
	align	4
_755:
	dd	_352
	dd	84
	dd	9
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
_782:
	db	"Array",0
	align	4
_781:
	dd	3
	dd	0
	dd	2
	dd	_782
	dd	_286
	dd	-80
	dd	0
	align	4
_759:
	dd	_352
	dd	85
	dd	10
	align	4
_767:
	dd	_352
	dd	86
	dd	10
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	70,105,101,108,100,32,95
	align	4
_772:
	dd	_352
	dd	88
	dd	10
	align	4
_79:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,61,32
	align	4
_78:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,109,112,46
	align	4
_785:
	dd	_352
	dd	94
	dd	7
	align	4
_789:
	dd	_352
	dd	95
	dd	7
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	69,110,100,84,121,112,101,10
	align	4
_792:
	dd	_352
	dd	96
	dd	7
	align	4
_800:
	dd	_352
	dd	97
	dd	7
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,41,10
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	40,32,116,109,112,58
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	70,117,110,99,116,105,111,110,32,110,101,119,95
	align	4
_810:
	dd	_352
	dd	98
	dd	7
	align	4
_814:
	dd	_352
	dd	99
	dd	7
	align	4
_822:
	dd	_352
	dd	100
	dd	7
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	114,101,116,117,114,110,32,116,109,112,10
	align	4
_832:
	dd	_352
	dd	101
	dd	7
	align	4
_836:
	dd	_352
	dd	102
	dd	7
	align	4
_860:
	dd	3
	dd	0
	dd	0
	align	4
_850:
	dd	_352
	dd	105
	dd	6
	align	4
_863:
	dd	_352
	dd	108
	dd	3
	align	4
_871:
	dd	_352
	dd	110
	dd	3
	align	4
_891:
	dd	1
	dd	_296
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_847
	dd	_286
	dd	-8
	dd	0
	align	4
_880:
	dd	_352
	dd	114
	dd	3
	align	4
_882:
	dd	_352
	dd	115
	dd	3
	align	4
_889:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_288
	dd	-12
	dd	0
	align	4
_888:
	dd	_352
	dd	116
	dd	4
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_890:
	dd	_352
	dd	118
	dd	3
	align	4
_934:
	dd	1
	dd	_298
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_862
	dd	_464
	dd	-8
	dd	2
	dd	_285
	dd	_286
	dd	-12
	dd	0
	align	4
_892:
	dd	_352
	dd	121
	dd	3
	align	4
_894:
	dd	_352
	dd	122
	dd	3
	align	4
_932:
	dd	3
	dd	0
	dd	0
	align	4
_898:
	dd	_352
	dd	123
	dd	4
	align	4
_931:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-16
	dd	0
	align	4
_910:
	dd	_352
	dd	124
	dd	5
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_930:
	dd	3
	dd	0
	dd	2
	dd	_847
	dd	_286
	dd	-20
	dd	0
	align	4
_918:
	dd	_352
	dd	125
	dd	6
	align	4
_924:
	dd	_352
	dd	126
	dd	6
	align	4
_929:
	dd	3
	dd	0
	dd	0
	align	4
_926:
	dd	_352
	dd	127
	dd	8
	align	4
_933:
	dd	_352
	dd	132
	dd	3
	align	4
_2060:
	dd	1
	dd	_300
	dd	2
	dd	_372
	dd	_373
	dd	-12
	dd	2
	dd	_862
	dd	_464
	dd	-16
	dd	2
	dd	_847
	dd	_286
	dd	-20
	dd	0
	align	4
_935:
	dd	_352
	dd	135
	dd	3
	align	4
_937:
	dd	_352
	dd	136
	dd	3
	align	4
_940:
	dd	3
	dd	0
	dd	0
	align	4
_939:
	dd	_352
	dd	136
	dd	21
	align	4
_941:
	dd	_352
	dd	137
	dd	3
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_135:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,111,119
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_174:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_200:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_211:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_213:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_217:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_232:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_234:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_236:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_242:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_1015:
	dd	3
	dd	0
	dd	0
	align	4
_983:
	dd	_352
	dd	139
	dd	5
	align	4
_1014:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-24
	dd	0
	align	4
_995:
	dd	_352
	dd	140
	dd	6
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_1007:
	dd	3
	dd	0
	dd	0
	align	4
_1002:
	dd	_352
	dd	142
	dd	8
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_1013:
	dd	3
	dd	0
	dd	0
	align	4
_1008:
	dd	_352
	dd	144
	dd	8
	align	4
_1048:
	dd	3
	dd	0
	dd	0
	align	4
_1016:
	dd	_352
	dd	148
	dd	5
	align	4
_1047:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-28
	dd	0
	align	4
_1028:
	dd	_352
	dd	149
	dd	6
	align	4
_1040:
	dd	3
	dd	0
	dd	0
	align	4
_1035:
	dd	_352
	dd	151
	dd	8
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_1046:
	dd	3
	dd	0
	dd	0
	align	4
_1041:
	dd	_352
	dd	153
	dd	8
	align	4
_1081:
	dd	3
	dd	0
	dd	0
	align	4
_1049:
	dd	_352
	dd	157
	dd	5
	align	4
_1080:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-32
	dd	0
	align	4
_1061:
	dd	_352
	dd	158
	dd	6
	align	4
_1073:
	dd	3
	dd	0
	dd	0
	align	4
_1068:
	dd	_352
	dd	160
	dd	8
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_1079:
	dd	3
	dd	0
	dd	0
	align	4
_1074:
	dd	_352
	dd	162
	dd	8
	align	4
_1114:
	dd	3
	dd	0
	dd	0
	align	4
_1082:
	dd	_352
	dd	166
	dd	5
	align	4
_1113:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-36
	dd	0
	align	4
_1094:
	dd	_352
	dd	167
	dd	6
	align	4
_1106:
	dd	3
	dd	0
	dd	0
	align	4
_1101:
	dd	_352
	dd	169
	dd	8
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_1112:
	dd	3
	dd	0
	dd	0
	align	4
_1107:
	dd	_352
	dd	171
	dd	8
	align	4
_1147:
	dd	3
	dd	0
	dd	0
	align	4
_1115:
	dd	_352
	dd	175
	dd	5
	align	4
_1146:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-40
	dd	0
	align	4
_1127:
	dd	_352
	dd	176
	dd	6
	align	4
_1139:
	dd	3
	dd	0
	dd	0
	align	4
_1134:
	dd	_352
	dd	178
	dd	8
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,65,110,100,32
	align	4
_1145:
	dd	3
	dd	0
	dd	0
	align	4
_1140:
	dd	_352
	dd	180
	dd	8
	align	4
_1180:
	dd	3
	dd	0
	dd	0
	align	4
_1148:
	dd	_352
	dd	184
	dd	5
	align	4
_1179:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-44
	dd	0
	align	4
_1160:
	dd	_352
	dd	185
	dd	6
	align	4
_1172:
	dd	3
	dd	0
	dd	0
	align	4
_1167:
	dd	_352
	dd	187
	dd	8
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,79,114,32
	align	4
_1178:
	dd	3
	dd	0
	dd	0
	align	4
_1173:
	dd	_352
	dd	189
	dd	8
	align	4
_1213:
	dd	3
	dd	0
	dd	0
	align	4
_1181:
	dd	_352
	dd	193
	dd	5
	align	4
_1212:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-48
	dd	0
	align	4
_1193:
	dd	_352
	dd	194
	dd	6
	align	4
_1205:
	dd	3
	dd	0
	dd	0
	align	4
_1200:
	dd	_352
	dd	196
	dd	8
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_1211:
	dd	3
	dd	0
	dd	0
	align	4
_1206:
	dd	_352
	dd	198
	dd	8
	align	4
_1246:
	dd	3
	dd	0
	dd	0
	align	4
_1214:
	dd	_352
	dd	202
	dd	5
	align	4
_1245:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-52
	dd	0
	align	4
_1226:
	dd	_352
	dd	203
	dd	6
	align	4
_1238:
	dd	3
	dd	0
	dd	0
	align	4
_1233:
	dd	_352
	dd	205
	dd	8
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_1244:
	dd	3
	dd	0
	dd	0
	align	4
_1239:
	dd	_352
	dd	207
	dd	8
	align	4
_1279:
	dd	3
	dd	0
	dd	0
	align	4
_1247:
	dd	_352
	dd	211
	dd	5
	align	4
_1278:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-56
	dd	0
	align	4
_1259:
	dd	_352
	dd	212
	dd	6
	align	4
_1271:
	dd	3
	dd	0
	dd	0
	align	4
_1266:
	dd	_352
	dd	214
	dd	8
	align	4
_139:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_1277:
	dd	3
	dd	0
	dd	0
	align	4
_1272:
	dd	_352
	dd	216
	dd	8
	align	4
_1312:
	dd	3
	dd	0
	dd	0
	align	4
_1280:
	dd	_352
	dd	220
	dd	5
	align	4
_1311:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-60
	dd	0
	align	4
_1292:
	dd	_352
	dd	221
	dd	6
	align	4
_1304:
	dd	3
	dd	0
	dd	0
	align	4
_1299:
	dd	_352
	dd	223
	dd	8
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_1310:
	dd	3
	dd	0
	dd	0
	align	4
_1305:
	dd	_352
	dd	225
	dd	8
	align	4
_1345:
	dd	3
	dd	0
	dd	0
	align	4
_1313:
	dd	_352
	dd	229
	dd	5
	align	4
_1344:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-64
	dd	0
	align	4
_1325:
	dd	_352
	dd	230
	dd	6
	align	4
_1337:
	dd	3
	dd	0
	dd	0
	align	4
_1332:
	dd	_352
	dd	232
	dd	8
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_1343:
	dd	3
	dd	0
	dd	0
	align	4
_1338:
	dd	_352
	dd	234
	dd	8
	align	4
_1378:
	dd	3
	dd	0
	dd	0
	align	4
_1346:
	dd	_352
	dd	238
	dd	5
	align	4
_1377:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-68
	dd	0
	align	4
_1358:
	dd	_352
	dd	239
	dd	6
	align	4
_1370:
	dd	3
	dd	0
	dd	0
	align	4
_1365:
	dd	_352
	dd	241
	dd	8
	align	4
_154:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_1376:
	dd	3
	dd	0
	dd	0
	align	4
_1371:
	dd	_352
	dd	243
	dd	8
	align	4
_1411:
	dd	3
	dd	0
	dd	0
	align	4
_1379:
	dd	_352
	dd	247
	dd	5
	align	4
_1410:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-72
	dd	0
	align	4
_1391:
	dd	_352
	dd	248
	dd	6
	align	4
_1403:
	dd	3
	dd	0
	dd	0
	align	4
_1398:
	dd	_352
	dd	250
	dd	8
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_1409:
	dd	3
	dd	0
	dd	0
	align	4
_1404:
	dd	_352
	dd	252
	dd	8
	align	4
_1415:
	dd	3
	dd	0
	dd	0
	align	4
_1412:
	dd	_352
	dd	256
	dd	5
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_1420:
	dd	3
	dd	0
	dd	0
	align	4
_1416:
	dd	_352
	dd	258
	dd	5
	align	4
_1417:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_1424:
	dd	3
	dd	0
	dd	0
	align	4
_1421:
	dd	_352
	dd	260
	dd	5
	align	4
_1428:
	dd	3
	dd	0
	dd	0
	align	4
_1425:
	dd	_352
	dd	262
	dd	5
	align	4
_1438:
	dd	3
	dd	0
	dd	0
	align	4
_1429:
	dd	_352
	dd	265
	dd	5
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
_1482:
	db	"List",0
_1483:
	db	":brl.linkedlist.TList",0
	align	4
_1481:
	dd	3
	dd	0
	dd	2
	dd	_1482
	dd	_1483
	dd	-76
	dd	0
	align	4
_1439:
	dd	_352
	dd	267
	dd	5
	align	4
_1442:
	dd	_352
	dd	268
	dd	5
	align	4
_1446:
	dd	_352
	dd	269
	dd	5
_1478:
	db	"Tabled",0
_1479:
	db	"b",0
	align	4
_1477:
	dd	3
	dd	0
	dd	2
	dd	_1478
	dd	_1479
	dd	-4
	dd	0
	align	4
_1448:
	dd	_352
	dd	270
	dd	6
	align	4
_1450:
	dd	_352
	dd	271
	dd	6
	align	4
_1476:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-80
	dd	0
	align	4
_1460:
	dd	_352
	dd	272
	dd	7
	align	4
_1475:
	dd	3
	dd	0
	dd	0
	align	4
_1464:
	dd	_352
	dd	273
	dd	8
	align	4
_1469:
	dd	_352
	dd	274
	dd	8
	align	4
_1474:
	dd	3
	dd	0
	dd	0
	align	4
_1473:
	dd	_352
	dd	275
	dd	9
	align	4
_1480:
	dd	_352
	dd	281
	dd	5
	align	4
_1520:
	dd	3
	dd	0
	dd	0
	align	4
_1484:
	dd	_352
	dd	283
	dd	5
	align	4
_1514:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-84
	dd	0
	align	4
_1496:
	dd	_352
	dd	284
	dd	6
	align	4
_1503:
	dd	3
	dd	0
	dd	0
	align	4
_1500:
	dd	_352
	dd	285
	dd	7
	align	4
_1513:
	dd	3
	dd	0
	dd	0
	align	4
_1505:
	dd	_352
	dd	286
	dd	6
	align	4
_1512:
	dd	3
	dd	0
	dd	0
	align	4
_1509:
	dd	_352
	dd	287
	dd	7
	align	4
_1515:
	dd	_352
	dd	290
	dd	5
	align	4
_1560:
	dd	3
	dd	0
	dd	0
	align	4
_1521:
	dd	_352
	dd	292
	dd	5
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_1522:
	dd	_352
	dd	293
	dd	5
	align	4
_1549:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-88
	dd	0
	align	4
_1534:
	dd	_352
	dd	295
	dd	6
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_1548:
	dd	3
	dd	0
	dd	0
	align	4
_1538:
	dd	_352
	dd	296
	dd	7
	align	4
_1543:
	dd	_352
	dd	297
	dd	7
	align	4
_1547:
	dd	_352
	dd	298
	dd	7
	align	4
_1550:
	dd	_352
	dd	301
	dd	5
	align	4
_1553:
	dd	_352
	dd	302
	dd	5
	align	4
_1557:
	dd	_352
	dd	303
	dd	5
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,110,100,73,102
	align	4
_1575:
	dd	3
	dd	0
	dd	0
	align	4
_1561:
	dd	_352
	dd	305
	dd	5
	align	4
_1565:
	dd	_352
	dd	306
	dd	5
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,108,115,101,10
	align	4
_1568:
	dd	_352
	dd	307
	dd	5
	align	4
_1572:
	dd	_352
	dd	308
	dd	5
	align	4
_1615:
	dd	3
	dd	0
	dd	0
	align	4
_1576:
	dd	_352
	dd	310
	dd	5
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	87,104,105,108,101,32,40
	align	4
_1577:
	dd	_352
	dd	311
	dd	5
	align	4
_1604:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-92
	dd	0
	align	4
_1589:
	dd	_352
	dd	312
	dd	6
	align	4
_1603:
	dd	3
	dd	0
	dd	0
	align	4
_1593:
	dd	_352
	dd	313
	dd	7
	align	4
_1598:
	dd	_352
	dd	314
	dd	7
	align	4
_1602:
	dd	_352
	dd	315
	dd	7
	align	4
_1605:
	dd	_352
	dd	318
	dd	5
	align	4
_1608:
	dd	_352
	dd	319
	dd	5
	align	4
_1612:
	dd	_352
	dd	320
	dd	5
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	87,101,110,100
	align	4
_1655:
	dd	3
	dd	0
	dd	0
	align	4
_1616:
	dd	_352
	dd	322
	dd	5
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,101,112,101,97,116,10
	align	4
_1617:
	dd	_352
	dd	323
	dd	5
	align	4
_1621:
	dd	_352
	dd	324
	dd	5
	align	4
_1624:
	dd	_352
	dd	325
	dd	5
	align	4
_1628:
	dd	_352
	dd	326
	dd	5
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	85,110,116,105,108,32,40
	align	4
_1631:
	dd	_352
	dd	327
	dd	5
	align	4
_1654:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-96
	dd	0
	align	4
_1643:
	dd	_352
	dd	328
	dd	6
	align	4
_1653:
	dd	3
	dd	0
	dd	0
	align	4
_1647:
	dd	_352
	dd	329
	dd	7
	align	4
_1652:
	dd	_352
	dd	330
	dd	7
	align	4
_1698:
	dd	3
	dd	0
	dd	2
	dd	_707
	dd	_286
	dd	-100
	dd	0
	align	4
_1656:
	dd	_352
	dd	334
	dd	5
	align	4
_1658:
	dd	_352
	dd	335
	dd	5
	align	4
_1691:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-104
	dd	0
	align	4
_1670:
	dd	_352
	dd	336
	dd	6
	align	4
_1680:
	dd	3
	dd	0
	dd	0
	align	4
_1674:
	dd	_352
	dd	337
	dd	7
	align	4
_1679:
	dd	_352
	dd	338
	dd	7
	align	4
_1681:
	dd	_352
	dd	340
	dd	6
	align	4
_1690:
	dd	3
	dd	0
	dd	0
	align	4
_1685:
	dd	_352
	dd	341
	dd	7
	align	4
_1692:
	dd	_352
	dd	344
	dd	5
	align	4
_199:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	105,115,97,114,114,97,121
	align	4
_1697:
	dd	3
	dd	0
	dd	0
	align	4
_1696:
	dd	_352
	dd	345
	dd	6
	align	4
_1737:
	dd	3
	dd	0
	dd	0
	align	4
_1699:
	dd	_352
	dd	349
	dd	5
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	83,101,108,101,99,116,32,40
	align	4
_1700:
	dd	_352
	dd	350
	dd	5
	align	4
_1704:
	dd	_352
	dd	351
	dd	5
	align	4
_1726:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-108
	dd	0
	align	4
_1716:
	dd	_352
	dd	352
	dd	6
	align	4
_1725:
	dd	3
	dd	0
	dd	0
	align	4
_1720:
	dd	_352
	dd	353
	dd	7
	align	4
_1727:
	dd	_352
	dd	356
	dd	5
	align	4
_1730:
	dd	_352
	dd	357
	dd	5
	align	4
_1734:
	dd	_352
	dd	358
	dd	5
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	69,110,100,83,101,108,101,99,116
	align	4
_1777:
	dd	3
	dd	0
	dd	0
	align	4
_1738:
	dd	_352
	dd	360
	dd	5
	align	4
_1776:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-112
	dd	0
	align	4
_1750:
	dd	_352
	dd	361
	dd	6
	align	4
_1775:
	dd	3
	dd	0
	dd	0
	align	4
_1758:
	dd	_352
	dd	362
	dd	7
	align	4
_210:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	67,97,115,101,32
	align	4
_1763:
	dd	_352
	dd	363
	dd	7
	align	4
_1767:
	dd	_352
	dd	364
	dd	7
	align	4
_1770:
	dd	_352
	dd	365
	dd	7
	align	4
_1774:
	dd	_352
	dd	366
	dd	7
	align	4
_1790:
	dd	3
	dd	0
	dd	0
	align	4
_1778:
	dd	_352
	dd	370
	dd	5
	align	4
_212:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	68,101,102,97,117,108,116,10
	align	4
_1779:
	dd	_352
	dd	371
	dd	5
	align	4
_1783:
	dd	_352
	dd	372
	dd	5
	align	4
_1786:
	dd	_352
	dd	373
	dd	5
	align	4
_1792:
	dd	3
	dd	0
	dd	0
	align	4
_1791:
	dd	_352
	dd	375
	dd	5
	align	4
_214:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	69,120,105,116
	align	4
_1794:
	dd	3
	dd	0
	dd	0
	align	4
_1793:
	dd	_352
	dd	377
	dd	5
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,111,110,116,105,110,117,101
_1891:
	db	"StepVar",0
_1892:
	db	"ToVar",0
_1893:
	db	"Start",0
	align	4
_1890:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_286
	dd	-116
	dd	2
	dd	_1892
	dd	_286
	dd	-120
	dd	2
	dd	_1893
	dd	_286
	dd	-124
	dd	0
	align	4
_1795:
	dd	_352
	dd	379
	dd	5
	align	4
_1797:
	dd	_352
	dd	380
	dd	5
	align	4
_1799:
	dd	_352
	dd	381
	dd	5
	align	4
_1801:
	dd	_352
	dd	382
	dd	5
	align	4
_1874:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-128
	dd	0
	align	4
_1813:
	dd	_352
	dd	383
	dd	6
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_228:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_1823:
	dd	3
	dd	0
	dd	0
	align	4
_1822:
	dd	_352
	dd	399
	dd	8
	align	4
_1855:
	dd	3
	dd	0
	dd	0
	align	4
_1824:
	dd	_352
	dd	385
	dd	8
_1854:
	db	"Node3",0
	align	4
_1853:
	dd	3
	dd	0
	dd	2
	dd	_1854
	dd	_464
	dd	-132
	dd	0
	align	4
_1836:
	dd	_352
	dd	386
	dd	9
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
_1852:
	db	"Tmp",0
	align	4
_1851:
	dd	3
	dd	0
	dd	2
	dd	_1852
	dd	_286
	dd	-136
	dd	0
	align	4
_1840:
	dd	_352
	dd	387
	dd	10
	align	4
_1846:
	dd	_352
	dd	388
	dd	10
	align	4
_1849:
	dd	3
	dd	0
	dd	0
	align	4
_1848:
	dd	_352
	dd	388
	dd	36
	align	4
_1850:
	dd	_352
	dd	389
	dd	10
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	70,111,114,32
	align	4
_1861:
	dd	3
	dd	0
	dd	0
	align	4
_1856:
	dd	_352
	dd	393
	dd	8
	align	4
_1867:
	dd	3
	dd	0
	dd	0
	align	4
_1862:
	dd	_352
	dd	395
	dd	8
	align	4
_1873:
	dd	3
	dd	0
	dd	0
	align	4
_1868:
	dd	_352
	dd	397
	dd	8
	align	4
_1875:
	dd	_352
	dd	402
	dd	5
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	32,83,116,101,112,32
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,84,111,32
	align	4
_1876:
	dd	_352
	dd	403
	dd	5
	align	4
_1880:
	dd	_352
	dd	404
	dd	5
	align	4
_1883:
	dd	_352
	dd	405
	dd	5
	align	4
_1887:
	dd	_352
	dd	406
	dd	5
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,101,120,116
	align	4
_1899:
	dd	3
	dd	0
	dd	0
	align	4
_1894:
	dd	_352
	dd	408
	dd	5
	align	4
_233:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,101,116,117,114,110,32
	align	4
_1901:
	dd	3
	dd	0
	dd	0
	align	4
_1900:
	dd	_352
	dd	410
	dd	5
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,117,108,108
	align	4
_1941:
	dd	3
	dd	0
	dd	2
	dd	_578
	dd	_286
	dd	-140
	dd	0
	align	4
_1902:
	dd	_352
	dd	412
	dd	5
	align	4
_1910:
	dd	_352
	dd	413
	dd	5
	align	4
_1917:
	dd	_352
	dd	414
	dd	5
_1940:
	db	"Child",0
	align	4
_1939:
	dd	3
	dd	0
	dd	2
	dd	_1940
	dd	_464
	dd	-144
	dd	0
	align	4
_1929:
	dd	_352
	dd	415
	dd	6
	align	4
_1938:
	dd	3
	dd	0
	dd	0
	align	4
_1933:
	dd	_352
	dd	416
	dd	7
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_1947:
	dd	3
	dd	0
	dd	0
	align	4
_1942:
	dd	_352
	dd	420
	dd	5
	align	4
_1980:
	dd	3
	dd	0
	dd	0
	align	4
_1948:
	dd	_352
	dd	422
	dd	5
	align	4
_1979:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_464
	dd	-148
	dd	0
	align	4
_1960:
	dd	_352
	dd	423
	dd	6
	align	4
_1972:
	dd	3
	dd	0
	dd	0
	align	4
_1967:
	dd	_352
	dd	425
	dd	8
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_1978:
	dd	3
	dd	0
	dd	0
	align	4
_1973:
	dd	_352
	dd	427
	dd	8
_2057:
	db	"IsArray",0
_2058:
	db	"Obj",0
	align	4
_2056:
	dd	3
	dd	0
	dd	2
	dd	_2057
	dd	_1479
	dd	-8
	dd	2
	dd	_2058
	dd	_286
	dd	-152
	dd	0
	align	4
_1981:
	dd	_352
	dd	432
	dd	5
	align	4
_1983:
	dd	_352
	dd	433
	dd	5
	align	4
_2007:
	dd	3
	dd	0
	dd	0
	align	4
_1987:
	dd	_352
	dd	434
	dd	6
_2006:
	db	"Dim",0
	align	4
_2005:
	dd	3
	dd	0
	dd	2
	dd	_2006
	dd	_464
	dd	-156
	dd	0
	align	4
_1999:
	dd	_352
	dd	435
	dd	7
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_2004:
	dd	3
	dd	0
	dd	0
	align	4
_2003:
	dd	_352
	dd	435
	dd	30
	align	4
_2008:
	dd	_352
	dd	438
	dd	5
	align	4
_2014:
	dd	_352
	dd	439
	dd	5
_2044:
	db	"Count",0
	align	4
_2043:
	dd	3
	dd	0
	dd	2
	dd	_2044
	dd	_288
	dd	-160
	dd	0
	align	4
_2016:
	dd	_352
	dd	440
	dd	6
	align	4
_2018:
	dd	_352
	dd	441
	dd	6
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,32
	align	4
_2019:
	dd	_352
	dd	442
	dd	6
	align	4
_2042:
	dd	3
	dd	0
	dd	2
	dd	_2006
	dd	_464
	dd	-164
	dd	0
	align	4
_2031:
	dd	_352
	dd	443
	dd	7
	align	4
_2041:
	dd	3
	dd	0
	dd	0
	align	4
_2035:
	dd	_352
	dd	444
	dd	8
	align	4
_2036:
	dd	_352
	dd	445
	dd	8
	align	4
_2047:
	dd	3
	dd	0
	dd	0
	align	4
_2046:
	dd	_352
	dd	450
	dd	6
	align	4
_2048:
	dd	_352
	dd	452
	dd	5
	align	4
_2055:
	dd	3
	dd	0
	dd	0
	align	4
_2054:
	dd	_352
	dd	453
	dd	6
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_2059:
	dd	_352
	dd	456
	dd	3
_2121:
	db	"Glob",0
_2122:
	db	"datatype",0
_2123:
	db	"Def",0
	align	4
_2120:
	dd	1
	dd	_301
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_862
	dd	_464
	dd	-8
	dd	2
	dd	_2121
	dd	_288
	dd	-12
	dd	2
	dd	_707
	dd	_286
	dd	-16
	dd	2
	dd	_2122
	dd	_286
	dd	-20
	dd	2
	dd	_2123
	dd	_286
	dd	-24
	dd	0
	align	4
_2061:
	dd	_352
	dd	460
	dd	3
	align	4
_2064:
	dd	_352
	dd	461
	dd	3
_2092:
	db	"Att",0
_2093:
	db	":bah.libxml.TxmlAttribute",0
	align	4
_2091:
	dd	3
	dd	0
	dd	2
	dd	_2092
	dd	_2093
	dd	-28
	dd	0
	align	4
_2076:
	dd	_352
	dd	462
	dd	4
	align	4
_2086:
	dd	3
	dd	0
	dd	0
	align	4
_2083:
	dd	_352
	dd	464
	dd	6
	align	4
_2090:
	dd	3
	dd	0
	dd	0
	align	4
_2087:
	dd	_352
	dd	466
	dd	6
	align	4
_2094:
	dd	_352
	dd	469
	dd	3
	align	4
_2096:
	dd	_352
	dd	470
	dd	3
	align	4
_2103:
	dd	3
	dd	0
	dd	0
	align	4
_2102:
	dd	_352
	dd	472
	dd	5
	align	4
_261:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_2105:
	dd	3
	dd	0
	dd	0
	align	4
_2104:
	dd	_352
	dd	474
	dd	5
	align	4
_262:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	61,48,46,48
	align	4
_2109:
	dd	3
	dd	0
	dd	0
	align	4
_2106:
	dd	_352
	dd	476
	dd	5
	align	4
_2108:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_2110:
	dd	_352
	dd	478
	dd	3
	align	4
_2113:
	dd	_352
	dd	479
	dd	3
	align	4
_2116:
	dd	3
	dd	0
	dd	0
	align	4
_2115:
	dd	_352
	dd	480
	dd	4
	align	4
_263:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	71,108,111,98,97,108,32,95
	align	4
_2119:
	dd	3
	dd	0
	dd	0
	align	4
_2118:
	dd	_352
	dd	482
	dd	4
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	76,111,99,97,108,32,95
	align	4
_2176:
	dd	1
	dd	_303
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_862
	dd	_464
	dd	-8
	dd	2
	dd	_2121
	dd	_288
	dd	-12
	dd	2
	dd	_707
	dd	_286
	dd	-16
	dd	2
	dd	_2122
	dd	_286
	dd	-20
	dd	2
	dd	_2006
	dd	_288
	dd	-24
	dd	0
	align	4
_2124:
	dd	_352
	dd	486
	dd	3
	align	4
_2128:
	dd	_352
	dd	487
	dd	3
	align	4
_2168:
	dd	3
	dd	0
	dd	2
	dd	_2092
	dd	_2093
	dd	-28
	dd	0
	align	4
_2140:
	dd	_352
	dd	488
	dd	4
	align	4
_2151:
	dd	3
	dd	0
	dd	0
	align	4
_2148:
	dd	_352
	dd	490
	dd	6
	align	4
_2157:
	dd	3
	dd	0
	dd	0
	align	4
_2152:
	dd	_352
	dd	492
	dd	6
	align	4
_2167:
	dd	3
	dd	0
	dd	0
	align	4
_2158:
	dd	_352
	dd	494
	dd	6
	align	4
_2161:
	dd	_352
	dd	495
	dd	6
	align	4
_2166:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_288
	dd	-32
	dd	0
	align	4
_2165:
	dd	_352
	dd	496
	dd	7
	align	4
_2169:
	dd	_352
	dd	500
	dd	3
	align	4
_2172:
	dd	3
	dd	0
	dd	0
	align	4
_2171:
	dd	_352
	dd	501
	dd	4
	align	4
_2175:
	dd	3
	dd	0
	dd	0
	align	4
_2174:
	dd	_352
	dd	503
	dd	4
_2216:
	db	"Typ",0
_2217:
	db	"DimCount",0
	align	4
_2215:
	dd	1
	dd	_304
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_2216
	dd	_286
	dd	-8
	dd	2
	dd	_2217
	dd	_288
	dd	-12
	dd	2
	dd	_847
	dd	_286
	dd	-16
	dd	0
	align	4
_2177:
	dd	_352
	dd	507
	dd	3
	align	4
_2179:
	dd	_352
	dd	508
	dd	3
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_2191:
	dd	3
	dd	0
	dd	0
	align	4
_2190:
	dd	_352
	dd	526
	dd	5
	align	4
_2193:
	dd	3
	dd	0
	dd	0
	align	4
_2192:
	dd	_352
	dd	510
	dd	5
	align	4
_271:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	83,116,114,105,110,103
	align	4
_2195:
	dd	3
	dd	0
	dd	0
	align	4
_2194:
	dd	_352
	dd	512
	dd	5
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	73,110,116
	align	4
_2197:
	dd	3
	dd	0
	dd	0
	align	4
_2196:
	dd	_352
	dd	514
	dd	5
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	70,108,111,97,116
	align	4
_2199:
	dd	3
	dd	0
	dd	0
	align	4
_2198:
	dd	_352
	dd	516
	dd	5
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	68,111,117,98,108,101
	align	4
_2201:
	dd	3
	dd	0
	dd	0
	align	4
_2200:
	dd	_352
	dd	518
	dd	5
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,104,111,114,116
	align	4
_2203:
	dd	3
	dd	0
	dd	0
	align	4
_2202:
	dd	_352
	dd	520
	dd	5
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	76,111,110,103
	align	4
_2205:
	dd	3
	dd	0
	dd	0
	align	4
_2204:
	dd	_352
	dd	522
	dd	5
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	66,121,116,101
	align	4
_2207:
	dd	3
	dd	0
	dd	0
	align	4
_2206:
	dd	_352
	dd	524
	dd	5
	align	4
_2208:
	dd	_352
	dd	528
	dd	3
	align	4
_2213:
	dd	3
	dd	0
	dd	2
	dd	_288
	dd	_288
	dd	-20
	dd	0
	align	4
_2212:
	dd	_352
	dd	529
	dd	4
	align	4
_2214:
	dd	_352
	dd	531
	dd	3
	align	4
_2227:
	dd	1
	dd	_306
	dd	2
	dd	_372
	dd	_373
	dd	-4
	dd	2
	dd	_2216
	dd	_286
	dd	-8
	dd	0
	align	4
_2218:
	dd	_352
	dd	535
	dd	3
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
	align	4
_2219:
	dd	_352
	dd	536
	dd	3
	align	4
_2224:
	dd	3
	dd	0
	dd	0
	align	4
_2223:
	dd	_352
	dd	540
	dd	5
	align	4
_2226:
	dd	3
	dd	0
	dd	0
	align	4
_2225:
	dd	_352
	dd	538
	dd	5
