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
	cmp	dword [_363],0
	je	_364
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_364:
	mov	dword [_363],1
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	mov	eax,dword [_361]
	and	eax,1
	cmp	eax,0
	jne	_362
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
	or	dword [_361],1
_362:
	push	_bb_TBMXGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_308
_308:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TBMXGenerator
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	dword [ebx+20],0
	mov	eax,0
	jmp	_311
_311:
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
	jnz	_369
	push	eax
	call	_bbGCFree
	add	esp,4
_369:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_371
	push	eax
	call	_bbGCFree
	add	esp,4
_371:
	mov	eax,0
	jmp	_367
_367:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	push	eax
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	esi,eax
	mov	ebx,_32
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_376
	push	eax
	call	_bbGCFree
	add	esp,4
_376:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+120]
	add	esp,4
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-48],eax
	jmp	_33
_35:
	mov	eax,dword [ebp-48]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_33
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_389
	push	_43
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_390
	push	_69
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_391
	push	_66
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_392
	jmp	_388
_389:
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_394
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_37
_39:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_37
	mov	eax,esi
	push	_40
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_403
	mov	eax,dword [ebp+8]
	push	_41
	push	1
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_408
	push	eax
	call	_bbGCFree
	add	esp,4
_408:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	jmp	_409
_403:
	mov	eax,esi
	push	_42
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_411
	mov	eax,dword [ebp+8]
	push	_41
	push	1
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,12
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_416
	push	eax
	call	_bbGCFree
	add	esp,4
_416:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
_411:
_409:
_37:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
_394:
	jmp	_388
_390:
	mov	eax,dword [ebp-28]
	push	_44
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_419
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_419:
	cmp	eax,0
	je	_422
	mov	eax,dword [ebp-28]
	push	_45
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	sete	al
	movzx	eax,al
_422:
	cmp	eax,0
	jne	_432
	mov	eax,dword [ebp-28]
	push	_44
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_427
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-28]
	push	_46
	push	eax
	mov	eax,dword [eax]
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
_427:
	cmp	eax,0
	je	_430
	mov	eax,dword [ebp-28]
	push	_4
	push	_45
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_430:
_432:
	cmp	eax,0
	je	_434
	mov	eax,dword [ebp-28]
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-28]
	push	_47
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	mov	ebx,eax
	mov	eax,dword [ebp-28]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_442
	mov	eax,dword [ebp-28]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	setg	al
	movzx	eax,al
_442:
	cmp	eax,0
	je	_444
	push	_49
	push	ebx
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
_444:
	mov	eax,dword [ebp-28]
	push	_44
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-40],eax
	push	_52
	push	ebx
	push	_51
	push	dword [ebp-36]
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
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_450
	push	eax
	call	_bbGCFree
	add	esp,4
_450:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	dword [ebp-20],_bbEmptyString
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_453
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_53
_55:
	mov	eax,dword [ebp-8]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_53
	mov	eax,ebx
	push	_56
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_462
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	0
	push	_47
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	esi,eax
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_468
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	setg	al
	movzx	eax,al
_468:
	cmp	eax,0
	je	_470
	push	_49
	push	esi
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
_470:
	mov	eax,ebx
	push	_59
	push	esi
	push	_58
	push	_46
	push	eax
	mov	eax,dword [eax]
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
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_475
	push	eax
	call	_bbGCFree
	add	esp,4
_475:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	mov	eax,ebx
	push	_61
	push	_46
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
_462:
_53:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_55
_54:
_453:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringSlice
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_480
	push	eax
	call	_bbGCFree
	add	esp,4
_480:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	cmp	dword [ebp-40],0
	je	_481
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_484
	mov	eax,dword [ebp-28]
	push	_45
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	sete	al
	movzx	eax,al
_484:
	cmp	eax,0
	je	_486
	push	_62
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_490
	push	eax
	call	_bbGCFree
	add	esp,4
_490:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_63
_65:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_63
	mov	eax,esi
	push	_66
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_499
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
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
	jnz	_504
	push	eax
	call	_bbGCFree
	add	esp,4
