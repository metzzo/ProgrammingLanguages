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
	public	___bb_crossplatformbasic_tcgenerator
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
	public	_bb_TCGenerator
	section	"code" code
___bb_crossplatformbasic_tcgenerator:
	push	ebp
	mov	ebp,esp
	cmp	dword [_455],0
	je	_456
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_456:
	mov	dword [_455],1
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_util_cpb
	mov	eax,dword [_453]
	and	eax,1
	cmp	eax,0
	jne	_454
	push	8
	push	_378
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
	or	dword [_453],1
_454:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_402
_402:
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
	mov	byte [ebx+28],1
	mov	eax,0
	jmp	_405
_405:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_408:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_461
	push	eax
	call	_bbGCFree
	add	esp,4
_461:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_463
	push	eax
	call	_bbGCFree
	add	esp,4
_463:
	mov	eax,0
	jmp	_459
_459:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,164
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	push	eax
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-100],_bbEmptyString
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-160],eax
	mov	eax,dword [ebp-160]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-164],eax
	jmp	_32
_34:
	mov	eax,dword [ebp-164]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-144],eax
	cmp	dword [ebp-144],_bbNullObject
	je	_32
	mov	eax,dword [ebp-144]
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
	je	_478
	push	_42
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_479
	push	_69
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_480
	push	_65
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_481
	jmp	_477
_478:
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_483
	mov	eax,dword [ebp-144]
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
	jne	_492
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
	jnz	_497
	push	eax
	call	_bbGCFree
	add	esp,4
_497:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	jmp	_498
_492:
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
	jne	_500
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
	jnz	_505
	push	eax
	call	_bbGCFree
	add	esp,4
_505:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
_500:
_498:
_36:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_38
_37:
_483:
	jmp	_477
_479:
	mov	eax,dword [ebp-144]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-112],eax
	push	0
	push	_44
	push	dword [ebp-112]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	jle	_508
	push	_45
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
_508:
	mov	eax,dword [ebp-144]
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	mov	edi,_47
	mov	dword [ebp-92],_bbEmptyString
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-144]
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
	mov	eax,dword [ebp-144]
	push	_49
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-120],eax
	push	_51
	push	dword [ebp-112]
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
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	mov	dword [ebp-88],_bbEmptyString
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_519
	mov	eax,dword [ebp-144]
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
	jmp	_52
_54:
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
	jne	_528
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
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
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
	push	dword [ebp-88]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-88],eax
_528:
_52:
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
_519:
	mov	eax,dword [ebp-92]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-92]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-92],eax
	cmp	dword [ebp-120],0
	je	_535
	push	dword [ebp-92]
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
	push	_60
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
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
	jnz	_543
	push	eax
	call	_bbGCFree
	add	esp,4
_543:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp-144]
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
	jne	_552
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
	jnz	_557
	push	eax
	call	_bbGCFree
	add	esp,4
_557:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	jmp	_63
_552:
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
	jnz	_561
	push	eax
	call	_bbGCFree
	add	esp,4
_561:
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],ebx
	jmp	_562
_535:
	mov	eax,dword [ebp-144]
	push	_67
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	push	esi
	push	dword [ebp-112]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_565
	push	_4
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_565:
	cmp	eax,0
	je	_567
	push	_61
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	ebx,dword [ebp+8]
	push	_60
	mov	eax,dword [ebp-88]
	push	dword [eax+8]
	push	1
	push	dword [ebp-88]
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
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
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
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	jmp	_570
_567:
	push	_60
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
_570:
_562:
	push	dword [ebp-92]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_574
	push	eax
	call	_bbGCFree
	add	esp,4
_574:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_477
_480:
	mov	eax,dword [ebp-144]
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-156],eax
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_378
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_580
	push	eax
	call	_bbGCFree
	add	esp,4
_580:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	mov	ebx,dword [ebp-156]
	inc	dword [ebx+4]
	mov	edx,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_584
	push	eax
	call	_bbGCFree
	add	esp,4
_584:
	mov	edx,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	push	_71
	push	dword [ebp-156]
	push	_70
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	call	_brl_map_CreateMap
	mov	dword [ebp-132],eax
	call	_brl_map_CreateMap
	mov	dword [ebp-136],eax
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_590
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-104],eax
	mov	eax,dword [ebp-104]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-108],eax
	jmp	_72
