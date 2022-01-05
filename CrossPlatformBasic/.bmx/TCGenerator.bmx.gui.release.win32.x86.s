	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	___bb_libxml_libxml
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
	extrn	_bbStringFind
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringReplace
	extrn	_bbStringSlice
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_bbStringToUpper
	extrn	_brl_map_CreateMap
	extrn	_brl_stream_SaveString
	public	__bb_TCGenerator_AllDatatype
	public	__bb_TCGenerator_ArrayDef
	public	__bb_TCGenerator_Block
	public	__bb_TCGenerator_Delete
	public	__bb_TCGenerator_Generate
	public	__bb_TCGenerator_GetNextMathString
	public	__bb_TCGenerator_GetRealDatatype
	public	__bb_TCGenerator_GetTabs
	public	__bb_TCGenerator_IsType
	public	__bb_TCGenerator_New
	public	__bb_TCGenerator_VarDef
	public	__bb_main
	public	_bb_TCGenerator
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	cmp	dword [_451],0
	je	_452
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_452:
	mov	dword [_451],1
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_util_cpb
	mov	eax,dword [_449]
	and	eax,1
	cmp	eax,0
	jne	_450
	push	8
	push	_375
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
	mov	dword [__bb_TCGenerator_AllDatatype],eax
	or	dword [_449],1
_450:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_398
_398:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TCGenerator
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	dword [ebx+12],0
	mov	byte [ebx+16],0
	mov	dword [ebx+20],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,0
	jmp	_401
_401:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_404:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_457
	push	eax
	call	_bbGCFree
	add	esp,4
_457:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_459
	push	eax
	call	_bbGCFree
	add	esp,4
_459:
	mov	eax,0
	jmp	_455
_455:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,124
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	push	eax
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-64],_bbEmptyString
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-120],eax
	mov	eax,dword [ebp-120]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-124],eax
	jmp	_32
_34:
	mov	eax,dword [ebp-124]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	cmp	dword [ebp-100],_bbNullObject
	je	_32
	mov	eax,dword [ebp-100]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_474
	push	_42
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_475
	push	_69
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_476
	push	_65
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_477
	jmp	_473
_474:
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_479
	mov	eax,dword [ebp-100]
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
	jmp	_36
_38:
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
	je	_36
	mov	eax,esi
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_488
	mov	eax,dword [ebp+8]
	push	_40
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
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
	jnz	_493
	push	eax
	call	_bbGCFree
	add	esp,4
_493:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	jmp	_494
_488:
	mov	eax,esi
	push	_41
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_496
	mov	eax,dword [ebp+8]
	push	_40
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
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
	jnz	_501
	push	eax
	call	_bbGCFree
	add	esp,4
_501:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
_496:
_494:
_36:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_38
_37:
_479:
	jmp	_473
_475:
	mov	eax,dword [ebp-100]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-76],eax
	push	0
	push	_44
	push	dword [ebp-76]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	jle	_504
	push	_45
	push	dword [ebp-76]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-76],eax
_504:
	mov	eax,dword [ebp-100]
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	mov	edi,_47
	mov	dword [ebp-56],_bbEmptyString
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-100]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	esi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	esi,eax
	push	esi
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	eax,dword [ebp-100]
	push	_49
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-88],eax
	push	_51
	push	dword [ebp-76]
	push	_50
	push	esi
	push	_40
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
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	mov	dword [ebp-52],_bbEmptyString
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_515
	mov	eax,dword [ebp-100]
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
	jmp	_52
_54:
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
	je	_52
	mov	eax,ebx
	push	_55
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_524
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	esi,eax
	mov	eax,ebx
	push	_57
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_56
	push	esi
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	mov	eax,ebx
	push	_59
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_58
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-52]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-52],eax
_524:
_52:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
_515:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-56]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-56],eax
	cmp	dword [ebp-88],0
	je	_531
	push	dword [ebp-56]
	mov	eax,dword [ebp+8]
	push	dword [eax+24]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_535
	push	eax
	call	_bbGCFree
	add	esp,4
_535:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	push	_60
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	push	_61
	mov	eax,dword [ebp+8]
	push	dword [eax+24]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_539
	push	eax
	call	_bbGCFree
	add	esp,4
_539:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp-100]
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
	jmp	_62
_64:
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
	je	_62
	mov	eax,esi
	push	_65
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_548
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	eax
	mov	eax,dword [ebp+8]
	push	dword [eax+24]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_553
	push	eax
	call	_bbGCFree
	add	esp,4