_504:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_64
_499:
_63:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_65
_64:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	push	_67
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
_486:
	jmp	_509
_481:
	mov	eax,dword [ebp-28]
	push	_45
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	push	esi
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_512
	push	_4
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_512:
	cmp	eax,0
	je	_514
	push	_62
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_518
	push	eax
	call	_bbGCFree
	add	esp,4
_518:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	ebx,dword [ebp+8]
	push	_62
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	push	1
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_68
	push	esi
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
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_523
	push	eax
	call	_bbGCFree
	add	esp,4
_523:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_67
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
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
	jnz	_528
	push	eax
	call	_bbGCFree
	add	esp,4
_528:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
_514:
_509:
_434:
	jmp	_388
_391:
	mov	eax,dword [ebp-28]
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_70
	push	dword [ebp-32]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_531
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
	jnz	_535
	push	eax
	call	_bbGCFree
	add	esp,4
_535:
	mov	dword [__bb_TBMXGenerator_AllDatatype],ebx
	mov	ebx,dword [ebp-32]
	inc	dword [ebx+4]
	mov	edx,dword [__bb_TBMXGenerator_AllDatatype]
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_539
	push	eax
	call	_bbGCFree
	add	esp,4
_539:
	mov	edx,dword [__bb_TBMXGenerator_AllDatatype]
	mov	eax,dword [__bb_TBMXGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	push	_72
	push	dword [ebp-32]
	push	_71
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	dword [ebp-24],_bbEmptyString
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_543
	mov	eax,dword [ebp-28]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_73
_75:
	mov	eax,dword [ebp-12]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_73
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
	jne	_552
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_48
	push	eax
	mov	eax,dword [eax]
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
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	ebx,dword [ebp+8]
	mov	edx,esi
	push	_41
	push	eax
	push	_58
	push	_46
	push	edx
	mov	eax,dword [edx]
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
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	mov	ebx,dword [ebp+8]
	mov	edi,dword [ebp+8]
	mov	eax,esi
	push	_41
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	_79
	push	_46
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_78
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
_552:
_73:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_75
_74:
_543:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	push	dword [ebp-16]
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
	mov	ebx,dword [ebp+8]
	push	_83
	push	dword [ebp-32]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_82
	push	dword [ebp-32]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_51
	push	dword [ebp-32]
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
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_572
	push	eax
	call	_bbGCFree
	add	esp,4
_572:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	push	dword [ebp-24]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_576
	push	eax
	call	_bbGCFree
	add	esp,4
_576:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
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
	jnz	_581
	push	eax
	call	_bbGCFree
	add	esp,4
_581:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_67
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
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
	jnz	_586
	push	eax
	call	_bbGCFree
	add	esp,4
_586:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
_531:
	jmp	_388
_392:
	mov	eax,dword [ebp+8]
	push	dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
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
	jnz	_591
	push	eax
	call	_bbGCFree
	add	esp,4
_591:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_388
_388:
_33:
	mov	eax,dword [ebp-48]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_41
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_595
	push	eax
	call	_bbGCFree
	add	esp,4
_595:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	dword [ebp+16]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_brl_stream_SaveString
	add	esp,8
	mov	eax,0
	jmp	_319
_319:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_GetTabs:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	edx,dword [ebp+8]
	mov	eax,_bbEmptyString
	mov	esi,1
	mov	ebx,dword [edx+12]
	jmp	_598
_87:
	push	_88
	push	eax
	call	_bbStringConcat
	add	esp,8
_85:
	add	esi,1
_598:
	cmp	esi,ebx
	jle	_87
_86:
	jmp	_322
_322:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_Block:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	dword [ebp-8],_bbEmptyString
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_602
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-4],eax
	jmp	_89
_91:
	mov	eax,dword [ebp-4]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_89
	mov	eax,esi
	push	_92
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
	je	_612
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_612:
	cmp	eax,0
	je	_614
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	cmp	dword [eax+8],0
	jle	_618
	mov	edx,ebx
	push	_41
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
_618:
_614:
_89:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
_602:
	mov	eax,dword [ebp-8]
	jmp	_326