_74:
	mov	eax,dword [ebp-108]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	je	_72
	mov	eax,dword [ebp-60]
	push	_75
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_600
	mov	edi,dword [ebp-132]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
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
	jne	_605
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
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
	mov	edi,eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
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
	push	edi
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	mov	eax,dword [ebp-132]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	mov	dword [ebp-20],eax
	mov	edi,dword [ebp-60]
	mov	esi,dword [ebp-60]
	mov	eax,dword [ebp+8]
	mov	dword [ebp-56],eax
	mov	eax,dword [ebp-60]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	_82
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_81
	push	_78
	push	_77
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
	push	dword [ebp-52]
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-56]
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_80
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
	push	dword [ebp-20]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-32]
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
	mov	edi,dword [ebp-136]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	_84
	push	_83
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+56]
	add	esp,12
	jmp	_625
_605:
	mov	edi,dword [ebp-136]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	_bbStringClass
	push	_83
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_631
	mov	eax,_bbEmptyString
_631:
	push	eax
	call	_bbStringToInt
	add	esp,4
	add	eax,1
	mov	dword [ebp-72],eax
	mov	edi,dword [ebp-132]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
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
	jne	_638
	mov	eax,_bbEmptyString
_638:
	mov	dword [ebp-40],eax
	mov	edi,dword [ebp-132]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
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
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp-60]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	_82
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_86
	push	dword [ebp-72]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_85
	push	_78
	push	_77
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
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_80
	push	dword [ebp-12]
	mov	eax,dword [ebp-12]
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-40]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-40],eax
	mov	edi,dword [ebp-132]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	dword [ebp-40]
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
	mov	edi,dword [ebp-136]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-60]
	mov	eax,dword [ebp-60]
	push	_83
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-136]
	mov	dword [ebp-4],eax
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp-60]
	mov	ebx,dword [ebp-60]
	push	dword [ebp-72]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_83
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-4]
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
_625:
_600:
_72:
	mov	eax,dword [ebp-108]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_74
_73:
_590:
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	mov	dword [ebp-116],_4
	mov	dword [ebp-140],_bbEmptyString
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_663
	mov	eax,dword [ebp-144]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-124],eax
	mov	eax,dword [ebp-124]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-128],eax
	jmp	_87
_89:
	mov	eax,dword [ebp-128]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	je	_87
	mov	eax,dword [ebp-68]
	push	_90
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_672
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-68]
	mov	eax,dword [ebp-68]
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
	mov	eax,dword [ebp-68]
	push	_91
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
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp-68]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-68]
	push	_94
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
	push	_93
	push	_43
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_92
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
	push	dword [ebp-140]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-140],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
	jmp	_683
_672:
	mov	eax,dword [ebp-68]
	push	_75
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_685
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	edi,dword [ebp-68]
	mov	esi,dword [ebp-68]
	mov	ebx,dword [ebp-68]
	mov	eax,dword [ebp+8]
	push	_95
	push	0
	push	dword [ebp-156]
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
	push	dword [ebp-28]
	mov	eax,dword [ebp-28]
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-68]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_693
	mov	eax,dword [ebp-68]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-44],eax
	jmp	_96
_98:
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
	je	_96
	push	_99
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_702
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+292]
	add	esp,4
	jmp	_96
_702:
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_705
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
	push	_100
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
_705:
_96:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_98
_97:
_693:
	push	_61
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+28]
	cmp	eax,0
	je	_710
	mov	eax,dword [ebp+8]
	mov	dword [ebp-16],eax
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp-68]
	mov	ebx,dword [ebp-68]
	mov	eax,dword [ebp+8]
	mov	dword [ebp-48],eax
	mov	eax,dword [ebp-68]
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-68]
	push	_60
	push	_718
	push	_105
	push	_718
	push	_104
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
	push	dword [ebp-36]
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-48]
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_103
	push	_78
	push	_77
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
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_102
	push	_101
	push	dword [ebp-16]
	mov	eax,dword [ebp-16]
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
_710:
	mov	eax,dword [ebp-68]
	push	_106
	push	_46
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_720
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-68]
	mov	eax,dword [ebp-68]
	push	_108
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
	push	_107
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	jmp	_725
_720:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
_725:
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp-68]
	mov	eax,dword [ebp-68]
	push	_109
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
	push	_102
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp-68]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_731
	mov	eax,dword [ebp-68]
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
	jmp	_110