_553:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	jmp	_63
_548:
_62:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_64
_63:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	push	_66
	mov	eax,dword [ebp+8]
	push	dword [eax+24]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_557
	push	eax
	call	_bbGCFree
	add	esp,4
_557:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	jmp	_558
_531:
	mov	eax,dword [ebp-100]
	push	_67
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	push	esi
	push	dword [ebp-76]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_561
	push	_4
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_561:
	cmp	eax,0
	je	_563
	push	_61
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	ebx,dword [ebp+8]
	push	_60
	mov	eax,dword [ebp-52]
	push	dword [eax+8]
	push	1
	push	dword [ebp-52]
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
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_66
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
	jmp	_566
_563:
	push	_60
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-56],eax
_566:
_558:
	push	dword [ebp-56]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_570
	push	eax
	call	_bbGCFree
	add	esp,4
_570:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_473
_476:
	mov	eax,dword [ebp-100]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-112],eax
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_375
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_576
	push	eax
	call	_bbGCFree
	add	esp,4
_576:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	mov	ebx,dword [ebp-112]
	inc	dword [ebx+4]
	mov	edx,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_580
	push	eax
	call	_bbGCFree
	add	esp,4
_580:
	mov	edx,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	push	_71
	push	dword [ebp-112]
	push	_70
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
	call	_brl_map_CreateMap
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_585
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_72
_74:
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
	je	_72
	mov	eax,ebx
	push	_75
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_594
	mov	edi,dword [ebp-96]
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+60]
	add	esp,8
	cmp	eax,0
	jne	_599
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_79
	push	_78
	push	_77
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_76
	push	dword [ebp-20]
	push	edi
	mov	eax,dword [edi]
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp-96]
	mov	dword [ebp-4],eax
	mov	edi,dword [ebp+8]
	mov	esi,ebx
	mov	eax,ebx
	push	_45
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_80
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
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
	push	dword [ebp-4]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
	jmp	_613
_599:
	mov	edi,dword [ebp-96]
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_bbStringClass
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_619
	mov	eax,_bbEmptyString
_619:
	mov	dword [ebp-12],eax
	mov	edi,dword [ebp-96]
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+68]
	add	esp,8
	mov	eax,ebx
	push	_45
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_81
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
	mov	edi,dword [ebp-96]
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	dword [ebp-12]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+56]
	add	esp,12
_613:
_594:
_72:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_74
_73:
_585:
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	mov	dword [ebp-80],_4
	mov	dword [ebp-108],_bbEmptyString
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_632
	mov	eax,dword [ebp-100]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	eax,dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-92],eax
	jmp	_82
_84:
	mov	eax,dword [ebp-92]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_82
	mov	eax,dword [ebp-40]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_641
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-40]
	mov	eax,dword [ebp-40]
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	esi,eax
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-40]
	push	_86
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_56
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp-40]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-40]
	push	_89
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
	push	_88
	push	_43
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_87
	push	edi
	mov	eax,dword [edi]
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
	push	dword [ebp-108]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-108],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	jmp	_652
_641:
	mov	eax,dword [ebp-40]
	push	_75
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_654
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	edi,dword [ebp-40]
	mov	esi,dword [ebp-40]
	mov	ebx,dword [ebp-40]
	mov	eax,dword [ebp+8]
	push	_90
	push	0
	push	dword [ebp-112]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_51
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_50
	push	_48
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-8]
	mov	eax,dword [ebp-8]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-24]
	mov	eax,dword [ebp-24]
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-40]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_662
	mov	eax,dword [ebp-40]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_91
_93:
	mov	eax,dword [ebp-28]
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
	je	_91
	push	_94
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_671
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+292]
	add	esp,4
	jmp	_91
_671:
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_674
	mov	edi,dword [ebp+8]
	mov	esi,ebx
	mov	eax,ebx
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_50
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
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
	push	_95
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_674:
_91:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_93
_92:
_662:
	push	_61
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp-40]
	push	_96
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_680
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-40]
	mov	eax,dword [ebp-40]
	push	_98
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_97
	push	edi
	mov	eax,dword [edi]
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	jmp	_685
_680:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_685:
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-40]
	mov	eax,dword [ebp-40]
	push	_100
	push	_78
	push	_77
	push	_48
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_99
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-40]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_691
	mov	eax,dword [ebp-40]
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
	jmp	_101
_103:
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
	je	_101
	mov	eax,esi
	push	_55
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_700
	mov	eax,esi
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_95
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_700:
_101:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_103
_102:
_691:
	push	_60
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_66
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
_654:
_652:
_82:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_84
_83:
_632:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-36],eax
	jmp	_104