_326:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_GetNextMathString:
	push	ebp
	mov	ebp,esp
	sub	esp,120
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-104],_bbEmptyString
	cmp	dword [ebp+12],_bbNullObject
	jne	_621
	mov	eax,_4
	jmp	_330
_621:
	mov	eax,dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_93
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_625
	push	_94
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_625
	push	_101
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_626
	push	_106
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_627
	push	_111
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_628
	push	_116
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_629
	push	_121
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_630
	push	_126
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_631
	push	_130
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_632
	push	_135
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_633
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_634
	push	_145
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_635
	push	_150
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_636
	push	_155
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_637
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_638
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_639
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_640
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_641
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_641
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_642
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_643
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_644
	push	_174
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_645
	push	_181
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_646
	push	_183
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_647
	push	_189
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_648
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_649
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_650
	push	_206
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_651
	push	_211
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_652
	push	_213
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_653
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_654
	push	_217
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_655
	push	_232
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_656
	push	_234
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_657
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_658
	push	_47
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_659
	push	_242
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_660
	push	_247
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_661
	jmp	_624
_625:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-92],eax
	jmp	_95
_97:
	mov	eax,dword [ebp-92]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_95
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_672
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_673
	jmp	_671
_672:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_99
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_671
_673:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_671
_671:
_95:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_97
_96:
	jmp	_624
_626:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-88],eax
	jmp	_102
_104:
	mov	eax,dword [ebp-88]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_102
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_688
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_689
	jmp	_687
_688:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_105
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_687
_689:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_687
_687:
_102:
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_104
_103:
	jmp	_624
_627:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-84],eax
	jmp	_107
_109:
	mov	eax,dword [ebp-84]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_107
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_704
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_705
	jmp	_703
_704:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_110
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_703
_705:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_703
_703:
_107:
	mov	eax,dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_109
_108:
	jmp	_624
_628:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-80],eax
	jmp	_112
_114:
	mov	eax,dword [ebp-80]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_112
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_720
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_721
	jmp	_719
_720:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_115
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_719
_721:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_719
_719:
_112:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_114
_113:
	jmp	_624
_629:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_117
_119:
	mov	eax,dword [ebp-76]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_117
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_736
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_737
	jmp	_735
_736:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_120
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_735
_737:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_735
_735:
_117:
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	jmp	_624
_630:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-72],eax
	jmp	_122
_124:
	mov	eax,dword [ebp-72]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_122
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_752
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_753
	jmp	_751
_752:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_125
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_751
_753:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_751
_751:
_122:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_124
_123:
	jmp	_624
_631:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_127
_129:
	mov	eax,dword [ebp-68]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_127
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_768
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_769
	jmp	_767
_768:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_5
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_767
_769:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_767
_767:
_127:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_129
_128:
	jmp	_624
_632:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_131
_133:
	mov	eax,dword [ebp-64]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_131
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_784
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_785
	jmp	_783
_784:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_134
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_783
_785:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_783
_783:
_131:
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_133
_132:
	jmp	_624
_633:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-60],eax
	jmp	_136
_138:
	mov	eax,dword [ebp-60]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_136
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_800
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_801
	jmp	_799
_800:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_139
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_799
_801:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_799
_799:
_136:
	mov	eax,dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_138
_137:
	jmp	_624
_634:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_141
_143:
	mov	eax,dword [ebp-56]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_141
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_816
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_817
	jmp	_815
_816:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_144
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_815
_817:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_815
_815:
_141:
	mov	eax,dword [ebp-56]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_143
_142:
	jmp	_624
_635:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_146
_148:
	mov	eax,dword [ebp-52]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_146
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_832
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_833
	jmp	_831
_832:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_149
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_831
_833:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_831
_831:
_146:
	mov	eax,dword [ebp-52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_148
_147:
	jmp	_624
_636:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-48],eax
	jmp	_151