_112:
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
	je	_110
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
	jne	_740
	mov	eax,esi
	push	_43
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_100
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
_740:
_110:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_112
_111:
_731:
	push	_60
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],1
_685:
_683:
_87:
	mov	eax,dword [ebp-128]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_89
_88:
_663:
	mov	eax,dword [ebp-132]
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
	mov	dword [ebp-80],eax
	jmp	_113
_115:
	mov	eax,dword [ebp-80]
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
	je	_113
	mov	esi,dword [ebp-136]
	push	_bbStringClass
	push	_83
	push	ebx
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_752
	mov	eax,_bbEmptyString
_752:
	push	eax
	call	_bbStringToInt
	add	esp,4
	add	eax,1
	mov	esi,dword [ebp+8]
	push	_60
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_117
	push	ebx
	push	_116
	push	_78
	push	_77
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_80
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-116]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-116],eax
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-132]
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
	jne	_758
	mov	eax,_bbEmptyString
_758:
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-116]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-116],eax
_113:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_115
_114:
	mov	eax,dword [ebp+8]
	mov	byte [eax+16],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	ebx,dword [ebp+8]
	push	_94
	push	dword [ebp-156]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_118
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
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_763
	push	eax
	call	_bbGCFree
	add	esp,4
_763:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	ebx,dword [ebp+8]
	push	_120
	push	dword [ebp-156]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_68
	push	dword [ebp-156]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_119
	push	dword [ebp-156]
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	push	dword [ebp-116]
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	push	dword [ebp-140]
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	mov	eax,dword [ebp+8]
	push	_121
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	jmp	_477
_481:
	push	dword [ebp-100]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_770
	push	eax
	call	_bbGCFree
	add	esp,4
_770:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	_122
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
	jnz	_775
	push	eax
	call	_bbGCFree
	add	esp,4
_775:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	add	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_123
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
	jnz	_780
	push	eax
	call	_bbGCFree
	add	esp,4
_780:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	dword [ebp-144]
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
	jnz	_785
	push	eax
	call	_bbGCFree
	add	esp,4
_785:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_124
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
	jnz	_790
	push	eax
	call	_bbGCFree
	add	esp,4
_790:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	jmp	_477
_477:
_32:
	mov	eax,dword [ebp-164]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	mov	dword [ebp-96],1
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-152],eax
	jmp	_792
_127:
	mov	dword [ebp-64],_bbEmptyString
	mov	ebx,dword [ebp+8]
	push	_129
	push	dword [ebp-96]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_128
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	esi,1
	mov	ebx,dword [ebp-96]
	jmp	_797
_132:
	push	esi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_133
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_130:
	add	esi,1
_797:
	cmp	esi,ebx
	jle	_132
_131:
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	esi,1
	mov	ebx,dword [ebp-96]
	jmp	_801
_136:
	push	_77
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_134:
	add	esi,1
_801:
	cmp	esi,ebx
	jle	_136
_135:
	push	_137
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp+8]
	push	_138
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
	mov	esi,1
	mov	ebx,dword [ebp-96]
	jmp	_805
_141:
	push	esi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_142
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	cmp	esi,dword [ebp-96]
	jge	_807
	push	_143
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
_807:
_139:
	add	esi,1
_805:
	cmp	esi,ebx
	jle	_141
_140:
	push	_144
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	edi,1
	mov	eax,dword [ebp-96]
	sub	eax,1
	mov	dword [ebp-84],eax
	jmp	_809
_147:
	mov	ebx,dword [ebp+8]
	push	_152
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_151
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_150
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_149
	push	edi
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_148
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
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	esi,_153
	mov	ebx,1
	jmp	_815
_156:
	push	_158
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_157
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
_154:
	add	ebx,1
_815:
	cmp	ebx,edi
	jle	_156
_155:
	push	esi
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	_60
	mov	eax,edi
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_159
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
_145:
	add	edi,1