_106:
	mov	eax,dword [ebp-36]
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_104
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-96]
	push	_bbStringClass
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_713
	mov	eax,_bbEmptyString
_713:
	push	_109
	push	eax
	push	_108
	push	_78
	push	_77
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_107
	push	ebx
	push	esi
	mov	eax,dword [esi]
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
	push	dword [ebp-80]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-80],eax
	mov	esi,dword [ebp+8]
	push	_112
	push	_78
	push	_77
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_111
	push	_78
	push	_77
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_110
	push	esi
	mov	eax,dword [esi]
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
	push	dword [ebp-80]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-80],eax
_104:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_106
_105:
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	ebx,dword [ebp+8]
	push	_89
	push	dword [ebp-112]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_113
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
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_719
	push	eax
	call	_bbGCFree
	add	esp,4
_719:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	ebx,dword [ebp+8]
	push	_115
	push	dword [ebp-112]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_68
	push	dword [ebp-112]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_114
	push	dword [ebp-112]
	call	_bbStringToUpper
	add	esp,4
	push	eax
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	push	dword [ebp-80]
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	dword [ebp-108]
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp+8]
	push	_116
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_66
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	jmp	_473
_477:
	push	dword [ebp-64]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_726
	push	eax
	call	_bbGCFree
	add	esp,4
_726:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	_117
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
	jnz	_731
	push	eax
	call	_bbGCFree
	add	esp,4
_731:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_118
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
	jnz	_736
	push	eax
	call	_bbGCFree
	add	esp,4
_736:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	dword [ebp-100]
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
	jnz	_741
	push	eax
	call	_bbGCFree
	add	esp,4
_741:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_119
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
	jnz	_746
	push	eax
	call	_bbGCFree
	add	esp,4
_746:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_473
_473:
_32:
	mov	eax,dword [ebp-124]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	mov	dword [ebp-72],1
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-116],eax
	jmp	_748
_122:
	mov	dword [ebp-32],_bbEmptyString
	mov	ebx,dword [ebp+8]
	push	_124
	push	dword [ebp-72]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_123
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
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	esi,1
	mov	ebx,dword [ebp-72]
	jmp	_753
_127:
	push	esi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_128
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
_125:
	add	esi,1
_753:
	cmp	esi,ebx
	jle	_127
_126:
	push	_61
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_25
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	esi,1
	mov	ebx,dword [ebp-72]
	jmp	_757
_131:
	push	_77
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
_129:
	add	esi,1
_757:
	cmp	esi,ebx
	jle	_131
_130:
	push	_132
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	push	_133
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	esi,1
	mov	ebx,dword [ebp-72]
	jmp	_761
_136:
	push	esi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_137
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	esi,dword [ebp-72]
	jge	_763
	push	_138
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
_763:
_134:
	add	esi,1
_761:
	cmp	esi,ebx
	jle	_136
_135:
	push	_139
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	edi,1
	mov	eax,dword [ebp-72]
	sub	eax,1
	mov	dword [ebp-48],eax
	jmp	_765
_142:
	mov	ebx,dword [ebp+8]
	push	_147
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_146
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_145
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_144
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_143
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	esi,_148
	mov	ebx,1
	jmp	_771
_151:
	push	_153
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_152
	push	esi
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
_149:
	add	ebx,1
_771:
	cmp	ebx,edi
	jle	_151
_150:
	push	esi
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	push	_60
	mov	eax,edi
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_154
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
_140:
	add	edi,1
_765:
	cmp	edi,dword [ebp-48]
	jle	_142
_141:
	mov	esi,1
	mov	ebx,dword [ebp-72]
	sub	ebx,1
	jmp	_774
_157:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_66
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
_155:
	add	esi,1
_774:
	cmp	esi,ebx
	jle	_157
_156:
	mov	eax,dword [ebp+8]
	push	_158
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	push	_66
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	dword [ebp-32]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_781
	push	eax
	call	_bbGCFree
	add	esp,4
_781:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
_120:
	add	dword [ebp-72],1
_748:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-72],eax
	jle	_122
_121:
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	_786
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_790
	push	eax
	call	_bbGCFree
	add	esp,4
_790:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	dword [eax+24]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_794
	push	eax
	call	_bbGCFree
	add	esp,4
_794:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	_40
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_798
	push	eax
	call	_bbGCFree
	add	esp,4
_798:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	dword [ebp+16]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_brl_stream_SaveString
	add	esp,8
	mov	eax,0
	jmp	_409
_409:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetTabs:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	edx,dword [ebp+8]
	mov	eax,_bbEmptyString
	mov	esi,1
	mov	ebx,dword [edx+12]
	jmp	_801