_153:
	mov	eax,dword [ebp-48]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_151
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_848
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_849
	jmp	_847
_848:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_154
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_847
_849:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_847
_847:
_151:
	mov	eax,dword [ebp-48]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_153
_152:
	jmp	_624
_637:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_156
_158:
	mov	eax,dword [ebp-44]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_156
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_864
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_865
	jmp	_863
_864:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_159
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_863
_865:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_863
_863:
_156:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_158
_157:
	jmp	_624
_638:
	mov	eax,dword [ebp+12]
	push	_160
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	mov	dword [ebp-104],eax
	jmp	_624
_639:
	mov	eax,dword [ebp+12]
	push	_4
	push	_871
	push	_160
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_871
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_640:
	mov	eax,dword [ebp+12]
	push	_160
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToFloat
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	mov	dword [ebp-104],eax
	jmp	_624
_641:
	mov	eax,dword [ebp+12]
	push	_61
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_61
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_642:
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_165
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	_68
	push	0
	push	_164
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
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
	mov	dword [ebp-104],eax
	jmp	_624
_643:
	mov	eax,dword [ebp+12]
	push	_68
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_882
	mov	byte [ebp-4],1
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	jmp	_167
_169:
	mov	eax,dword [ebp-32]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_167
	mov	eax,esi
	push	_56
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_891
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,4
	cmp	esi,eax
	je	_895
	push	_59
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_895:
_891:
_167:
	mov	eax,dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_169
_168:
_882:
	push	_165
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_644:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_171
_173:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_171
	mov	eax,esi
	push	_40
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_904
	mov	eax,dword [ebp+8]
	push	0
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,12
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_906
_904:
	mov	eax,esi
	push	_42
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_908
	mov	eax,dword [ebp+8]
	push	0
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,12
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_908:
_906:
_171:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_173
_172:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+248]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_645:
	mov	dword [ebp-104],_175
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_176
_178:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_176
	mov	eax,esi
	push	_179
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_920
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	jmp	_177
_920:
_176:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_178
_177:
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_646:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_182
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_41
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_647:
	mov	dword [ebp-104],_184
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_185
_187:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_185
	mov	eax,esi
	push	_179
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_935
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	jmp	_186
_935:
_185:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_187
_186:
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_188
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_648:
	mov	dword [ebp-104],_190
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_191
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_192
_194:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_192
	mov	eax,esi
	push	_179
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_950
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_165
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_193
_950:
_192:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_194
_193:
	jmp	_624
_649:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	jmp	_196
_198:
	mov	eax,dword [ebp-36]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_196
	mov	eax,ebx
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_962
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	_149
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_962:
	mov	eax,ebx
	push	_160
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_966
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_966:
_196:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_198
_197:
	mov	eax,dword [ebp+12]
	push	_199
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_970
	push	_41
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_970:
	jmp	_624
_650:
	mov	dword [ebp-104],_201
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-20],eax
	jmp	_202
_204:
	mov	eax,dword [ebp-20]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_202
	mov	eax,esi
	push	_179
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_979
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_62
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_979:
_202:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_204
_203:
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_205
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_651:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_207
_209:
	mov	eax,edi
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_207
	mov	eax,esi
	push	_179
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
	je	_993
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_993:
	cmp	eax,0
	je	_995
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_41
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	jmp	_208
_995:
_207:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_209
_208:
	jmp	_624
_652:
	push	_212
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	jmp	_624
_653:
	mov	dword [ebp-104],_214
	jmp	_624
_654:
	mov	dword [ebp-104],_216
	jmp	_624
_655:
	mov	dword [ebp-120],_bbEmptyString
	mov	dword [ebp-112],_bbEmptyString
	mov	dword [ebp-116],_bbEmptyString
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-100],eax
	jmp	_218
_220:
	mov	eax,dword [ebp-100]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_218
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_221
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1013
	push	_227
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1014
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1015
	push	_228
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1016
	jmp	_219
