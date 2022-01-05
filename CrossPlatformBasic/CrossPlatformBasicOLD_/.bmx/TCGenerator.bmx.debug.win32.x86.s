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
	extrn	_bbObjectNew
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
	extrn	_brl_blitz_DebugStop
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_linkedlist_TList
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
	public	__bb_TClass_Delete
	public	__bb_TClass_New
	public	__bb_TVirtualMethod_Delete
	public	__bb_TVirtualMethod_New
	public	_bb_TCGenerator
	public	_bb_TClass
	public	_bb_TVirtualMethod
	section	"code" code
___bb_crossplatformbasic_tcgenerator:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_532],0
	je	_533
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_533:
	mov	dword [_532],1
	push	ebp
	push	_531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_util_cpb
	push	_bb_TClass
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TVirtualMethod
	call	_bbObjectRegisterType
	add	esp,4
	push	_517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_529]
	and	eax,1
	cmp	eax,0
	jne	_530
	push	8
	push	_421
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
	or	dword [_529],1
_530:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_464
_464:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TClass_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TClass
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+20],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+32],eax
	push	ebp
	push	_540
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_467
_467:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TClass_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_470:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_545
	push	eax
	call	_bbGCFree
	add	esp,4
_545:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_547
	push	eax
	call	_bbGCFree
	add	esp,4
_547:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_549
	push	eax
	call	_bbGCFree
	add	esp,4
_549:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_551
	push	eax
	call	_bbGCFree
	add	esp,4
_551:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_553
	push	eax
	call	_bbGCFree
	add	esp,4
_553:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_555
	push	eax
	call	_bbGCFree
	add	esp,4
_555:
	mov	eax,0
	jmp	_543
_543:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVirtualMethod_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TVirtualMethod
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
	push	_558
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_473
_473:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TVirtualMethod_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_476:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_563
	push	eax
	call	_bbGCFree
	add	esp,4
_563:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_565
	push	eax
	call	_bbGCFree
	add	esp,4
_565:
	mov	eax,0
	jmp	_561
_561:
	pop	ebx
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
	push	_572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCGenerator
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+8],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+20],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+32],1
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	push	ebp
	push	_571
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_479
_479:
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
_482:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_576
	push	eax
	call	_bbGCFree
	add	esp,4
_576:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_578
	push	eax
	call	_bbGCFree
	add	esp,4
_578:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_580
	push	eax
	call	_bbGCFree
	add	esp,4
_580:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_582
	push	eax
	call	_bbGCFree
	add	esp,4
_582:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_584
	push	eax
	call	_bbGCFree
	add	esp,4
_584:
	mov	eax,0
	jmp	_574
_574:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,408
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
	mov	dword [ebp-28],_bbEmptyString
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbEmptyString
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],_bbEmptyString
	mov	dword [ebp-72],_bbEmptyString
	mov	dword [ebp-76],0
	mov	dword [ebp-80],_bbEmptyString
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbEmptyString
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbEmptyString
	mov	dword [ebp-100],_bbEmptyString
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-108],_bbEmptyString
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],_bbEmptyString
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],0
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],0
	mov	dword [ebp-180],_bbEmptyString
	mov	dword [ebp-184],0
	mov	dword [ebp-188],0
	mov	dword [ebp-192],0
	mov	dword [ebp-196],0
	mov	dword [ebp-200],_bbEmptyString
	mov	dword [ebp-204],0
	mov	dword [ebp-208],0
	mov	eax,ebp
	push	eax
	push	_1835
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_589
	call	_brl_blitz_NullObjectError
_589:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_594
	call	_brl_blitz_NullObjectError
_594:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-396],eax
	mov	ebx,dword [ebp-396]
	cmp	ebx,_bbNullObject
	jne	_597
	call	_brl_blitz_NullObjectError
_597:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-400],eax
	jmp	_32
_34:
	mov	ebx,dword [ebp-400]
	cmp	ebx,_bbNullObject
	jne	_602
	call	_brl_blitz_NullObjectError
_602:
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
	je	_32
	mov	eax,ebp
	push	eax
	push	_708
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_35
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_608
	jmp	_607
_608:
	mov	eax,ebp
	push	eax
	push	_706
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_421
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_617
	push	eax
	call	_bbGCFree
	add	esp,4
_617:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	push	_618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	cmp	ebx,dword [eax+20]
	jb	_620
	call	_brl_blitz_ArrayBoundsError
_620:
	mov	esi,dword [__bb_TCGenerator_AllDatatype]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_625
	push	eax
	call	_bbGCFree
	add	esp,4
_625:
	mov	dword [esi+24],ebx
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TClass
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_630
	call	_brl_blitz_NullObjectError
_630:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_635
	push	eax
	call	_bbGCFree
	add	esp,4
_635:
	mov	dword [esi+8],ebx
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_638
	call	_brl_blitz_NullObjectError
_638:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_643
	push	eax
	call	_bbGCFree
	add	esp,4
_643:
	mov	dword [esi+12],ebx
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_653
	push	eax
	call	_bbGCFree
	add	esp,4
_653:
	mov	dword [esi+16],ebx
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_657
	mov	eax,ebp
	push	eax
	push	_699
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_660
	call	_brl_blitz_NullObjectError
_660:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	eax,dword [ebp-36]
	mov	dword [ebp-336],eax
	mov	ebx,dword [ebp-336]
	cmp	ebx,_bbNullObject
	jne	_666
	call	_brl_blitz_NullObjectError
_666:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_38
_40:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_671
	call	_brl_blitz_NullObjectError
_671:
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
	je	_38
	mov	eax,ebp
	push	eax
	push	_696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_674
	call	_brl_blitz_NullObjectError
_674:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_675
	mov	eax,ebp
	push	eax
	push	_683
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	esi,dword [ebx+20]
	cmp	esi,_bbNullObject
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_675:
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	push	_42
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_687
	mov	eax,ebp
	push	eax
	push	_695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	mov	esi,dword [ebx+32]
	cmp	esi,_bbNullObject
	jne	_692
	call	_brl_blitz_NullObjectError
_692:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_694
	call	_brl_blitz_NullObjectError
_694:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_687:
	call	dword [_bbOnDebugLeaveScope]
_38:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_40
_39:
	call	dword [_bbOnDebugLeaveScope]
_657:
	push	_701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_607
_607:
	call	dword [_bbOnDebugLeaveScope]
_32:
	mov	ebx,dword [ebp-400]
	cmp	ebx,_bbNullObject
	jne	_600
	call	_brl_blitz_NullObjectError
_600:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	push	_710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-388],eax
	mov	ebx,dword [ebp-388]
	cmp	ebx,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-376],eax
	jmp	_43
_45:
	mov	ebx,dword [ebp-376]
	cmp	ebx,_bbNullObject
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	je	_43
	mov	eax,ebp
	push	eax
	push	_756
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_725
	mov	eax,ebp
	push	eax
	push	_755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_729
	call	_brl_blitz_NullObjectError
_729:
	mov	eax,dword [ebx+36]
	mov	dword [ebp-316],eax
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_46
_48:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_753
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	push	dword [ebx+16]
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_743
	mov	eax,ebp
	push	eax
	push	_752
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	mov	esi,ebx
	mov	eax,dword [ebp-48]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_751
	push	eax
	call	_bbGCFree
	add	esp,4
_751:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_743:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_725:
	call	dword [_bbOnDebugLeaveScope]
_43:
	mov	ebx,dword [ebp-376]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	push	_757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_760
	call	_brl_blitz_NullObjectError
_760:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-404],eax
	mov	ebx,dword [ebp-404]
	cmp	ebx,_bbNullObject
	jne	_763
	call	_brl_blitz_NullObjectError
_763:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-408],eax
	jmp	_49
_51:
	mov	ebx,dword [ebp-408]
	cmp	ebx,_bbNullObject
	jne	_768
	call	_brl_blitz_NullObjectError
_768:
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
	je	_49
	mov	eax,ebp
	push	eax
	push	_1693
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_774
	push	_59
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_775
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_776
	push	_81
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_777
	jmp	_773
_774:
	mov	eax,ebp
	push	eax
	push	_828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_780
	call	_brl_blitz_NullObjectError
_780:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_781
	mov	eax,ebp
	push	eax
	push	_827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_785
	call	_brl_blitz_NullObjectError
_785:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-344],eax
	mov	ebx,dword [ebp-344]
	cmp	ebx,_bbNullObject
	jne	_788
	call	_brl_blitz_NullObjectError
_788:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_53
_55:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
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
	je	_53
	mov	eax,ebp
	push	eax
	push	_826
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_796
	call	_brl_blitz_NullObjectError
_796:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_797
	mov	eax,ebp
	push	eax
	push	_808
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_800
	call	_brl_blitz_NullObjectError
_800:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_803
	call	_brl_blitz_NullObjectError
_803:
	push	_57
	push	dword [ebp-56]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_807
	push	eax
	call	_bbGCFree
	add	esp,4
_807:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_809
_797:
	mov	eax,ebp
	push	eax
	push	_825
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_813
	mov	eax,ebp
	push	eax
	push	_824
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_819
	call	_brl_blitz_NullObjectError
_819:
	push	_57
	push	dword [ebp-56]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_823
	push	eax
	call	_bbGCFree
	add	esp,4
_823:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_813:
	call	dword [_bbOnDebugLeaveScope]
_809:
	call	dword [_bbOnDebugLeaveScope]
_53:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_55
_54:
	call	dword [_bbOnDebugLeaveScope]
_781:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_773
_775:
	mov	eax,ebp
	push	eax
	push	_999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_60
	push	dword [ebp-60]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	jle	_834
	mov	eax,ebp
	push	eax
	push	_836
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_61
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	call	dword [_bbOnDebugLeaveScope]
_834:
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	push	_62
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_63
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbEmptyString
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_847
	call	_brl_blitz_NullObjectError
_847:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	push	_64
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-64],eax
	push	_850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-64]
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	push	_65
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_67
	push	dword [ebp-60]
	push	_66
	push	dword [ebp-64]
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
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	push	_856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbEmptyString
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_861
	mov	eax,ebp
	push	eax
	push	_894
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_865
	call	_brl_blitz_NullObjectError
_865:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-320],eax
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-312],eax
	jmp	_68
_70:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
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
	je	_68
	mov	eax,ebp
	push	eax
	push	_893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	push	_71
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_877
	mov	eax,ebp
	push	eax
	push	_892
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_880
	call	_brl_blitz_NullObjectError
_880:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_882
	call	_brl_blitz_NullObjectError
_882:
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-88],eax
	push	_886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_888
	call	_brl_blitz_NullObjectError
_888:
	push	_73
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_72
	push	dword [ebp-88]
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
	push	_889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	push	_75
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_74
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
	call	dword [_bbOnDebugLeaveScope]
_877:
	call	dword [_bbOnDebugLeaveScope]
_68:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_871
	call	_brl_blitz_NullObjectError
_871:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_70
_69:
	call	dword [_bbOnDebugLeaveScope]
_861:
	push	_895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-72]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-72],eax
	push	_896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-76],0
	je	_897
	mov	eax,ebp
	push	eax
	push	_960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
	push	dword [ebp-72]
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_905
	push	eax
	call	_bbGCFree
	add	esp,4
_905:
	mov	dword [esi+28],ebx
	push	_906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	push	_907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	push	_77
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_914
	push	eax
	call	_bbGCFree
	add	esp,4
_914:
	mov	dword [esi+28],ebx
	push	_915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_917
	call	_brl_blitz_NullObjectError
_917:
	add	dword [ebx+16],1
	push	_919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_925
	call	_brl_blitz_NullObjectError
_925:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_78
_80:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_930
	call	_brl_blitz_NullObjectError
_930:
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
	je	_78
	mov	eax,ebp
	push	eax
	push	_947
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_933
	call	_brl_blitz_NullObjectError
_933:
	push	_81
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_934
	mov	eax,ebp
	push	eax
	push	_946
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_937
	call	_brl_blitz_NullObjectError
_937:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_940
	call	_brl_blitz_NullObjectError
_940:
	push	dword [ebp-92]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebx+28]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_944
	push	eax
	call	_bbGCFree
	add	esp,4
_944:
	mov	dword [ebx+28],esi
	push	_945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_79
_934:
	call	dword [_bbOnDebugLeaveScope]
_78:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_928
	call	_brl_blitz_NullObjectError
_928:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_80
_79:
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_950
	call	_brl_blitz_NullObjectError
_950:
	sub	dword [ebx+16],1
	push	_952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_954
	call	_brl_blitz_NullObjectError
_954:
	push	_82
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_959
	push	eax
	call	_bbGCFree
	add	esp,4
_959:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_961
_897:
	mov	eax,ebp
	push	eax
	push	_989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	push	dword [ebp-60]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_967
	push	_4
	push	dword [ebp-96]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_967:
	cmp	eax,0
	je	_969
	mov	eax,ebp
	push	eax
	push	_985
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_77
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_973
	call	_brl_blitz_NullObjectError
_973:
	add	dword [ebx+16],1
	push	_975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	push	_76
	mov	eax,dword [ebp-80]
	push	dword [eax+8]
	push	1
	push	dword [ebp-80]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_84
	push	dword [ebp-96]
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
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	sub	dword [ebx+16],1
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_986
_969:
	mov	eax,ebp
	push	eax
	push	_988
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	push	dword [ebp-72]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-72],eax
	call	dword [_bbOnDebugLeaveScope]
_986:
	call	dword [_bbOnDebugLeaveScope]
_961:
	push	_991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_993
	call	_brl_blitz_NullObjectError
_993:
	push	dword [ebp-72]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_998
	push	eax
	call	_bbGCFree
	add	esp,4
_998:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_773
_776:
	mov	eax,ebp
	push	eax
	push	_1632
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-100],eax
	push	_1008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	push	_1010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1013
	call	_brl_blitz_NullObjectError
_1013:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1016
	call	_brl_blitz_NullObjectError
_1016:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_85
_87:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1021
	call	_brl_blitz_NullObjectError
_1021:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-116],eax
	cmp	dword [ebp-116],_bbNullObject
	je	_85
	mov	eax,ebp
	push	eax
	push	_1029
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_1024
	call	_brl_blitz_NullObjectError
_1024:
	push	dword [ebp-100]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1025
	mov	eax,ebp
	push	eax
	push	_1028
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-116]
	mov	dword [ebp-104],eax
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_86
_1025:
	call	dword [_bbOnDebugLeaveScope]
_85:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1019
	call	_brl_blitz_NullObjectError
_1019:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_87
_86:
	push	_1031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbEmptyString
	push	_1033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_89
	push	dword [ebp-100]
	push	_88
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-108],eax
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
	mov	byte [ebx+20],1
	push	_1038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1040
	call	_brl_blitz_NullObjectError
_1040:
	add	dword [ebx+16],1
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1044
	call	_brl_blitz_NullObjectError
_1044:
	push	_4
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1045
	mov	eax,ebp
	push	eax
	push	_1053
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1048
	call	_brl_blitz_NullObjectError
_1048:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	push	_90
	push	0
	push	_37
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
	call	dword [eax+52]
	add	esp,4
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
	call	dword [_bbOnDebugLeaveScope]
_1045:
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1056
	call	_brl_blitz_NullObjectError
_1056:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1057
	mov	eax,ebp
	push	eax
	push	_1140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1061
	call	_brl_blitz_NullObjectError
_1061:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-364],eax
	mov	ebx,dword [ebp-364]
	cmp	ebx,_bbNullObject
	jne	_1064
	call	_brl_blitz_NullObjectError
_1064:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-368],eax
	jmp	_91
_93:
	mov	ebx,dword [ebp-368]
	cmp	ebx,_bbNullObject
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-120],eax
	cmp	dword [ebp-120],_bbNullObject
	je	_91
	mov	eax,ebp
	push	eax
	push	_1139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1072
	call	_brl_blitz_NullObjectError
_1072:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1075
	push	_42
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1076
	jmp	_1074
_1075:
	mov	eax,ebp
	push	eax
	push	_1125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	mov	esi,dword [ebp-120]
	cmp	esi,_bbNullObject
	jne	_1081
	call	_brl_blitz_NullObjectError
_1081:
	push	_57
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_94
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
	push	dword [ebp-108]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-108],eax
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TVirtualMethod
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-124],eax
	push	_1084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1086
	call	_brl_blitz_NullObjectError
_1086:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1089
	call	_brl_blitz_NullObjectError
_1089:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1093
	push	eax
	call	_bbGCFree
	add	esp,4
_1093:
	mov	dword [esi+8],ebx
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1096
	call	_brl_blitz_NullObjectError
_1096:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1099
	call	_brl_blitz_NullObjectError
_1099:
	push	_62
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1103
	push	eax
	call	_bbGCFree
	add	esp,4
_1103:
	mov	dword [esi+16],ebx
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1106
	call	_brl_blitz_NullObjectError
_1106:
	mov	esi,dword [ebp-120]
	cmp	esi,_bbNullObject
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	push	_64
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+20],eax
	push	_1110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1112
	call	_brl_blitz_NullObjectError
_1112:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1114
	call	_brl_blitz_NullObjectError
_1114:
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	mov	esi,dword [ebp-104]
	cmp	esi,_bbNullObject
	jne	_1120
	call	_brl_blitz_NullObjectError
_1120:
	mov	eax,dword [esi+28]
	mov	dword [ebx+12],eax
	push	_1121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1123
	call	_brl_blitz_NullObjectError
_1123:
	add	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1074
_1076:
	mov	eax,ebp
	push	eax
	push	_1138
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-280],eax
	cmp	dword [ebp-280],_bbNullObject
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-260],eax
	cmp	dword [ebp-260],_bbNullObject
	jne	_1131
	call	_brl_blitz_NullObjectError
_1131:
	mov	edi,dword [ebp-120]
	cmp	edi,_bbNullObject
	jne	_1133
	call	_brl_blitz_NullObjectError
_1133:
	mov	esi,dword [ebp-120]
	cmp	esi,_bbNullObject
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	push	_95
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_72
	push	_64
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-260]
	mov	eax,dword [ebp-260]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-280]
	mov	eax,dword [ebp-280]
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
	push	dword [ebp-108]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-108],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1074
_1074:
	call	dword [_bbOnDebugLeaveScope]
_91:
	mov	ebx,dword [ebp-368]
	cmp	ebx,_bbNullObject
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_93
_92:
	call	dword [_bbOnDebugLeaveScope]
_1057:
	push	_1141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	dword [ebp-112],eax
	push	_1147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_bbNullObject
	mov	eax,dword [ebp-112]
	mov	dword [ebp-360],eax
	mov	ebx,dword [ebp-360]
	cmp	ebx,_bbNullObject
	jne	_1151
	call	_brl_blitz_NullObjectError
_1151:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-348],eax
	jmp	_96
_98:
	mov	ebx,dword [ebp-348]
	cmp	ebx,_bbNullObject
	jne	_1156
	call	_brl_blitz_NullObjectError
_1156:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-128],eax
	cmp	dword [ebp-128],_bbNullObject
	je	_96
	mov	eax,ebp
	push	eax
	push	_1188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	eax,dword [ebp-112]
	mov	dword [ebp-240],eax
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1161
	call	_brl_blitz_NullObjectError
_1161:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_99
_101:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1166
	call	_brl_blitz_NullObjectError
_1166:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-132],eax
	cmp	dword [ebp-132],_bbNullObject
	je	_99
	mov	eax,ebp
	push	eax
	push	_1186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-128]
	cmp	dword [ebp-132],eax
	je	_1168
	mov	eax,ebp
	push	eax
	push	_1185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1173
	call	_brl_blitz_NullObjectError
_1173:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1178
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1178:
	cmp	eax,0
	je	_1180
	mov	eax,ebp
	push	eax
	push	_1184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_1183
	call	_brl_blitz_NullObjectError
_1183:
	push	dword [ebp-132]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1180:
	call	dword [_bbOnDebugLeaveScope]
_1168:
	call	dword [_bbOnDebugLeaveScope]
_99:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1164
	call	_brl_blitz_NullObjectError
_1164:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_101
_100:
	call	dword [_bbOnDebugLeaveScope]
_96:
	mov	ebx,dword [ebp-348]
	cmp	ebx,_bbNullObject
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_98
_97:
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbNullObject
	mov	eax,dword [ebp-112]
	mov	dword [ebp-352],eax
	mov	ebx,dword [ebp-352]
	cmp	ebx,_bbNullObject
	jne	_1193
	call	_brl_blitz_NullObjectError
_1193:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-328],eax
	jmp	_102
_104:
	mov	ebx,dword [ebp-328]
	cmp	ebx,_bbNullObject
	jne	_1198
	call	_brl_blitz_NullObjectError
_1198:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-136],eax
	cmp	dword [ebp-136],_bbNullObject
	je	_102
	mov	eax,ebp
	push	eax
	push	_1228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-256],eax
	cmp	dword [ebp-256],_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1203
	call	_brl_blitz_NullObjectError