_809:
	cmp	edi,dword [ebp-84]
	jle	_147
_146:
	mov	esi,1
	mov	ebx,dword [ebp-96]
	sub	ebx,1
	jmp	_818
_162:
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
_160:
	add	esi,1
_818:
	cmp	esi,ebx
	jle	_162
_161:
	mov	eax,dword [ebp+8]
	push	_163
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
	push	_66
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_825
	push	eax
	call	_bbGCFree
	add	esp,4
_825:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
_125:
	add	dword [ebp-96],1
_792:
	mov	eax,dword [ebp-152]
	cmp	dword [ebp-96],eax
	jle	_127
_126:
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	push	_829
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_833
	push	eax
	call	_bbGCFree
	add	esp,4
_833:
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
	jnz	_837
	push	eax
	call	_bbGCFree
	add	esp,4
_837:
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
	jnz	_841
	push	eax
	call	_bbGCFree
	add	esp,4
_841:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],ebx
	push	dword [ebp+16]
	mov	eax,dword [ebp+8]
	push	dword [eax+8]
	call	_brl_stream_SaveString
	add	esp,8
	mov	eax,0
	jmp	_413
_413:
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
	jmp	_844
_168:
	push	_169
	push	eax
	call	_bbStringConcat
	add	esp,8
_166:
	add	esi,1
_844:
	cmp	esi,ebx
	jle	_168
_167:
	jmp	_416
_416:
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
	je	_848
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
	jmp	_170
_172:
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
	je	_170
	mov	eax,esi
	push	_173
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
	je	_858
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_858:
	cmp	eax,0
	je	_860
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
	jle	_864
	push	_174
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
	jne	_865
	push	_124
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
_865:
	cmp	eax,0
	jne	_867
	push	_175
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
_867:
	cmp	eax,0
	jne	_869
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
_869:
	cmp	eax,0
	je	_871
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
	jmp	_873
_871:
	mov	eax,dword [ebp+8]
	push	_94
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
_873:
_864:
_860:
_170:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_172
_171:
_848:
	mov	eax,edi
	jmp	_420
_420:
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
	jne	_876
	mov	eax,_4
	jmp	_424
_876:
	mov	eax,dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_176
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_880
	push	_183
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_881
	push	_188
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_882
	push	_193
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_883
	push	_198
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_884
	push	_202
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_885
	push	_207
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_886
	push	_212
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_887
	push	_216
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_888
	push	_221
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_889
	push	_226
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_890
	push	_231
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_891
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_892
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_893
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_894
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_895
	push	_242
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_896
	push	_243
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_896
	push	_244
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_897
	push	_260
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_898
	push	_265
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_899
	push	_269
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_900
	push	_274
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_901
	push	_276
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_902
	push	_281
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_903
	push	_288
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_904
	push	_293
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_905
	push	_298
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_906
	push	_305
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_907
	push	_307
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_908
	push	_308
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_909
	push	_309
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_910
	push	_324
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_911
	push	_326
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_912
	push	_328
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_913
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_914
	push	_332
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_915
	push	_337
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_916
	jmp	_879
_880:
	mov	dword [ebp-104],_177
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
	jmp	_178
_180:
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
	je	_178
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_927
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_928
	jmp	_926
_927:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_143
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
	jmp	_926
_928:
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
	jmp	_926
_926:
_178:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_180
_179:
	push	_108
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_879
_881:
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
	jmp	_184
_186:
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
	je	_184
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_943
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_944
	jmp	_942
_943:
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
	jmp	_942
_944:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_942
_942:
_184:
	mov	eax,dword [ebp-92]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_186
_185:
	jmp	_879
_882:
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
	jmp	_189
_191:
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
	je	_189
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_959
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_960
	jmp	_958
_959:
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
	jmp	_958
_960:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_958
_958:
_189:
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_191
_190:
	jmp	_879
_883:
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
	jmp	_194
_196:
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
	je	_194
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_975
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_976
	jmp	_974
_975:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_197
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
	jmp	_974
_976:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_974
_974:
_194:
	mov	eax,dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_196
_195:
	jmp	_879
_884:
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
	jmp	_199
_201:
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
	je	_199
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_991
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_992
	jmp	_990