_163:
	push	_164
	push	eax
	call	_bbStringConcat
	add	esp,8
_161:
	add	esi,1
_801:
	cmp	esi,ebx
	jle	_163
_162:
	jmp	_412
_412:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Block:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+12]
	mov	edi,_bbEmptyString
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_805
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_165
_167:
	mov	eax,dword [ebp-8]
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
	je	_165
	mov	eax,esi
	push	_168
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
	je	_815
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_815:
	cmp	eax,0
	je	_817
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
	cmp	dword [ebx+8],0
	jle	_821
	push	_169
	push	dword [ebx+8]
	mov	eax,dword [ebx+8]
	sub	eax,1
	push	eax
	push	ebx
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_822
	push	_119
	push	dword [ebx+8]
	mov	eax,dword [ebx+8]
	sub	eax,1
	push	eax
	push	ebx
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_822:
	cmp	eax,0
	jne	_824
	push	_170
	push	dword [ebx+8]
	mov	eax,dword [ebx+8]
	sub	eax,1
	push	eax
	push	ebx
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_824:
	cmp	eax,0
	jne	_826
	push	_40
	push	dword [ebx+8]
	mov	eax,dword [ebx+8]
	sub	eax,1
	push	eax
	push	ebx
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_826:
	cmp	eax,0
	je	_828
	mov	eax,dword [ebp+8]
	push	_40
	push	ebx
	push	eax
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
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
	jmp	_830
_828:
	mov	eax,dword [ebp+8]
	push	_89
	push	ebx
	push	eax
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
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
_830:
_821:
_817:
_165:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_167
_166:
_805:
	mov	eax,edi
	jmp	_416
_416:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetNextMathString:
	push	ebp
	mov	ebp,esp
	sub	esp,120
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-104],_bbEmptyString
	cmp	dword [ebp+12],_bbNullObject
	jne	_833
	mov	eax,_4
	jmp	_420
_833:
	mov	eax,dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_171
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_837
	push	_178
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_838
	push	_183
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_839
	push	_188
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_840
	push	_193
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_841
	push	_197
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_842
	push	_202
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_843
	push	_207
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_844
	push	_211
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_845
	push	_216
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_846
	push	_221
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_847
	push	_226
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_848
	push	_231
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_849
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_850
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_851
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_852
	push	_237
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_853
	push	_238
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_853
	push	_239
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_854
	push	_255
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_855
	push	_260
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_856
	push	_264
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_857
	push	_270
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_858
	push	_272
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_859
	push	_277
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_860
	push	_284
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_861
	push	_289
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_862
	push	_294
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_863
	push	_301
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_864
	push	_303
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_865
	push	_304
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_866
	push	_305
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_867
	push	_320
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_868
	push	_322
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_869
	push	_324
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_870
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_871
	push	_329
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_872
	push	_334
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_873
	jmp	_836
_837:
	mov	dword [ebp-104],_172
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
	mov	dword [ebp-96],eax
	jmp	_173
_175:
	mov	eax,dword [ebp-96]
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
	je	_173
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_884
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_885
	jmp	_883
_884:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_138
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
	jmp	_883
_885:
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
	jmp	_883
_883:
_173:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_175
_174:
	push	_98
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_838:
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
	jmp	_179
_181:
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
	je	_179
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_900
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_901
	jmp	_899
_900:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_182
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
	push	_68
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
	jmp	_899
_901:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_899
_899:
_179:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_181
_180:
	jmp	_836
_839:
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
	jmp	_184
_186:
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
	je	_184
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_916
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_917
	jmp	_915
_916:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_187
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
	push	_68
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
	jmp	_915
_917:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_915
_915:
_184:
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_186
_185:
	jmp	_836
_840:
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
	jmp	_189
_191:
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
	je	_189
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_932
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_933
	jmp	_931
_932:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_192
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
	push	_68
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
	jmp	_931
_933:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_931
_931:
_189:
	mov	eax,dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_191
_190:
	jmp	_836
_841:
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
	jmp	_194
_196:
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
	je	_194
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_948
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_949
	jmp	_947
_948:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_77
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
	push	_68
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
	jmp	_947
_949:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_947
_947:
_194:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_196
_195:
	jmp	_836
_842:
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
	jmp	_198
_200:
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
	je	_198
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_964
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_965
	jmp	_963
_964:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_201
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
	push	_68
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
	jmp	_963
_965:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_963
_963:
_198:
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_200
_199:
	jmp	_836
_843:
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
	jmp	_203