_1203:
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_1205
	call	_brl_blitz_NullObjectError
_1205:
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_1207
	call	_brl_blitz_NullObjectError
_1207:
	push	dword [ebx+20]
	push	dword [esi+16]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-256]
	mov	eax,dword [ebp-256]
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-108]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-108],eax
	push	_1208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1210
	call	_brl_blitz_NullObjectError
_1210:
	mov	byte [ebx+20],0
	push	_1212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1214
	call	_brl_blitz_NullObjectError
_1214:
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_1216
	call	_brl_blitz_NullObjectError
_1216:
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_1218
	call	_brl_blitz_NullObjectError
_1218:
	push	_108
	push	_107
	push	_106
	push	dword [ebx+20]
	push	dword [esi+16]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_105
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
	push	_1219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1221
	call	_brl_blitz_NullObjectError
_1221:
	mov	byte [ebx+20],1
	push	_1223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1225
	call	_brl_blitz_NullObjectError
_1225:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1227
	call	_brl_blitz_NullObjectError
_1227:
	push	dword [ebp-136]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_102:
	mov	ebx,dword [ebp-328]
	cmp	ebx,_bbNullObject
	jne	_1196
	call	_brl_blitz_NullObjectError
_1196:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_104
_103:
	push	_1229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	mov	byte [ebx+20],0
	push	_1233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1235
	call	_brl_blitz_NullObjectError
_1235:
	sub	dword [ebx+16],1
	push	_1237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1239
	call	_brl_blitz_NullObjectError
_1239:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1241
	call	_brl_blitz_NullObjectError
_1241:
	push	_110
	push	0
	push	dword [ebp-100]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	0
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_109
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
	push	_1242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1247
	call	_brl_blitz_NullObjectError
_1247:
	push	dword [ebx+12]
	push	dword [ebp-108]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1251
	push	eax
	call	_bbGCFree
	add	esp,4
_1251:
	mov	dword [esi+12],ebx
	push	_1252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1254
	call	_brl_blitz_NullObjectError
_1254:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1255
	mov	eax,ebp
	push	eax
	push	_1409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1259
	call	_brl_blitz_NullObjectError
_1259:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-380],eax
	mov	ebx,dword [ebp-380]
	cmp	ebx,_bbNullObject
	jne	_1262
	call	_brl_blitz_NullObjectError
_1262:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-392],eax
	jmp	_111
_113:
	mov	ebx,dword [ebp-392]
	cmp	ebx,_bbNullObject
	jne	_1267
	call	_brl_blitz_NullObjectError
_1267:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-140],eax
	cmp	dword [ebp-140],_bbNullObject
	je	_111
	mov	eax,ebp
	push	eax
	push	_1408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1270
	call	_brl_blitz_NullObjectError
_1270:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1273
	push	_42
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1274
	jmp	_1272
_1273:
	mov	eax,ebp
	push	eax
	push	_1405
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbEmptyString
	push	_1277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-296],eax
	cmp	dword [ebp-296],_bbNullObject
	jne	_1279
	call	_brl_blitz_NullObjectError
_1279:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-276],eax
	cmp	dword [ebp-276],_bbNullObject
	jne	_1281
	call	_brl_blitz_NullObjectError
_1281:
	mov	eax,dword [ebp-140]
	mov	dword [ebp-252],eax
	cmp	dword [ebp-252],_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	mov	edi,dword [ebp-140]
	cmp	edi,_bbNullObject
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	mov	esi,dword [ebp-140]
	cmp	esi,_bbNullObject
	jne	_1287
	call	_brl_blitz_NullObjectError
_1287:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1289
	call	_brl_blitz_NullObjectError
_1289:
	push	_114
	push	0
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_67
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_66
	push	_64
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
	push	dword [ebp-252]
	mov	eax,dword [ebp-252]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-276]
	mov	eax,dword [ebp-276]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-296]
	mov	eax,dword [ebp-296]
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
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1292
	call	_brl_blitz_NullObjectError
_1292:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1293
	mov	eax,ebp
	push	eax
	push	_1331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1297
	call	_brl_blitz_NullObjectError
_1297:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-264],eax
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_1300
	call	_brl_blitz_NullObjectError
_1300:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_115
_117:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1305
	call	_brl_blitz_NullObjectError
_1305:
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
	je	_115
	mov	eax,ebp
	push	eax
	push	_1329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	push	_118
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1309
	mov	eax,ebp
	push	eax
	push	_1314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1312
	call	_brl_blitz_NullObjectError
_1312:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+292]
	add	esp,4
	push	_1313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_115
_1309:
	push	_1315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1317
	call	_brl_blitz_NullObjectError
_1317:
	push	_71
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1318
	mov	eax,ebp
	push	eax
	push	_1328
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-212],eax
	cmp	dword [ebp-212],_bbNullObject
	jne	_1321
	call	_brl_blitz_NullObjectError
_1321:
	mov	edi,dword [ebp-148]
	cmp	edi,_bbNullObject
	jne	_1323
	call	_brl_blitz_NullObjectError
_1323:
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1325
	call	_brl_blitz_NullObjectError
_1325:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_66
	push	_64
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-212]
	mov	eax,dword [ebp-212]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_119
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	call	dword [_bbOnDebugLeaveScope]
_1318:
	call	dword [_bbOnDebugLeaveScope]
_115:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1303
	call	_brl_blitz_NullObjectError
_1303:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_117
_116:
	call	dword [_bbOnDebugLeaveScope]
_1293:
	push	_1332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_77
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_1333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1335
	call	_brl_blitz_NullObjectError
_1335:
	add	dword [ebx+16],1
	push	_1337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1339
	call	_brl_blitz_NullObjectError
_1339:
	push	_120
	push	_62
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1340
	mov	eax,ebp
	push	eax
	push	_1350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-248],eax
	cmp	dword [ebp-248],_bbNullObject
	jne	_1343
	call	_brl_blitz_NullObjectError
_1343:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1345
	call	_brl_blitz_NullObjectError
_1345:
	mov	esi,dword [ebp-140]
	cmp	esi,_bbNullObject
	jne	_1347
	call	_brl_blitz_NullObjectError
_1347:
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1349
	call	_brl_blitz_NullObjectError
_1349:
	push	_122
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
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
	push	_121
	push	dword [ebp-248]
	mov	eax,dword [ebp-248]
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
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1351
_1340:
	mov	eax,ebp
	push	eax
	push	_1355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1354
	call	_brl_blitz_NullObjectError
_1354:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	call	dword [_bbOnDebugLeaveScope]
_1351:
	push	_1356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1358
	call	_brl_blitz_NullObjectError
_1358:
	mov	esi,dword [ebp-140]
	cmp	esi,_bbNullObject
	jne	_1360
	call	_brl_blitz_NullObjectError
_1360:
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1362
	call	_brl_blitz_NullObjectError
_1362:
	push	_124
	push	_107
	push	_106
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
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
	push	_123
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_1363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1365
	call	_brl_blitz_NullObjectError
_1365:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1366
	mov	eax,ebp
	push	eax
	push	_1388
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbNullObject
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1370
	call	_brl_blitz_NullObjectError
_1370:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_125
_127:
	cmp	ebx,_bbNullObject
	jne	_1378
	call	_brl_blitz_NullObjectError
_1378:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-152],eax
	cmp	dword [ebp-152],_bbNullObject
	je	_125
	mov	eax,ebp
	push	eax
	push	_1387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	push	_71
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1382
	mov	eax,ebp
	push	eax
	push	_1386
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_1385
	call	_brl_blitz_NullObjectError
_1385:
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_119
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	call	dword [_bbOnDebugLeaveScope]
_1382:
	call	dword [_bbOnDebugLeaveScope]
_125:
	cmp	ebx,_bbNullObject
	jne	_1376
	call	_brl_blitz_NullObjectError
_1376:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_127
_126:
	call	dword [_bbOnDebugLeaveScope]
_1366:
	push	_1389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_1390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1392
	call	_brl_blitz_NullObjectError
_1392:
	sub	dword [ebx+16],1
	push	_1394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1396
	call	_brl_blitz_NullObjectError
_1396:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1399
	call	_brl_blitz_NullObjectError
_1399:
	push	dword [ebp-144]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1404
	push	eax
	call	_bbGCFree
	add	esp,4
_1404:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1272
_1274:
	mov	eax,ebp
	push	eax
	push	_1407
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1272
_1272:
	call	dword [_bbOnDebugLeaveScope]
_111:
	mov	ebx,dword [ebp-392]
	cmp	ebx,_bbNullObject
	jne	_1265
	call	_brl_blitz_NullObjectError
_1265:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_113
_112:
	call	dword [_bbOnDebugLeaveScope]
_1255:
	push	_1410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1412
	call	_brl_blitz_NullObjectError
_1412:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1415
	call	_brl_blitz_NullObjectError
_1415:
	push	_129
	push	dword [ebp-100]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_84
	push	dword [ebp-100]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_128
	push	dword [ebp-100]
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
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1419
	push	eax
	call	_bbGCFree
	add	esp,4
_1419:
	mov	dword [esi+12],ebx
	push	_1420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1422
	call	_brl_blitz_NullObjectError
_1422:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1425
	call	_brl_blitz_NullObjectError
_1425:
	push	_130
	push	dword [ebp-100]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_84
	push	dword [ebp-100]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_128
	push	dword [ebp-100]
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
	push	dword [esi+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1429
	push	eax
	call	_bbGCFree
	add	esp,4
_1429:
	mov	dword [esi+40],ebx
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	add	dword [ebx+16],1
	push	_1434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1436
	call	_brl_blitz_NullObjectError
_1436:
	push	_4
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1437
	mov	eax,ebp
	push	eax
	push	_1454
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1440
	call	_brl_blitz_NullObjectError
_1440:
	mov	dword [ebp-340],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-324],eax
	cmp	dword [ebp-324],_bbNullObject
	jne	_1443
	call	_brl_blitz_NullObjectError
_1443:
	mov	edi,dword [ebp-52]
	cmp	edi,_bbNullObject
	jne	_1445
	call	_brl_blitz_NullObjectError
_1445:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_1447
	call	_brl_blitz_NullObjectError
_1447:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1449
	call	_brl_blitz_NullObjectError
_1449:
	push	_134
	push	_4
	push	_106
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_133
	push	_37
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_132
	push	_37
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_131
	push	dword [ebp-324]
	mov	eax,dword [ebp-324]
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
	mov	eax,dword [ebp-340]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-340]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1453
	push	eax
	call	_bbGCFree
	add	esp,4
_1453:
	mov	eax,dword [ebp-340]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1437:
	push	_1455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1458
	call	_brl_blitz_NullObjectError
_1458:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-372],eax
	mov	ebx,dword [ebp-372]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-384],eax
	jmp	_135
_137:
	mov	ebx,dword [ebp-384]
	cmp	ebx,_bbNullObject
	jne	_1466
	call	_brl_blitz_NullObjectError
_1466:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-156],eax
	cmp	dword [ebp-156],_bbNullObject
	je	_135
	mov	eax,ebp
	push	eax
	push	_1564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],_bbNullObject
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-232],eax
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_1475
	call	_brl_blitz_NullObjectError
_1475:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_138
_140:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-164],eax
	cmp	dword [ebp-164],_bbNullObject
	je	_138
	mov	eax,ebp
	push	eax
	push	_1495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1483
	call	_brl_blitz_NullObjectError
_1483:
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_1485
	call	_brl_blitz_NullObjectError
_1485:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1490
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1487
	call	_brl_blitz_NullObjectError
_1487:
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_1489
	call	_brl_blitz_NullObjectError
_1489:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1490:
	cmp	eax,0
	je	_1492
	mov	eax,ebp
	push	eax
	push	_1494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-160],1
	call	dword [_bbOnDebugLeaveScope]
_1492:
	call	dword [_bbOnDebugLeaveScope]
_138:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1478
	call	_brl_blitz_NullObjectError
_1478:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_140
_139:
	push	_1496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1498
	call	_brl_blitz_NullObjectError
_1498:
	mov	dword [ebp-308],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-304],eax
	cmp	dword [ebp-304],_bbNullObject
	jne	_1501
	call	_brl_blitz_NullObjectError
_1501:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-284],eax
	cmp	dword [ebp-284],_bbNullObject
	jne	_1503
	call	_brl_blitz_NullObjectError
_1503:
	mov	eax,dword [ebp-156]
	mov	dword [ebp-300],eax
	cmp	dword [ebp-300],_bbNullObject
	jne	_1505
	call	_brl_blitz_NullObjectError
_1505:
	mov	eax,dword [ebp-156]
	mov	dword [ebp-272],eax
	cmp	dword [ebp-272],_bbNullObject
	jne	_1507
	call	_brl_blitz_NullObjectError
_1507:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1509
	call	_brl_blitz_NullObjectError
_1509:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1511
	call	_brl_blitz_NullObjectError
_1511:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_1513
	call	_brl_blitz_NullObjectError
_1513:
	push	_76
	push	dword [ebp-160]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_143
	push	dword [ebx+20]
	push	dword [esi+16]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_142
	push	_107
	push	_106
	mov	eax,dword [ebp-272]
	push	dword [eax+20]
	mov	eax,dword [ebp-300]
	push	dword [eax+16]
	push	dword [ebp-284]
	mov	eax,dword [ebp-284]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_141
	push	dword [ebp-304]
	mov	eax,dword [ebp-304]
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
	mov	eax,dword [ebp-308]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-308]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1517
	push	eax
	call	_bbGCFree
	add	esp,4
_1517:
	mov	eax,dword [ebp-308]
	mov	dword [eax+40],ebx
	push	_1518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1521
	call	_brl_blitz_NullObjectError
_1521:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-292],eax
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_1524
	call	_brl_blitz_NullObjectError
_1524:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_144
_146:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1529
	call	_brl_blitz_NullObjectError
_1529:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-168],eax
	cmp	dword [ebp-168],_bbNullObject
	je	_144
	mov	eax,ebp
	push	eax
	push	_1563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1532
	call	_brl_blitz_NullObjectError
_1532:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_1534
	call	_brl_blitz_NullObjectError
_1534:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1539
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_1538
	call	_brl_blitz_NullObjectError
_1538:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1539:
	cmp	eax,0
	je	_1541
	mov	eax,ebp
	push	eax
	push	_1562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1544
	call	_brl_blitz_NullObjectError
_1544:
	mov	dword [ebp-228],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-224],eax
	cmp	dword [ebp-224],_bbNullObject
	jne	_1547
	call	_brl_blitz_NullObjectError
_1547:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-216],eax
	cmp	dword [ebp-216],_bbNullObject
	jne	_1549
	call	_brl_blitz_NullObjectError
_1549:
	mov	eax,dword [ebp-156]
	mov	dword [ebp-220],eax
	cmp	dword [ebp-220],_bbNullObject
	jne	_1551
	call	_brl_blitz_NullObjectError
_1551:
	mov	edi,dword [ebp-156]
	cmp	edi,_bbNullObject
	jne	_1553
	call	_brl_blitz_NullObjectError
_1553:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_1555
	call	_brl_blitz_NullObjectError
_1555:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_1557
	call	_brl_blitz_NullObjectError
_1557:
	push	_149
	push	dword [ebx+8]
	push	_148
	push	dword [esi+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_147
	push	_107
	push	_106
	push	dword [edi+20]
	mov	eax,dword [ebp-220]
	push	dword [eax+16]
	push	dword [ebp-216]
	mov	eax,dword [ebp-216]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_141
	push	dword [ebp-224]
	mov	eax,dword [ebp-224]
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
	mov	eax,dword [ebp-228]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-228]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1561
	push	eax
	call	_bbGCFree
	add	esp,4
_1561:
	mov	eax,dword [ebp-228]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1541:
	call	dword [_bbOnDebugLeaveScope]
_144:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1527
	call	_brl_blitz_NullObjectError
_1527:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_146
_145:
	call	dword [_bbOnDebugLeaveScope]
_135:
	mov	ebx,dword [ebp-384]
	cmp	ebx,_bbNullObject
	jne	_1464
	call	_brl_blitz_NullObjectError
_1464:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_137
_136:
	push	_1565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1567
	call	_brl_blitz_NullObjectError
_1567:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1568
	mov	eax,ebp
	push	eax
	push	_1607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1572
	call	_brl_blitz_NullObjectError
_1572:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-356],eax
	mov	ebx,dword [ebp-356]
	cmp	ebx,_bbNullObject
	jne	_1575
	call	_brl_blitz_NullObjectError
_1575:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-332],eax
	jmp	_150
_152:
	mov	ebx,dword [ebp-332]
	cmp	ebx,_bbNullObject
	jne	_1580
	call	_brl_blitz_NullObjectError
_1580:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-172],eax
	cmp	dword [ebp-172],_bbNullObject
	je	_150
	mov	eax,ebp
	push	eax
	push	_1606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_1583
	call	_brl_blitz_NullObjectError
_1583:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1586
	push	_42
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1587
	jmp	_1585
_1586:
	mov	eax,ebp
	push	eax
	push	_1588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1585
_1587:
	mov	eax,ebp
	push	eax
	push	_1605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1591
	call	_brl_blitz_NullObjectError
_1591:
	mov	dword [ebp-268],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-244],eax
	cmp	dword [ebp-244],_bbNullObject
	jne	_1594
	call	_brl_blitz_NullObjectError
_1594:
	mov	edi,dword [ebp-172]
	cmp	edi,_bbNullObject
	jne	_1596
	call	_brl_blitz_NullObjectError
_1596:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1598
	call	_brl_blitz_NullObjectError
_1598:
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_1600
	call	_brl_blitz_NullObjectError
_1600:
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
	push	_154
	push	_36
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_153
	push	dword [ebp-244]
	mov	eax,dword [ebp-244]
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
	mov	eax,dword [ebp-268]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-268]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1604
	push	eax
	call	_bbGCFree
	add	esp,4
_1604:
	mov	eax,dword [ebp-268]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1585
_1585:
	call	dword [_bbOnDebugLeaveScope]
_150:
	mov	ebx,dword [ebp-332]
	cmp	ebx,_bbNullObject
	jne	_1578
	call	_brl_blitz_NullObjectError
_1578:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_152
_151:
	call	dword [_bbOnDebugLeaveScope]
_1568:
	push	_1608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1610
	call	_brl_blitz_NullObjectError
_1610:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1613
	call	_brl_blitz_NullObjectError
_1613:
	push	_155
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+40]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1617
	push	eax
	call	_bbGCFree
	add	esp,4
_1617:
	mov	dword [ebx+40],esi
	push	_1618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1620
	call	_brl_blitz_NullObjectError
_1620:
	sub	dword [ebx+16],1
	push	_1622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1624
	call	_brl_blitz_NullObjectError
_1624:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1627
	call	_brl_blitz_NullObjectError
_1627:
	push	_82
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+40]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1631
	push	eax
	call	_bbGCFree
	add	esp,4
_1631:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_773
_777:
	mov	eax,ebp
	push	eax
	push	_1692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1636
	call	_brl_blitz_NullObjectError
_1636:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1639
	call	_brl_blitz_NullObjectError
_1639:
	push	dword [ebx+40]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1643
	push	eax
	call	_bbGCFree
	add	esp,4
_1643:
	mov	dword [esi+12],ebx
	push	_1644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1646
	call	_brl_blitz_NullObjectError
_1646:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1649
	call	_brl_blitz_NullObjectError
_1649:
	push	_156
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1653
	push	eax
	call	_bbGCFree
	add	esp,4
_1653:
	mov	dword [ebx+12],esi
	push	_1654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1656
	call	_brl_blitz_NullObjectError
_1656:
	add	dword [ebx+16],1
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1663
	call	_brl_blitz_NullObjectError
_1663:
	push	_157
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1667
	push	eax
	call	_bbGCFree
	add	esp,4
_1667:
	mov	dword [ebx+12],esi
	push	_1668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1670
	call	_brl_blitz_NullObjectError
_1670:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1673
	call	_brl_blitz_NullObjectError
_1673:
	push	dword [ebp-52]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1677
	push	eax
	call	_bbGCFree
	add	esp,4
_1677:
	mov	dword [ebx+12],esi
	push	_1678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1680
	call	_brl_blitz_NullObjectError
_1680:
	sub	dword [ebx+16],1
	push	_1682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1684
	call	_brl_blitz_NullObjectError
_1684:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1687
	call	_brl_blitz_NullObjectError
_1687:
	push	_109
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1691
	push	eax
	call	_bbGCFree
	add	esp,4
_1691:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_773
_773:
	call	dword [_bbOnDebugLeaveScope]
_49:
	mov	ebx,dword [ebp-408]
	cmp	ebx,_bbNullObject
	jne	_766
	call	_brl_blitz_NullObjectError
_766:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	push	_1694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1697
	call	_brl_blitz_NullObjectError
_1697:
	mov	edi,dword [ebx+24]
	jmp	_1698