_991:
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
	jmp	_990
_992:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_990
_990:
_199:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_201
_200:
	jmp	_879
_885:
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
	jmp	_203
_205:
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
	je	_203
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1007
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1008
	jmp	_1006
_1007:
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
	jmp	_1006
_1008:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1006
_1006:
_203:
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_205
_204:
	jmp	_879
_886:
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
	jmp	_208
_210:
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
	je	_208
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1023
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1024
	jmp	_1022
_1023:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_211
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
	jmp	_1022
_1024:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1022
_1022:
_208:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_210
_209:
	jmp	_879
_887:
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
	jmp	_213
_215:
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
	je	_213
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1039
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1040
	jmp	_1038
_1039:
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
	jmp	_1038
_1040:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1038
_1038:
_213:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_215
_214:
	jmp	_879
_888:
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
	jmp	_217
_219:
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
	je	_217
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1055
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1056
	jmp	_1054
_1055:
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
	jmp	_1054
_1056:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1054
_1054:
_217:
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_219
_218:
	jmp	_879
_889:
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
	jmp	_222
_224:
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
	je	_222
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1071
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1072
	jmp	_1070
_1071:
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
	jmp	_1070
_1072:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1070
_1070:
_222:
	mov	eax,dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	jmp	_879
_890:
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
	jmp	_227
_229:
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
	je	_227
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1087
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1088
	jmp	_1086
_1087:
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
	jmp	_1086
_1088:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1086
_1086:
_227:
	mov	eax,dword [ebp-56]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_229
_228:
	jmp	_879
_891:
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
	jmp	_232
_234:
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
	je	_232
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1103
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1104
	jmp	_1102
_1103:
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
	jmp	_1102
_1104:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1102
_1102:
_232:
	mov	eax,dword [ebp-52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
	jmp	_879
_892:
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
	jmp	_237
_239:
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
	je	_237
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1119
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1120
	jmp	_1118
_1119:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_240
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
	jmp	_1118
_1120:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_108
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
	jmp	_1118
_1118:
_237:
	mov	eax,dword [ebp-48]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_239
_238:
	jmp	_879
_893:
	mov	eax,dword [ebp+12]
	push	_241
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
	jmp	_879
_894:
	mov	eax,dword [ebp+12]
	push	_4
	push	_718
	push	_241
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_718
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_879
_895:
	mov	eax,dword [ebp+12]
	push	_241
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
	jmp	_879
_896:
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
	jmp	_879
_897:
	mov	eax,dword [ebp+12]
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+12]
	push	_246
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
	jne	_1133
	push	_25
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1136
	push	_26
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1137
	push	_31
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1138
	push	_30
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1139
	push	_29
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1140
	push	_28
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1141
	jmp	_1135
_1136:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1137:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1138:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1139:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1140:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1141:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1135
_1135:
	jmp	_1154
_1133:
	push	_27
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1155
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1158
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1159
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1160
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1161
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1162
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1163
	jmp	_1157
_1158:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	jmp	_1157
_1159:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1157
_1160:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	push	_255
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1157
_1161:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	push	_256
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1157
_1162:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	push	_257
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1157
_1163:
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	push	_258
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_1157
_1157:
	jmp	_1176
_1155:
	mov	edi,dword [ebp+8]
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	_108
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
	push	_259
	push	0
	push	_246
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
_1176:
_1154:
	jmp	_879
_898:
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
	je	_1185
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-40],eax
	jmp	_261
_263:
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
	je	_261
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
	jne	_1193
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
	push	_143
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1193:
	mov	eax,dword [ebp+12]
	push	_264
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1197
	movzx	eax,byte [ebp-4]
_1197:
	cmp	eax,0
	je	_1199
	mov	byte [ebp-4],0
	mov	eax,dword [ebp+12]
	push	_264
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	push	_143
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1199:
_261:
	mov	eax,dword [ebp-40]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_263
_262:
_1185:
	mov	eax,dword [ebp-104]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-104]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-104],eax
	push	_108
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_879
_899:
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
	push	_39
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1209
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
	jmp	_1211
_1209:
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
	jne	_1213
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
_1213:
_1211:
_266:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_268
_267:
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
	jmp	_879