_205:
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
	je	_203
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_980
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_981
	jmp	_979
_980:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_206
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
	push	_68
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
	jmp	_979
_981:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_979
_979:
_203:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_205
_204:
	jmp	_836
_844:
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
	jmp	_208
_210:
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
	je	_208
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_996
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_997
	jmp	_995
_996:
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
	push	_68
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
	jmp	_995
_997:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_995
_995:
_208:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_210
_209:
	jmp	_836
_845:
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
	jmp	_212
_214:
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
	je	_212
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1012
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1013
	jmp	_1011
_1012:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_215
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
	push	_68
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
	jmp	_1011
_1013:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_1011
_1011:
_212:
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_214
_213:
	jmp	_836
_846:
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
	jmp	_217
_219:
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
	je	_217
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1028
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1029
	jmp	_1027
_1028:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_220
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
	push	_68
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
	jmp	_1027
_1029:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_1027
_1027:
_217:
	mov	eax,dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_219
_218:
	jmp	_836
_847:
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
	jmp	_222
_224:
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
	je	_222
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1044
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1045
	jmp	_1043
_1044:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_225
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
	push	_68
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
	jmp	_1043
_1045:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_1043
_1043:
_222:
	mov	eax,dword [ebp-56]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	jmp	_836
_848:
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
	jmp	_227
_229:
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
	je	_227
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1060
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1061
	jmp	_1059
_1060:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_230
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
	push	_68
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
	jmp	_1059
_1061:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_1059
_1059:
_227:
	mov	eax,dword [ebp-52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_229
_228:
	jmp	_836
_849:
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
	jmp	_232
_234:
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
	je	_232
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1076
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1077
	jmp	_1075
_1076:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_235
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
	push	_68
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
	jmp	_1075
_1077:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_98
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
	jmp	_1075
_1075:
_232:
	mov	eax,dword [ebp-48]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
	jmp	_836
_850:
	mov	eax,dword [ebp+12]
	push	_236
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
	jmp	_836
_851:
	mov	eax,dword [ebp+12]
	push	_4
	push	_782
	push	_236
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_782
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_852:
	mov	eax,dword [ebp+12]
	push	_236
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
	jmp	_836
_853:
	mov	eax,dword [ebp+12]
	push	_59
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_59
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_854:
	mov	eax,dword [ebp+12]
	push	_240
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+12]
	push	_241
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1090
	push	_25
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1093
	push	_26
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1094
	push	_31
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1095
	push	_30
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1096
	push	_29
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1097
	push	_28
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1098
	jmp	_1092
_1093:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_242
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1094:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_243
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1095:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_244
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1096:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_245
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1097:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_246
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1098:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_247
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1092
_1092:
	jmp	_1111
_1090:
	push	_27
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1112
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1115
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1116
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1117
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1118
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1119
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1120
	jmp	_1114
_1115:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_248
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1116:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_249
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1117:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_250
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1118:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_251
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1119:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_252
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1120:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_253
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1114
_1114:
	jmp	_1133
_1112:
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_98
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
	push	_254
	push	0
	push	_241
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
	push	_68
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
_1133:
_1111:
	jmp	_836
_855:
	mov	eax,dword [ebp+12]
	push	_51
	push	_43
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
	mov	byte [ebp-4],1
	cmp	eax,_bbNullObject
	je	_1142
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-40],eax
	jmp	_256
_258:
	mov	eax,dword [ebp-40]
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
	je	_256
	mov	eax,esi
	push	_55
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1150
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
	push	_138
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1150:
	mov	eax,dword [ebp+12]
	push	_259
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1154
	movzx	eax,byte [ebp-4]
_1154:
	cmp	eax,0
	je	_1156
	mov	byte [ebp-4],0
	mov	eax,dword [ebp+12]
	push	_259
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	push	_138
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1156:
_256:
	mov	eax,dword [ebp-40]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_258
_257:
_1142:
	mov	eax,dword [ebp-104]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-104]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-104],eax
	push	_98
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_856:
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
	jmp	_261
_263:
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
	je	_261
	mov	eax,esi
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1166
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1168
_1166:
	mov	eax,esi
	push	_41
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1170
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1170:
_1168:
_261:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_263
_262:
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
	jmp	_836
_857:
	mov	dword [ebp-104],_265
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
	jmp	_266
_268:
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
	je	_266
	mov	eax,esi
	push	_269
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1182
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_61
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
	jmp	_267
_1182:
_266:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_268
_267:
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
	push	_119
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
	jmp	_836
_858:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_271
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_40
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
	jmp	_836