_160:
	mov	eax,ebp
	push	eax
	push	_1798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],_bbEmptyString
	push	_1702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1704
	call	_brl_blitz_NullObjectError
_1704:
	push	_162
	push	dword [ebp-176]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_161
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
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],0
	mov	dword [ebp-184],1
	mov	ebx,dword [ebp-176]
	jmp	_1707
_165:
	mov	eax,ebp
	push	eax
	push	_1710
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_166
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	call	dword [_bbOnDebugLeaveScope]
_163:
	add	dword [ebp-184],1
_1707:
	cmp	dword [ebp-184],ebx
	jle	_165
_164:
	push	_1712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_77
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1715
	call	_brl_blitz_NullObjectError
_1715:
	add	dword [ebx+16],1
	push	_1717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1719
	call	_brl_blitz_NullObjectError
_1719:
	push	_25
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],0
	mov	dword [ebp-188],1
	mov	ebx,dword [ebp-176]
	jmp	_1722
_169:
	mov	eax,ebp
	push	eax
	push	_1725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	call	dword [_bbOnDebugLeaveScope]
_167:
	add	dword [ebp-188],1
_1722:
	cmp	dword [ebp-188],ebx
	jle	_169
_168:
	push	_1727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1730
	call	_brl_blitz_NullObjectError
_1730:
	push	_171
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],0
	mov	dword [ebp-192],1
	mov	ebx,dword [ebp-176]
	jmp	_1733
_174:
	mov	eax,ebp
	push	eax
	push	_1740
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_175
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	cmp	dword [ebp-192],eax
	jge	_1737
	mov	eax,ebp
	push	eax
	push	_1739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_176
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	call	dword [_bbOnDebugLeaveScope]
_1737:
	call	dword [_bbOnDebugLeaveScope]
_172:
	add	dword [ebp-192],1
_1733:
	cmp	dword [ebp-192],ebx
	jle	_174
_173:
	push	_1741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_177
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],0
	mov	dword [ebp-196],1
	mov	eax,dword [ebp-176]
	sub	eax,1
	mov	ebx,eax
	jmp	_1744
_180:
	mov	eax,ebp
	push	eax
	push	_1766
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1748
	call	_brl_blitz_NullObjectError
_1748:
	push	_185
	push	dword [ebp-196]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_184
	push	dword [ebp-196]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_183
	push	dword [ebp-196]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_182
	push	dword [ebp-196]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_181
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1751
	call	_brl_blitz_NullObjectError
_1751:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1755
	call	_brl_blitz_NullObjectError
_1755:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],_186
	push	_1758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	mov	dword [ebp-204],1
	mov	esi,dword [ebp-196]
	jmp	_1760
_189:
	mov	eax,ebp
	push	eax
	push	_1763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_191
	push	dword [ebp-204]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_190
	push	dword [ebp-200]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-200],eax
	call	dword [_bbOnDebugLeaveScope]
_187:
	add	dword [ebp-204],1
_1760:
	cmp	dword [ebp-204],esi
	jle	_189
_188:
	push	_1764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-200]
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_76
	mov	eax,dword [ebp-196]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_192
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	call	dword [_bbOnDebugLeaveScope]
_178:
	add	dword [ebp-196],1
_1744:
	cmp	dword [ebp-196],ebx
	jle	_180
_179:
	push	_1768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],0
	mov	dword [ebp-208],1
	mov	eax,dword [ebp-176]
	sub	eax,1
	mov	ebx,eax
	jmp	_1770
_195:
	mov	eax,ebp
	push	eax
	push	_1779
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1774
	call	_brl_blitz_NullObjectError
_1774:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1778
	call	_brl_blitz_NullObjectError
_1778:
	push	_82
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	call	dword [_bbOnDebugLeaveScope]
_193:
	add	dword [ebp-208],1
_1770:
	cmp	dword [ebp-208],ebx
	jle	_195
_194:
	push	_1780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
	push	_196
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1785
	call	_brl_blitz_NullObjectError
_1785:
	sub	dword [ebx+16],1
	push	_1787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_82
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-180],eax
	push	_1788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1790
	call	_brl_blitz_NullObjectError
_1790:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1793
	call	_brl_blitz_NullObjectError
_1793:
	push	dword [esi+12]
	push	dword [ebp-180]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1797
	push	eax
	call	_bbGCFree
	add	esp,4
_1797:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_158:
	add	dword [ebp-176],1
_1698:
	cmp	dword [ebp-176],edi
	jle	_160
_159:
	push	_1799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1801
	call	_brl_blitz_NullObjectError
_1801:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1809
	call	_brl_blitz_NullObjectError
_1809:
	push	dword [ebx+12]
	push	_1807
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1813
	push	eax
	call	_bbGCFree
	add	esp,4
_1813:
	mov	dword [esi+12],ebx
	push	_1814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1816
	call	_brl_blitz_NullObjectError
_1816:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	push	dword [ebx+28]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1823
	push	eax
	call	_bbGCFree
	add	esp,4
_1823:
	mov	dword [esi+12],ebx
	push	_1824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	push	_57
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1831
	push	eax
	call	_bbGCFree
	add	esp,4
_1831:
	mov	dword [esi+12],ebx
	push	_1832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1834
	call	_brl_blitz_NullObjectError
_1834:
	push	dword [ebp-12]
	push	dword [ebx+12]
	call	_brl_stream_SaveString
	add	esp,8
	mov	ebx,0
	jmp	_487
_487:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetTabs:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
	push	ebp
	push	_1852
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_1843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1846
	call	_brl_blitz_NullObjectError
_1846:
	mov	ebx,dword [ebx+16]
	jmp	_1847
_201:
	push	ebp
	push	_1850
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_202
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_199:
	add	dword [ebp-12],1
_1847:
	cmp	dword [ebp-12],ebx
	jle	_201
_200:
	push	_1851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_490
_490:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Block:
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
	push	_1909
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1858
	mov	eax,ebp
	push	eax
	push	_1907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1862
	call	_brl_blitz_NullObjectError
_1862:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1865
	call	_brl_blitz_NullObjectError
_1865:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_203
_205:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1870
	call	_brl_blitz_NullObjectError
_1870:
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
	je	_203
	mov	eax,ebp
	push	eax
	push	_1906
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1873
	call	_brl_blitz_NullObjectError
_1873:
	push	_206
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
	je	_1876
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1875
	call	_brl_blitz_NullObjectError
_1875:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1876:
	cmp	eax,0
	je	_1878
	mov	eax,ebp
	push	eax
	push	_1905
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1881
	call	_brl_blitz_NullObjectError
_1881:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1883
	call	_brl_blitz_NullObjectError
_1883:
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
	push	_1885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	dword [eax+8],0
	jle	_1886
	mov	eax,ebp
	push	eax
	push	_1904
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_207
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1888
	push	_109
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1888:
	cmp	eax,0
	jne	_1890
	push	_208
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1890:
	cmp	eax,0
	jne	_1892
	push	_57
	mov	eax,dword [ebp-20]
	push	dword [eax+8]
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-20]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1892:
	cmp	eax,0
	je	_1894
	mov	eax,ebp
	push	eax
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
	push	_57
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
	jmp	_1899
_1894:
	mov	eax,ebp
	push	eax
	push	_1903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1902
	call	_brl_blitz_NullObjectError
_1902:
	push	_110
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
_1899:
	call	dword [_bbOnDebugLeaveScope]
_1886:
	call	dword [_bbOnDebugLeaveScope]
_1878:
	call	dword [_bbOnDebugLeaveScope]
_203:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1868
	call	_brl_blitz_NullObjectError
_1868:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_205
_204:
	call	dword [_bbOnDebugLeaveScope]
_1858:
	push	_1908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_494
_494:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetNextMathString:
	push	ebp
	mov	ebp,esp
	sub	esp,304
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbEmptyString
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
	mov	dword [ebp-80],_bbEmptyString
	mov	dword [ebp-84],_bbEmptyString
	mov	dword [ebp-88],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbEmptyString
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbEmptyString
	mov	dword [ebp-132],_bbEmptyString
	mov	dword [ebp-136],_bbEmptyString
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-152],_bbEmptyString
	mov	dword [ebp-140],_bbEmptyString
	mov	dword [ebp-156],_bbEmptyString
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbEmptyString
	mov	byte [ebp-8],0
	mov	dword [ebp-176],_bbNullObject
	mov	byte [ebp-12],0
	mov	dword [ebp-184],_bbNullObject
	mov	dword [ebp-180],_bbEmptyString
	mov	dword [ebp-188],0
	mov	dword [ebp-192],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_1912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	jne	_1913
	mov	eax,ebp
	push	eax
	push	_1915
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_498
_1913:
	push	_1916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1918
	call	_brl_blitz_NullObjectError
_1918:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1921
	push	_216
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1922
	push	_221
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1923
	push	_226
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1924
	push	_231
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1925
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1926
	push	_240
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1927
	push	_245
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1928
	push	_249
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1929
	push	_254
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1930
	push	_259
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1931
	push	_264
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1932
	push	_269
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1933
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1934
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1935
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1936
	push	_275
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1937
	push	_276
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1937
	push	_277
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1938
	push	_294
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1939
	push	_299
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1940
	push	_303
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1941
	push	_309
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1942
	push	_311
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1943
	push	_316
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1944
	push	_323
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1945
	push	_328
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1946
	push	_333
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1947
	push	_340
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1948
	push	_342
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1949
	push	_343
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1950
	push	_344
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1951
	push	_359
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1952
	push	_361
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1953
	push	_363
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1954
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1955
	push	_367
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1956
	push	_380
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1957
	jmp	_1920
_1921:
	mov	eax,ebp
	push	eax
	push	_1992
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_210
	push	_1959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1962
	call	_brl_blitz_NullObjectError
_1962:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1965
	call	_brl_blitz_NullObjectError
_1965:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_211
_213:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_1970
	call	_brl_blitz_NullObjectError
_1970:
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
	je	_211
	mov	eax,ebp
	push	eax
	push	_1990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1973
	call	_brl_blitz_NullObjectError
_1973:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1976
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1977
	jmp	_1975
_1976:
	mov	eax,ebp
	push	eax
	push	_1983
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1980
	call	_brl_blitz_NullObjectError
_1980:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1982
	call	_brl_blitz_NullObjectError
_1982:
	push	_176
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1975
_1977:
	mov	eax,ebp
	push	eax
	push	_1989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1986
	call	_brl_blitz_NullObjectError
_1986:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1988
	call	_brl_blitz_NullObjectError
_1988:
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1975
_1975:
	call	dword [_bbOnDebugLeaveScope]
_211:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_1968
	call	_brl_blitz_NullObjectError
_1968:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_213
_212:
	push	_1991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1922:
	mov	eax,ebp
	push	eax
	push	_2025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1999
	call	_brl_blitz_NullObjectError
_1999:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_217
_219:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2004
	call	_brl_blitz_NullObjectError
_2004:
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
	je	_217
	mov	eax,ebp
	push	eax
	push	_2024
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2007
	call	_brl_blitz_NullObjectError
_2007:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2010
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2011
	jmp	_2009
_2010:
	mov	eax,ebp
	push	eax
	push	_2017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2014
	call	_brl_blitz_NullObjectError
_2014:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	push	_220
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2009
_2011:
	mov	eax,ebp
	push	eax
	push	_2023
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2020
	call	_brl_blitz_NullObjectError
_2020:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2022
	call	_brl_blitz_NullObjectError
_2022:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2009
_2009:
	call	dword [_bbOnDebugLeaveScope]
_217:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2002
	call	_brl_blitz_NullObjectError
_2002:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_219
_218:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1923:
	mov	eax,ebp
	push	eax
	push	_2058
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2029
	call	_brl_blitz_NullObjectError
_2029:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2032
	call	_brl_blitz_NullObjectError
_2032:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_222
_224:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
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
	je	_222
	mov	eax,ebp
	push	eax
	push	_2057
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2040
	call	_brl_blitz_NullObjectError
_2040:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2043
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2044
	jmp	_2042
_2043:
	mov	eax,ebp
	push	eax
	push	_2050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2047
	call	_brl_blitz_NullObjectError
_2047:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	push	_225
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2042
_2044:
	mov	eax,ebp
	push	eax
	push	_2056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2053
	call	_brl_blitz_NullObjectError
_2053:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2055
	call	_brl_blitz_NullObjectError
_2055:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2042
_2042:
	call	dword [_bbOnDebugLeaveScope]
_222:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2035
	call	_brl_blitz_NullObjectError
_2035:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1924:
	mov	eax,ebp
	push	eax
	push	_2091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2062
	call	_brl_blitz_NullObjectError
_2062:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2065
	call	_brl_blitz_NullObjectError
_2065:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-272],eax
	jmp	_227
_229:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2070
	call	_brl_blitz_NullObjectError
_2070:
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
	je	_227
	mov	eax,ebp
	push	eax
	push	_2090
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2073
	call	_brl_blitz_NullObjectError
_2073:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2076
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2077
	jmp	_2075
_2076:
	mov	eax,ebp
	push	eax
	push	_2083
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2080
	call	_brl_blitz_NullObjectError
_2080:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2082
	call	_brl_blitz_NullObjectError
_2082:
	push	_230
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2075
_2077:
	mov	eax,ebp
	push	eax
	push	_2089
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2086
	call	_brl_blitz_NullObjectError
_2086:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2088
	call	_brl_blitz_NullObjectError
_2088:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2075
_2075:
	call	dword [_bbOnDebugLeaveScope]
_227:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2068
	call	_brl_blitz_NullObjectError
_2068:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_229
_228:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1925:
	mov	eax,ebp
	push	eax
	push	_2124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2095
	call	_brl_blitz_NullObjectError
_2095:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2098
	call	_brl_blitz_NullObjectError
_2098:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_232
_234:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2103
	call	_brl_blitz_NullObjectError
_2103:
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
	je	_232
	mov	eax,ebp
	push	eax
	push	_2123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2106
	call	_brl_blitz_NullObjectError
_2106:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2109
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2110
	jmp	_2108
_2109:
	mov	eax,ebp
	push	eax
	push	_2116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2113
	call	_brl_blitz_NullObjectError
_2113:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2115
	call	_brl_blitz_NullObjectError
_2115:
	push	_106
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2108
_2110:
	mov	eax,ebp
	push	eax
	push	_2122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2119
	call	_brl_blitz_NullObjectError
_2119:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2121
	call	_brl_blitz_NullObjectError
_2121:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2108
_2108:
	call	dword [_bbOnDebugLeaveScope]
_232:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2101
	call	_brl_blitz_NullObjectError
_2101:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1926:
	mov	eax,ebp
	push	eax
	push	_2157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2128
	call	_brl_blitz_NullObjectError
_2128:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2131
	call	_brl_blitz_NullObjectError
_2131:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_236
_238:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2136
	call	_brl_blitz_NullObjectError
_2136:
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
	je	_236
	mov	eax,ebp
	push	eax
	push	_2156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2139
	call	_brl_blitz_NullObjectError
_2139:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2142
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2143
	jmp	_2141
_2142:
	mov	eax,ebp
	push	eax
	push	_2149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2146
	call	_brl_blitz_NullObjectError
_2146:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2148
	call	_brl_blitz_NullObjectError
_2148:
	push	_239
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2141
_2143:
	mov	eax,ebp
	push	eax
	push	_2155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2152
	call	_brl_blitz_NullObjectError
_2152:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2154
	call	_brl_blitz_NullObjectError
_2154:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2141
_2141:
	call	dword [_bbOnDebugLeaveScope]
_236:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_238
_237:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1927:
	mov	eax,ebp
	push	eax
	push	_2190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2161
	call	_brl_blitz_NullObjectError
_2161:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2164
	call	_brl_blitz_NullObjectError
_2164:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-260],eax
	jmp	_241
_243:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2169
	call	_brl_blitz_NullObjectError
_2169:
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
	je	_241
	mov	eax,ebp
	push	eax
	push	_2189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2172
	call	_brl_blitz_NullObjectError
_2172:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2175
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2176
	jmp	_2174
_2175:
	mov	eax,ebp
	push	eax
	push	_2182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2179
	call	_brl_blitz_NullObjectError
_2179:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2181
	call	_brl_blitz_NullObjectError
_2181:
	push	_244
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2174
_2176:
	mov	eax,ebp
	push	eax
	push	_2188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2185
	call	_brl_blitz_NullObjectError
_2185:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2174
_2174:
	call	dword [_bbOnDebugLeaveScope]
_241:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2167
	call	_brl_blitz_NullObjectError
_2167:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_243
_242:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1928:
	mov	eax,ebp
	push	eax
	push	_2223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2194
	call	_brl_blitz_NullObjectError
_2194:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2197
	call	_brl_blitz_NullObjectError
_2197:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-256],eax
	jmp	_246
_248:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2202
	call	_brl_blitz_NullObjectError
_2202:
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
	je	_246
	mov	eax,ebp
	push	eax
	push	_2222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2205
	call	_brl_blitz_NullObjectError
_2205:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2208
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2209
	jmp	_2207
_2208:
	mov	eax,ebp
	push	eax
	push	_2215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2212
	call	_brl_blitz_NullObjectError
_2212:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2207
_2209:
	mov	eax,ebp
	push	eax
	push	_2221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2218
	call	_brl_blitz_NullObjectError
_2218:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2220
	call	_brl_blitz_NullObjectError
_2220:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2207
_2207:
	call	dword [_bbOnDebugLeaveScope]
_246:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2200
	call	_brl_blitz_NullObjectError
_2200:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_248
_247:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1929:
	mov	eax,ebp
	push	eax
	push	_2256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2227
	call	_brl_blitz_NullObjectError
_2227:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2230
	call	_brl_blitz_NullObjectError
_2230:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-252],eax
	jmp	_250
_252:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2235
	call	_brl_blitz_NullObjectError
_2235:
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
	je	_250
	mov	eax,ebp
	push	eax
	push	_2255
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2238
	call	_brl_blitz_NullObjectError
_2238:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2241
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2242
	jmp	_2240
_2241:
	mov	eax,ebp
	push	eax
	push	_2248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2245
	call	_brl_blitz_NullObjectError
_2245:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2247
	call	_brl_blitz_NullObjectError
_2247:
	push	_253
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2240
_2242:
	mov	eax,ebp
	push	eax
	push	_2254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2251
	call	_brl_blitz_NullObjectError
_2251:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2253
	call	_brl_blitz_NullObjectError
_2253:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2240
_2240:
	call	dword [_bbOnDebugLeaveScope]
_250:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2233
	call	_brl_blitz_NullObjectError
_2233:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_252
_251:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1930:
	mov	eax,ebp
	push	eax
	push	_2289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2260
	call	_brl_blitz_NullObjectError
_2260:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2263
	call	_brl_blitz_NullObjectError
_2263:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-248],eax
	jmp	_255
_257:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2268
	call	_brl_blitz_NullObjectError
_2268:
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
	je	_255
	mov	eax,ebp
	push	eax
	push	_2288
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2271
	call	_brl_blitz_NullObjectError
_2271:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2274
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2275
	jmp	_2273
_2274:
	mov	eax,ebp
	push	eax
	push	_2281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2278
	call	_brl_blitz_NullObjectError
_2278:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	push	_258
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2273
_2275:
	mov	eax,ebp
	push	eax
	push	_2287
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2284
	call	_brl_blitz_NullObjectError
_2284:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2286
	call	_brl_blitz_NullObjectError
_2286:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2273
_2273:
	call	dword [_bbOnDebugLeaveScope]
_255:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2266
	call	_brl_blitz_NullObjectError
_2266:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_257
_256:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1931:
	mov	eax,ebp
	push	eax
	push	_2322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2293
	call	_brl_blitz_NullObjectError
_2293:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2296
	call	_brl_blitz_NullObjectError
_2296:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-244],eax
	jmp	_260
_262:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2301
	call	_brl_blitz_NullObjectError
_2301:
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
	je	_260
	mov	eax,ebp
	push	eax
	push	_2321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2304
	call	_brl_blitz_NullObjectError
_2304:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2307
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2308
	jmp	_2306
_2307:
	mov	eax,ebp
	push	eax
	push	_2314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2311
	call	_brl_blitz_NullObjectError
_2311:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	push	_263
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2306
_2308:
	mov	eax,ebp
	push	eax
	push	_2320
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2317
	call	_brl_blitz_NullObjectError
_2317:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2319
	call	_brl_blitz_NullObjectError
_2319:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2306
_2306:
	call	dword [_bbOnDebugLeaveScope]
_260:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_262
_261:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1932:
	mov	eax,ebp
	push	eax
	push	_2355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2326
	call	_brl_blitz_NullObjectError
_2326:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2329
	call	_brl_blitz_NullObjectError
_2329:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_265
_267:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2334
	call	_brl_blitz_NullObjectError