_1013:
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_222
_224:
	mov	eax,dword [ebp-12]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_222
	mov	eax,esi
	push	_225
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1025
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	ebx,eax
	push	_149
	push	ebx
	call	_bbStringContains
	add	esp,8
	cmp	eax,0
	je	_1029
	push	0
	push	_149
	push	ebx
	call	_bbStringFind
	add	esp,12
	push	eax
	push	0
	push	ebx
	call	_bbStringSlice
	add	esp,12
	mov	ebx,eax
_1029:
	push	ebx
	push	_226
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1025:
_222:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	jmp	_1012
_1014:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	dword [ebp-116],eax
	jmp	_1012
_1015:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	dword [ebp-112],eax
	jmp	_1012
_1016:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	jmp	_1012
_1012:
_218:
	mov	eax,dword [ebp-100]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_220
_219:
	push	_41
	push	dword [ebp-120]
	push	_230
	push	dword [ebp-112]
	push	_229
	push	dword [ebp-116]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_231
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_656:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_624
_657:
	mov	dword [ebp-104],_235
	jmp	_624
_658:
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	eax,dword [ebp+12]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
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
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	_4
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-24],eax
	jmp	_237
_239:
	mov	eax,dword [ebp-24]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_237
	mov	eax,esi
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1055
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_241
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	_240
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1055:
_237:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_239
_238:
	jmp	_624
_659:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_4
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	dword [ebp-104],eax
	jmp	_624
_660:
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-40],eax
	jmp	_243
_245:
	mov	eax,dword [ebp-40]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_243
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_98
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1070
	push	_100
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1071
	jmp	_1069
_1070:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_246
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	mov	dword [ebp-104],eax
	jmp	_1069
_1071:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1069
_1069:
_243:
	mov	eax,dword [ebp-40]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_245
_244:
	jmp	_624
_661:
	mov	byte [ebp-8],0
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1078
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_248
_250:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_248
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1087
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-8],al
_1087:
_248:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_250
_249:
_1078:
	mov	ebx,dword [ebp+8]
	mov	edx,dword [ebp+12]
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	push	_47
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-108],eax
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_1091
	mov	dword [ebp-28],0
	push	_253
	push	dword [ebp-108]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_252
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_254
_256:
	mov	eax,dword [ebp-16]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_254
	mov	eax,esi
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1101
	add	dword [ebp-28],1
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_241
	push	_bah_libxml_TxmlNode
	push	1
	push	eax
	mov	eax,dword [eax]
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
	push	_240
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1101:
_254:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_256
_255:
	jmp	_1104
_1091:
	push	_4
	push	dword [ebp-108]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_252
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1104:
	mov	eax,dword [ebp+8]
	push	dword [ebp-108]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	je	_1106
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1106:
	cmp	eax,0
	je	_1108
	push	_165
	push	dword [ebp-104]
	push	_68
	push	dword [ebp-108]
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
	mov	dword [ebp-104],eax
_1108:
	jmp	_624
_624:
	mov	eax,dword [ebp-104]
	jmp	_330
_330:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_VarDef:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-8],_bbEmptyString
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-4],eax
	jmp	_258
_260:
	mov	eax,dword [ebp-4]
	push	_bah_libxml_TxmlAttribute
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_258
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1121
	push	_47
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1122
	jmp	_1120
_1121:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1120
_1122:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_1120
_1120:
_258:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_260
_259:
	mov	esi,_bbEmptyString
	mov	ebx,dword [ebp-8]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1128
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1128
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1128
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1128
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1129
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1129
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1130
	jmp	_1127
_1128:
	mov	esi,_261
	jmp	_1127
_1129:
	mov	esi,_262
	jmp	_1127
_1130:
	mov	esi,_1132
	jmp	_1127
_1127:
	mov	eax,dword [ebp+8]
	push	0
	push	dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-8],eax
	cmp	dword [ebp+16],0
	je	_1134
	push	_4
	push	esi
	push	dword [ebp-8]
	push	_58
	push	dword [ebp-12]
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
	jmp	_335