_859:
	mov	dword [ebp-104],_273
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
	jmp	_274
_276:
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
	je	_274
	mov	eax,esi
	push	_269
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1197
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_61
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
	jmp	_275
_1197:
_274:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_276
_275:
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
	push	_119
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
	jmp	_836
_860:
	mov	dword [ebp-104],_278
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
	push	_279
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
	jmp	_280
_282:
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
	je	_280
	mov	eax,esi
	push	_269
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1212
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_283
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
	jmp	_281
_1212:
_280:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_282
_281:
	jmp	_836
_861:
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
	jmp	_285
_287:
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
	je	_285
	mov	eax,ebx
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1224
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_288
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
_1224:
	mov	eax,ebx
	push	_236
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1228
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
_1228:
_285:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_287
_286:
	jmp	_836
_862:
	mov	dword [ebp-104],_290
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
	mov	dword [ebp-24],eax
	jmp	_291
_293:
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
	je	_291
	mov	eax,esi
	push	_269
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1239
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_61
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
_1239:
_291:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_293
_292:
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
	push	_119
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
	jmp	_836
_863:
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
	jmp	_295
_297:
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
	je	_295
	mov	eax,esi
	push	_269
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
	je	_1253
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1253:
	cmp	eax,0
	je	_1255
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_299
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
	push	_298
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
	mov	eax,dword [ebp+8]
	push	_300
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
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	jmp	_296
_1255:
_295:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_297
_296:
	jmp	_836
_864:
	push	_302
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
	jmp	_836
_865:
	mov	dword [ebp-104],_303
	jmp	_836
_866:
	mov	dword [ebp-104],_304
	jmp	_836
_867:
	mov	dword [ebp-104],_306
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-116],_bbEmptyString
	mov	dword [ebp-120],_bbEmptyString
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-100]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-112],eax
	jmp	_307
_309:
	mov	eax,dword [ebp-112]
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
	je	_307
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_310
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1274
	push	_315
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1275
	push	_241
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1276
	push	_316
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1277
	jmp	_308
_1274:
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
	jmp	_311
_313:
	mov	eax,dword [ebp-12]
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
	je	_311
	mov	eax,ebx
	push	_314
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1286
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
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	_306
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_89
	push	ebx
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1291
_1286:
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
	mov	dword [ebp-16],eax
	push	dword [ebp-16]
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1291:
_311:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_313
_312:
	jmp	_1273
_1275:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_169
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
	push	_288
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
	jmp	_1273
_1276:
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
	jmp	_1273
_1277:
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
	mov	dword [ebp-116],eax
	jmp	_1273
_1273:
_307:
	mov	eax,dword [ebp-112]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_309
_308:
	push	_1301
	push	dword [ebp-116]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_1302
	mov	eax,_215
	jmp	_1303
_1302:
	mov	eax,_5
_1303:
	push	_61
	push	dword [ebp-116]
	push	_317
	push	dword [ebp-16]
	push	_169
	push	dword [ebp-120]
	push	eax
	push	dword [ebp-16]
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
	push	_318
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
	push	dword [ebp-104]
	push	_319
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_868:
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
	push	_321
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_836
_869:
	mov	dword [ebp-104],_323
	jmp	_836
_870:
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
	push	_46
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
	mov	dword [ebp-28],eax
	jmp	_325
_327:
	mov	eax,dword [ebp-28]
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
	je	_325
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
	jne	_1323
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_153
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
	push	_328
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
_1323:
_325:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_327
_326:
	jmp	_836
_871:
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
	jmp	_836
_872:
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
	jmp	_330
_332:
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
	je	_330
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_176
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1338
	push	_177
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1339
	jmp	_1337
_1338:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_333
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
	jmp	_1337
_1339:
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
	jmp	_1337
_1337:
_330:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_332
_331:
	jmp	_836
_873:
	mov	byte [ebp-8],0
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1346
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
	jmp	_335
_337:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_335
	push	_338
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1355
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-8],al
_1355:
_335:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_337
_336:
_1346:
	mov	ebx,dword [ebp+8]
	mov	edx,dword [ebp+12]
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	push	_46
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
	je	_1359
	mov	dword [ebp-32],0
	push	_98
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_340
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_339
	push	dword [ebp-108]
	push	_68
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
	mov	dword [ebp-20],eax
	jmp	_341
_343:
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
	je	_341
	mov	eax,esi
	push	_338
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1369
	add	dword [ebp-32],1
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
	push	_138
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1369:
_341:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_343
_342:
	push	_98
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp+8]
	cmp	dword [eax+20],edx
	jge	_1372
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],edx
_1372:
	jmp	_1373