_2334:
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
	je	_265
	mov	eax,ebp
	push	eax
	push	_2354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2337
	call	_brl_blitz_NullObjectError
_2337:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2340
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2341
	jmp	_2339
_2340:
	mov	eax,ebp
	push	eax
	push	_2347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2344
	call	_brl_blitz_NullObjectError
_2344:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2346
	call	_brl_blitz_NullObjectError
_2346:
	push	_268
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2339
_2341:
	mov	eax,ebp
	push	eax
	push	_2353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2350
	call	_brl_blitz_NullObjectError
_2350:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2352
	call	_brl_blitz_NullObjectError
_2352:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2339
_2339:
	call	dword [_bbOnDebugLeaveScope]
_265:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2332
	call	_brl_blitz_NullObjectError
_2332:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_267
_266:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1933:
	mov	eax,ebp
	push	eax
	push	_2388
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2359
	call	_brl_blitz_NullObjectError
_2359:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2362
	call	_brl_blitz_NullObjectError
_2362:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_270
_272:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2367
	call	_brl_blitz_NullObjectError
_2367:
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
	je	_270
	mov	eax,ebp
	push	eax
	push	_2387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2370
	call	_brl_blitz_NullObjectError
_2370:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2373
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2374
	jmp	_2372
_2373:
	mov	eax,ebp
	push	eax
	push	_2380
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2379
	call	_brl_blitz_NullObjectError
_2379:
	push	_273
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
	push	_84
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2372
_2374:
	mov	eax,ebp
	push	eax
	push	_2386
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2383
	call	_brl_blitz_NullObjectError
_2383:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2385
	call	_brl_blitz_NullObjectError
_2385:
	push	_122
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2372
_2372:
	call	dword [_bbOnDebugLeaveScope]
_270:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2365
	call	_brl_blitz_NullObjectError
_2365:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_272
_271:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1934:
	mov	eax,ebp
	push	eax
	push	_2392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2391
	call	_brl_blitz_NullObjectError
_2391:
	push	_274
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1935:
	mov	eax,ebp
	push	eax
	push	_2396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2395
	call	_brl_blitz_NullObjectError
_2395:
	push	_4
	push	_1803
	push	_274
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_1803
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1936:
	mov	eax,ebp
	push	eax
	push	_2400
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2399
	call	_brl_blitz_NullObjectError
_2399:
	push	_274
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1937:
	mov	eax,ebp
	push	eax
	push	_2404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2403
	call	_brl_blitz_NullObjectError
_2403:
	push	_75
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_75
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1938:
	mov	eax,ebp
	push	eax
	push	_2544
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2407
	call	_brl_blitz_NullObjectError
_2407:
	push	_278
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2411
	call	_brl_blitz_NullObjectError
_2411:
	push	_279
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	dword [ebp-84]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2414
	mov	eax,ebp
	push	eax
	push	_2460
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2418
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2419
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2420
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2421
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2422
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2423
	jmp	_2417
_2418:
	mov	eax,ebp
	push	eax
	push	_2429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2426
	call	_brl_blitz_NullObjectError
_2426:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2428
	call	_brl_blitz_NullObjectError
_2428:
	push	_122
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
	push	_280
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2419:
	mov	eax,ebp
	push	eax
	push	_2435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2432
	call	_brl_blitz_NullObjectError
_2432:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2434
	call	_brl_blitz_NullObjectError
_2434:
	push	_122
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
	push	_281
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2420:
	mov	eax,ebp
	push	eax
	push	_2441
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2438
	call	_brl_blitz_NullObjectError
_2438:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2440
	call	_brl_blitz_NullObjectError
_2440:
	push	_122
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
	push	_282
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2421:
	mov	eax,ebp
	push	eax
	push	_2447
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2444
	call	_brl_blitz_NullObjectError
_2444:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2446
	call	_brl_blitz_NullObjectError
_2446:
	push	_122
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
	push	_283
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2422:
	mov	eax,ebp
	push	eax
	push	_2453
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2450
	call	_brl_blitz_NullObjectError
_2450:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2452
	call	_brl_blitz_NullObjectError
_2452:
	push	_122
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
	push	_284
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2423:
	mov	eax,ebp
	push	eax
	push	_2459
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2456
	call	_brl_blitz_NullObjectError
_2456:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2458
	call	_brl_blitz_NullObjectError
_2458:
	push	_122
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
	push	_285
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2417
_2417:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2461
_2414:
	mov	eax,ebp
	push	eax
	push	_2543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	dword [ebp-80]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2463
	mov	eax,ebp
	push	eax
	push	_2509
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2467
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2468
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2469
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2470
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2471
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2472
	jmp	_2466
_2467:
	mov	eax,ebp
	push	eax
	push	_2478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2475
	call	_brl_blitz_NullObjectError
_2475:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2477
	call	_brl_blitz_NullObjectError
_2477:
	push	_122
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
	push	_286
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2468:
	mov	eax,ebp
	push	eax
	push	_2484
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2481
	call	_brl_blitz_NullObjectError
_2481:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2483
	call	_brl_blitz_NullObjectError
_2483:
	push	_122
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
	push	_287
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2469:
	mov	eax,ebp
	push	eax
	push	_2490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2487
	call	_brl_blitz_NullObjectError
_2487:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2489
	call	_brl_blitz_NullObjectError
_2489:
	push	_122
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
	push	_288
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2470:
	mov	eax,ebp
	push	eax
	push	_2496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2493
	call	_brl_blitz_NullObjectError
_2493:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2495
	call	_brl_blitz_NullObjectError
_2495:
	push	_122
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
	push	_289
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2471:
	mov	eax,ebp
	push	eax
	push	_2502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2499
	call	_brl_blitz_NullObjectError
_2499:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2501
	call	_brl_blitz_NullObjectError
_2501:
	push	_122
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
	push	_290
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2472:
	mov	eax,ebp
	push	eax
	push	_2508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2505
	call	_brl_blitz_NullObjectError
_2505:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2507
	call	_brl_blitz_NullObjectError
_2507:
	push	_122
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
	push	_291
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2466
_2466:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2510
_2463:
	mov	eax,ebp
	push	eax
	push	_2542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2513
	call	_brl_blitz_NullObjectError
_2513:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2515
	call	_brl_blitz_NullObjectError
_2515:
	push	_279
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	jne	_2516
	mov	eax,ebp
	push	eax
	push	_2526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-196],eax
	cmp	dword [ebp-196],_bbNullObject
	jne	_2519
	call	_brl_blitz_NullObjectError
_2519:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2521
	call	_brl_blitz_NullObjectError
_2521:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2523
	call	_brl_blitz_NullObjectError
_2523:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2525
	call	_brl_blitz_NullObjectError
_2525:
	push	_122
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
	push	_292
	push	0
	push	_279
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-196]
	mov	eax,dword [ebp-196]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_84
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2527
_2516:
	mov	eax,ebp
	push	eax
	push	_2541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-212],eax
	cmp	dword [ebp-212],_bbNullObject
	jne	_2530
	call	_brl_blitz_NullObjectError
_2530:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-204],eax
	cmp	dword [ebp-204],_bbNullObject
	jne	_2532
	call	_brl_blitz_NullObjectError
_2532:
	mov	eax,dword [ebp-16]
	mov	dword [ebp-200],eax
	cmp	dword [ebp-200],_bbNullObject
	jne	_2534
	call	_brl_blitz_NullObjectError
_2534:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2536
	call	_brl_blitz_NullObjectError
_2536:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2538
	call	_brl_blitz_NullObjectError
_2538:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2540
	call	_brl_blitz_NullObjectError
_2540:
	push	_122
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
	push	_122
	push	0
	push	_278
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-200]
	mov	eax,dword [ebp-200]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_132
	push	_4
	push	_106
	push	0
	push	_279
	push	dword [ebp-204]
	mov	eax,dword [ebp-204]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-212]
	mov	eax,dword [ebp-212]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_293
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2527:
	call	dword [_bbOnDebugLeaveScope]
_2510:
	call	dword [_bbOnDebugLeaveScope]
_2461:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1939:
	mov	eax,ebp
	push	eax
	push	_2595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2549
	call	_brl_blitz_NullObjectError
_2549:
	push	_67
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2552
	call	_brl_blitz_NullObjectError
_2552:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-88],_bbNullObject
	je	_2557
	mov	eax,ebp
	push	eax
	push	_2592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	edi,dword [ebp-88]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2562
	call	_brl_blitz_NullObjectError
_2562:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-228],eax
	jmp	_295
_297:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_2567
	call	_brl_blitz_NullObjectError
_2567:
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
	je	_295
	mov	eax,ebp
	push	eax
	push	_2591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2570
	call	_brl_blitz_NullObjectError
_2570:
	push	_71
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2571
	mov	eax,ebp
	push	eax
	push	_2578
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2574
	call	_brl_blitz_NullObjectError
_2574:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_176
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2571:
	push	_2579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2581
	call	_brl_blitz_NullObjectError
_2581:
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2582
	movzx	eax,byte [ebp-4]
_2582:
	cmp	eax,0
	je	_2584
	mov	eax,ebp
	push	eax
	push	_2590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2588
	call	_brl_blitz_NullObjectError
_2588:
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_176
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2584:
	call	dword [_bbOnDebugLeaveScope]
_295:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_2565
	call	_brl_blitz_NullObjectError
_2565:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_297
_296:
	call	dword [_bbOnDebugLeaveScope]
_2557:
	push	_2593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-24],eax
	push	_2594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1940:
	mov	eax,ebp
	push	eax
	push	_2633
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2600
	call	_brl_blitz_NullObjectError
_2600:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2603
	call	_brl_blitz_NullObjectError
_2603:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_300
_302:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2608
	call	_brl_blitz_NullObjectError
_2608:
	push	_bah_libxml_TxmlNode
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-96],eax
	cmp	dword [ebp-96],_bbNullObject
	je	_300
	mov	eax,ebp
	push	eax
	push	_2627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_2611
	call	_brl_blitz_NullObjectError
_2611:
	push	_56
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2612
	mov	eax,ebp
	push	eax
	push	_2616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2615
	call	_brl_blitz_NullObjectError
_2615:
	push	dword [ebp-96]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2617
_2612:
	mov	eax,ebp
	push	eax
	push	_2626
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_2620
	call	_brl_blitz_NullObjectError
_2620:
	push	_58
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2621
	mov	eax,ebp
	push	eax
	push	_2625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2624
	call	_brl_blitz_NullObjectError
_2624:
	push	dword [ebp-96]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2621:
	call	dword [_bbOnDebugLeaveScope]
_2617:
	call	dword [_bbOnDebugLeaveScope]
_300:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2606
	call	_brl_blitz_NullObjectError
_2606:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_302
_301:
	push	_2628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2630
	call	_brl_blitz_NullObjectError
_2630:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2632
	call	_brl_blitz_NullObjectError
_2632:
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1941:
	mov	eax,ebp
	push	eax
	push	_2673
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_304
	push	_2635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2638
	call	_brl_blitz_NullObjectError
_2638:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2641
	call	_brl_blitz_NullObjectError
_2641:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_305
_307:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2646
	call	_brl_blitz_NullObjectError
_2646:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	cmp	dword [ebp-100],_bbNullObject
	je	_305
	mov	eax,ebp
	push	eax
	push	_2662
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2649
	call	_brl_blitz_NullObjectError
_2649:
	push	_308
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2650
	mov	eax,ebp
	push	eax
	push	_2661
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2653
	call	_brl_blitz_NullObjectError
_2653:
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_2655
	call	_brl_blitz_NullObjectError
_2655:
	push	_77
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2658
	call	_brl_blitz_NullObjectError
_2658:
	add	dword [ebx+16],1
	push	_2660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_306
_2650:
	call	dword [_bbOnDebugLeaveScope]
_305:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2644
	call	_brl_blitz_NullObjectError
_2644:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_307
_306:
	push	_2663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2665
	call	_brl_blitz_NullObjectError
_2665:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2668
	call	_brl_blitz_NullObjectError
_2668:
	sub	dword [ebx+16],1
	push	_2670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2672
	call	_brl_blitz_NullObjectError
_2672:
	push	_109
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1942:
	mov	eax,ebp
	push	eax
	push	_2688
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2676
	call	_brl_blitz_NullObjectError
_2676:
	sub	dword [ebx+16],1
	push	_2678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2680
	call	_brl_blitz_NullObjectError
_2680:
	push	_310
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_57
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2683
	call	_brl_blitz_NullObjectError
_2683:
	add	dword [ebx+16],1
	push	_2685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2687
	call	_brl_blitz_NullObjectError
_2687:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1943:
	mov	eax,ebp
	push	eax
	push	_2728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_312
	push	_2690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2693
	call	_brl_blitz_NullObjectError
_2693:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2696
	call	_brl_blitz_NullObjectError
_2696:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_313
_315:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2701
	call	_brl_blitz_NullObjectError
_2701:
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
	je	_313
	mov	eax,ebp
	push	eax
	push	_2717
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2704
	call	_brl_blitz_NullObjectError
_2704:
	push	_308
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2705
	mov	eax,ebp
	push	eax
	push	_2716
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2708
	call	_brl_blitz_NullObjectError
_2708:
	mov	esi,dword [ebp-104]
	cmp	esi,_bbNullObject
	jne	_2710
	call	_brl_blitz_NullObjectError
_2710:
	push	_77
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2713
	call	_brl_blitz_NullObjectError
_2713:
	add	dword [ebx+16],1
	push	_2715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_314
_2705:
	call	dword [_bbOnDebugLeaveScope]
_313:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2699
	call	_brl_blitz_NullObjectError
_2699:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
	push	_2718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2720
	call	_brl_blitz_NullObjectError
_2720:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2723
	call	_brl_blitz_NullObjectError
_2723:
	sub	dword [ebx+16],1
	push	_2725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2727
	call	_brl_blitz_NullObjectError
_2727:
	push	_109
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1944:
	mov	eax,ebp
	push	eax
	push	_2768
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_317
	push	_2730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2732
	call	_brl_blitz_NullObjectError
_2732:
	add	dword [ebx+16],1
	push	_2734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2736
	call	_brl_blitz_NullObjectError
_2736:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2739
	call	_brl_blitz_NullObjectError
_2739:
	sub	dword [ebx+16],1
	push	_2741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2743
	call	_brl_blitz_NullObjectError
_2743:
	push	_318
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2747
	call	_brl_blitz_NullObjectError
_2747:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2750
	call	_brl_blitz_NullObjectError
_2750:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_319
_321:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2755
	call	_brl_blitz_NullObjectError
_2755:
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
	je	_319
	mov	eax,ebp
	push	eax
	push	_2767
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2758
	call	_brl_blitz_NullObjectError
_2758:
	push	_308
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2759
	mov	eax,ebp
	push	eax
	push	_2766
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2762
	call	_brl_blitz_NullObjectError
_2762:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_2764
	call	_brl_blitz_NullObjectError
_2764:
	push	_322
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_320
_2759:
	call	dword [_bbOnDebugLeaveScope]
_319:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2753
	call	_brl_blitz_NullObjectError
_2753:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_321
_320:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1945:
	mov	eax,ebp
	push	eax
	push	_2804
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbEmptyString
	push	_2771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2774
	call	_brl_blitz_NullObjectError
_2774:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2777
	call	_brl_blitz_NullObjectError
_2777:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_324
_326:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_2782
	call	_brl_blitz_NullObjectError
_2782:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-116],eax
	cmp	dword [ebp-116],_bbNullObject
	je	_324
	mov	eax,ebp
	push	eax
	push	_2803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2785
	call	_brl_blitz_NullObjectError
_2785:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2786
	mov	eax,ebp
	push	eax
	push	_2792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2789
	call	_brl_blitz_NullObjectError
_2789:
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2791
	call	_brl_blitz_NullObjectError
_2791:
	push	_327
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2786:
	push	_2793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2795
	call	_brl_blitz_NullObjectError
_2795:
	push	_274
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2796
	mov	eax,ebp
	push	eax
	push	_2802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2799
	call	_brl_blitz_NullObjectError
_2799:
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2801
	call	_brl_blitz_NullObjectError
_2801:
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2796:
	call	dword [_bbOnDebugLeaveScope]
_324:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_2780
	call	_brl_blitz_NullObjectError
_2780:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_326
_325:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1946:
	mov	eax,ebp
	push	eax
	push	_2843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_329
	push	_2806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2808
	call	_brl_blitz_NullObjectError
_2808:
	add	dword [ebx+16],1
	push	_2810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2813
	call	_brl_blitz_NullObjectError
_2813:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2816
	call	_brl_blitz_NullObjectError
_2816:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-224],eax
	jmp	_330
_332:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2821
	call	_brl_blitz_NullObjectError
_2821:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-120],eax
	cmp	dword [ebp-120],_bbNullObject
	je	_330
	mov	eax,ebp
	push	eax
	push	_2832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2824
	call	_brl_blitz_NullObjectError
_2824:
	push	_308
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2825
	mov	eax,ebp
	push	eax
	push	_2831
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2828
	call	_brl_blitz_NullObjectError
_2828:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2830
	call	_brl_blitz_NullObjectError
_2830:
	push	_77
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2825:
	call	dword [_bbOnDebugLeaveScope]
_330:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2819
	call	_brl_blitz_NullObjectError
_2819:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_332
_331:
	push	_2833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2835
	call	_brl_blitz_NullObjectError
_2835:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2838
	call	_brl_blitz_NullObjectError
_2838:
	sub	dword [ebx+16],1
	push	_2840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2842
	call	_brl_blitz_NullObjectError
_2842:
	push	_109
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1947:
	mov	eax,ebp
	push	eax
	push	_2886
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2847
	call	_brl_blitz_NullObjectError
_2847:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2850
	call	_brl_blitz_NullObjectError
_2850:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_334
_336:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2855
	call	_brl_blitz_NullObjectError
_2855:
	push	_bah_libxml_TxmlNode
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-124],eax
	cmp	dword [ebp-124],_bbNullObject
	je	_334
	mov	eax,ebp
	push	eax
	push	_2885
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2858
	call	_brl_blitz_NullObjectError
_2858:
	push	_308
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
	je	_2861
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2860
	call	_brl_blitz_NullObjectError
_2860:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2861:
	cmp	eax,0
	je	_2863
	mov	eax,ebp
	push	eax
	push	_2884
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2866
	call	_brl_blitz_NullObjectError
_2866:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2868
	call	_brl_blitz_NullObjectError
_2868:
	push	_338
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
	push	_337
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
	push	_2869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2871
	call	_brl_blitz_NullObjectError
_2871:
	add	dword [ebx+16],1
	push	_2873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2875
	call	_brl_blitz_NullObjectError
_2875:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2878
	call	_brl_blitz_NullObjectError
_2878:
	push	_339
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2881
	call	_brl_blitz_NullObjectError
_2881:
	sub	dword [ebx+16],1
	push	_2883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_335
_2863:
	call	dword [_bbOnDebugLeaveScope]
_334:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2853
	call	_brl_blitz_NullObjectError
_2853:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_336
_335:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1948:
	mov	eax,ebp
	push	eax
	push	_2899
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_341
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2890
	call	_brl_blitz_NullObjectError
_2890:
	add	dword [ebx+16],1
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2894
	call	_brl_blitz_NullObjectError
_2894:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2897
	call	_brl_blitz_NullObjectError
_2897:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1949:
	mov	eax,ebp
	push	eax
	push	_2901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_342
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1950:
	mov	eax,ebp
	push	eax
	push	_2903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_343
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1951:
	mov	eax,ebp
	push	eax
	push	_3015
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_345
	push	_2905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_bbEmptyString
	push	_2907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbEmptyString
	push	_2909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbEmptyString
	push	_2911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2914
	call	_brl_blitz_NullObjectError
_2914:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-296],eax
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_2917
	call	_brl_blitz_NullObjectError
_2917:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-304],eax
	jmp	_346
_348:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_2922
	call	_brl_blitz_NullObjectError
_2922:
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
	je	_346
	mov	eax,ebp
	push	eax
	push	_2988
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_2925
	call	_brl_blitz_NullObjectError
_2925:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_349
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2928
	push	_354
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2929
	push	_279
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2930
	push	_355
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2931
	mov	eax,ebp
	push	eax
	push	_2933
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_347
_2928:
	mov	eax,ebp
	push	eax
	push	_2969
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_2937
	call	_brl_blitz_NullObjectError
_2937:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2940
	call	_brl_blitz_NullObjectError
_2940:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_350
_352:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2945
	call	_brl_blitz_NullObjectError
_2945:
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
	je	_350
	mov	eax,ebp
	push	eax
	push	_2968
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2948
	call	_brl_blitz_NullObjectError
_2948:
	push	_353
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2949
	mov	eax,ebp
	push	eax
	push	_2959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2952
	call	_brl_blitz_NullObjectError
_2952:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2954
	call	_brl_blitz_NullObjectError
_2954:
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
	mov	dword [ebp-152],eax
	push	_2956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2958
	call	_brl_blitz_NullObjectError