_1134:
	push	_4
	push	esi
	push	dword [ebp-8]
	push	_58
	push	dword [ebp-12]
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
	jmp	_335
_335:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_ArrayDef:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],_bbEmptyString
	mov	edi,_bbEmptyString
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_265
_267:
	mov	eax,dword [ebp-8]
	push	_bah_libxml_TxmlAttribute
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_265
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1149
	push	_47
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1150
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1151
	jmp	_1148
_1149:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1148
_1150:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	edi,eax
	jmp	_1148
_1151:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	esi,1
	mov	ebx,eax
	jmp	_1157
_270:
	push	_49
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
_268:
	add	esi,1
_1157:
	cmp	esi,ebx
	jle	_270
_269:
	jmp	_1148
_1148:
_265:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_267
_266:
	cmp	dword [ebp+16],0
	je	_1159
	push	_4
	push	edi
	push	_58
	push	dword [ebp-12]
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
	jmp	_340
_1159:
	push	_4
	push	edi
	push	_58
	push	dword [ebp-12]
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
	jmp	_340
_340:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_GetRealDatatype:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+12]
	mov	esi,dword [ebp+16]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1164
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1165
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1166
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1167
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1168
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1169
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1170
	push	_278
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1171
	push	ebx
	call	_bbStringToUpper
	add	esp,4
	jmp	_1163
_1164:
	mov	eax,_271
	jmp	_345
_1165:
	mov	eax,_272
	jmp	_345
_1166:
	mov	eax,_273
	jmp	_345
_1167:
	mov	eax,_274
	jmp	_345
_1168:
	mov	eax,_275
	jmp	_345
_1169:
	mov	eax,_276
	jmp	_345
_1170:
	mov	eax,_277
	jmp	_345
_1171:
	mov	eax,_272
	jmp	_345
_1163:
	mov	ebx,1
	jmp	_1173
_281:
	push	_49
	push	eax
	call	_bbStringConcat
	add	esp,8
_279:
	add	ebx,1
_1173:
	cmp	ebx,esi
	jle	_281
_280:
	jmp	_345
_345:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TBMXGenerator_IsType:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+12]
	push	_4
	push	_282
	push	_4
	push	_115
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_278
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1177
	mov	byte [ebp-4],1
	jmp	_349
_1177:
	mov	byte [ebp-4],0
	jmp	_349
_349:
	movzx	eax,byte [ebp-4]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_363:
	dd	0
	align	4
_361:
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
_284:
	db	"TBMXGenerator",0
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
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,117,112,101,114,83,116,114,105,99,116,10
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
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
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
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
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
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
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
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,10
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	69,110,100,70,117,110,99,116,105,111,110,10
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
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
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	70,105,101,108,100,32,95
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
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	69,110,100,84,121,112,101,10
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
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	114,101,116,117,114,110,32,116,109,112,10
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
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
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,65,110,100,32
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,79,114,32
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_139:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_154:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_871:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
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
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,110,100,73,102
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	69,108,115,101,10
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	87,104,105,108,101,32,40
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	87,101,110,100
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,101,112,101,97,116,10
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	85,110,116,105,108,32,40
	align	4
_199:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	105,115,97,114,114,97,121
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	83,101,108,101,99,116,32,40
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	69,110,100,83,101,108,101,99,116
	align	4
_210:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	67,97,115,101,32
	align	4
_212:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	68,101,102,97,117,108,116,10
	align	4
_214:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	69,120,105,116
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,111,110,116,105,110,117,101
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
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	70,111,114,32
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
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,101,120,116
	align	4
_233:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	82,101,116,117,114,110,32
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,117,108,108
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
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
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
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_261:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_262:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	61,48,46,48
	align	4
_1132:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_263:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	71,108,111,98,97,108,32,95
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	76,111,99,97,108,32,95
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_271:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	83,116,114,105,110,103
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	73,110,116
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	70,108,111,97,116
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	68,111,117,98,108,101
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	83,104,111,114,116
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	76,111,110,103
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	66,121,116,101
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