_900:
	mov	dword [ebp-104],_101
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
	jmp	_270
_272:
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
	je	_270
	mov	eax,esi
	push	_273
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1225
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
	jmp	_271
_1225:
_270:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_272
_271:
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
	push	_124
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
	jmp	_879
_901:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	sub	eax,1
	mov	dword [edx+12],eax
	mov	eax,dword [ebp+8]
	push	_275
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
	jmp	_879
_902:
	mov	dword [ebp-104],_277
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
	jmp	_278
_280:
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
	je	_278
	mov	eax,esi
	push	_273
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1240
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
	jmp	_279
_1240:
_278:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_280
_279:
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
	push	_124
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
	jmp	_879
_903:
	mov	dword [ebp-104],_282
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
	push	_283
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
	jmp	_284
_286:
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
	je	_284
	mov	eax,esi
	push	_273
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1255
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_287
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
	jmp	_285
_1255:
_284:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_286
_285:
	jmp	_879
_904:
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
	jmp	_289
_291:
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
	je	_289
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
	jne	_1267
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_292
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
_1267:
	mov	eax,ebx
	push	_241
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1271
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
_1271:
_289:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_291
_290:
	jmp	_879
_905:
	mov	dword [ebp-104],_294
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
	jmp	_295
_297:
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
	je	_295
	mov	eax,esi
	push	_273
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1282
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
_1282:
_295:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_297
_296:
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
	push	_124
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
	jmp	_879
_906:
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
	jmp	_299
_301:
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
	je	_299
	mov	eax,esi
	push	_273
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
	je	_1296
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1296:
	cmp	eax,0
	je	_1298
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_303
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
	push	_302
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
	push	_304
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
	jmp	_300
_1298:
_299:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_301
_300:
	jmp	_879
_907:
	push	_306
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
	jmp	_879
_908:
	mov	dword [ebp-104],_307
	jmp	_879
_909:
	mov	dword [ebp-104],_308
	jmp	_879
_910:
	mov	dword [ebp-104],_310
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
	jmp	_311
_313:
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
	je	_311
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_314
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1317
	push	_319
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1318
	push	_246
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1319
	push	_320
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1320
	jmp	_312
_1317:
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
	jmp	_315
_317:
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
	je	_315
	mov	eax,ebx
	push	_318
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1329
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
	push	_310
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_94
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
	jmp	_1334
_1329:
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
_1334:
_315:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_317
_316:
	jmp	_1316
_1318:
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_174
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
	push	_292
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
	jmp	_1316
_1319:
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
	jmp	_1316
_1320:
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
	jmp	_1316
_1316:
_311:
	mov	eax,dword [ebp-112]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_313
_312:
	push	_84
	push	dword [ebp-116]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_1344
	mov	eax,_220
	jmp	_1345
_1344:
	mov	eax,_5
_1345:
	push	_61
	push	dword [ebp-116]
	push	_321
	push	dword [ebp-16]
	push	_174
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
	push	_322
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
	push	_323
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_879
_911:
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
	push	_325
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	jmp	_879
_912:
	mov	dword [ebp-104],_327
	jmp	_879
_913:
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
	jmp	_329
_331:
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
	je	_329
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
	jne	_1365
	mov	ebx,dword [ebp+8]
	mov	eax,esi
	push	_158
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
	push	_85
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
_1365:
_329:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_331
_330:
	jmp	_879
_914:
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
	jmp	_879
_915:
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
	jmp	_333
_335:
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
	je	_333
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_181
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1380
	push	_182
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1381
	jmp	_1379
_1380:
	mov	esi,dword [ebp+8]
	mov	eax,ebx
	push	_336
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
	jmp	_1379
_1381:
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
	jmp	_1379
_1379:
_333:
	mov	eax,dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_335
_334:
	jmp	_879
_916:
	mov	byte [ebp-8],0
	mov	eax,dword [ebp+12]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1388
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
	jmp	_338
_340:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_338
	push	_341
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1397
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-8],al
_1397:
_338:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_340
_339:
_1388:
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
	je	_1401
	mov	dword [ebp-32],0
	push	_108
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_343
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_342
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
	jmp	_344