_2958:
	push	_345
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_110
	push	dword [ebp-152]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2960
_2949:
	mov	eax,ebp
	push	eax
	push	_2967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2963
	call	_brl_blitz_NullObjectError
_2963:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2965
	call	_brl_blitz_NullObjectError
_2965:
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
	mov	dword [ebp-128],eax
	push	_2966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2960:
	call	dword [_bbOnDebugLeaveScope]
_350:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2943
	call	_brl_blitz_NullObjectError
_2943:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_352
_351:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2927
_2929:
	mov	eax,ebp
	push	eax
	push	_2975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2972
	call	_brl_blitz_NullObjectError
_2972:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2974
	call	_brl_blitz_NullObjectError
_2974:
	push	_207
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
	push	_327
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2927
_2930:
	mov	eax,ebp
	push	eax
	push	_2981
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2978
	call	_brl_blitz_NullObjectError
_2978:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2980
	call	_brl_blitz_NullObjectError
_2980:
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
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2927
_2931:
	mov	eax,ebp
	push	eax
	push	_2987
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2984
	call	_brl_blitz_NullObjectError
_2984:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2986
	call	_brl_blitz_NullObjectError
_2986:
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
	mov	dword [ebp-132],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2927
_2927:
	call	dword [_bbOnDebugLeaveScope]
_346:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_2920
	call	_brl_blitz_NullObjectError
_2920:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_348
_347:
	push	_2989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbEmptyString
	push	_2991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2992
	push	dword [ebp-132]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_2993
	mov	eax,ebp
	push	eax
	push	_2995
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_253
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2996
_2993:
	mov	eax,ebp
	push	eax
	push	_2998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_5
	call	dword [_bbOnDebugLeaveScope]
_2996:
	push	_2999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_77
	push	dword [ebp-132]
	push	_356
	push	dword [ebp-128]
	push	_207
	push	dword [ebp-136]
	push	dword [ebp-140]
	push	dword [ebp-128]
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3002
	call	_brl_blitz_NullObjectError
_3002:
	add	dword [ebx+16],1
	push	_3004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3006
	call	_brl_blitz_NullObjectError
_3006:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3009
	call	_brl_blitz_NullObjectError
_3009:
	sub	dword [ebx+16],1
	push	_3011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3013
	call	_brl_blitz_NullObjectError
_3013:
	push	_357
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	_358
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1952:
	mov	eax,ebp
	push	eax
	push	_3025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3022
	call	_brl_blitz_NullObjectError
_3022:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3024
	call	_brl_blitz_NullObjectError
_3024:
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
	push	_360
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1953:
	mov	eax,ebp
	push	eax
	push	_3027
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_362
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1954:
	mov	eax,ebp
	push	eax
	push	_3067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3030
	call	_brl_blitz_NullObjectError
_3030:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3032
	call	_brl_blitz_NullObjectError
_3032:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3034
	call	_brl_blitz_NullObjectError
_3034:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_62
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-156],eax
	push	_3036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3038
	call	_brl_blitz_NullObjectError
_3038:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3040
	call	_brl_blitz_NullObjectError
_3040:
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
	jne	_3042
	call	_brl_blitz_NullObjectError
_3042:
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
	mov	dword [ebp-24],eax
	push	_3043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3046
	call	_brl_blitz_NullObjectError
_3046:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3049
	call	_brl_blitz_NullObjectError
_3049:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-220],eax
	jmp	_364
_366:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_3054
	call	_brl_blitz_NullObjectError
_3054:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-160],eax
	cmp	dword [ebp-160],_bbNullObject
	je	_364
	mov	eax,ebp
	push	eax
	push	_3065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_3057
	call	_brl_blitz_NullObjectError
_3057:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3058
	mov	eax,ebp
	push	eax
	push	_3064
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3061
	call	_brl_blitz_NullObjectError
_3061:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_3063
	call	_brl_blitz_NullObjectError
_3063:
	push	_191
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
	push	_147
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
	call	dword [_bbOnDebugLeaveScope]
_3058:
	call	dword [_bbOnDebugLeaveScope]
_364:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_3052
	call	_brl_blitz_NullObjectError
_3052:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_366
_365:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1955:
	mov	eax,ebp
	push	eax
	push	_3073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3070
	call	_brl_blitz_NullObjectError
_3070:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3072
	call	_brl_blitz_NullObjectError
_3072:
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1956:
	mov	eax,ebp
	push	eax
	push	_3157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3077
	call	_brl_blitz_NullObjectError
_3077:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-292],eax
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_3080
	call	_brl_blitz_NullObjectError
_3080:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-300],eax
	jmp	_368
_370:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_3085
	call	_brl_blitz_NullObjectError
_3085:
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
	je	_368
	mov	eax,ebp
	push	eax
	push	_3156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3088
	call	_brl_blitz_NullObjectError
_3088:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_214
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3091
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3092
	jmp	_3090
_3091:
	mov	eax,ebp
	push	eax
	push	_3098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3095
	call	_brl_blitz_NullObjectError
_3095:
	mov	esi,dword [ebp-164]
	cmp	esi,_bbNullObject
	jne	_3097
	call	_brl_blitz_NullObjectError
_3097:
	push	_371
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3090
_3092:
	mov	eax,ebp
	push	eax
	push	_3152
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbEmptyString
	mov	byte [ebp-8],0
	push	_3103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3106
	call	_brl_blitz_NullObjectError
_3106:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3109
	call	_brl_blitz_NullObjectError
_3109:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-208],eax
	jmp	_372
_374:
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_3114
	call	_brl_blitz_NullObjectError
_3114:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-176],eax
	cmp	dword [ebp-176],_bbNullObject
	je	_372
	mov	eax,ebp
	push	eax
	push	_3123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-176]
	cmp	esi,_bbNullObject
	jne	_3117
	call	_brl_blitz_NullObjectError
_3117:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3119
	call	_brl_blitz_NullObjectError
_3119:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3120
	mov	eax,ebp
	push	eax
	push	_3122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	mov	dword [ebp-168],eax
	call	dword [_bbOnDebugLeaveScope]
_3120:
	call	dword [_bbOnDebugLeaveScope]
_372:
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_3112
	call	_brl_blitz_NullObjectError
_3112:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_374
_373:
	push	_3124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3126
	call	_brl_blitz_NullObjectError
_3126:
	push	_4
	push	_375
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
	cmp	eax,0
	je	_3131
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3128
	call	_brl_blitz_NullObjectError
_3128:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3130
	call	_brl_blitz_NullObjectError
_3130:
	push	dword [ebx+8]
	push	_375
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3131:
	cmp	eax,0
	je	_3133
	mov	eax,ebp
	push	eax
	push	_3146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_376
_378:
	mov	eax,ebp
	push	eax
	push	_3145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3143
	call	_brl_blitz_NullObjectError
_3143:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-168],eax
	push	_3144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_379
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_376:
	mov	eax,dword [ebp-168]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3139
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3136
	call	_brl_blitz_NullObjectError
_3136:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3138
	call	_brl_blitz_NullObjectError
_3138:
	push	dword [ebx+8]
	push	_375
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3139:
	cmp	eax,0
	jne	_378
_377:
	call	dword [_bbOnDebugLeaveScope]
_3133:
	push	_3147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3149
	call	_brl_blitz_NullObjectError
_3149:
	mov	esi,dword [ebp-164]
	cmp	esi,_bbNullObject
	jne	_3151
	call	_brl_blitz_NullObjectError
_3151:
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
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3090
_3090:
	call	dword [_bbOnDebugLeaveScope]
_368:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_3083
	call	_brl_blitz_NullObjectError
_3083:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_370
_369:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1957:
	mov	eax,ebp
	push	eax
	push	_3242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_3160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3162
	call	_brl_blitz_NullObjectError
_3162:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_3163
	mov	eax,ebp
	push	eax
	push	_3184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3167
	call	_brl_blitz_NullObjectError
_3167:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3170
	call	_brl_blitz_NullObjectError
_3170:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_381
_383:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3175
	call	_brl_blitz_NullObjectError
_3175:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-184],eax
	cmp	dword [ebp-184],_bbNullObject
	je	_381
	mov	eax,ebp
	push	eax
	push	_3182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3178
	call	_brl_blitz_NullObjectError
_3178:
	push	_384
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3179
	mov	eax,ebp
	push	eax
	push	_3181
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-12],al
	call	dword [_bbOnDebugLeaveScope]
_3179:
	call	dword [_bbOnDebugLeaveScope]
_381:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3173
	call	_brl_blitz_NullObjectError
_3173:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_383
_382:
	call	dword [_bbOnDebugLeaveScope]
_3163:
	push	_3185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3187
	call	_brl_blitz_NullObjectError
_3187:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3189
	call	_brl_blitz_NullObjectError
_3189:
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	push	_62
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-180],eax
	push	_3191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_3192
	mov	eax,ebp
	push	eax
	push	_3230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],0
	push	_3195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	push	_4
	push	_106
	push	dword [ebp-180]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_386
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_385
	push	dword [ebp-180]
	push	_84
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
	mov	dword [ebp-24],eax
	push	_3196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3199
	call	_brl_blitz_NullObjectError
_3199:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3202
	call	_brl_blitz_NullObjectError
_3202:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-216],eax
	jmp	_387
_389:
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_3207
	call	_brl_blitz_NullObjectError
_3207:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-192],eax
	cmp	dword [ebp-192],_bbNullObject
	je	_387
	mov	eax,ebp
	push	eax
	push	_3219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_3210
	call	_brl_blitz_NullObjectError
_3210:
	push	_384
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3211
	mov	eax,ebp
	push	eax
	push	_3218
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-188],1
	push	_3213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3215
	call	_brl_blitz_NullObjectError
_3215:
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_3217
	call	_brl_blitz_NullObjectError
_3217:
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
	push	_176
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_3211:
	call	dword [_bbOnDebugLeaveScope]
_387:
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_3205
	call	_brl_blitz_NullObjectError
_3205:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_389
_388:
	push	_3220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3223
	call	_brl_blitz_NullObjectError
_3223:
	mov	eax,dword [ebp-188]
	cmp	dword [ebx+24],eax
	jge	_3224
	mov	eax,ebp
	push	eax
	push	_3229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3227
	call	_brl_blitz_NullObjectError
_3227:
	mov	eax,dword [ebp-188]
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_3224:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3231
_3192:
	mov	eax,ebp
	push	eax
	push	_3233
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_391
	push	_4
	push	_106
	push	dword [ebp-180]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_390
	push	dword [ebp-180]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_84
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_3231:
	push	_3234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3236
	call	_brl_blitz_NullObjectError
_3236:
	push	_4
	push	_106
	push	dword [ebp-180]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	je	_3237
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3237:
	cmp	eax,0
	je	_3239
	mov	eax,ebp
	push	eax
	push	_3241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_122
	push	dword [ebp-24]
	push	_84
	push	_4
	push	_106
	push	dword [ebp-180]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_392
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_3239:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1920
_1920:
	push	_3245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_498
_498:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_VarDef:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_3309
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3254
	call	_brl_blitz_NullObjectError
_3254:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3257
	call	_brl_blitz_NullObjectError
_3257:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_393
_395:
	cmp	ebx,_bbNullObject
	jne	_3262
	call	_brl_blitz_NullObjectError
_3262:
	push	_bah_libxml_TxmlAttribute
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_393
	mov	eax,ebp
	push	eax
	push	_3283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3265
	call	_brl_blitz_NullObjectError
_3265:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_36
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3268
	push	_62
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3269
	push	_64
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3270
	jmp	_3267
_3268:
	mov	eax,ebp
	push	eax
	push	_3274
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3273
	call	_brl_blitz_NullObjectError
_3273:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3267
_3269:
	mov	eax,ebp
	push	eax
	push	_3278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3277
	call	_brl_blitz_NullObjectError
_3277:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3267
_3270:
	mov	eax,ebp
	push	eax
	push	_3282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3281
	call	_brl_blitz_NullObjectError
_3281:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3267
_3267:
	call	dword [_bbOnDebugLeaveScope]
_393:
	cmp	ebx,_bbNullObject
	jne	_3260
	call	_brl_blitz_NullObjectError
_3260:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_395
_394:
	push	_3286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_3288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3290
	call	_brl_blitz_NullObjectError
_3290:
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-28],eax
	push	_3292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3295
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3295
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3295
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3295
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3296
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3296
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3297
	mov	eax,ebp
	push	eax
	push	_3299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_398
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3294
_3295:
	mov	eax,ebp
	push	eax
	push	_3301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_396
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3294
_3296:
	mov	eax,ebp
	push	eax
	push	_3303
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_397
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3294
_3297:
	mov	eax,ebp
	push	eax
	push	_3307
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_3306
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3294
_3294:
	push	_3308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_207
	push	dword [ebp-24]
	push	_75
	push	dword [ebp-12]
	push	_72
	push	dword [ebp-28]
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
	jmp	_502
_502:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_ArrayDef:
	push	ebp
	mov	ebp,esp
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	mov	eax,ebp
	push	eax
	push	_3359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3320
	call	_brl_blitz_NullObjectError
_3320:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_3323
	call	_brl_blitz_NullObjectError
_3323:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_399
_401:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3328
	call	_brl_blitz_NullObjectError
_3328:
	push	_bah_libxml_TxmlAttribute
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_399
	mov	eax,ebp
	push	eax
	push	_3357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3331
	call	_brl_blitz_NullObjectError
_3331:
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
	je	_3334
	push	_62
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3335
	push	_64
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3336
	jmp	_3333
_3334:
	mov	eax,ebp
	push	eax
	push	_3340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3339
	call	_brl_blitz_NullObjectError
_3339:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3333
_3335:
	mov	eax,ebp
	push	eax
	push	_3346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3343
	call	_brl_blitz_NullObjectError
_3343:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3345
	call	_brl_blitz_NullObjectError
_3345:
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
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3333
_3336:
	mov	eax,ebp
	push	eax
	push	_3356
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3349
	call	_brl_blitz_NullObjectError
_3349:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	push	_3350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],1
	mov	ebx,dword [ebp-20]
	jmp	_3352
_404:
	mov	eax,ebp
	push	eax
	push	_3355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_402:
	add	dword [ebp-28],1
_3352:
	cmp	dword [ebp-28],ebx
	jle	_404
_403:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3333
_3333:
	call	dword [_bbOnDebugLeaveScope]
_399:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3326
	call	_brl_blitz_NullObjectError
_3326:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_401
_400:
	push	_3358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_405
	push	dword [ebp-12]
	push	_72
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	jmp	_506
_506:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetRealDatatype:
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
	push	_3410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3361
	push	ebp
	push	_3363
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_3361:
	push	_3364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	push	_3366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3369
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3370
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3371
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3372
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3373
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3374
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3375
	push	_120
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3376
	push	ebp
	push	_3386
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3379
	call	_brl_blitz_NullObjectError
_3379:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_3380
	push	ebp
	push	_3382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-8]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_413
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3383
_3380:
	push	ebp
	push	_3385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-8]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_3383:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3369:
	push	ebp
	push	_3388
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_406
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3370:
	push	ebp
	push	_3390
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_407
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3371:
	push	ebp
	push	_3392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_408
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3372:
	push	ebp
	push	_3394
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_409
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3373:
	push	ebp
	push	_3396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_410
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3374:
	push	ebp
	push	_3398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_411
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3375:
	push	ebp
	push	_3400
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_412
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3376:
	push	ebp
	push	_3402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_120
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3368
_3368:
	push	_3403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],1
	mov	ebx,dword [ebp-12]
	jmp	_3405
_416:
	push	ebp
	push	_3408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_414:
	add	dword [ebp-20],1
_3405:
	cmp	dword [ebp-20],ebx
	jle	_416
_415:
	push	_3409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_511
_511:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_IsType:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_3421
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_417
	push	_4
	push	_106
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
	push	_3413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_120
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3416
	push	ebp
	push	_3418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_515
_3416:
	push	ebp
	push	_3420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_515
_515:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_532:
	dd	0
_440:
	db	"TCGenerator",0
	align	4
_531:
	dd	1
	dd	_440
	dd	0
_419:
	db	"TClass",0
_420:
	db	"Name",0
_421:
	db	"$",0
_422:
	db	"Superclass",0
_423:
	db	":TClass",0
_424:
	db	"SuperNameType",0
_425:
	db	"VTable",0
_426:
	db	":brl.linkedlist.TList",0
_427:
	db	"UniqueDatatype",0
_428:
	db	"Count",0
_429:
	db	"i",0
_430:
	db	"Attributes",0
_431:
	db	"New",0
_432:
	db	"()i",0
_433:
	db	"Delete",0
	align	4
_418:
	dd	2
	dd	_419
	dd	3
	dd	_420
	dd	_421
	dd	8
	dd	3
	dd	_422
	dd	_423
	dd	12
	dd	3
	dd	_424
	dd	_421
	dd	16
	dd	3
	dd	_425
	dd	_426
	dd	20
	dd	3
	dd	_427
	dd	_426
	dd	24
	dd	3
	dd	_428
	dd	_429
	dd	28
	dd	3
	dd	_430
	dd	_426
	dd	32
	dd	6
	dd	_431
	dd	_432
	dd	16
	dd	6
	dd	_433
	dd	_432
	dd	20
	dd	0
	align	4
_bb_TClass:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_418
	dd	36
	dd	__bb_TClass_New
	dd	__bb_TClass_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_435:
	db	"TVirtualMethod",0
_436:
	db	"ID",0
_437:
	db	"Datatype",0
_438:
	db	"Dimension",0
	align	4
_434:
	dd	2
	dd	_435
	dd	3
	dd	_420
	dd	_421
	dd	8
	dd	3
	dd	_436
	dd	_429
	dd	12
	dd	3
	dd	_437
	dd	_421
	dd	16
	dd	3
	dd	_438
	dd	_429
	dd	20
	dd	6
	dd	_431
	dd	_432
	dd	16
	dd	6
	dd	_433
	dd	_432
	dd	20
	dd	0
	align	4
_bb_TVirtualMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_434
	dd	24
	dd	__bb_TVirtualMethod_New
	dd	__bb_TVirtualMethod_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_518:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCGenerator.bmx",0
	align	4
_517:
	dd	_518
	dd	22
	dd	2
	align	4
_529:
	dd	0
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
_441:
	db	"Classes",0
_442:
	db	"Output",0
_443:
	db	"ScopeCount",0
_444:
	db	"InStruct",0
_445:
	db	"b",0
_446:
	db	"MaxSizeArray",0
_447:
	db	"FuncDef",0
_448:
	db	"DebugMode",0
_449:
	db	"Types",0
_450:
	db	"TypeMainConstructor",0
_451:
	db	"Generate",0
_452:
	db	"($,$)i",0
_453:
	db	"GetTabs",0
_454:
	db	"()$",0
_455:
	db	"Block",0
_456:
	db	"(:bah.libxml.TxmlNode)$",0
_457:
	db	"GetNextMathString",0
_458:
	db	"VarDef",0
_459:
	db	"ArrayDef",0
_460:
	db	"GetRealDatatype",0
_461:
	db	"($,i)$",0
_462:
	db	"IsType",0
_463:
	db	"($)b",0
	align	4
_439:
	dd	2
	dd	_440
	dd	3
	dd	_441
	dd	_426
	dd	8
	dd	3
	dd	_442
	dd	_421
	dd	12
	dd	3
	dd	_443
	dd	_429
	dd	16
	dd	3
	dd	_444
	dd	_445
	dd	20
	dd	3
	dd	_446
	dd	_429
	dd	24
	dd	3
	dd	_447
	dd	_421
	dd	28
	dd	3
	dd	_448
	dd	_445
	dd	32
	dd	3
	dd	_449
	dd	_426
	dd	36
	dd	3
	dd	_450
	dd	_421
	dd	40
	dd	6
	dd	_431
	dd	_432
	dd	16
	dd	6
	dd	_433
	dd	_432
	dd	20
	dd	6
	dd	_451
	dd	_452
	dd	48
	dd	6
	dd	_453
	dd	_454
	dd	52
	dd	6
	dd	_455
	dd	_456
	dd	56
	dd	6
	dd	_457
	dd	_456
	dd	60
	dd	6
	dd	_458
	dd	_456
	dd	64
	dd	6
	dd	_459
	dd	_456
	dd	68
	dd	6
	dd	_460
	dd	_461
	dd	72
	dd	6
	dd	_462
	dd	_463
	dd	76
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_439
	dd	44
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
_542:
	db	"Self",0
	align	4
_541:
	dd	1
	dd	_431
	dd	2
	dd	_542
	dd	_423
	dd	-4
	dd	0
	align	4
_540:
	dd	3
	dd	0
	dd	0
_560:
	db	":TVirtualMethod",0
	align	4
_559:
	dd	1
	dd	_431
	dd	2
	dd	_542
	dd	_560
	dd	-4
	dd	0
	align	4