_1359:
	push	_345
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_344
	push	dword [ebp-108]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_68
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
_1373:
	mov	ebx,dword [ebp+8]
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	je	_1375
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1375:
	cmp	eax,0
	je	_1377
	push	_98
	push	dword [ebp-104]
	push	_68
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_346
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
_1377:
	jmp	_836
_836:
	mov	eax,dword [ebp-104]
	jmp	_420
_420:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_VarDef:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
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
	jmp	_347
_349:
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
	je	_347
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_43
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1391
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1392
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1393
	jmp	_1390
_1391:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_1390
_1392:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_1390
_1393:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1390
_1390:
_347:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_349
_348:
	mov	eax,dword [ebp+8]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	mov	esi,eax
	mov	ebx,dword [ebp-8]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1402
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1402
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1402
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1402
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1403
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1403
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1404
	mov	eax,_352
	jmp	_1401
_1402:
	mov	eax,_350
	jmp	_1401
_1403:
	mov	eax,_351
	jmp	_1401
_1404:
	mov	eax,_1406
	jmp	_1401
_1401:
	push	_169
	push	eax
	push	_59
	push	dword [ebp-16]
	push	_56
	push	esi
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
	jmp	_424
_424:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_ArrayDef:
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
	jmp	_353
_355:
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
	je	_353
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_43
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1420
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1421
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1422
	jmp	_1419
_1420:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1419
_1421:
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
	jmp	_1419
_1422:
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
	jmp	_1428
_358:
	push	_77
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
_356:
	add	esi,1
_1428:
	cmp	esi,ebx
	jle	_358
_357:
	jmp	_1419
_1419:
_353:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_355
_354:
	push	_359
	push	dword [ebp-12]
	push	_56
	push	edi
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_428
_428:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetRealDatatype:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	edi,dword [ebp+16]
	push	_27
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1433
	push	_25
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1434
	push	_26
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1435
	push	_31
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1436
	push	_29
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1437
	push	_30
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1438
	push	_28
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1439
	push	_96
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1440
	movzx	eax,byte [ebx+16]
	cmp	eax,0
	je	_1441
	push	_77
	push	esi
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_367
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_1442
_1441:
	push	_77
	push	esi
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
_1442:
	jmp	_1432
_1433:
	mov	eax,_360
	jmp	_1432
_1434:
	mov	eax,_361
	jmp	_1432
_1435:
	mov	eax,_362
	jmp	_1432
_1436:
	mov	eax,_363
	jmp	_1432
_1437:
	mov	eax,_364
	jmp	_1432
_1438:
	mov	eax,_365
	jmp	_1432
_1439:
	mov	eax,_366
	jmp	_1432
_1440:
	mov	eax,_96
	jmp	_1432
_1432:
	mov	ebx,1
	mov	esi,edi
	jmp	_1444
_370:
	push	_77
	push	eax
	call	_bbStringConcat
	add	esp,8
_368:
	add	ebx,1
_1444:
	cmp	ebx,esi
	jle	_370
_369:
	jmp	_433
_433:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_IsType:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+12]
	push	_4
	push	_371
	push	_4
	push	_77
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
	je	_1448
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_96
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1448
	mov	byte [ebp-4],1
	jmp	_437
_1448:
	mov	byte [ebp-4],0
	jmp	_437
_437:
	movzx	eax,byte [ebp-4]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_451:
	dd	0
	align	4
_449:
	dd	0
_375:
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
__bb_TCGenerator_AllDatatype:
	dd	_bbEmptyArray
_373:
	db	"TCGenerator",0
_374:
	db	"Output",0
_376:
	db	"ScopeCount",0
_377:
	db	"i",0
_378:
	db	"InStruct",0
_379:
	db	"b",0
_380:
	db	"MaxSizeArray",0
_381:
	db	"FuncDef",0
_382:
	db	"New",0
_383:
	db	"()i",0
_384:
	db	"Delete",0
_385:
	db	"Generate",0
_386:
	db	"($,$)i",0
_387:
	db	"GetTabs",0
_388:
	db	"()$",0
_389:
	db	"Block",0
_390:
	db	"(:bah.libxml.TxmlNode)$",0
_391:
	db	"GetNextMathString",0
_392:
	db	"VarDef",0
_393:
	db	"ArrayDef",0
_394:
	db	"GetRealDatatype",0
_395:
	db	"($,i)$",0
_396:
	db	"IsType",0
_397:
	db	"($)b",0
	align	4