_346:
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
	je	_344
	mov	eax,esi
	push	_341
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1411
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
	push	_143
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
_1411:
_344:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_346
_345:
	push	_108
	push	dword [ebp-104]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-104],eax
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp+8]
	cmp	dword [eax+20],edx
	jge	_1414
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],edx
_1414:
	jmp	_1415
_1401:
	push	_348
	push	_4
	push	_77
	push	dword [ebp-108]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_347
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
_1415:
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
	je	_1417
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	sete	al
	movzx	eax,al
_1417:
	cmp	eax,0
	je	_1419
	push	_108
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
	push	_349
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
_1419:
	jmp	_879
_879:
	mov	eax,dword [ebp-104]
	jmp	_424
_424:
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
	jmp	_350
_352:
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
	je	_350
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
	je	_1433
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1434
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1435
	jmp	_1432
_1433:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_1432
_1434:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_1432
_1435:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1432
_1432:
_350:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_352
_351:
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
	je	_1444
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1444
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1444
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1444
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1445
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1445
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1446
	mov	eax,_355
	jmp	_1443
_1444:
	mov	eax,_353
	jmp	_1443
_1445:
	mov	eax,_354
	jmp	_1443
_1446:
	mov	eax,_1448
	jmp	_1443
_1443:
	push	_174
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
	jmp	_428
_428:
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
	jmp	_356
_358:
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
	je	_356
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
	je	_1462
	push	_46
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1463
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1464
	jmp	_1461
_1462:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_1461
_1463:
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
	jmp	_1461
_1464:
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
	jmp	_1470
_361:
	push	_77
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
_359:
	add	esi,1
_1470:
	cmp	esi,ebx
	jle	_361
_360:
	jmp	_1461
_1461:
_356:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_358
_357:
	push	_362
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
	jmp	_432
_432:
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
	je	_1475
	push	_25
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1476
	push	_26
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1477
	push	_31
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1478
	push	_29
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1479
	push	_30
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1480
	push	_28
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1481
	push	_106
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1482
	movzx	eax,byte [ebx+16]
	cmp	eax,0
	je	_1483
	push	_77
	push	esi
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_370
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_1484
_1483:
	push	_77
	push	esi
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
_1484:
	jmp	_1474
_1475:
	mov	eax,_363
	jmp	_1474
_1476:
	mov	eax,_364
	jmp	_1474
_1477:
	mov	eax,_365
	jmp	_1474
_1478:
	mov	eax,_366
	jmp	_1474
_1479:
	mov	eax,_367
	jmp	_1474
_1480:
	mov	eax,_368
	jmp	_1474
_1481:
	mov	eax,_369
	jmp	_1474
_1482:
	mov	eax,_106
	jmp	_1474
_1474:
	mov	ebx,1
	mov	esi,edi
	jmp	_1486
_373:
	push	_77
	push	eax
	call	_bbStringConcat
	add	esp,8
_371:
	add	ebx,1
_1486:
	cmp	ebx,esi
	jle	_373
_372:
	jmp	_437
_437:
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
	push	_374
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
	je	_1490
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_106
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1490
	mov	byte [ebp-4],1
	jmp	_441
_1490:
	mov	byte [ebp-4],0
	jmp	_441
_441:
	movzx	eax,byte [ebp-4]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_455:
	dd	0
	align	4
_453:
	dd	0
_378:
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
_376:
	db	"TCGenerator",0
_377:
	db	"Output",0
_379:
	db	"ScopeCount",0
_380:
	db	"i",0
_381:
	db	"InStruct",0
_382:
	db	"b",0
_383:
	db	"MaxSizeArray",0
_384:
	db	"FuncDef",0
_385:
	db	"DebugMode",0
_386:
	db	"New",0
_387:
	db	"()i",0
_388:
	db	"Delete",0
_389:
	db	"Generate",0
_390:
	db	"($,$)i",0
_391:
	db	"GetTabs",0
_392:
	db	"()$",0
_393:
	db	"Block",0
_394:
	db	"(:bah.libxml.TxmlNode)$",0
_395:
	db	"GetNextMathString",0
_396:
	db	"VarDef",0
_397:
	db	"ArrayDef",0
_398:
	db	"GetRealDatatype",0