_558:
	dd	3
	dd	0
	dd	0
_573:
	db	":TCGenerator",0
	align	4
_572:
	dd	1
	dd	_431
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	0
	align	4
_571:
	dd	3
	dd	0
	dd	0
_1836:
	db	"InputPath",0
_1837:
	db	"OutputPath",0
_1838:
	db	"File",0
_1839:
	db	":bah.libxml.TxmlDoc",0
_1840:
	db	"Root",0
_698:
	db	":bah.libxml.TxmlNode",0
	align	4
_1835:
	dd	1
	dd	_451
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_1836
	dd	_421
	dd	-8
	dd	2
	dd	_1837
	dd	_421
	dd	-12
	dd	2
	dd	_1838
	dd	_1839
	dd	-16
	dd	2
	dd	_1840
	dd	_698
	dd	-20
	dd	0
	align	4
_585:
	dd	_518
	dd	33
	dd	3
	align	4
_587:
	dd	_518
	dd	35
	dd	3
	align	4
_591:
	dd	_518
	dd	37
	dd	3
_709:
	db	"Node",0
	align	4
_708:
	dd	3
	dd	0
	dd	2
	dd	_709
	dd	_698
	dd	-24
	dd	0
	align	4
_603:
	dd	_518
	dd	38
	dd	4
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
_707:
	db	"Class",0
	align	4
_706:
	dd	3
	dd	0
	dd	2
	dd	_420
	dd	_421
	dd	-28
	dd	2
	dd	_707
	dd	_423
	dd	-32
	dd	0
	align	4
_609:
	dd	_518
	dd	40
	dd	6
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_613:
	dd	_518
	dd	41
	dd	6
	align	4
_618:
	dd	_518
	dd	42
	dd	6
	align	4
_626:
	dd	_518
	dd	43
	dd	6
	align	4
_628:
	dd	_518
	dd	44
	dd	6
	align	4
_636:
	dd	_518
	dd	45
	dd	6
	align	4
_644:
	dd	_518
	dd	46
	dd	6
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_654:
	dd	_518
	dd	47
	dd	6
_700:
	db	"List",0
	align	4
_699:
	dd	3
	dd	0
	dd	2
	dd	_700
	dd	_426
	dd	-36
	dd	0
	align	4
_658:
	dd	_518
	dd	48
	dd	7
	align	4
_662:
	dd	_518
	dd	49
	dd	7
_697:
	db	"Node2",0
	align	4
_696:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-40
	dd	0
	align	4
_672:
	dd	_518
	dd	50
	dd	8
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_683:
	dd	3
	dd	0
	dd	0
	align	4
_676:
	dd	_518
	dd	51
	dd	9
	align	4
_684:
	dd	_518
	dd	53
	dd	8
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_695:
	dd	3
	dd	0
	dd	0
	align	4
_688:
	dd	_518
	dd	54
	dd	9
	align	4
_701:
	dd	_518
	dd	58
	dd	6
	align	4
_710:
	dd	_518
	dd	62
	dd	3
	align	4
_756:
	dd	3
	dd	0
	dd	2
	dd	_707
	dd	_423
	dd	-44
	dd	0
	align	4
_722:
	dd	_518
	dd	63
	dd	4
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_755:
	dd	3
	dd	0
	dd	0
	align	4
_726:
	dd	_518
	dd	64
	dd	5
_754:
	db	"Class2",0
	align	4
_753:
	dd	3
	dd	0
	dd	2
	dd	_754
	dd	_423
	dd	-48
	dd	0
	align	4
_738:
	dd	_518
	dd	65
	dd	6
	align	4
_752:
	dd	3
	dd	0
	dd	0
	align	4
_744:
	dd	_518
	dd	66
	dd	7
	align	4
_757:
	dd	_518
	dd	71
	dd	3
	align	4
_1693:
	dd	3
	dd	0
	dd	2
	dd	_709
	dd	_698
	dd	-52
	dd	0
	align	4
_769:
	dd	_518
	dd	72
	dd	4
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_828:
	dd	3
	dd	0
	dd	0
	align	4
_778:
	dd	_518
	dd	74
	dd	6
	align	4
_827:
	dd	3
	dd	0
	dd	0
	align	4
_782:
	dd	_518
	dd	75
	dd	7
	align	4
_826:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-56
	dd	0
	align	4
_794:
	dd	_518
	dd	76
	dd	8
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_808:
	dd	3
	dd	0
	dd	0
	align	4
_798:
	dd	_518
	dd	77
	dd	9
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_825:
	dd	3
	dd	0
	dd	0
	align	4
_810:
	dd	_518
	dd	78
	dd	8
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_824:
	dd	3
	dd	0
	dd	0
	align	4
_814:
	dd	_518
	dd	79
	dd	9
_1000:
	db	"TypeDef",0
_1001:
	db	"Text",0
_1002:
	db	"UserFunc",0
_1003:
	db	"DatatypesText",0
	align	4
_999:
	dd	3
	dd	0
	dd	2
	dd	_420
	dd	_421
	dd	-60
	dd	2
	dd	_437
	dd	_421
	dd	-64
	dd	2
	dd	_1000
	dd	_421
	dd	-68
	dd	2
	dd	_1001
	dd	_421
	dd	-72
	dd	2
	dd	_1002
	dd	_429
	dd	-76
	dd	2
	dd	_1003
	dd	_421
	dd	-80
	dd	0
	align	4
_829:
	dd	_518
	dd	84
	dd	6
	align	4
_833:
	dd	_518
	dd	85
	dd	6
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_836:
	dd	3
	dd	0
	dd	0
	align	4
_835:
	dd	_518
	dd	85
	dd	47
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,105,115,114,101,97,108,95
	align	4
_837:
	dd	_518
	dd	86
	dd	6
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_841:
	dd	_518
	dd	87
	dd	6
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	116,121,112,101,100,101,102,32
	align	4
_843:
	dd	_518
	dd	89
	dd	6
	align	4
_845:
	dd	_518
	dd	90
	dd	6
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_850:
	dd	_518
	dd	91
	dd	6
	align	4
_851:
	dd	_518
	dd	92
	dd	6
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_855:
	dd	_518
	dd	93
	dd	6
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,32
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_856:
	dd	_518
	dd	94
	dd	6
	align	4
_858:
	dd	_518
	dd	95
	dd	6
	align	4
_894:
	dd	3
	dd	0
	dd	0
	align	4
_862:
	dd	_518
	dd	96
	dd	7
	align	4
_893:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-84
	dd	0
	align	4
_874:
	dd	_518
	dd	97
	dd	8
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_892:
	dd	3
	dd	0
	dd	2
	dd	_437
	dd	_421
	dd	-88
	dd	0
	align	4
_878:
	dd	_518
	dd	99
	dd	9
	align	4
_886:
	dd	_518
	dd	100
	dd	9
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,44
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,95
	align	4
_889:
	dd	_518
	dd	101
	dd	9
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	44,32,95
	align	4
_895:
	dd	_518
	dd	105
	dd	6
	align	4
_896:
	dd	_518
	dd	106
	dd	6
	align	4
_960:
	dd	3
	dd	0
	dd	0
	align	4
_898:
	dd	_518
	dd	107
	dd	7
	align	4
_906:
	dd	_518
	dd	108
	dd	7
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,59,10
	align	4
_907:
	dd	_518
	dd	109
	dd	7
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	41,32,123,10
	align	4
_915:
	dd	_518
	dd	110
	dd	7
	align	4
_919:
	dd	_518
	dd	111
	dd	7
	align	4
_947:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-92
	dd	0
	align	4
_931:
	dd	_518
	dd	112
	dd	8
	align	4
_946:
	dd	3
	dd	0
	dd	0
	align	4
_935:
	dd	_518
	dd	113
	dd	9
	align	4
_945:
	dd	_518
	dd	114
	dd	9
	align	4
_948:
	dd	_518
	dd	117
	dd	7
	align	4
_952:
	dd	_518
	dd	118
	dd	7
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
_990:
	db	"RealName",0
	align	4
_989:
	dd	3
	dd	0
	dd	2
	dd	_990
	dd	_421
	dd	-96
	dd	0
	align	4
_962:
	dd	_518
	dd	120
	dd	7
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_966:
	dd	_518
	dd	121
	dd	7
	align	4
_985:
	dd	3
	dd	0
	dd	0
	align	4
_970:
	dd	_518
	dd	122
	dd	8
	align	4
_971:
	dd	_518
	dd	123
	dd	8
	align	4
_975:
	dd	_518
	dd	124
	dd	8
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_978:
	dd	_518
	dd	125
	dd	8
	align	4
_982:
	dd	_518
	dd	126
	dd	8
	align	4
_988:
	dd	3
	dd	0
	dd	0
	align	4
_987:
	dd	_518
	dd	128
	dd	8
	align	4
_991:
	dd	_518
	dd	132
	dd	6
_1633:
	db	"TmpList",0
	align	4
_1632:
	dd	3
	dd	0
	dd	2
	dd	_420
	dd	_421
	dd	-100
	dd	2
	dd	_707
	dd	_423
	dd	-104
	dd	2
	dd	_1001
	dd	_421
	dd	-108
	dd	2
	dd	_1633
	dd	_426
	dd	-112
	dd	0
	align	4
_1004:
	dd	_518
	dd	134
	dd	6
	align	4
_1008:
	dd	_518
	dd	135
	dd	6
	align	4
_1010:
	dd	_518
	dd	136
	dd	6
_1030:
	db	"tmp",0
	align	4
_1029:
	dd	3
	dd	0
	dd	2
	dd	_1030
	dd	_423
	dd	-116
	dd	0
	align	4
_1022:
	dd	_518
	dd	137
	dd	7
	align	4
_1028:
	dd	3
	dd	0
	dd	0
	align	4
_1026:
	dd	_518
	dd	138
	dd	8
	align	4
_1027:
	dd	_518
	dd	139
	dd	8
	align	4
_1031:
	dd	_518
	dd	142
	dd	6
	align	4
_1033:
	dd	_518
	dd	143
	dd	6
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,123,10
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	116,121,112,101,100,101,102,32,115,116,114,117,99,116,32,95
	align	4
_1034:
	dd	_518
	dd	144
	dd	6
	align	4
_1038:
	dd	_518
	dd	145
	dd	6
	align	4
_1042:
	dd	_518
	dd	146
	dd	6
	align	4
_1053:
	dd	3
	dd	0
	dd	0
	align	4
_1046:
	dd	_518
	dd	147
	dd	7
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,115,117,112,101,114,99,108,97,115,115,59,10
	align	4
_1054:
	dd	_518
	dd	150
	dd	6
	align	4
_1140:
	dd	3
	dd	0
	dd	0
	align	4
_1058:
	dd	_518
	dd	151
	dd	7
	align	4
_1139:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-120
	dd	0
	align	4
_1070:
	dd	_518
	dd	152
	dd	8
_1126:
	db	"Meth",0
	align	4
_1125:
	dd	3
	dd	0
	dd	2
	dd	_1126
	dd	_560
	dd	-124
	dd	0
	align	4
_1077:
	dd	_518
	dd	154
	dd	10
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	47,47,77,101,116,104,111,100,32,110,97,109,101,58
	align	4
_1082:
	dd	_518
	dd	155
	dd	10
	align	4
_1084:
	dd	_518
	dd	156
	dd	10
	align	4
_1094:
	dd	_518
	dd	157
	dd	10
	align	4
_1104:
	dd	_518
	dd	158
	dd	10
	align	4
_1110:
	dd	_518
	dd	159
	dd	10
	align	4
_1115:
	dd	_518
	dd	160
	dd	10
	align	4
_1121:
	dd	_518
	dd	161
	dd	10
	align	4
_1138:
	dd	3
	dd	0
	dd	0
	align	4
_1127:
	dd	_518
	dd	163
	dd	10
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_1141:
	dd	_518
	dd	168
	dd	6
	align	4
_1147:
	dd	_518
	dd	169
	dd	6
	align	4
_1188:
	dd	3
	dd	0
	dd	2
	dd	_1126
	dd	_560
	dd	-128
	dd	0
	align	4
_1157:
	dd	_518
	dd	170
	dd	7
_1187:
	db	"MethMeth",0
	align	4
_1186:
	dd	3
	dd	0
	dd	2
	dd	_1187
	dd	_560
	dd	-132
	dd	0
	align	4
_1167:
	dd	_518
	dd	171
	dd	8
	align	4
_1185:
	dd	3
	dd	0
	dd	0
	align	4
_1169:
	dd	_518
	dd	172
	dd	9
	align	4
_1184:
	dd	3
	dd	0
	dd	0
	align	4
_1181:
	dd	_518
	dd	173
	dd	10
	align	4
_1189:
	dd	_518
	dd	179
	dd	6
	align	4
_1228:
	dd	3
	dd	0
	dd	2
	dd	_1126
	dd	_560
	dd	-136
	dd	0
	align	4
_1199:
	dd	_518
	dd	180
	dd	7
	align	4
_1208:
	dd	_518
	dd	181
	dd	7
	align	4
_1212:
	dd	_518
	dd	182
	dd	7
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	41,40,41,59,10
	align	4
_107:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,100,105,109
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,40,42,42,118,112,116,114,95
	align	4
_1219:
	dd	_518
	dd	183
	dd	7
	align	4
_1223:
	dd	_518
	dd	184
	dd	7
	align	4
_1229:
	dd	_518
	dd	186
	dd	6
	align	4
_1233:
	dd	_518
	dd	187
	dd	6
	align	4
_1237:
	dd	_518
	dd	188
	dd	6
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	59,10
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_1242:
	dd	_518
	dd	189
	dd	6
	align	4
_1252:
	dd	_518
	dd	192
	dd	6
	align	4
_1409:
	dd	3
	dd	0
	dd	0
	align	4
_1256:
	dd	_518
	dd	193
	dd	7
	align	4
_1408:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-140
	dd	0
	align	4
_1268:
	dd	_518
	dd	194
	dd	8
_1406:
	db	"TmpTxt",0
	align	4
_1405:
	dd	3
	dd	0
	dd	2
	dd	_1406
	dd	_421
	dd	-144
	dd	0
	align	4
_1275:
	dd	_518
	dd	196
	dd	10
	align	4
_1277:
	dd	_518
	dd	197
	dd	10
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,95,116,104,105,115,95,44,32,105,110,116,32,95,95,118
	dw	112,111,115,95,95
	align	4
_1290:
	dd	_518
	dd	198
	dd	10
	align	4
_1331:
	dd	3
	dd	0
	dd	0
	align	4
_1294:
	dd	_518
	dd	199
	dd	11
_1330:
	db	"Node3",0
	align	4
_1329:
	dd	3
	dd	0
	dd	2
	dd	_1330
	dd	_698
	dd	-148
	dd	0
	align	4
_1306:
	dd	_518
	dd	200
	dd	12
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_1314:
	dd	3
	dd	0
	dd	0
	align	4
_1310:
	dd	_518
	dd	201
	dd	13
	align	4
_1313:
	dd	_518
	dd	202
	dd	13
	align	4
_1315:
	dd	_518
	dd	204
	dd	12
	align	4
_1328:
	dd	3
	dd	0
	dd	0
	align	4
_1319:
	dd	_518
	dd	205
	dd	13
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_1332:
	dd	_518
	dd	209
	dd	10
	align	4
_1333:
	dd	_518
	dd	210
	dd	10
	align	4
_1337:
	dd	_518
	dd	211
	dd	10
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_1350:
	dd	3
	dd	0
	dd	0
	align	4
_1341:
	dd	_518
	dd	212
	dd	11
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,116,117,114,110,32,40
	align	4
_1355:
	dd	3
	dd	0
	dd	0
	align	4
_1352:
	dd	_518
	dd	214
	dd	11
	align	4
_1356:
	dd	_518
	dd	216
	dd	10
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	91,95,95,118,112,111,115,95,95,93,40,95,116,104,105,115
	dw	95
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	95,116,104,105,115,95,45,62,118,112,116,114,95
	align	4
_1363:
	dd	_518
	dd	217
	dd	10
	align	4
_1388:
	dd	3
	dd	0
	dd	0
	align	4
_1367:
	dd	_518
	dd	218
	dd	11
	align	4
_1387:
	dd	3
	dd	0
	dd	2
	dd	_1330
	dd	_698
	dd	-152
	dd	0
	align	4
_1379:
	dd	_518
	dd	219
	dd	12
	align	4
_1386:
	dd	3
	dd	0
	dd	0
	align	4
_1383:
	dd	_518
	dd	220
	dd	13
	align	4
_1389:
	dd	_518
	dd	224
	dd	10
	align	4
_1390:
	dd	_518
	dd	225
	dd	10
	align	4
_1394:
	dd	_518
	dd	226
	dd	10
	align	4
_1397:
	dd	_518
	dd	227
	dd	10
	align	4
_1407:
	dd	3
	dd	0
	dd	0
	align	4
_1410:
	dd	_518
	dd	233
	dd	6
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	42,32,116,109,112,32,41,59,10
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	42,32,110,101,119,95
	align	4
_1420:
	dd	_518
	dd	235
	dd	6
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	42,32,116,109,112,32,41,32,123,10
	align	4
_1430:
	dd	_518
	dd	236
	dd	6
	align	4
_1434:
	dd	_518
	dd	237
	dd	6
	align	4
_1454:
	dd	3
	dd	0
	dd	0
	align	4
_1438:
	dd	_518
	dd	238
	dd	7
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	41,41,41,59,10
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	42,41,71,67,95,109,97,108,108,111,99,40,115,105,122,101
	dw	111,102,40
	align	4
_132:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,40
	align	4
_131:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	116,109,112,45,62,115,117,112,101,114,99,108,97,115,115,61
	dw	110,101,119,95
	align	4
_1455:
	dd	_518
	dd	241
	dd	6
	align	4
_1564:
	dd	3
	dd	0
	dd	2
	dd	_1126
	dd	_560
	dd	-156
	dd	2
	dd	_428
	dd	_429
	dd	-160
	dd	0
	align	4
_1467:
	dd	_518
	dd	242
	dd	7
	align	4
_1469:
	dd	_518
	dd	243
	dd	7
	align	4
_1495:
	dd	3
	dd	0
	dd	2
	dd	_1187
	dd	_560
	dd	-164
	dd	0
	align	4
_1481:
	dd	_518
	dd	244
	dd	8
	align	4
_1494:
	dd	3
	dd	0
	dd	0
	align	4
_1493:
	dd	_518
	dd	245
	dd	9
	align	4
_1496:
	dd	_518
	dd	248
	dd	7
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	40,41,41,42
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	61,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,109,112,45,62,118,112,116,114,95
	align	4
_1518:
	dd	_518
	dd	249
	dd	7
	align	4
_1563:
	dd	3
	dd	0
	dd	2
	dd	_1187
	dd	_560
	dd	-168
	dd	0
	align	4
_1530:
	dd	_518
	dd	250
	dd	8
	align	4
_1562:
	dd	3
	dd	0
	dd	0
	align	4
_1542:
	dd	_518
	dd	251
	dd	9
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	95,105,115,114,101,97,108,95,59,10
	align	4
_148:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	93,61,38,32
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_1565:
	dd	_518
	dd	256
	dd	6
	align	4
_1607:
	dd	3
	dd	0
	dd	0
	align	4
_1569:
	dd	_518
	dd	257
	dd	7
	align	4
_1606:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-172
	dd	0
	align	4
_1581:
	dd	_518
	dd	258
	dd	8
	align	4
_1588:
	dd	3
	dd	0
	dd	0
	align	4
_1605:
	dd	3
	dd	0
	dd	0
	align	4
_1589:
	dd	_518
	dd	262
	dd	10
	align	4
_154:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,61
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,109,112,45,62,95
	align	4
_1608:
	dd	_518
	dd	267
	dd	6
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	114,101,116,117,114,110,32,116,109,112,59,10
	align	4
_1618:
	dd	_518
	dd	268
	dd	6
	align	4
_1622:
	dd	_518
	dd	269
	dd	6
	align	4
_1692:
	dd	3
	dd	0
	dd	0
	align	4
_1634:
	dd	_518
	dd	406
	dd	6
	align	4
_1644:
	dd	_518
	dd	407
	dd	6
	align	4
_156:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	105,110,116,32,109,97,105,110,40,41,32,123,10
	align	4
_1654:
	dd	_518
	dd	408
	dd	6
	align	4
_1658:
	dd	_518
	dd	409
	dd	6
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_1668:
	dd	_518
	dd	410
	dd	6
	align	4
_1678:
	dd	_518
	dd	411
	dd	6
	align	4
_1682:
	dd	_518
	dd	412
	dd	6
	align	4
_1694:
	dd	_518
	dd	416
	dd	3
	align	4
_1798:
	dd	3
	dd	0
	dd	2
	dd	_429
	dd	_429
	dd	-176
	dd	2
	dd	_1001
	dd	_421
	dd	-180
	dd	0
	align	4