_372:
	dd	2
	dd	_373
	dd	3
	dd	_374
	dd	_375
	dd	8
	dd	3
	dd	_376
	dd	_377
	dd	12
	dd	3
	dd	_378
	dd	_379
	dd	16
	dd	3
	dd	_380
	dd	_377
	dd	20
	dd	3
	dd	_381
	dd	_375
	dd	24
	dd	6
	dd	_382
	dd	_383
	dd	16
	dd	6
	dd	_384
	dd	_383
	dd	20
	dd	6
	dd	_385
	dd	_386
	dd	48
	dd	6
	dd	_387
	dd	_388
	dd	52
	dd	6
	dd	_389
	dd	_390
	dd	56
	dd	6
	dd	_391
	dd	_390
	dd	60
	dd	6
	dd	_392
	dd	_390
	dd	64
	dd	6
	dd	_393
	dd	_390
	dd	68
	dd	6
	dd	_394
	dd	_395
	dd	72
	dd	6
	dd	_396
	dd	_397
	dd	76
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_372
	dd	28
	dd	__bb_TCGenerator_New
	dd	__bb_TCGenerator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCGenerator_Generate
	dd	__bb_TCGenerator_GetTabs
	dd	__bb_TCGenerator_Block
	dd	__bb_TCGenerator_GetNextMathString
	dd	__bb_TCGenerator_VarDef
	dd	__bb_TCGenerator_ArrayDef
	dd	__bb_TCGenerator_GetRealDatatype
	dd	__bb_TCGenerator_IsType
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_42:
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
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_44:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,105,115,114,101,97,108,95
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	116,121,112,101,100,101,102,32
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
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,32
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,44
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,95
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	44,32,95
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,59,10
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	41,32,123,10
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,123,10
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	116,121,112,101,100,101,102,32,115,116,114,117,99,116,32,95
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_79:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	41,40,41,59,10
	align	4
_78:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,100,105,109
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,40,42,42,118,112,116,114,95
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,38
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,44,32,32,38
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	59,10
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,32,61,32
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,109,112,45,62,95
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	32,116,104,105,115,44,32,105,110,116,32,95,95,118,112,111
	dw	115,95,95
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,116,117,114,110,32,40
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	91,95,95,118,112,111,115,95,95,93,40,116,104,105,115
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	116,104,105,115,45,62,118,112,116,114,95
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,125,59,10
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	91,93,41,40,41,32,61,32,123,32
	align	4
_107:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	32,40,42,116,109,112,116,97,98,108,101,95
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,10,10
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	32,61,32,116,109,112,116,97,98,108,101,95
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,109,112,45,62,118,112,116,114,95
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,32
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	42,32,116,109,112,32,41,32,123,10
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	42,32,110,101,119,95
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	114,101,116,117,114,110,32,116,109,112,59,10
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	105,110,116,32,109,97,105,110,40,41,32,123,10
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	40,105,110,116,32,115,105,122,101
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	118,111,105,100,42,32,97,108,108,111,99,97,114,114,97,121
	dw	95,100,105,109
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_132:
	dd	_bbStringClass
	dd	2147483647
	dd	36
	dw	32,109,101,109,61,40,118,111,105,100,42,41,71,67,95,109
	dw	97,108,108,111,99,40,115,105,122,101,42,112,97,114,97,109
	dw	49,41,59,10
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_138:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_139:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	43,43,41,32,123,10
	align	4
_146:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	59,118,97,114,105
	align	4
_145:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	60,112,97,114,97,109
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	61,48,59,118,97,114,105
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,111,114,40,118,97,114,105
	align	4
_148:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_152:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_154:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	61,40,118,111,105,100,42,41,71,67,95,109,97,108,108,111
	dw	99,40,115,105,122,101,42,112,97,114,97,109
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	114,101,116,117,114,110,32,40,118,111,105,100,42,41,109,101
	dw	109,59,10
	align	4
_786:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	35,105,110,99,108,117,100,101,32,34,99,108,105,98,47,109
	dw	97,105,110,46,99,34,10
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_211:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_237:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_238:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_239:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_255:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_270:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_289:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_301:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_320:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_322:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_324:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_329:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_334:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_172:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,124,124,32
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_220:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_236:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_782:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_242:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_248:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_265:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_271:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_290:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_299:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_300:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_302:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_315:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_314:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_1301:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_318:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
	align	4
_328:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,62
	align	4
_338:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	40,115,105,122,101,111,102,40
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	41,97,108,108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,41
	align	4
_344:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_346:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_1406:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_359:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_360:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_361:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_362:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_363:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_364:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_365:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_366:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_371:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