_399:
	db	"($,i)$",0
_400:
	db	"IsType",0
_401:
	db	"($)b",0
	align	4
_375:
	dd	2
	dd	_376
	dd	3
	dd	_377
	dd	_378
	dd	8
	dd	3
	dd	_379
	dd	_380
	dd	12
	dd	3
	dd	_381
	dd	_382
	dd	16
	dd	3
	dd	_383
	dd	_380
	dd	20
	dd	3
	dd	_384
	dd	_378
	dd	24
	dd	3
	dd	_385
	dd	_382
	dd	28
	dd	6
	dd	_386
	dd	_387
	dd	16
	dd	6
	dd	_388
	dd	_387
	dd	20
	dd	6
	dd	_389
	dd	_390
	dd	48
	dd	6
	dd	_391
	dd	_392
	dd	52
	dd	6
	dd	_393
	dd	_394
	dd	56
	dd	6
	dd	_395
	dd	_394
	dd	60
	dd	6
	dd	_396
	dd	_394
	dd	64
	dd	6
	dd	_397
	dd	_394
	dd	68
	dd	6
	dd	_398
	dd	_399
	dd	72
	dd	6
	dd	_400
	dd	_401
	dd	76
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_375
	dd	29
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
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	95,105,115,114,101,97,108,95,59,10
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	91,48,93,32,61,32,38
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,109,112,45,62,118,112,116,114,95
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,105,100
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	93,32,61,32,38
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	59,10
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,32,61,32
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,109,112,45,62,95
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,95,116,104,105,115,95,44,32,105,110,116,32,95,95,118
	dw	112,111,115,95,95
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_718:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	69,82,82,79,82,58,32,78,117,108,108,32,80,111,105,110
	dw	116,101,114,33
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	91,95,95,118,112,111,115,95,95,93,61,61,78,85,76,76
	dw	41,32,112,114,105,110,116,102,40
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	61,61,78,85,76,76,32,124,124,32,95,116,104,105,115,95
	dw	45,62,118,112,116,114,95
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	95,116,104,105,115,95,45,62,118,112,116,114,95
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_107:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,116,117,114,110,32,40
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	91,95,95,118,112,111,115,95,95,93,40,95,116,104,105,115
	dw	95
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	40,41,41,42
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	32,61,32,71,67,95,109,97,108,108,111,99,40,115,105,122
	dw	101,111,102,40
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,32
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	42,32,116,109,112,32,41,32,123,10
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	42,32,110,101,119,95
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	114,101,116,117,114,110,32,116,109,112,59,10
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	105,110,116,32,109,97,105,110,40,41,32,123,10
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	40,105,110,116,32,115,105,122,101
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	118,111,105,100,42,32,97,108,108,111,99,97,114,114,97,121
	dw	95,100,105,109
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	36
	dw	32,109,101,109,61,40,118,111,105,100,42,41,71,67,95,109
	dw	97,108,108,111,99,40,115,105,122,101,42,112,97,114,97,109
	dw	49,41,59,10
	align	4
_138:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_152:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	43,43,41,32,123,10
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	59,118,97,114,105
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	60,112,97,114,97,109
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	61,48,59,118,97,114,105
	align	4
_148:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,111,114,40,118,97,114,105
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	61,40,118,111,105,100,42,41,71,67,95,109,97,108,108,111
	dw	99,40,115,105,122,101,42,112,97,114,97,109
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	114,101,116,117,114,110,32,40,118,111,105,100,42,41,109,101
	dw	109,59,10
	align	4
_829:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	35,105,110,99,108,117,100,101,32,34,99,108,105,98,47,109
	dw	97,105,110,46,99,34,10
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_173:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_174:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_198:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_212:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_236:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_242:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_265:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_293:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_307:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_308:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_324:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_326:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_328:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_332:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_211:
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
_220:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_248:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_255:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_287:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_292:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_302:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_314:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_320:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_318:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_322:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_325:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_327:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
	align	4
_336:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,62
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	40,115,105,122,101,111,102,40
	align	4
_342:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	41,97,108,108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,41
	align	4
_347:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_1448:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_362:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
	align	4
_370:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_363:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_364:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_365:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_366:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_368:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_369:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_374:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