_1700:
	dd	_518
	dd	433
	dd	4
	align	4
_1702:
	dd	_518
	dd	434
	dd	4
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	40,105,110,116,32,115,105,122,101
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	118,111,105,100,42,32,97,108,108,111,99,97,114,114,97,121
	dw	95,100,105,109
	align	4
_1705:
	dd	_518
	dd	435
	dd	4
_1711:
	db	"j",0
	align	4
_1710:
	dd	3
	dd	0
	dd	2
	dd	_1711
	dd	_429
	dd	-184
	dd	0
	align	4
_1709:
	dd	_518
	dd	436
	dd	5
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_1712:
	dd	_518
	dd	438
	dd	4
	align	4
_1713:
	dd	_518
	dd	439
	dd	4
	align	4
_1717:
	dd	_518
	dd	440
	dd	4
	align	4
_1720:
	dd	_518
	dd	441
	dd	4
_1726:
	db	"k",0
	align	4
_1725:
	dd	3
	dd	0
	dd	2
	dd	_1726
	dd	_429
	dd	-188
	dd	0
	align	4
_1724:
	dd	_518
	dd	442
	dd	5
	align	4
_1727:
	dd	_518
	dd	444
	dd	4
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	36
	dw	32,109,101,109,61,40,118,111,105,100,42,41,71,67,95,109
	dw	97,108,108,111,99,40,115,105,122,101,42,112,97,114,97,109
	dw	49,41,59,10
	align	4
_1728:
	dd	_518
	dd	446
	dd	4
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_1731:
	dd	_518
	dd	447
	dd	4
	align	4
_1740:
	dd	3
	dd	0
	dd	2
	dd	_1726
	dd	_429
	dd	-192
	dd	0
	align	4
_1735:
	dd	_518
	dd	448
	dd	5
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_1736:
	dd	_518
	dd	449
	dd	5
	align	4
_1739:
	dd	3
	dd	0
	dd	0
	align	4
_1738:
	dd	_518
	dd	449
	dd	17
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_1741:
	dd	_518
	dd	451
	dd	4
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_1742:
	dd	_518
	dd	453
	dd	4
_1767:
	db	"Tmp",0
	align	4
_1766:
	dd	3
	dd	0
	dd	2
	dd	_1726
	dd	_429
	dd	-196
	dd	2
	dd	_1767
	dd	_421
	dd	-200
	dd	0
	align	4
_1746:
	dd	_518
	dd	454
	dd	5
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	43,43,41,32,123,10
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	59,118,97,114,105
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	60,112,97,114,97,109
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	61,48,59,118,97,114,105
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,111,114,40,118,97,114,105
	align	4
_1749:
	dd	_518
	dd	455
	dd	5
	align	4
_1753:
	dd	_518
	dd	456
	dd	5
	align	4
_1756:
	dd	_518
	dd	457
	dd	5
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_1758:
	dd	_518
	dd	458
	dd	5
	align	4
_1763:
	dd	3
	dd	0
	dd	2
	dd	_1711
	dd	_429
	dd	-204
	dd	0
	align	4
_1762:
	dd	_518
	dd	460
	dd	6
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_1764:
	dd	_518
	dd	462
	dd	5
	align	4
_1765:
	dd	_518
	dd	463
	dd	5
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	61,40,118,111,105,100,42,41,71,67,95,109,97,108,108,111
	dw	99,40,115,105,122,101,42,112,97,114,97,109
	align	4
_1768:
	dd	_518
	dd	465
	dd	4
	align	4
_1779:
	dd	3
	dd	0
	dd	2
	dd	_1726
	dd	_429
	dd	-208
	dd	0
	align	4
_1772:
	dd	_518
	dd	466
	dd	5
	align	4
_1776:
	dd	_518
	dd	467
	dd	5
	align	4
_1780:
	dd	_518
	dd	469
	dd	4
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	114,101,116,117,114,110,32,40,118,111,105,100,42,41,109,101
	dw	109,59,10
	align	4
_1783:
	dd	_518
	dd	470
	dd	4
	align	4
_1787:
	dd	_518
	dd	471
	dd	4
	align	4
_1788:
	dd	_518
	dd	472
	dd	4
	align	4
_1799:
	dd	_518
	dd	474
	dd	3
	align	4
_1807:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	35,105,110,99,108,117,100,101,32,34,99,108,105,98,47,109
	dw	97,105,110,46,99,34,10
	align	4
_1814:
	dd	_518
	dd	475
	dd	3
	align	4
_1824:
	dd	_518
	dd	476
	dd	3
	align	4
_1832:
	dd	_518
	dd	477
	dd	3
	align	4
_1852:
	dd	1
	dd	_453
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_1001
	dd	_421
	dd	-8
	dd	0
	align	4
_1841:
	dd	_518
	dd	481
	dd	3
	align	4
_1843:
	dd	_518
	dd	482
	dd	3
	align	4
_1850:
	dd	3
	dd	0
	dd	2
	dd	_429
	dd	_429
	dd	-12
	dd	0
	align	4
_1849:
	dd	_518
	dd	483
	dd	4
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_1851:
	dd	_518
	dd	485
	dd	3
	align	4
_1909:
	dd	1
	dd	_455
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_709
	dd	_698
	dd	-8
	dd	2
	dd	_442
	dd	_421
	dd	-12
	dd	0
	align	4
_1853:
	dd	_518
	dd	488
	dd	3
	align	4
_1855:
	dd	_518
	dd	489
	dd	3
	align	4
_1907:
	dd	3
	dd	0
	dd	0
	align	4
_1859:
	dd	_518
	dd	490
	dd	4
	align	4
_1906:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-16
	dd	0
	align	4
_1871:
	dd	_518
	dd	491
	dd	5
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_1905:
	dd	3
	dd	0
	dd	2
	dd	_1001
	dd	_421
	dd	-20
	dd	0
	align	4
_1879:
	dd	_518
	dd	492
	dd	6
	align	4
_1885:
	dd	_518
	dd	493
	dd	6
	align	4
_1904:
	dd	3
	dd	0
	dd	0
	align	4
_1887:
	dd	_518
	dd	494
	dd	7
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_208:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_1898:
	dd	3
	dd	0
	dd	0
	align	4
_1895:
	dd	_518
	dd	495
	dd	9
	align	4
_1903:
	dd	3
	dd	0
	dd	0
	align	4
_1900:
	dd	_518
	dd	497
	dd	8
	align	4
_1908:
	dd	_518
	dd	503
	dd	3
	align	4
_3246:
	dd	1
	dd	_457
	dd	2
	dd	_542
	dd	_573
	dd	-16
	dd	2
	dd	_709
	dd	_698
	dd	-20
	dd	2
	dd	_1001
	dd	_421
	dd	-24
	dd	0
	align	4
_1910:
	dd	_518
	dd	506
	dd	3
	align	4
_1912:
	dd	_518
	dd	507
	dd	3
	align	4
_1915:
	dd	3
	dd	0
	dd	0
	align	4
_1914:
	dd	_518
	dd	507
	dd	21
	align	4
_1916:
	dd	_518
	dd	508
	dd	3
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_216:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_299:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_328:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_342:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_344:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_359:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_361:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_363:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_380:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_1992:
	dd	3
	dd	0
	dd	0
	align	4
_1958:
	dd	_518
	dd	510
	dd	5
	align	4
_210:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_1959:
	dd	_518
	dd	511
	dd	5
	align	4
_1990:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-28
	dd	0
	align	4
_1971:
	dd	_518
	dd	512
	dd	6
	align	4
_214:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_1983:
	dd	3
	dd	0
	dd	0
	align	4
_1978:
	dd	_518
	dd	514
	dd	8
	align	4
_1989:
	dd	3
	dd	0
	dd	0
	align	4
_1984:
	dd	_518
	dd	516
	dd	8
	align	4
_1991:
	dd	_518
	dd	519
	dd	5
	align	4
_2025:
	dd	3
	dd	0
	dd	0
	align	4
_1993:
	dd	_518
	dd	521
	dd	5
	align	4
_2024:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-32
	dd	0
	align	4
_2005:
	dd	_518
	dd	522
	dd	6
	align	4
_2017:
	dd	3
	dd	0
	dd	0
	align	4
_2012:
	dd	_518
	dd	524
	dd	8
	align	4
_220:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_2023:
	dd	3
	dd	0
	dd	0
	align	4
_2018:
	dd	_518
	dd	526
	dd	8
	align	4
_2058:
	dd	3
	dd	0
	dd	0
	align	4
_2026:
	dd	_518
	dd	530
	dd	5
	align	4
_2057:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-36
	dd	0
	align	4
_2038:
	dd	_518
	dd	531
	dd	6
	align	4
_2050:
	dd	3
	dd	0
	dd	0
	align	4
_2045:
	dd	_518
	dd	533
	dd	8
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_2056:
	dd	3
	dd	0
	dd	0
	align	4
_2051:
	dd	_518
	dd	535
	dd	8
	align	4
_2091:
	dd	3
	dd	0
	dd	0
	align	4
_2059:
	dd	_518
	dd	539
	dd	5
	align	4
_2090:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-40
	dd	0
	align	4
_2071:
	dd	_518
	dd	540
	dd	6
	align	4
_2083:
	dd	3
	dd	0
	dd	0
	align	4
_2078:
	dd	_518
	dd	542
	dd	8
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_2089:
	dd	3
	dd	0
	dd	0
	align	4
_2084:
	dd	_518
	dd	544
	dd	8
	align	4
_2124:
	dd	3
	dd	0
	dd	0
	align	4
_2092:
	dd	_518
	dd	548
	dd	5
	align	4
_2123:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-44
	dd	0
	align	4
_2104:
	dd	_518
	dd	549
	dd	6
	align	4
_2116:
	dd	3
	dd	0
	dd	0
	align	4
_2111:
	dd	_518
	dd	551
	dd	8
	align	4
_2122:
	dd	3
	dd	0
	dd	0
	align	4
_2117:
	dd	_518
	dd	553
	dd	8
	align	4
_2157:
	dd	3
	dd	0
	dd	0
	align	4
_2125:
	dd	_518
	dd	557
	dd	5
	align	4
_2156:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-48
	dd	0
	align	4
_2137:
	dd	_518
	dd	558
	dd	6
	align	4
_2149:
	dd	3
	dd	0
	dd	0
	align	4
_2144:
	dd	_518
	dd	560
	dd	8
	align	4
_239:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_2155:
	dd	3
	dd	0
	dd	0
	align	4
_2150:
	dd	_518
	dd	562
	dd	8
	align	4
_2190:
	dd	3
	dd	0
	dd	0
	align	4
_2158:
	dd	_518
	dd	566
	dd	5
	align	4
_2189:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-52
	dd	0
	align	4
_2170:
	dd	_518
	dd	567
	dd	6
	align	4
_2182:
	dd	3
	dd	0
	dd	0
	align	4
_2177:
	dd	_518
	dd	569
	dd	8
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,124,124,32
	align	4
_2188:
	dd	3
	dd	0
	dd	0
	align	4
_2183:
	dd	_518
	dd	571
	dd	8
	align	4
_2223:
	dd	3
	dd	0
	dd	0
	align	4
_2191:
	dd	_518
	dd	575
	dd	5
	align	4
_2222:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-56
	dd	0
	align	4
_2203:
	dd	_518
	dd	576
	dd	6
	align	4
_2215:
	dd	3
	dd	0
	dd	0
	align	4
_2210:
	dd	_518
	dd	578
	dd	8
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_2221:
	dd	3
	dd	0
	dd	0
	align	4
_2216:
	dd	_518
	dd	580
	dd	8
	align	4
_2256:
	dd	3
	dd	0
	dd	0
	align	4
_2224:
	dd	_518
	dd	584
	dd	5
	align	4
_2255:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-60
	dd	0
	align	4
_2236:
	dd	_518
	dd	585
	dd	6
	align	4
_2248:
	dd	3
	dd	0
	dd	0
	align	4
_2243:
	dd	_518
	dd	587
	dd	8
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_2254:
	dd	3
	dd	0
	dd	0
	align	4
_2249:
	dd	_518
	dd	589
	dd	8
	align	4
_2289:
	dd	3
	dd	0
	dd	0
	align	4
_2257:
	dd	_518
	dd	593
	dd	5
	align	4
_2288:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-64
	dd	0
	align	4
_2269:
	dd	_518
	dd	594
	dd	6
	align	4
_2281:
	dd	3
	dd	0
	dd	0
	align	4
_2276:
	dd	_518
	dd	596
	dd	8
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_2287:
	dd	3
	dd	0
	dd	0
	align	4
_2282:
	dd	_518
	dd	598
	dd	8
	align	4
_2322:
	dd	3
	dd	0
	dd	0
	align	4
_2290:
	dd	_518
	dd	602
	dd	5
	align	4
_2321:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-68
	dd	0
	align	4
_2302:
	dd	_518
	dd	603
	dd	6
	align	4
_2314:
	dd	3
	dd	0
	dd	0
	align	4
_2309:
	dd	_518
	dd	605
	dd	8
	align	4
_263:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_2320:
	dd	3
	dd	0
	dd	0
	align	4
_2315:
	dd	_518
	dd	607
	dd	8
	align	4
_2355:
	dd	3
	dd	0
	dd	0
	align	4
_2323:
	dd	_518
	dd	611
	dd	5
	align	4
_2354:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-72
	dd	0
	align	4
_2335:
	dd	_518
	dd	612
	dd	6
	align	4
_2347:
	dd	3
	dd	0
	dd	0
	align	4
_2342:
	dd	_518
	dd	614
	dd	8
	align	4
_268:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_2353:
	dd	3
	dd	0
	dd	0
	align	4
_2348:
	dd	_518
	dd	616
	dd	8
	align	4
_2388:
	dd	3
	dd	0
	dd	0
	align	4
_2356:
	dd	_518
	dd	620
	dd	5
	align	4
_2387:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-76
	dd	0
	align	4
_2368:
	dd	_518
	dd	621
	dd	6
	align	4
_2380:
	dd	3
	dd	0
	dd	0
	align	4
_2375:
	dd	_518
	dd	623
	dd	8
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_2386:
	dd	3
	dd	0
	dd	0
	align	4
_2381:
	dd	_518
	dd	625
	dd	8
	align	4
_2392:
	dd	3
	dd	0
	dd	0
	align	4
_2389:
	dd	_518
	dd	629
	dd	5
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2396:
	dd	3
	dd	0
	dd	0
	align	4
_2393:
	dd	_518
	dd	631
	dd	5
	align	4
_1803:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2400:
	dd	3
	dd	0
	dd	0
	align	4
_2397:
	dd	_518
	dd	633
	dd	5
	align	4
_2404:
	dd	3
	dd	0
	dd	0
	align	4
_2401:
	dd	_518
	dd	635
	dd	5
_2545:
	db	"CastFrom",0
_2546:
	db	"CastTo",0
	align	4
_2544:
	dd	3
	dd	0
	dd	2
	dd	_2545
	dd	_421
	dd	-80
	dd	2
	dd	_2546
	dd	_421
	dd	-84
	dd	0
	align	4
_2405:
	dd	_518
	dd	637
	dd	5
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_2409:
	dd	_518
	dd	638
	dd	5
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_2413:
	dd	_518
	dd	639
	dd	5
	align	4
_2460:
	dd	3
	dd	0
	dd	0
	align	4
_2415:
	dd	_518
	dd	640
	dd	6
	align	4
_2429:
	dd	3
	dd	0
	dd	0
	align	4
_2424:
	dd	_518
	dd	642
	dd	8
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_2435:
	dd	3
	dd	0
	dd	0
	align	4
_2430:
	dd	_518
	dd	644
	dd	8
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_2441:
	dd	3
	dd	0
	dd	0
	align	4
_2436:
	dd	_518
	dd	646
	dd	8
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_2447:
	dd	3
	dd	0
	dd	0
	align	4
_2442:
	dd	_518
	dd	648
	dd	8
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_2453:
	dd	3
	dd	0
	dd	0
	align	4
_2448:
	dd	_518
	dd	650
	dd	8
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_2459:
	dd	3
	dd	0
	dd	0
	align	4
_2454:
	dd	_518
	dd	652
	dd	8
	align	4
_285:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_2543:
	dd	3
	dd	0
	dd	0
	align	4
_2462:
	dd	_518
	dd	654
	dd	5
	align	4
_2509:
	dd	3
	dd	0
	dd	0
	align	4
_2464:
	dd	_518
	dd	655
	dd	6
	align	4
_2478:
	dd	3
	dd	0
	dd	0
	align	4
_2473:
	dd	_518
	dd	657
	dd	8
	align	4
_286:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_2484:
	dd	3
	dd	0
	dd	0
	align	4
_2479:
	dd	_518
	dd	659
	dd	8
	align	4
_287:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_2490:
	dd	3
	dd	0
	dd	0
	align	4
_2485:
	dd	_518
	dd	661
	dd	8
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_2496:
	dd	3
	dd	0
	dd	0
	align	4
_2491:
	dd	_518
	dd	663
	dd	8
	align	4
_289:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_2502:
	dd	3
	dd	0
	dd	0
	align	4
_2497:
	dd	_518
	dd	665
	dd	8
	align	4
_290:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_2508:
	dd	3
	dd	0
	dd	0
	align	4
_2503:
	dd	_518
	dd	667
	dd	8
	align	4
_291:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_2542:
	dd	3
	dd	0
	dd	0
	align	4
_2511:
	dd	_518
	dd	669
	dd	5
	align	4
_2526:
	dd	3
	dd	0
	dd	0
	align	4
_2517:
	dd	_518
	dd	670
	dd	6
	align	4
_292:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_2541:
	dd	3
	dd	0
	dd	0
	align	4
_2528:
	dd	_518
	dd	672
	dd	6
	align	4
_293:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	99,97,115,116,116,111
_2596:
	db	"Tabled",0
	align	4
_2595:
	dd	3
	dd	0
	dd	2
	dd	_700
	dd	_426
	dd	-88
	dd	2
	dd	_2596
	dd	_445
	dd	-4
	dd	0
	align	4
_2547:
	dd	_518
	dd	675
	dd	5
	align	4
_2550:
	dd	_518
	dd	676
	dd	5
	align	4
_2554:
	dd	_518
	dd	677
	dd	5
	align	4
_2556:
	dd	_518
	dd	678
	dd	5
	align	4
_2592:
	dd	3
	dd	0
	dd	0
	align	4
_2558:
	dd	_518
	dd	679
	dd	6
	align	4
_2591:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-92
	dd	0
	align	4
_2568:
	dd	_518
	dd	680
	dd	7
	align	4
_2578:
	dd	3
	dd	0
	dd	0
	align	4
_2572:
	dd	_518
	dd	681
	dd	8
	align	4
_2577:
	dd	_518
	dd	682
	dd	8
	align	4
_2579:
	dd	_518
	dd	684
	dd	7
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_2590:
	dd	3
	dd	0
	dd	0
	align	4
_2585:
	dd	_518
	dd	686
	dd	8
	align	4
_2586:
	dd	_518
	dd	687
	dd	8
	align	4
_2589:
	dd	_518
	dd	688
	dd	8
	align	4
_2593:
	dd	_518
	dd	692
	dd	5
	align	4
_2594:
	dd	_518
	dd	693
	dd	5
	align	4
_2633:
	dd	3
	dd	0
	dd	0
	align	4
_2597:
	dd	_518
	dd	695
	dd	5
	align	4
_2627:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-96
	dd	0
	align	4
_2609:
	dd	_518
	dd	696
	dd	6
	align	4
_2616:
	dd	3
	dd	0
	dd	0
	align	4
_2613:
	dd	_518
	dd	697
	dd	7
	align	4
_2626:
	dd	3
	dd	0
	dd	0
	align	4
_2618:
	dd	_518
	dd	698
	dd	6
	align	4
_2625:
	dd	3
	dd	0
	dd	0
	align	4
_2622:
	dd	_518
	dd	699
	dd	7
	align	4
_2628:
	dd	_518
	dd	702
	dd	5
	align	4
_2673:
	dd	3
	dd	0
	dd	0
	align	4
_2634:
	dd	_518
	dd	704
	dd	5
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_2635:
	dd	_518
	dd	705
	dd	5
	align	4
_2662:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-100
	dd	0
	align	4
_2647:
	dd	_518
	dd	707
	dd	6
	align	4
_308:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_2661:
	dd	3
	dd	0
	dd	0
	align	4
_2651:
	dd	_518
	dd	708
	dd	7
	align	4
_2656:
	dd	_518
	dd	709
	dd	7
	align	4
_2660:
	dd	_518
	dd	710
	dd	7
	align	4
_2663:
	dd	_518
	dd	713
	dd	5
	align	4
_2666:
	dd	_518
	dd	714
	dd	5
	align	4
_2670:
	dd	_518
	dd	715
	dd	5
	align	4
_2688:
	dd	3
	dd	0
	dd	0
	align	4
_2674:
	dd	_518
	dd	717
	dd	5
	align	4
_2678:
	dd	_518
	dd	718
	dd	5
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_2681:
	dd	_518
	dd	719
	dd	5
	align	4
_2685:
	dd	_518
	dd	720
	dd	5
	align	4
_2728:
	dd	3
	dd	0
	dd	0
	align	4
_2689:
	dd	_518
	dd	722
	dd	5
	align	4
_312:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_2690:
	dd	_518
	dd	723
	dd	5
	align	4
_2717:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-104
	dd	0
	align	4
_2702:
	dd	_518
	dd	724
	dd	6
	align	4
_2716:
	dd	3
	dd	0
	dd	0
	align	4
_2706:
	dd	_518
	dd	725
	dd	7
	align	4
_2711:
	dd	_518
	dd	726
	dd	7
	align	4
_2715:
	dd	_518
	dd	727
	dd	7
	align	4
_2718:
	dd	_518
	dd	730
	dd	5
	align	4
_2721:
	dd	_518
	dd	731
	dd	5
	align	4
_2725:
	dd	_518
	dd	732
	dd	5
	align	4
_2768:
	dd	3
	dd	0
	dd	0
	align	4
_2729:
	dd	_518
	dd	734
	dd	5
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_2730:
	dd	_518
	dd	735
	dd	5
	align	4
_2734:
	dd	_518
	dd	736
	dd	5
	align	4
_2737:
	dd	_518
	dd	737
	dd	5
	align	4
_2741:
	dd	_518
	dd	738
	dd	5
	align	4
_318:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_2744:
	dd	_518
	dd	739
	dd	5
	align	4
_2767:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-108
	dd	0
	align	4
_2756:
	dd	_518
	dd	740
	dd	6
	align	4
_2766:
	dd	3
	dd	0
	dd	0
	align	4
_2760:
	dd	_518
	dd	741
	dd	7
	align	4
_322:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_2765:
	dd	_518
	dd	742
	dd	7
	align	4
_2804:
	dd	3
	dd	0
	dd	2
	dd	_420
	dd	_421
	dd	-112
	dd	0
	align	4
_2769:
	dd	_518
	dd	746
	dd	5
	align	4
_2771:
	dd	_518
	dd	747
	dd	5
	align	4
_2803:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-116
	dd	0
	align	4
_2783:
	dd	_518
	dd	748
	dd	6
	align	4
_2792:
	dd	3
	dd	0
	dd	0
	align	4
_2787:
	dd	_518
	dd	749
	dd	7
	align	4
_327:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_2793:
	dd	_518
	dd	752
	dd	6
	align	4
_2802:
	dd	3
	dd	0
	dd	0
	align	4
_2797:
	dd	_518
	dd	753
	dd	7
	align	4
_2843:
	dd	3
	dd	0
	dd	0
	align	4
_2805:
	dd	_518
	dd	757
	dd	5
	align	4
_329:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_2806:
	dd	_518
	dd	758
	dd	5
	align	4
_2810:
	dd	_518
	dd	759
	dd	5
	align	4
_2832:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-120
	dd	0
	align	4
_2822:
	dd	_518
	dd	760
	dd	6
	align	4
_2831:
	dd	3
	dd	0
	dd	0
	align	4
_2826:
	dd	_518
	dd	761
	dd	7
	align	4
_2833:
	dd	_518
	dd	764
	dd	5
	align	4
_2836:
	dd	_518
	dd	765
	dd	5
	align	4
_2840:
	dd	_518
	dd	766
	dd	5
	align	4
_2886:
	dd	3
	dd	0
	dd	0
	align	4
_2844:
	dd	_518
	dd	768
	dd	5
	align	4
_2885:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-124
	dd	0
	align	4
_2856:
	dd	_518
	dd	769
	dd	6
	align	4
_2884:
	dd	3
	dd	0
	dd	0
	align	4
_2864:
	dd	_518
	dd	770
	dd	7
	align	4
_338:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_2869:
	dd	_518
	dd	771
	dd	7
	align	4
_2873:
	dd	_518
	dd	772
	dd	7
	align	4
_2876:
	dd	_518
	dd	773
	dd	7
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_2879:
	dd	_518
	dd	774
	dd	7
	align	4
_2883:
	dd	_518
	dd	775
	dd	7
	align	4
_2899:
	dd	3
	dd	0
	dd	0
	align	4
_2887:
	dd	_518
	dd	779
	dd	5
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_2888:
	dd	_518
	dd	780
	dd	5
	align	4
_2892:
	dd	_518
	dd	781
	dd	5
	align	4
_2895:
	dd	_518
	dd	782
	dd	5
	align	4
_2901:
	dd	3
	dd	0
	dd	0
	align	4
_2900:
	dd	_518
	dd	784
	dd	5
	align	4
_2903:
	dd	3
	dd	0
	dd	0
	align	4
_2902:
	dd	_518
	dd	786
	dd	5
_3016:
	db	"Variable",0
_3017:
	db	"StepVar",0
_3018:
	db	"ToVar",0
_3019:
	db	"Tok",0
	align	4
_3015:
	dd	3
	dd	0
	dd	2
	dd	_3016
	dd	_421
	dd	-128
	dd	2
	dd	_3017
	dd	_421
	dd	-132
	dd	2
	dd	_3018
	dd	_421
	dd	-136
	dd	2
	dd	_3019
	dd	_421
	dd	-140
	dd	0
	align	4
_2904:
	dd	_518
	dd	788
	dd	5
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_2905:
	dd	_518
	dd	789
	dd	5
	align	4
_2907:
	dd	_518
	dd	790
	dd	5
	align	4
_2909:
	dd	_518
	dd	791
	dd	5
	align	4
_2911:
	dd	_518
	dd	792
	dd	5
	align	4
_2988:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-144
	dd	0
	align	4
_2923:
	dd	_518
	dd	793
	dd	6
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_2933:
	dd	3
	dd	0
	dd	0
	align	4
_2932:
	dd	_518
	dd	812
	dd	8
	align	4
_2969:
	dd	3
	dd	0
	dd	0
	align	4
_2934:
	dd	_518
	dd	795
	dd	8
	align	4
_2968:
	dd	3
	dd	0
	dd	2
	dd	_1330
	dd	_698
	dd	-148
	dd	0
	align	4
_2946:
	dd	_518
	dd	796
	dd	9
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_2959:
	dd	3
	dd	0
	dd	2
	dd	_1767
	dd	_421
	dd	-152
	dd	0
	align	4
_2950:
	dd	_518
	dd	797
	dd	10
	align	4
_2956:
	dd	_518
	dd	799
	dd	10
	align	4
_2967:
	dd	3
	dd	0
	dd	0
	align	4
_2961:
	dd	_518
	dd	801
	dd	10
	align	4
_2966:
	dd	_518
	dd	802
	dd	10
	align	4
_2975:
	dd	3
	dd	0
	dd	0
	align	4
_2970:
	dd	_518
	dd	806
	dd	8
	align	4
_2981:
	dd	3
	dd	0
	dd	0
	align	4
_2976:
	dd	_518
	dd	808
	dd	8
	align	4
_2987:
	dd	3
	dd	0
	dd	0
	align	4
_2982:
	dd	_518
	dd	810
	dd	8
	align	4
_2989:
	dd	_518
	dd	815
	dd	5
	align	4
_2991:
	dd	_518
	dd	816
	dd	5
	align	4
_2992:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_2995:
	dd	3
	dd	0
	dd	0
	align	4
_2994:
	dd	_518
	dd	817
	dd	6
	align	4
_2998:
	dd	3
	dd	0
	dd	0
	align	4
_2997:
	dd	_518
	dd	819
	dd	6
	align	4
_2999:
	dd	_518
	dd	821
	dd	5
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_3000:
	dd	_518
	dd	822
	dd	5
	align	4
_3004:
	dd	_518
	dd	823
	dd	5
	align	4
_3007:
	dd	_518
	dd	824
	dd	5
	align	4
_3011:
	dd	_518
	dd	825
	dd	5
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_3014:
	dd	_518
	dd	826
	dd	5
	align	4
_358:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_3025:
	dd	3
	dd	0
	dd	0
	align	4
_3020:
	dd	_518
	dd	828
	dd	5
	align	4
_360:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_3027:
	dd	3
	dd	0
	dd	0
	align	4
_3026:
	dd	_518
	dd	830
	dd	5
	align	4
_362:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
	align	4
_3067:
	dd	3
	dd	0
	dd	2
	dd	_437
	dd	_421
	dd	-156
	dd	0
	align	4
_3028:
	dd	_518
	dd	833
	dd	5
	align	4
_3036:
	dd	_518
	dd	839
	dd	5
	align	4
_3043:
	dd	_518
	dd	840
	dd	5
_3066:
	db	"Child",0
	align	4
_3065:
	dd	3
	dd	0
	dd	2
	dd	_3066
	dd	_698
	dd	-160
	dd	0
	align	4
_3055:
	dd	_518
	dd	841
	dd	6
	align	4
_3064:
	dd	3
	dd	0
	dd	0
	align	4
_3059:
	dd	_518
	dd	842
	dd	7
	align	4
_3073:
	dd	3
	dd	0
	dd	0
	align	4
_3068:
	dd	_518
	dd	849
	dd	5
	align	4
_3157:
	dd	3
	dd	0
	dd	0
	align	4
_3074:
	dd	_518
	dd	853
	dd	5
	align	4
_3156:
	dd	3
	dd	0
	dd	2
	dd	_697
	dd	_698
	dd	-164
	dd	0
	align	4
_3086:
	dd	_518
	dd	854
	dd	6
	align	4
_3098:
	dd	3
	dd	0
	dd	0
	align	4
_3093:
	dd	_518
	dd	856
	dd	8
	align	4
_371:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,62
_3153:
	db	"Typ",0
_3154:
	db	"Add",0
_3155:
	db	"Find",0
	align	4
_3152:
	dd	3
	dd	0
	dd	2
	dd	_3153
	dd	_423
	dd	-168
	dd	2
	dd	_3154
	dd	_421
	dd	-172
	dd	2
	dd	_3155
	dd	_445
	dd	-8
	dd	0
	align	4
_3099:
	dd	_518
	dd	858
	dd	8
	align	4
_3103:
	dd	_518
	dd	859
	dd	8
	align	4
_3123:
	dd	3
	dd	0
	dd	2
	dd	_707
	dd	_423
	dd	-176
	dd	0
	align	4
_3115:
	dd	_518
	dd	860
	dd	9
	align	4
_3122:
	dd	3
	dd	0
	dd	0
	align	4
_3121:
	dd	_518
	dd	861
	dd	10
	align	4
_3124:
	dd	_518
	dd	864
	dd	8
	align	4
_375:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,108,97,115,115
	align	4
_3146:
	dd	3
	dd	0
	dd	0
	align	4
_3134:
	dd	_518
	dd	866
	dd	9
	align	4
_3145:
	dd	3
	dd	0
	dd	0
	align	4
_3141:
	dd	_518
	dd	867
	dd	10
	align	4
_3144:
	dd	_518
	dd	868
	dd	10
	align	4
_379:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,117,112,101,114,99,108,97,115,115,45,62
	align	4
_3147:
	dd	_518
	dd	872
	dd	8
_3243:
	db	"IsArray",0
_3244:
	db	"Obj",0
	align	4
_3242:
	dd	3
	dd	0
	dd	2
	dd	_3243
	dd	_445
	dd	-12
	dd	2
	dd	_3244
	dd	_421
	dd	-180
	dd	0
	align	4
_3158:
	dd	_518
	dd	877
	dd	5
	align	4
_3160:
	dd	_518
	dd	878
	dd	5
	align	4
_3184:
	dd	3
	dd	0
	dd	0
	align	4
_3164:
	dd	_518
	dd	879
	dd	6
_3183:
	db	"Dim",0
	align	4
_3182:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_698
	dd	-184
	dd	0
	align	4
_3176:
	dd	_518
	dd	880
	dd	7
	align	4
_384:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_3181:
	dd	3
	dd	0
	dd	0
	align	4
_3180:
	dd	_518
	dd	880
	dd	30
	align	4
_3185:
	dd	_518
	dd	883
	dd	5
	align	4
_3191:
	dd	_518
	dd	884
	dd	5
	align	4
_3230:
	dd	3
	dd	0
	dd	2
	dd	_428
	dd	_429
	dd	-188
	dd	0
	align	4
_3193:
	dd	_518
	dd	885
	dd	6
	align	4
_3195:
	dd	_518
	dd	886
	dd	6
	align	4
_386:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	40,115,105,122,101,111,102,40
	align	4
_385:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	41,97,108,108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_3196:
	dd	_518
	dd	887
	dd	6
	align	4
_3219:
	dd	3
	dd	0
	dd	2
	dd	_3183
	dd	_698
	dd	-192
	dd	0
	align	4
_3208:
	dd	_518
	dd	888
	dd	7
	align	4
_3218:
	dd	3
	dd	0
	dd	0
	align	4
_3212:
	dd	_518
	dd	889
	dd	8
	align	4
_3213:
	dd	_518
	dd	890
	dd	8
	align	4
_3220:
	dd	_518
	dd	893
	dd	6
	align	4
_3221:
	dd	_518
	dd	894
	dd	6
	align	4
_3229:
	dd	3
	dd	0
	dd	0
	align	4
_3225:
	dd	_518
	dd	894
	dd	28
	align	4
_3233:
	dd	3
	dd	0
	dd	0
	align	4
_3232:
	dd	_518
	dd	897
	dd	6
	align	4
_391:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,41
	align	4
_390:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_3234:
	dd	_518
	dd	899
	dd	5
	align	4
_3241:
	dd	3
	dd	0
	dd	0
	align	4
_3240:
	dd	_518
	dd	900
	dd	6
	align	4
_392:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_3245:
	dd	_518
	dd	904
	dd	3
_3310:
	db	"datatype",0
_3311:
	db	"Def",0
_3312:
	db	"RealType",0
	align	4
_3309:
	dd	1
	dd	_458
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_709
	dd	_698
	dd	-8
	dd	2
	dd	_420
	dd	_421
	dd	-12
	dd	2
	dd	_3310
	dd	_421
	dd	-16
	dd	2
	dd	_3183
	dd	_429
	dd	-20
	dd	2
	dd	_3311
	dd	_421
	dd	-24
	dd	2
	dd	_3312
	dd	_421
	dd	-28
	dd	0
	align	4
_3247:
	dd	_518
	dd	908
	dd	3
	align	4
_3251:
	dd	_518
	dd	909
	dd	3
_3284:
	db	"Att",0
_3285:
	db	":bah.libxml.TxmlAttribute",0
	align	4
_3283:
	dd	3
	dd	0
	dd	2
	dd	_3284
	dd	_3285
	dd	-32
	dd	0
	align	4
_3263:
	dd	_518
	dd	910
	dd	4
	align	4
_3274:
	dd	3
	dd	0
	dd	0
	align	4
_3271:
	dd	_518
	dd	912
	dd	6
	align	4
_3278:
	dd	3
	dd	0
	dd	0
	align	4
_3275:
	dd	_518
	dd	914
	dd	6
	align	4
_3282:
	dd	3
	dd	0
	dd	0
	align	4
_3279:
	dd	_518
	dd	916
	dd	6
	align	4
_3286:
	dd	_518
	dd	919
	dd	3
	align	4
_3288:
	dd	_518
	dd	920
	dd	3
	align	4
_3292:
	dd	_518
	dd	921
	dd	3
	align	4
_3299:
	dd	3
	dd	0
	dd	0
	align	4
_3298:
	dd	_518
	dd	929
	dd	5
	align	4
_398:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_3301:
	dd	3
	dd	0
	dd	0
	align	4
_3300:
	dd	_518
	dd	923
	dd	5
	align	4
_396:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_3303:
	dd	3
	dd	0
	dd	0
	align	4
_3302:
	dd	_518
	dd	925
	dd	5
	align	4
_397:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_3307:
	dd	3
	dd	0
	dd	0
	align	4
_3304:
	dd	_518
	dd	927
	dd	5
	align	4
_3306:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_3308:
	dd	_518
	dd	933
	dd	3
	align	4
_3359:
	dd	1
	dd	_459
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_709
	dd	_698
	dd	-8
	dd	2
	dd	_420
	dd	_421
	dd	-12
	dd	2
	dd	_3310
	dd	_421
	dd	-16
	dd	2
	dd	_3183
	dd	_429
	dd	-20
	dd	0
	align	4
_3313:
	dd	_518
	dd	936
	dd	3
	align	4
_3317:
	dd	_518
	dd	937
	dd	3
	align	4
_3357:
	dd	3
	dd	0
	dd	2
	dd	_3284
	dd	_3285
	dd	-24
	dd	0
	align	4
_3329:
	dd	_518
	dd	938
	dd	4
	align	4
_3340:
	dd	3
	dd	0
	dd	0
	align	4
_3337:
	dd	_518
	dd	940
	dd	6
	align	4
_3346:
	dd	3
	dd	0
	dd	0
	align	4
_3341:
	dd	_518
	dd	942
	dd	6
	align	4
_3356:
	dd	3
	dd	0
	dd	0
	align	4
_3347:
	dd	_518
	dd	944
	dd	6
	align	4
_3350:
	dd	_518
	dd	945
	dd	6
	align	4
_3355:
	dd	3
	dd	0
	dd	2
	dd	_429
	dd	_429
	dd	-28
	dd	0
	align	4
_3354:
	dd	_518
	dd	946
	dd	7
	align	4
_3358:
	dd	_518
	dd	950
	dd	3
	align	4
_405:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
_3411:
	db	"DimCount",0
	align	4
_3410:
	dd	1
	dd	_460
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_3153
	dd	_421
	dd	-8
	dd	2
	dd	_3411
	dd	_429
	dd	-12
	dd	2
	dd	_1001
	dd	_421
	dd	-16
	dd	0
	align	4
_3360:
	dd	_518
	dd	953
	dd	3
	align	4
_3363:
	dd	3
	dd	0
	dd	0
	align	4
_3362:
	dd	_518
	dd	953
	dd	18
	align	4
_3364:
	dd	_518
	dd	954
	dd	3
	align	4
_3366:
	dd	_518
	dd	955
	dd	3
	align	4
_3386:
	dd	3
	dd	0
	dd	0
	align	4
_3377:
	dd	_518
	dd	973
	dd	5
	align	4
_3382:
	dd	3
	dd	0
	dd	0
	align	4
_3381:
	dd	_518
	dd	974
	dd	6
	align	4
_413:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_3385:
	dd	3
	dd	0
	dd	0
	align	4
_3384:
	dd	_518
	dd	976
	dd	6
	align	4
_3388:
	dd	3
	dd	0
	dd	0
	align	4
_3387:
	dd	_518
	dd	957
	dd	5
	align	4
_406:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_3390:
	dd	3
	dd	0
	dd	0
	align	4
_3389:
	dd	_518
	dd	959
	dd	5
	align	4
_407:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_3392:
	dd	3
	dd	0
	dd	0
	align	4
_3391:
	dd	_518
	dd	961
	dd	5
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_3394:
	dd	3
	dd	0
	dd	0
	align	4
_3393:
	dd	_518
	dd	963
	dd	5
	align	4
_409:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_3396:
	dd	3
	dd	0
	dd	0
	align	4
_3395:
	dd	_518
	dd	965
	dd	5
	align	4
_410:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_3398:
	dd	3
	dd	0
	dd	0
	align	4
_3397:
	dd	_518
	dd	967
	dd	5
	align	4
_411:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_3400:
	dd	3
	dd	0
	dd	0
	align	4
_3399:
	dd	_518
	dd	969
	dd	5
	align	4
_412:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_3402:
	dd	3
	dd	0
	dd	0
	align	4
_3401:
	dd	_518
	dd	971
	dd	5
	align	4
_3403:
	dd	_518
	dd	979
	dd	3
	align	4
_3408:
	dd	3
	dd	0
	dd	2
	dd	_429
	dd	_429
	dd	-20
	dd	0
	align	4
_3407:
	dd	_518
	dd	980
	dd	4
	align	4
_3409:
	dd	_518
	dd	982
	dd	3
	align	4
_3421:
	dd	1
	dd	_462
	dd	2
	dd	_542
	dd	_573
	dd	-4
	dd	2
	dd	_3153
	dd	_421
	dd	-8
	dd	0
	align	4
_3412:
	dd	_518
	dd	986
	dd	3
	align	4
_417:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
	align	4
_3413:
	dd	_518
	dd	987
	dd	3
	align	4
_3418:
	dd	3
	dd	0
	dd	0
	align	4
_3417:
	dd	_518
	dd	991
	dd	5
	align	4
_3420:
	dd	3
	dd	0
	dd	0
	align	4
_3419:
	dd	_518
	dd	989
	dd	5
