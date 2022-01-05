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
	public	__bb_main
	public	_bb_TCGenerator
	public	_bb_TClass
	public	_bb_TVirtualMethod
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_528],0
	je	_529
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_529:
	mov	dword [_528],1
	push	ebp
	push	_527
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
	push	_513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_525]
	and	eax,1
	cmp	eax,0
	jne	_526
	push	8
	push	_418
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
	or	dword [_525],1
_526:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_460
_460:
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
	push	_536
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
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+20],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	push	ebp
	push	_535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_463
_463:
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
_466:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_540
	push	eax
	call	_bbGCFree
	add	esp,4
_540:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_542
	push	eax
	call	_bbGCFree
	add	esp,4
_542:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_544
	push	eax
	call	_bbGCFree
	add	esp,4
_544:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_546
	push	eax
	call	_bbGCFree
	add	esp,4
_546:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_548
	push	eax
	call	_bbGCFree
	add	esp,4
_548:
	mov	eax,0
	jmp	_538
_538:
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
	push	_552
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
	push	_551
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_469
_469:
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
_472:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_556
	push	eax
	call	_bbGCFree
	add	esp,4
_556:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_558
	push	eax
	call	_bbGCFree
	add	esp,4
_558:
	mov	eax,0
	jmp	_554
_554:
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
	push	_565
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
	push	_564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_475
_475:
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
_478:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_569
	push	eax
	call	_bbGCFree
	add	esp,4
_569:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_571
	push	eax
	call	_bbGCFree
	add	esp,4
_571:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_573
	push	eax
	call	_bbGCFree
	add	esp,4
_573:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_575
	push	eax
	call	_bbGCFree
	add	esp,4
_575:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_577
	push	eax
	call	_bbGCFree
	add	esp,4
_577:
	mov	eax,0
	jmp	_567
_567:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,388
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
	mov	dword [ebp-52],_bbEmptyString
	mov	dword [ebp-56],_bbEmptyString
	mov	dword [ebp-60],_bbEmptyString
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],0
	mov	dword [ebp-72],_bbEmptyString
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbEmptyString
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbEmptyString
	mov	dword [ebp-92],_bbEmptyString
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-100],_bbEmptyString
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbEmptyString
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-152],0
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],0
	mov	dword [ebp-172],_bbEmptyString
	mov	dword [ebp-176],0
	mov	dword [ebp-180],0
	mov	dword [ebp-184],0
	mov	dword [ebp-188],0
	mov	dword [ebp-192],_bbEmptyString
	mov	dword [ebp-196],0
	mov	dword [ebp-200],0
	mov	eax,ebp
	push	eax
	push	_1771
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_587
	call	_brl_blitz_NullObjectError
_587:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-376],eax
	mov	ebx,dword [ebp-376]
	cmp	ebx,_bbNullObject
	jne	_590
	call	_brl_blitz_NullObjectError
_590:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-380],eax
	jmp	_32
_34:
	mov	ebx,dword [ebp-380]
	cmp	ebx,_bbNullObject
	jne	_595
	call	_brl_blitz_NullObjectError
_595:
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
	push	_691
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_598
	call	_brl_blitz_NullObjectError
_598:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_35
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_601
	jmp	_600
_601:
	mov	eax,ebp
	push	eax
	push	_689
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_418
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_610
	push	eax
	call	_bbGCFree
	add	esp,4
_610:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	cmp	ebx,dword [eax+20]
	jb	_613
	call	_brl_blitz_ArrayBoundsError
_613:
	mov	esi,dword [__bb_TCGenerator_AllDatatype]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_618
	push	eax
	call	_bbGCFree
	add	esp,4
_618:
	mov	dword [esi+24],ebx
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TClass
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_623
	call	_brl_blitz_NullObjectError
_623:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_628
	push	eax
	call	_bbGCFree
	add	esp,4
_628:
	mov	dword [esi+8],ebx
	push	_629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_631
	call	_brl_blitz_NullObjectError
_631:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_636
	push	eax
	call	_bbGCFree
	add	esp,4
_636:
	mov	dword [esi+12],ebx
	push	_637
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_639
	call	_brl_blitz_NullObjectError
_639:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_640
	mov	eax,ebp
	push	eax
	push	_682
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_643
	call	_brl_blitz_NullObjectError
_643:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	eax,dword [ebp-36]
	mov	dword [ebp-324],eax
	mov	ebx,dword [ebp-324]
	cmp	ebx,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_37
_39:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
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
	je	_37
	mov	eax,ebp
	push	eax
	push	_679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_657
	call	_brl_blitz_NullObjectError
_657:
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_658
	mov	eax,ebp
	push	eax
	push	_666
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_661
	call	_brl_blitz_NullObjectError
_661:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_663
	call	_brl_blitz_NullObjectError
_663:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
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
_658:
	push	_667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_670
	mov	eax,ebp
	push	eax
	push	_678
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_673
	call	_brl_blitz_NullObjectError
_673:
	mov	esi,dword [ebx+28]
	cmp	esi,_bbNullObject
	jne	_675
	call	_brl_blitz_NullObjectError
_675:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
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
_670:
	call	dword [_bbOnDebugLeaveScope]
_37:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_39
_38:
	call	dword [_bbOnDebugLeaveScope]
_640:
	push	_684
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_686
	call	_brl_blitz_NullObjectError
_686:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_688
	call	_brl_blitz_NullObjectError
_688:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_600
_600:
	call	dword [_bbOnDebugLeaveScope]
_32:
	mov	ebx,dword [ebp-380]
	cmp	ebx,_bbNullObject
	jne	_593
	call	_brl_blitz_NullObjectError
_593:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_34
_33:
	push	_693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_696
	call	_brl_blitz_NullObjectError
_696:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-384],eax
	mov	ebx,dword [ebp-384]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-388],eax
	jmp	_42
_44:
	mov	ebx,dword [ebp-388]
	cmp	ebx,_bbNullObject
	jne	_704
	call	_brl_blitz_NullObjectError
_704:
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
	je	_42
	mov	eax,ebp
	push	eax
	push	_1629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_45
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_710
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_711
	push	_35
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_712
	push	_74
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_713
	jmp	_709
_710:
	mov	eax,ebp
	push	eax
	push	_764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_716
	call	_brl_blitz_NullObjectError
_716:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_717
	mov	eax,ebp
	push	eax
	push	_763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_721
	call	_brl_blitz_NullObjectError
_721:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-332],eax
	mov	ebx,dword [ebp-332]
	cmp	ebx,_bbNullObject
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_46
_48:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_729
	call	_brl_blitz_NullObjectError
_729:
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
	je	_46
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_733
	mov	eax,ebp
	push	eax
	push	_744
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_736
	call	_brl_blitz_NullObjectError
_736:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_739
	call	_brl_blitz_NullObjectError
_739:
	push	_50
	push	dword [ebp-48]
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
	jnz	_743
	push	eax
	call	_bbGCFree
	add	esp,4
_743:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_745
_733:
	mov	eax,ebp
	push	eax
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_748
	call	_brl_blitz_NullObjectError
_748:
	push	_51
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_749
	mov	eax,ebp
	push	eax
	push	_760
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	push	_50
	push	dword [ebp-48]
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
	jnz	_759
	push	eax
	call	_bbGCFree
	add	esp,4
_759:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_749:
	call	dword [_bbOnDebugLeaveScope]
_745:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_717:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_709
_711:
	mov	eax,ebp
	push	eax
	push	_935
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-52],eax
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_53
	push	dword [ebp-52]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	jle	_770
	mov	eax,ebp
	push	eax
	push	_772
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_54
	push	dword [ebp-52]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-52],eax
	call	dword [_bbOnDebugLeaveScope]
_770:
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_775
	call	_brl_blitz_NullObjectError
_775:
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-56],eax
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_56
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbEmptyString
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_783
	call	_brl_blitz_NullObjectError
_783:
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_785
	call	_brl_blitz_NullObjectError
_785:
	push	_57
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-56],eax
	push	_786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-56]
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	push	_787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_789
	call	_brl_blitz_NullObjectError
_789:
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-68],eax
	push	_791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-52]
	push	_59
	push	dword [ebp-56]
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	_792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbEmptyString
	push	_794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_796
	call	_brl_blitz_NullObjectError
_796:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_797
	mov	eax,ebp
	push	eax
	push	_830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-308],eax
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_804
	call	_brl_blitz_NullObjectError
_804:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-304],eax
	jmp	_61
_63:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_809
	call	_brl_blitz_NullObjectError
_809:
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
	je	_61
	mov	eax,ebp
	push	eax
	push	_829
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	push	_64
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
	push	_828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_816
	call	_brl_blitz_NullObjectError
_816:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_818
	call	_brl_blitz_NullObjectError
_818:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	push	_57
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
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
	push	_822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_824
	call	_brl_blitz_NullObjectError
_824:
	push	_66
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_65
	push	dword [ebp-80]
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
	push	_825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_827
	call	_brl_blitz_NullObjectError
_827:
	push	_68
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_67
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
_813:
	call	dword [_bbOnDebugLeaveScope]
_61:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_807
	call	_brl_blitz_NullObjectError
_807:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_797:
	push	_831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-64]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-64]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-64],eax
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-68],0
	je	_833
	mov	eax,ebp
	push	eax
	push	_896
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_836
	call	_brl_blitz_NullObjectError
_836:
	push	dword [ebp-64]
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_841
	push	eax
	call	_bbGCFree
	add	esp,4
_841:
	mov	dword [esi+28],ebx
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	_843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_845
	call	_brl_blitz_NullObjectError
_845:
	push	_70
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_850
	push	eax
	call	_bbGCFree
	add	esp,4
_850:
	mov	dword [esi+28],ebx
	push	_851
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_853
	call	_brl_blitz_NullObjectError
_853:
	add	dword [ebx+16],1
	push	_855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_858
	call	_brl_blitz_NullObjectError
_858:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_861
	call	_brl_blitz_NullObjectError
_861:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_71
_73:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
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
	je	_71
	mov	eax,ebp
	push	eax
	push	_883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_869
	call	_brl_blitz_NullObjectError
_869:
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_870
	mov	eax,ebp
	push	eax
	push	_882
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_873
	call	_brl_blitz_NullObjectError
_873:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	push	dword [ebp-84]
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
	jnz	_880
	push	eax
	call	_bbGCFree
	add	esp,4
_880:
	mov	dword [ebx+28],esi
	push	_881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_72
_870:
	call	dword [_bbOnDebugLeaveScope]
_71:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_73
_72:
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	sub	dword [ebx+16],1
	push	_888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_890
	call	_brl_blitz_NullObjectError
_890:
	push	_75
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_895
	push	eax
	call	_bbGCFree
	add	esp,4
_895:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_897
_833:
	mov	eax,ebp
	push	eax
	push	_925
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
	push	_76
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-88]
	push	dword [ebp-52]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_903
	push	_4
	push	dword [ebp-88]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_903:
	cmp	eax,0
	je	_905
	mov	eax,ebp
	push	eax
	push	_921
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	_907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_909
	call	_brl_blitz_NullObjectError
_909:
	add	dword [ebx+16],1
	push	_911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_913
	call	_brl_blitz_NullObjectError
_913:
	push	_69
	mov	eax,dword [ebp-72]
	push	dword [eax+8]
	push	1
	push	dword [ebp-72]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_77
	push	dword [ebp-88]
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
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	sub	dword [ebx+16],1
	push	_918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	push	_75
	push	ebx
	mov	eax,dword [ebx]
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_922
_905:
	mov	eax,ebp
	push	eax
	push	_924
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	push	dword [ebp-64]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-64],eax
	call	dword [_bbOnDebugLeaveScope]
_922:
	call	dword [_bbOnDebugLeaveScope]
_897:
	push	_927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_929
	call	_brl_blitz_NullObjectError
_929:
	push	dword [ebp-64]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_934
	push	eax
	call	_bbGCFree
	add	esp,4
_934:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_709
_712:
	mov	eax,ebp
	push	eax
	push	_1568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_942
	call	_brl_blitz_NullObjectError
_942:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-92],eax
	push	_944
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_949
	call	_brl_blitz_NullObjectError
_949:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_952
	call	_brl_blitz_NullObjectError
_952:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_78
_80:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_957
	call	_brl_blitz_NullObjectError
_957:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-108],eax
	cmp	dword [ebp-108],_bbNullObject
	je	_78
	mov	eax,ebp
	push	eax
	push	_965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_960
	call	_brl_blitz_NullObjectError
_960:
	push	dword [ebp-92]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_961
	mov	eax,ebp
	push	eax
	push	_964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	mov	dword [ebp-96],eax
	push	_963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_79
_961:
	call	dword [_bbOnDebugLeaveScope]
_78:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_955
	call	_brl_blitz_NullObjectError
_955:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_80
_79:
	push	_967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbEmptyString
	push	_969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_82
	push	dword [ebp-92]
	push	_81
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	push	_970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_972
	call	_brl_blitz_NullObjectError
_972:
	mov	byte [ebx+20],1
	push	_974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_976
	call	_brl_blitz_NullObjectError
_976:
	add	dword [ebx+16],1
	push	_978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	push	_4
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_981
	mov	eax,ebp
	push	eax
	push	_989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_986
	call	_brl_blitz_NullObjectError
_986:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_988
	call	_brl_blitz_NullObjectError
_988:
	push	_84
	push	0
	push	_83
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_981:
	push	_990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_993
	mov	eax,ebp
	push	eax
	push	_1076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_997
	call	_brl_blitz_NullObjectError
_997:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-352],eax
	mov	ebx,dword [ebp-352]
	cmp	ebx,_bbNullObject
	jne	_1000
	call	_brl_blitz_NullObjectError
_1000:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-356],eax
	jmp	_85
_87:
	mov	ebx,dword [ebp-356]
	cmp	ebx,_bbNullObject
	jne	_1005
	call	_brl_blitz_NullObjectError
_1005:
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
	je	_85
	mov	eax,ebp
	push	eax
	push	_1075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_40
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1011
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1012
	jmp	_1010
_1011:
	mov	eax,ebp
	push	eax
	push	_1061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1015
	call	_brl_blitz_NullObjectError
_1015:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1017
	call	_brl_blitz_NullObjectError
_1017:
	push	_50
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_88
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	push	_1018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TVirtualMethod
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-116],eax
	push	_1020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_1022
	call	_brl_blitz_NullObjectError
_1022:
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1029
	push	eax
	call	_bbGCFree
	add	esp,4
_1029:
	mov	dword [esi+8],ebx
	push	_1030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_1032
	call	_brl_blitz_NullObjectError
_1032:
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_1035
	call	_brl_blitz_NullObjectError
_1035:
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1039
	push	eax
	call	_bbGCFree
	add	esp,4
_1039:
	mov	dword [esi+16],ebx
	push	_1040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_1042
	call	_brl_blitz_NullObjectError
_1042:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1045
	call	_brl_blitz_NullObjectError
_1045:
	push	_57
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebx+20],eax
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1048
	call	_brl_blitz_NullObjectError
_1048:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1050
	call	_brl_blitz_NullObjectError
_1050:
	push	dword [ebp-116]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_1053
	call	_brl_blitz_NullObjectError
_1053:
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_1056
	call	_brl_blitz_NullObjectError
_1056:
	mov	eax,dword [esi+24]
	mov	dword [ebx+12],eax
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1059
	call	_brl_blitz_NullObjectError
_1059:
	add	dword [ebx+24],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1010
_1012:
	mov	eax,ebp
	push	eax
	push	_1074
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-272],eax
	cmp	dword [ebp-272],_bbNullObject
	jne	_1065
	call	_brl_blitz_NullObjectError
_1065:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-252],eax
	cmp	dword [ebp-252],_bbNullObject
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	mov	edi,dword [ebp-112]
	cmp	edi,_bbNullObject
	jne	_1069
	call	_brl_blitz_NullObjectError
_1069:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_1071
	call	_brl_blitz_NullObjectError
_1071:
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_1073
	call	_brl_blitz_NullObjectError
_1073:
	push	_89
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_65
	push	_57
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-252]
	mov	eax,dword [ebp-252]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-272]
	mov	eax,dword [ebp-272]
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
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1010
_1010:
	call	dword [_bbOnDebugLeaveScope]
_85:
	mov	ebx,dword [ebp-356]
	cmp	ebx,_bbNullObject
	jne	_1003
	call	_brl_blitz_NullObjectError
_1003:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_87
_86:
	call	dword [_bbOnDebugLeaveScope]
_993:
	push	_1077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1079
	call	_brl_blitz_NullObjectError
_1079:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1081
	call	_brl_blitz_NullObjectError
_1081:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	dword [ebp-104],eax
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	eax,dword [ebp-104]
	mov	dword [ebp-348],eax
	mov	ebx,dword [ebp-348]
	cmp	ebx,_bbNullObject
	jne	_1087
	call	_brl_blitz_NullObjectError
_1087:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-336],eax
	jmp	_90
_92:
	mov	ebx,dword [ebp-336]
	cmp	ebx,_bbNullObject
	jne	_1092
	call	_brl_blitz_NullObjectError
_1092:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-120],eax
	cmp	dword [ebp-120],_bbNullObject
	je	_90
	mov	eax,ebp
	push	eax
	push	_1124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	eax,dword [ebp-104]
	mov	dword [ebp-232],eax
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_93
_95:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1102
	call	_brl_blitz_NullObjectError
_1102:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-124],eax
	cmp	dword [ebp-124],_bbNullObject
	je	_93
	mov	eax,ebp
	push	eax
	push	_1122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	cmp	dword [ebp-124],eax
	je	_1104
	mov	eax,ebp
	push	eax
	push	_1121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1109
	call	_brl_blitz_NullObjectError
_1109:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1114
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1111
	call	_brl_blitz_NullObjectError
_1111:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1114:
	cmp	eax,0
	je	_1116
	mov	eax,ebp
	push	eax
	push	_1120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1116:
	call	dword [_bbOnDebugLeaveScope]
_1104:
	call	dword [_bbOnDebugLeaveScope]
_93:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_95
_94:
	call	dword [_bbOnDebugLeaveScope]
_90:
	mov	ebx,dword [ebp-336]
	cmp	ebx,_bbNullObject
	jne	_1090
	call	_brl_blitz_NullObjectError
_1090:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_92
_91:
	push	_1125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_bbNullObject
	mov	eax,dword [ebp-104]
	mov	dword [ebp-340],eax
	mov	ebx,dword [ebp-340]
	cmp	ebx,_bbNullObject
	jne	_1129
	call	_brl_blitz_NullObjectError
_1129:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-316],eax
	jmp	_96
_98:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_1134
	call	_brl_blitz_NullObjectError
_1134:
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
	push	_1164
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-248],eax
	cmp	dword [ebp-248],_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
	mov	esi,dword [ebp-128]
	cmp	esi,_bbNullObject
	jne	_1141
	call	_brl_blitz_NullObjectError
_1141:
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	push	dword [ebx+20]
	push	dword [esi+16]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-248]
	mov	eax,dword [ebp-248]
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
	push	_1144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	mov	byte [ebx+20],0
	push	_1148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
	mov	esi,dword [ebp-128]
	cmp	esi,_bbNullObject
	jne	_1152
	call	_brl_blitz_NullObjectError
_1152:
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	push	_102
	push	_101
	push	_100
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
	push	_99
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
	push	_1155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1157
	call	_brl_blitz_NullObjectError
_1157:
	mov	byte [ebx+20],1
	push	_1159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1161
	call	_brl_blitz_NullObjectError
_1161:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_1163
	call	_brl_blitz_NullObjectError
_1163:
	push	dword [ebp-128]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_96:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_1132
	call	_brl_blitz_NullObjectError
_1132:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_98
_97:
	push	_1165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1167
	call	_brl_blitz_NullObjectError
_1167:
	mov	byte [ebx+20],0
	push	_1169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1171
	call	_brl_blitz_NullObjectError
_1171:
	sub	dword [ebx+16],1
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1177
	call	_brl_blitz_NullObjectError
_1177:
	push	_104
	push	0
	push	dword [ebp-92]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+72]
	add	esp,12
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	0
	push	dword [ebp-92]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_103
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
	push	_1178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1180
	call	_brl_blitz_NullObjectError
_1180:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1183
	call	_brl_blitz_NullObjectError
_1183:
	push	dword [ebx+12]
	push	dword [ebp-100]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1187
	push	eax
	call	_bbGCFree
	add	esp,4
_1187:
	mov	dword [esi+12],ebx
	push	_1188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1190
	call	_brl_blitz_NullObjectError
_1190:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1191
	mov	eax,ebp
	push	eax
	push	_1345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1195
	call	_brl_blitz_NullObjectError
_1195:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-364],eax
	mov	ebx,dword [ebp-364]
	cmp	ebx,_bbNullObject
	jne	_1198
	call	_brl_blitz_NullObjectError
_1198:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-372],eax
	jmp	_105
_107:
	mov	ebx,dword [ebp-372]
	cmp	ebx,_bbNullObject
	jne	_1203
	call	_brl_blitz_NullObjectError
_1203:
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
	je	_105
	mov	eax,ebp
	push	eax
	push	_1344
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1206
	call	_brl_blitz_NullObjectError
_1206:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_40
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1209
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1210
	jmp	_1208
_1209:
	mov	eax,ebp
	push	eax
	push	_1341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbEmptyString
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-288],eax
	cmp	dword [ebp-288],_bbNullObject
	jne	_1215
	call	_brl_blitz_NullObjectError
_1215:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-268],eax
	cmp	dword [ebp-268],_bbNullObject
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
	mov	eax,dword [ebp-132]
	mov	dword [ebp-244],eax
	cmp	dword [ebp-244],_bbNullObject
	jne	_1219
	call	_brl_blitz_NullObjectError
_1219:
	mov	edi,dword [ebp-132]
	cmp	edi,_bbNullObject
	jne	_1221
	call	_brl_blitz_NullObjectError
_1221:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_1223
	call	_brl_blitz_NullObjectError
_1223:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1225
	call	_brl_blitz_NullObjectError
_1225:
	push	_108
	push	0
	push	dword [ebp-92]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_60
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_59
	push	_57
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
	push	dword [ebp-244]
	mov	eax,dword [ebp-244]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-268]
	mov	eax,dword [ebp-268]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-288]
	mov	eax,dword [ebp-288]
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
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1229
	mov	eax,ebp
	push	eax
	push	_1267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1233
	call	_brl_blitz_NullObjectError
_1233:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-256],eax
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_1236
	call	_brl_blitz_NullObjectError
_1236:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-228],eax
	jmp	_109
_111:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_1241
	call	_brl_blitz_NullObjectError
_1241:
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
	je	_109
	mov	eax,ebp
	push	eax
	push	_1265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	push	_112
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1245
	mov	eax,ebp
	push	eax
	push	_1250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1248
	call	_brl_blitz_NullObjectError
_1248:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+292]
	add	esp,4
	push	_1249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_109
_1245:
	push	_1251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1253
	call	_brl_blitz_NullObjectError
_1253:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1254
	mov	eax,ebp
	push	eax
	push	_1264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-204],eax
	cmp	dword [ebp-204],_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	mov	edi,dword [ebp-140]
	cmp	edi,_bbNullObject
	jne	_1259
	call	_brl_blitz_NullObjectError
_1259:
	mov	esi,dword [ebp-140]
	cmp	esi,_bbNullObject
	jne	_1261
	call	_brl_blitz_NullObjectError
_1261:
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1263
	call	_brl_blitz_NullObjectError
_1263:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_59
	push	_57
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-204]
	mov	eax,dword [ebp-204]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_113
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_1254:
	call	dword [_bbOnDebugLeaveScope]
_109:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_1239
	call	_brl_blitz_NullObjectError
_1239:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_111
_110:
	call	dword [_bbOnDebugLeaveScope]
_1229:
	push	_1268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1271
	call	_brl_blitz_NullObjectError
_1271:
	add	dword [ebx+16],1
	push	_1273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1275
	call	_brl_blitz_NullObjectError
_1275:
	push	_114
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1276
	mov	eax,ebp
	push	eax
	push	_1286
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [ebp-240],eax
	cmp	dword [ebp-240],_bbNullObject
	jne	_1279
	call	_brl_blitz_NullObjectError
_1279:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1281
	call	_brl_blitz_NullObjectError
_1281:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	push	_116
	push	_57
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
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
	push	_115
	push	dword [ebp-240]
	mov	eax,dword [ebp-240]
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
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1287
_1276:
	mov	eax,ebp
	push	eax
	push	_1291
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
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_1287:
	push	_1292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1294
	call	_brl_blitz_NullObjectError
_1294:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_1296
	call	_brl_blitz_NullObjectError
_1296:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1298
	call	_brl_blitz_NullObjectError
_1298:
	push	_118
	push	_101
	push	_100
	push	_57
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
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
	push	_117
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1301
	call	_brl_blitz_NullObjectError
_1301:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1302
	mov	eax,ebp
	push	eax
	push	_1324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1306
	call	_brl_blitz_NullObjectError
_1306:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1309
	call	_brl_blitz_NullObjectError
_1309:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_119
_121:
	cmp	ebx,_bbNullObject
	jne	_1314
	call	_brl_blitz_NullObjectError
_1314:
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
	je	_119
	mov	eax,ebp
	push	eax
	push	_1323
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_1317
	call	_brl_blitz_NullObjectError
_1317:
	push	_64
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1318
	mov	eax,ebp
	push	eax
	push	_1322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_1321
	call	_brl_blitz_NullObjectError
_1321:
	push	_36
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_113
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_1318:
	call	dword [_bbOnDebugLeaveScope]
_119:
	cmp	ebx,_bbNullObject
	jne	_1312
	call	_brl_blitz_NullObjectError
_1312:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_121
_120:
	call	dword [_bbOnDebugLeaveScope]
_1302:
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1328
	call	_brl_blitz_NullObjectError
_1328:
	sub	dword [ebx+16],1
	push	_1330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1332
	call	_brl_blitz_NullObjectError
_1332:
	push	_75
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-136]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-136],eax
	push	_1333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1335
	call	_brl_blitz_NullObjectError
_1335:
	push	dword [ebp-136]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1340
	push	eax
	call	_bbGCFree
	add	esp,4
_1340:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1208
_1210:
	mov	eax,ebp
	push	eax
	push	_1343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1208
_1208:
	call	dword [_bbOnDebugLeaveScope]
_105:
	mov	ebx,dword [ebp-372]
	cmp	ebx,_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_107
_106:
	call	dword [_bbOnDebugLeaveScope]
_1191:
	push	_1346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1348
	call	_brl_blitz_NullObjectError
_1348:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1351
	call	_brl_blitz_NullObjectError
_1351:
	push	_123
	push	dword [ebp-92]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_77
	push	dword [ebp-92]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_122
	push	dword [ebp-92]
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
	jnz	_1355
	push	eax
	call	_bbGCFree
	add	esp,4
_1355:
	mov	dword [esi+12],ebx
	push	_1356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1358
	call	_brl_blitz_NullObjectError
_1358:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1361
	call	_brl_blitz_NullObjectError
_1361:
	push	_124
	push	dword [ebp-92]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_77
	push	dword [ebp-92]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_122
	push	dword [ebp-92]
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
	jnz	_1365
	push	eax
	call	_bbGCFree
	add	esp,4
_1365:
	mov	dword [esi+40],ebx
	push	_1366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1368
	call	_brl_blitz_NullObjectError
_1368:
	add	dword [ebx+16],1
	push	_1370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1372
	call	_brl_blitz_NullObjectError
_1372:
	push	_4
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1373
	mov	eax,ebp
	push	eax
	push	_1390
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1376
	call	_brl_blitz_NullObjectError
_1376:
	mov	dword [ebp-328],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-312],eax
	cmp	dword [ebp-312],_bbNullObject
	jne	_1379
	call	_brl_blitz_NullObjectError
_1379:
	mov	edi,dword [ebp-44]
	cmp	edi,_bbNullObject
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	mov	esi,dword [ebp-44]
	cmp	esi,_bbNullObject
	jne	_1383
	call	_brl_blitz_NullObjectError
_1383:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1385
	call	_brl_blitz_NullObjectError
_1385:
	push	_128
	push	_4
	push	_100
	push	_83
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
	push	_127
	push	_83
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_126
	push	_83
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_125
	push	dword [ebp-312]
	mov	eax,dword [ebp-312]
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
	mov	eax,dword [ebp-328]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-328]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1389
	push	eax
	call	_bbGCFree
	add	esp,4
_1389:
	mov	eax,dword [ebp-328]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1373:
	push	_1391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1394
	call	_brl_blitz_NullObjectError
_1394:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-360],eax
	mov	ebx,dword [ebp-360]
	cmp	ebx,_bbNullObject
	jne	_1397
	call	_brl_blitz_NullObjectError
_1397:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-368],eax
	jmp	_129
_131:
	mov	ebx,dword [ebp-368]
	cmp	ebx,_bbNullObject
	jne	_1402
	call	_brl_blitz_NullObjectError
_1402:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-148],eax
	cmp	dword [ebp-148],_bbNullObject
	je	_129
	mov	eax,ebp
	push	eax
	push	_1500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],0
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1408
	call	_brl_blitz_NullObjectError
_1408:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-224],eax
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_1411
	call	_brl_blitz_NullObjectError
_1411:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_132
_134:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1416
	call	_brl_blitz_NullObjectError
_1416:
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
	je	_132
	mov	eax,ebp
	push	eax
	push	_1431
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1419
	call	_brl_blitz_NullObjectError
_1419:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_1421
	call	_brl_blitz_NullObjectError
_1421:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1426
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1423
	call	_brl_blitz_NullObjectError
_1423:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_1425
	call	_brl_blitz_NullObjectError
_1425:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1426:
	cmp	eax,0
	je	_1428
	mov	eax,ebp
	push	eax
	push	_1430
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-152],1
	call	dword [_bbOnDebugLeaveScope]
_1428:
	call	dword [_bbOnDebugLeaveScope]
_132:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1414
	call	_brl_blitz_NullObjectError
_1414:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_134
_133:
	push	_1432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1434
	call	_brl_blitz_NullObjectError
_1434:
	mov	dword [ebp-300],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-296],eax
	cmp	dword [ebp-296],_bbNullObject
	jne	_1437
	call	_brl_blitz_NullObjectError
_1437:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-276],eax
	cmp	dword [ebp-276],_bbNullObject
	jne	_1439
	call	_brl_blitz_NullObjectError
_1439:
	mov	eax,dword [ebp-148]
	mov	dword [ebp-292],eax
	cmp	dword [ebp-292],_bbNullObject
	jne	_1441
	call	_brl_blitz_NullObjectError
_1441:
	mov	eax,dword [ebp-148]
	mov	dword [ebp-264],eax
	cmp	dword [ebp-264],_bbNullObject
	jne	_1443
	call	_brl_blitz_NullObjectError
_1443:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_1445
	call	_brl_blitz_NullObjectError
_1445:
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1447
	call	_brl_blitz_NullObjectError
_1447:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_1449
	call	_brl_blitz_NullObjectError
_1449:
	push	_69
	push	dword [ebp-152]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_137
	push	dword [ebx+20]
	push	dword [esi+16]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_136
	push	_101
	push	_100
	mov	eax,dword [ebp-264]
	push	dword [eax+20]
	mov	eax,dword [ebp-292]
	push	dword [eax+16]
	push	dword [ebp-276]
	mov	eax,dword [ebp-276]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_135
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp-300]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-300]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1453
	push	eax
	call	_bbGCFree
	add	esp,4
_1453:
	mov	eax,dword [ebp-300]
	mov	dword [eax+40],ebx
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_1457
	call	_brl_blitz_NullObjectError
_1457:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-284],eax
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_1460
	call	_brl_blitz_NullObjectError
_1460:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_138
_140:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_1465
	call	_brl_blitz_NullObjectError
_1465:
	push	_bb_TVirtualMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-160],eax
	cmp	dword [ebp-160],_bbNullObject
	je	_138
	mov	eax,ebp
	push	eax
	push	_1499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1468
	call	_brl_blitz_NullObjectError
_1468:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_1470
	call	_brl_blitz_NullObjectError
_1470:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1475
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_1474
	call	_brl_blitz_NullObjectError
_1474:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1475:
	cmp	eax,0
	je	_1477
	mov	eax,ebp
	push	eax
	push	_1498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	mov	dword [ebp-220],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-216],eax
	cmp	dword [ebp-216],_bbNullObject
	jne	_1483
	call	_brl_blitz_NullObjectError
_1483:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-208],eax
	cmp	dword [ebp-208],_bbNullObject
	jne	_1485
	call	_brl_blitz_NullObjectError
_1485:
	mov	eax,dword [ebp-148]
	mov	dword [ebp-212],eax
	cmp	dword [ebp-212],_bbNullObject
	jne	_1487
	call	_brl_blitz_NullObjectError
_1487:
	mov	edi,dword [ebp-148]
	cmp	edi,_bbNullObject
	jne	_1489
	call	_brl_blitz_NullObjectError
_1489:
	mov	esi,dword [ebp-148]
	cmp	esi,_bbNullObject
	jne	_1491
	call	_brl_blitz_NullObjectError
_1491:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_1493
	call	_brl_blitz_NullObjectError
_1493:
	push	_143
	push	dword [ebx+8]
	push	_142
	push	dword [esi+12]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_141
	push	_101
	push	_100
	push	dword [edi+20]
	mov	eax,dword [ebp-212]
	push	dword [eax+16]
	push	dword [ebp-208]
	mov	eax,dword [ebp-208]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_135
	push	dword [ebp-216]
	mov	eax,dword [ebp-216]
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
	mov	eax,dword [ebp-220]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-220]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1497
	push	eax
	call	_bbGCFree
	add	esp,4
_1497:
	mov	eax,dword [ebp-220]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
_1477:
	call	dword [_bbOnDebugLeaveScope]
_138:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_1463
	call	_brl_blitz_NullObjectError
_1463:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_140
_139:
	call	dword [_bbOnDebugLeaveScope]
_129:
	mov	ebx,dword [ebp-368]
	cmp	ebx,_bbNullObject
	jne	_1400
	call	_brl_blitz_NullObjectError
_1400:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_131
_130:
	push	_1501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1503
	call	_brl_blitz_NullObjectError
_1503:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1504
	mov	eax,ebp
	push	eax
	push	_1543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],_bbNullObject
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1508
	call	_brl_blitz_NullObjectError
_1508:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-344],eax
	mov	ebx,dword [ebp-344]
	cmp	ebx,_bbNullObject
	jne	_1511
	call	_brl_blitz_NullObjectError
_1511:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-320],eax
	jmp	_144
_146:
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_1516
	call	_brl_blitz_NullObjectError
_1516:
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
	je	_144
	mov	eax,ebp
	push	eax
	push	_1542
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_1519
	call	_brl_blitz_NullObjectError
_1519:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_40
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1522
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1523
	jmp	_1521
_1522:
	mov	eax,ebp
	push	eax
	push	_1524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1521
_1523:
	mov	eax,ebp
	push	eax
	push	_1541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1527
	call	_brl_blitz_NullObjectError
_1527:
	mov	dword [ebp-260],ebx
	mov	eax,dword [ebp-4]
	mov	dword [ebp-236],eax
	cmp	dword [ebp-236],_bbNullObject
	jne	_1530
	call	_brl_blitz_NullObjectError
_1530:
	mov	edi,dword [ebp-164]
	cmp	edi,_bbNullObject
	jne	_1532
	call	_brl_blitz_NullObjectError
_1532:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1534
	call	_brl_blitz_NullObjectError
_1534:
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	push	_104
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
	push	_148
	push	_36
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_147
	push	dword [ebp-236]
	mov	eax,dword [ebp-236]
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
	mov	eax,dword [ebp-260]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-260]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1540
	push	eax
	call	_bbGCFree
	add	esp,4
_1540:
	mov	eax,dword [ebp-260]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1521
_1521:
	call	dword [_bbOnDebugLeaveScope]
_144:
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_1514
	call	_brl_blitz_NullObjectError
_1514:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_146
_145:
	call	dword [_bbOnDebugLeaveScope]
_1504:
	push	_1544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1546
	call	_brl_blitz_NullObjectError
_1546:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1549
	call	_brl_blitz_NullObjectError
_1549:
	push	_149
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
	jnz	_1553
	push	eax
	call	_bbGCFree
	add	esp,4
_1553:
	mov	dword [ebx+40],esi
	push	_1554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1556
	call	_brl_blitz_NullObjectError
_1556:
	sub	dword [ebx+16],1
	push	_1558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1560
	call	_brl_blitz_NullObjectError
_1560:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1563
	call	_brl_blitz_NullObjectError
_1563:
	push	_75
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
	jnz	_1567
	push	eax
	call	_bbGCFree
	add	esp,4
_1567:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_709
_713:
	mov	eax,ebp
	push	eax
	push	_1628
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1572
	call	_brl_blitz_NullObjectError
_1572:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1575
	call	_brl_blitz_NullObjectError
_1575:
	push	dword [ebx+40]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1579
	push	eax
	call	_bbGCFree
	add	esp,4
_1579:
	mov	dword [esi+12],ebx
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1582
	call	_brl_blitz_NullObjectError
_1582:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1585
	call	_brl_blitz_NullObjectError
_1585:
	push	_150
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
	jnz	_1589
	push	eax
	call	_bbGCFree
	add	esp,4
_1589:
	mov	dword [ebx+12],esi
	push	_1590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1592
	call	_brl_blitz_NullObjectError
_1592:
	add	dword [ebx+16],1
	push	_1594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1596
	call	_brl_blitz_NullObjectError
_1596:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1599
	call	_brl_blitz_NullObjectError
_1599:
	push	_151
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
	jnz	_1603
	push	eax
	call	_bbGCFree
	add	esp,4
_1603:
	mov	dword [ebx+12],esi
	push	_1604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1606
	call	_brl_blitz_NullObjectError
_1606:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1609
	call	_brl_blitz_NullObjectError
_1609:
	push	dword [ebp-44]
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
	jnz	_1613
	push	eax
	call	_bbGCFree
	add	esp,4
_1613:
	mov	dword [ebx+12],esi
	push	_1614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1616
	call	_brl_blitz_NullObjectError
_1616:
	sub	dword [ebx+16],1
	push	_1618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1620
	call	_brl_blitz_NullObjectError
_1620:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1623
	call	_brl_blitz_NullObjectError
_1623:
	push	_103
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
	jnz	_1627
	push	eax
	call	_bbGCFree
	add	esp,4
_1627:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_709
_709:
	call	dword [_bbOnDebugLeaveScope]
_42:
	mov	ebx,dword [ebp-388]
	cmp	ebx,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	push	_1630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1633
	call	_brl_blitz_NullObjectError
_1633:
	mov	edi,dword [ebx+24]
	jmp	_1634
_154:
	mov	eax,ebp
	push	eax
	push	_1734
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbEmptyString
	push	_1638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	push	_156
	push	dword [ebp-168]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_155
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
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],1
	mov	ebx,dword [ebp-168]
	jmp	_1643
_159:
	mov	eax,ebp
	push	eax
	push	_1646
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_160
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_157:
	add	dword [ebp-176],1
_1643:
	cmp	dword [ebp-176],ebx
	jle	_159
_158:
	push	_1648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1651
	call	_brl_blitz_NullObjectError
_1651:
	add	dword [ebx+16],1
	push	_1653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1655
	call	_brl_blitz_NullObjectError
_1655:
	push	_25
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],1
	mov	ebx,dword [ebp-168]
	jmp	_1658
_163:
	mov	eax,ebp
	push	eax
	push	_1661
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_161:
	add	dword [ebp-180],1
_1658:
	cmp	dword [ebp-180],ebx
	jle	_163
_162:
	push	_1663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_164
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1666
	call	_brl_blitz_NullObjectError
_1666:
	push	_165
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],0
	mov	dword [ebp-184],1
	mov	ebx,dword [ebp-168]
	jmp	_1669
_168:
	mov	eax,ebp
	push	eax
	push	_1676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_169
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-168]
	cmp	dword [ebp-184],eax
	jge	_1673
	mov	eax,ebp
	push	eax
	push	_1675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_1673:
	call	dword [_bbOnDebugLeaveScope]
_166:
	add	dword [ebp-184],1
_1669:
	cmp	dword [ebp-184],ebx
	jle	_168
_167:
	push	_1677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_171
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],0
	mov	dword [ebp-188],1
	mov	eax,dword [ebp-168]
	sub	eax,1
	mov	ebx,eax
	jmp	_1680
_174:
	mov	eax,ebp
	push	eax
	push	_1702
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1684
	call	_brl_blitz_NullObjectError
_1684:
	push	_179
	push	dword [ebp-188]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_178
	push	dword [ebp-188]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_177
	push	dword [ebp-188]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_176
	push	dword [ebp-188]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_175
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
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1687
	call	_brl_blitz_NullObjectError
_1687:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1691
	call	_brl_blitz_NullObjectError
_1691:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_180
	push	_1694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],0
	mov	dword [ebp-196],1
	mov	esi,dword [ebp-188]
	jmp	_1696
_183:
	mov	eax,ebp
	push	eax
	push	_1699
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_185
	push	dword [ebp-196]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_184
	push	dword [ebp-192]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-192],eax
	call	dword [_bbOnDebugLeaveScope]
_181:
	add	dword [ebp-196],1
_1696:
	cmp	dword [ebp-196],esi
	jle	_183
_182:
	push	_1700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_69
	mov	eax,dword [ebp-188]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_186
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_172:
	add	dword [ebp-188],1
_1680:
	cmp	dword [ebp-188],ebx
	jle	_174
_173:
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-200],1
	mov	eax,dword [ebp-168]
	sub	eax,1
	mov	ebx,eax
	jmp	_1706
_189:
	mov	eax,ebp
	push	eax
	push	_1715
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1710
	call	_brl_blitz_NullObjectError
_1710:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1714
	call	_brl_blitz_NullObjectError
_1714:
	push	_75
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_187:
	add	dword [ebp-200],1
_1706:
	cmp	dword [ebp-200],ebx
	jle	_189
_188:
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1718
	call	_brl_blitz_NullObjectError
_1718:
	push	_190
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1721
	call	_brl_blitz_NullObjectError
_1721:
	sub	dword [ebx+16],1
	push	_1723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_75
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1726
	call	_brl_blitz_NullObjectError
_1726:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1729
	call	_brl_blitz_NullObjectError
_1729:
	push	dword [esi+12]
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1733
	push	eax
	call	_bbGCFree
	add	esp,4
_1733:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_152:
	add	dword [ebp-168],1
_1634:
	cmp	dword [ebp-168],edi
	jle	_154
_153:
	push	_1735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1737
	call	_brl_blitz_NullObjectError
_1737:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1745
	call	_brl_blitz_NullObjectError
_1745:
	push	dword [ebx+12]
	push	_1743
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1749
	push	eax
	call	_bbGCFree
	add	esp,4
_1749:
	mov	dword [esi+12],ebx
	push	_1750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1752
	call	_brl_blitz_NullObjectError
_1752:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1755
	call	_brl_blitz_NullObjectError
_1755:
	push	dword [ebx+28]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1759
	push	eax
	call	_bbGCFree
	add	esp,4
_1759:
	mov	dword [esi+12],ebx
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1762
	call	_brl_blitz_NullObjectError
_1762:
	push	_50
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1767
	push	eax
	call	_bbGCFree
	add	esp,4
_1767:
	mov	dword [esi+12],ebx
	push	_1768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1770
	call	_brl_blitz_NullObjectError
_1770:
	push	dword [ebp-12]
	push	dword [ebx+12]
	call	_brl_stream_SaveString
	add	esp,8
	mov	ebx,0
	jmp	_483
_483:
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
	push	_1788
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_1779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
	mov	ebx,dword [ebx+16]
	jmp	_1783
_195:
	push	ebp
	push	_1786
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_196
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_193:
	add	dword [ebp-12],1
_1783:
	cmp	dword [ebp-12],ebx
	jle	_195
_194:
	push	_1787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_486
_486:
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
	push	_1845
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1793
	call	_brl_blitz_NullObjectError
_1793:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1794
	mov	eax,ebp
	push	eax
	push	_1843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1798
	call	_brl_blitz_NullObjectError
_1798:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1801
	call	_brl_blitz_NullObjectError
_1801:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_197
_199:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1806
	call	_brl_blitz_NullObjectError
_1806:
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
	je	_197
	mov	eax,ebp
	push	eax
	push	_1842
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1809
	call	_brl_blitz_NullObjectError
_1809:
	push	_200
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
	je	_1812
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1811
	call	_brl_blitz_NullObjectError
_1811:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1812:
	cmp	eax,0
	je	_1814
	mov	eax,ebp
	push	eax
	push	_1841
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1817
	call	_brl_blitz_NullObjectError
_1817:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
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
	push	_1821
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	dword [eax+8],0
	jle	_1822
	mov	eax,ebp
	push	eax
	push	_1840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_201
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
	jne	_1824
	push	_103
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
_1824:
	cmp	eax,0
	jne	_1826
	push	_202
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
_1826:
	cmp	eax,0
	jne	_1828
	push	_50
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
_1828:
	cmp	eax,0
	je	_1830
	mov	eax,ebp
	push	eax
	push	_1834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1833
	call	_brl_blitz_NullObjectError
_1833:
	push	_50
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
	jmp	_1835
_1830:
	mov	eax,ebp
	push	eax
	push	_1839
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
	push	_104
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
_1835:
	call	dword [_bbOnDebugLeaveScope]
_1822:
	call	dword [_bbOnDebugLeaveScope]
_1814:
	call	dword [_bbOnDebugLeaveScope]
_197:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1804
	call	_brl_blitz_NullObjectError
_1804:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_199
_198:
	call	dword [_bbOnDebugLeaveScope]
_1794:
	push	_1844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_490
_490:
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
	sub	esp,308
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
	mov	dword [ebp-180],_bbEmptyString
	mov	byte [ebp-12],0
	mov	dword [ebp-188],_bbNullObject
	mov	dword [ebp-184],_bbEmptyString
	mov	dword [ebp-192],0
	mov	dword [ebp-196],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3187
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_1848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	jne	_1849
	mov	eax,ebp
	push	eax
	push	_1851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_494
_1849:
	push	_1852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1854
	call	_brl_blitz_NullObjectError
_1854:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_203
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1857
	push	_210
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1858
	push	_215
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1859
	push	_220
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1860
	push	_225
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1861
	push	_229
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1862
	push	_234
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1863
	push	_239
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1864
	push	_243
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1865
	push	_248
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1866
	push	_253
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1867
	push	_258
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1868
	push	_263
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1869
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1870
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1871
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1872
	push	_269
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1873
	push	_270
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1873
	push	_271
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1874
	push	_288
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1875
	push	_293
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1876
	push	_297
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1877
	push	_303
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1878
	push	_305
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1879
	push	_310
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1880
	push	_317
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1881
	push	_322
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1882
	push	_327
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1883
	push	_334
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1884
	push	_336
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1885
	push	_337
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1886
	push	_338
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1887
	push	_353
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1888
	push	_355
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1889
	push	_357
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1890
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1891
	push	_361
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1892
	push	_377
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1893
	jmp	_1856
_1857:
	mov	eax,ebp
	push	eax
	push	_1928
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_204
	push	_1895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1898
	call	_brl_blitz_NullObjectError
_1898:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1901
	call	_brl_blitz_NullObjectError
_1901:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_205
_207:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1906
	call	_brl_blitz_NullObjectError
_1906:
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
	je	_205
	mov	eax,ebp
	push	eax
	push	_1926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1909
	call	_brl_blitz_NullObjectError
_1909:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1912
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1913
	jmp	_1911
_1912:
	mov	eax,ebp
	push	eax
	push	_1919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1916
	call	_brl_blitz_NullObjectError
_1916:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1918
	call	_brl_blitz_NullObjectError
_1918:
	push	_170
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
	jmp	_1911
_1913:
	mov	eax,ebp
	push	eax
	push	_1925
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1922
	call	_brl_blitz_NullObjectError
_1922:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1924
	call	_brl_blitz_NullObjectError
_1924:
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
	jmp	_1911
_1911:
	call	dword [_bbOnDebugLeaveScope]
_205:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1904
	call	_brl_blitz_NullObjectError
_1904:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_207
_206:
	push	_1927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1858:
	mov	eax,ebp
	push	eax
	push	_1961
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1932
	call	_brl_blitz_NullObjectError
_1932:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1935
	call	_brl_blitz_NullObjectError
_1935:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_211
_213:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_1940
	call	_brl_blitz_NullObjectError
_1940:
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
	je	_211
	mov	eax,ebp
	push	eax
	push	_1960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1943
	call	_brl_blitz_NullObjectError
_1943:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1946
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1947
	jmp	_1945
_1946:
	mov	eax,ebp
	push	eax
	push	_1953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1950
	call	_brl_blitz_NullObjectError
_1950:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1952
	call	_brl_blitz_NullObjectError
_1952:
	push	_214
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
	push	_77
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
	jmp	_1945
_1947:
	mov	eax,ebp
	push	eax
	push	_1959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1956
	call	_brl_blitz_NullObjectError
_1956:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1958
	call	_brl_blitz_NullObjectError
_1958:
	push	_116
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
	jmp	_1945
_1945:
	call	dword [_bbOnDebugLeaveScope]
_211:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_1938
	call	_brl_blitz_NullObjectError
_1938:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_213
_212:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1859:
	mov	eax,ebp
	push	eax
	push	_1994
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1965
	call	_brl_blitz_NullObjectError
_1965:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1968
	call	_brl_blitz_NullObjectError
_1968:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_216
_218:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_1973
	call	_brl_blitz_NullObjectError
_1973:
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
	je	_216
	mov	eax,ebp
	push	eax
	push	_1993
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1976
	call	_brl_blitz_NullObjectError
_1976:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1979
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1980
	jmp	_1978
_1979:
	mov	eax,ebp
	push	eax
	push	_1986
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1983
	call	_brl_blitz_NullObjectError
_1983:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1985
	call	_brl_blitz_NullObjectError
_1985:
	push	_219
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
	push	_77
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
	jmp	_1978
_1980:
	mov	eax,ebp
	push	eax
	push	_1992
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1989
	call	_brl_blitz_NullObjectError
_1989:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1991
	call	_brl_blitz_NullObjectError
_1991:
	push	_116
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
	jmp	_1978
_1978:
	call	dword [_bbOnDebugLeaveScope]
_216:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_1971
	call	_brl_blitz_NullObjectError
_1971:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_218
_217:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1860:
	mov	eax,ebp
	push	eax
	push	_2027
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1998
	call	_brl_blitz_NullObjectError
_1998:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2001
	call	_brl_blitz_NullObjectError
_2001:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_221
_223:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2006
	call	_brl_blitz_NullObjectError
_2006:
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
	je	_221
	mov	eax,ebp
	push	eax
	push	_2026
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2009
	call	_brl_blitz_NullObjectError
_2009:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2012
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2013
	jmp	_2011
_2012:
	mov	eax,ebp
	push	eax
	push	_2019
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2018
	call	_brl_blitz_NullObjectError
_2018:
	push	_224
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
	push	_77
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
	jmp	_2011
_2013:
	mov	eax,ebp
	push	eax
	push	_2025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2022
	call	_brl_blitz_NullObjectError
_2022:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	push	_116
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
	jmp	_2011
_2011:
	call	dword [_bbOnDebugLeaveScope]
_221:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2004
	call	_brl_blitz_NullObjectError
_2004:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_223
_222:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1861:
	mov	eax,ebp
	push	eax
	push	_2060
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2034
	call	_brl_blitz_NullObjectError
_2034:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-272],eax
	jmp	_226
_228:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2039
	call	_brl_blitz_NullObjectError
_2039:
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
	je	_226
	mov	eax,ebp
	push	eax
	push	_2059
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2042
	call	_brl_blitz_NullObjectError
_2042:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2045
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2046
	jmp	_2044
_2045:
	mov	eax,ebp
	push	eax
	push	_2052
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2051
	call	_brl_blitz_NullObjectError
_2051:
	push	_100
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
	push	_77
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
	jmp	_2044
_2046:
	mov	eax,ebp
	push	eax
	push	_2058
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2055
	call	_brl_blitz_NullObjectError
_2055:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2057
	call	_brl_blitz_NullObjectError
_2057:
	push	_116
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
	jmp	_2044
_2044:
	call	dword [_bbOnDebugLeaveScope]
_226:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_228
_227:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1862:
	mov	eax,ebp
	push	eax
	push	_2093
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2064
	call	_brl_blitz_NullObjectError
_2064:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2067
	call	_brl_blitz_NullObjectError
_2067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_230
_232:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2072
	call	_brl_blitz_NullObjectError
_2072:
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
	je	_230
	mov	eax,ebp
	push	eax
	push	_2092
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2075
	call	_brl_blitz_NullObjectError
_2075:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2078
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2079
	jmp	_2077
_2078:
	mov	eax,ebp
	push	eax
	push	_2085
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2080
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2082
	call	_brl_blitz_NullObjectError
_2082:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2084
	call	_brl_blitz_NullObjectError
_2084:
	push	_233
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
	push	_77
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
	jmp	_2077
_2079:
	mov	eax,ebp
	push	eax
	push	_2091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2088
	call	_brl_blitz_NullObjectError
_2088:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2090
	call	_brl_blitz_NullObjectError
_2090:
	push	_116
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
	jmp	_2077
_2077:
	call	dword [_bbOnDebugLeaveScope]
_230:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2070
	call	_brl_blitz_NullObjectError
_2070:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_232
_231:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1863:
	mov	eax,ebp
	push	eax
	push	_2126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2097
	call	_brl_blitz_NullObjectError
_2097:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2100
	call	_brl_blitz_NullObjectError
_2100:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_235
_237:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2105
	call	_brl_blitz_NullObjectError
_2105:
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
	je	_235
	mov	eax,ebp
	push	eax
	push	_2125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2108
	call	_brl_blitz_NullObjectError
_2108:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2111
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2112
	jmp	_2110
_2111:
	mov	eax,ebp
	push	eax
	push	_2118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2115
	call	_brl_blitz_NullObjectError
_2115:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2117
	call	_brl_blitz_NullObjectError
_2117:
	push	_238
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
	push	_77
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
	jmp	_2110
_2112:
	mov	eax,ebp
	push	eax
	push	_2124
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2121
	call	_brl_blitz_NullObjectError
_2121:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2123
	call	_brl_blitz_NullObjectError
_2123:
	push	_116
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
	jmp	_2110
_2110:
	call	dword [_bbOnDebugLeaveScope]
_235:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2103
	call	_brl_blitz_NullObjectError
_2103:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_237
_236:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1864:
	mov	eax,ebp
	push	eax
	push	_2159
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2130
	call	_brl_blitz_NullObjectError
_2130:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2133
	call	_brl_blitz_NullObjectError
_2133:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-260],eax
	jmp	_240
_242:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2138
	call	_brl_blitz_NullObjectError
_2138:
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
	je	_240
	mov	eax,ebp
	push	eax
	push	_2158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2141
	call	_brl_blitz_NullObjectError
_2141:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2144
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2145
	jmp	_2143
_2144:
	mov	eax,ebp
	push	eax
	push	_2151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2148
	call	_brl_blitz_NullObjectError
_2148:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2150
	call	_brl_blitz_NullObjectError
_2150:
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
	push	_77
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
	jmp	_2143
_2145:
	mov	eax,ebp
	push	eax
	push	_2157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2154
	call	_brl_blitz_NullObjectError
_2154:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	push	_116
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
	jmp	_2143
_2143:
	call	dword [_bbOnDebugLeaveScope]
_240:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2136
	call	_brl_blitz_NullObjectError
_2136:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_242
_241:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1865:
	mov	eax,ebp
	push	eax
	push	_2192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2163
	call	_brl_blitz_NullObjectError
_2163:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2166
	call	_brl_blitz_NullObjectError
_2166:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-256],eax
	jmp	_244
_246:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2171
	call	_brl_blitz_NullObjectError
_2171:
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
	je	_244
	mov	eax,ebp
	push	eax
	push	_2191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2174
	call	_brl_blitz_NullObjectError
_2174:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2177
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2178
	jmp	_2176
_2177:
	mov	eax,ebp
	push	eax
	push	_2184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2181
	call	_brl_blitz_NullObjectError
_2181:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2183
	call	_brl_blitz_NullObjectError
_2183:
	push	_247
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
	push	_77
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
	jmp	_2176
_2178:
	mov	eax,ebp
	push	eax
	push	_2190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2189
	call	_brl_blitz_NullObjectError
_2189:
	push	_116
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
	jmp	_2176
_2176:
	call	dword [_bbOnDebugLeaveScope]
_244:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2169
	call	_brl_blitz_NullObjectError
_2169:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_246
_245:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1866:
	mov	eax,ebp
	push	eax
	push	_2225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2196
	call	_brl_blitz_NullObjectError
_2196:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2199
	call	_brl_blitz_NullObjectError
_2199:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-252],eax
	jmp	_249
_251:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2204
	call	_brl_blitz_NullObjectError
_2204:
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
	je	_249
	mov	eax,ebp
	push	eax
	push	_2224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2207
	call	_brl_blitz_NullObjectError
_2207:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2210
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2211
	jmp	_2209
_2210:
	mov	eax,ebp
	push	eax
	push	_2217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2216
	call	_brl_blitz_NullObjectError
_2216:
	push	_252
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
	push	_77
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
	jmp	_2209
_2211:
	mov	eax,ebp
	push	eax
	push	_2223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2220
	call	_brl_blitz_NullObjectError
_2220:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2222
	call	_brl_blitz_NullObjectError
_2222:
	push	_116
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
	jmp	_2209
_2209:
	call	dword [_bbOnDebugLeaveScope]
_249:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2202
	call	_brl_blitz_NullObjectError
_2202:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_251
_250:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1867:
	mov	eax,ebp
	push	eax
	push	_2258
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2229
	call	_brl_blitz_NullObjectError
_2229:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2232
	call	_brl_blitz_NullObjectError
_2232:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-248],eax
	jmp	_254
_256:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2237
	call	_brl_blitz_NullObjectError
_2237:
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
	je	_254
	mov	eax,ebp
	push	eax
	push	_2257
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2240
	call	_brl_blitz_NullObjectError
_2240:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2243
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2244
	jmp	_2242
_2243:
	mov	eax,ebp
	push	eax
	push	_2250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2247
	call	_brl_blitz_NullObjectError
_2247:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2249
	call	_brl_blitz_NullObjectError
_2249:
	push	_257
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
	push	_77
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
	jmp	_2242
_2244:
	mov	eax,ebp
	push	eax
	push	_2256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2253
	call	_brl_blitz_NullObjectError
_2253:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2255
	call	_brl_blitz_NullObjectError
_2255:
	push	_116
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
	jmp	_2242
_2242:
	call	dword [_bbOnDebugLeaveScope]
_254:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2235
	call	_brl_blitz_NullObjectError
_2235:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_256
_255:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1868:
	mov	eax,ebp
	push	eax
	push	_2291
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2262
	call	_brl_blitz_NullObjectError
_2262:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2265
	call	_brl_blitz_NullObjectError
_2265:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-244],eax
	jmp	_259
_261:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2270
	call	_brl_blitz_NullObjectError
_2270:
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
	je	_259
	mov	eax,ebp
	push	eax
	push	_2290
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2273
	call	_brl_blitz_NullObjectError
_2273:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2276
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2277
	jmp	_2275
_2276:
	mov	eax,ebp
	push	eax
	push	_2283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2282
	call	_brl_blitz_NullObjectError
_2282:
	push	_262
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
	push	_77
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
	jmp	_2275
_2277:
	mov	eax,ebp
	push	eax
	push	_2289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2286
	call	_brl_blitz_NullObjectError
_2286:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2288
	call	_brl_blitz_NullObjectError
_2288:
	push	_116
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
	jmp	_2275
_2275:
	call	dword [_bbOnDebugLeaveScope]
_259:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2268
	call	_brl_blitz_NullObjectError
_2268:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_261
_260:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1869:
	mov	eax,ebp
	push	eax
	push	_2324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2295
	call	_brl_blitz_NullObjectError
_2295:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2298
	call	_brl_blitz_NullObjectError
_2298:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_264
_266:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2303
	call	_brl_blitz_NullObjectError
_2303:
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
	je	_264
	mov	eax,ebp
	push	eax
	push	_2323
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2306
	call	_brl_blitz_NullObjectError
_2306:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2309
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2310
	jmp	_2308
_2309:
	mov	eax,ebp
	push	eax
	push	_2316
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2315
	call	_brl_blitz_NullObjectError
_2315:
	push	_267
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
	push	_77
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
	jmp	_2308
_2310:
	mov	eax,ebp
	push	eax
	push	_2322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2319
	call	_brl_blitz_NullObjectError
_2319:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2321
	call	_brl_blitz_NullObjectError
_2321:
	push	_116
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
	jmp	_2308
_2308:
	call	dword [_bbOnDebugLeaveScope]
_264:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2301
	call	_brl_blitz_NullObjectError
_2301:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_266
_265:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1870:
	mov	eax,ebp
	push	eax
	push	_2328
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2327
	call	_brl_blitz_NullObjectError
_2327:
	push	_268
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
	jmp	_1856
_1871:
	mov	eax,ebp
	push	eax
	push	_2332
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2331
	call	_brl_blitz_NullObjectError
_2331:
	push	_4
	push	_1739
	push	_268
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_1739
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
	jmp	_1856
_1872:
	mov	eax,ebp
	push	eax
	push	_2336
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2335
	call	_brl_blitz_NullObjectError
_2335:
	push	_268
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
	jmp	_1856
_1873:
	mov	eax,ebp
	push	eax
	push	_2340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2339
	call	_brl_blitz_NullObjectError
_2339:
	push	_68
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_68
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1874:
	mov	eax,ebp
	push	eax
	push	_2480
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2343
	call	_brl_blitz_NullObjectError
_2343:
	push	_272
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2347
	call	_brl_blitz_NullObjectError
_2347:
	push	_273
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	dword [ebp-84]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2350
	mov	eax,ebp
	push	eax
	push	_2396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2354
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2355
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2356
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2357
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2358
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2359
	jmp	_2353
_2354:
	mov	eax,ebp
	push	eax
	push	_2365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2362
	call	_brl_blitz_NullObjectError
_2362:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2364
	call	_brl_blitz_NullObjectError
_2364:
	push	_116
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
	push	_274
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2355:
	mov	eax,ebp
	push	eax
	push	_2371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2368
	call	_brl_blitz_NullObjectError
_2368:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2370
	call	_brl_blitz_NullObjectError
_2370:
	push	_116
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
	push	_275
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2356:
	mov	eax,ebp
	push	eax
	push	_2377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2374
	call	_brl_blitz_NullObjectError
_2374:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2376
	call	_brl_blitz_NullObjectError
_2376:
	push	_116
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
	push	_276
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2357:
	mov	eax,ebp
	push	eax
	push	_2383
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2380
	call	_brl_blitz_NullObjectError
_2380:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2382
	call	_brl_blitz_NullObjectError
_2382:
	push	_116
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
	push	_277
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2358:
	mov	eax,ebp
	push	eax
	push	_2389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2386
	call	_brl_blitz_NullObjectError
_2386:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2388
	call	_brl_blitz_NullObjectError
_2388:
	push	_116
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
	push	_278
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2359:
	mov	eax,ebp
	push	eax
	push	_2395
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2392
	call	_brl_blitz_NullObjectError
_2392:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2394
	call	_brl_blitz_NullObjectError
_2394:
	push	_116
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
	push	_279
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2353
_2353:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2397
_2350:
	mov	eax,ebp
	push	eax
	push	_2479
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_27
	push	dword [ebp-80]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2399
	mov	eax,ebp
	push	eax
	push	_2445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2403
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2404
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2405
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2406
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2407
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2408
	jmp	_2402
_2403:
	mov	eax,ebp
	push	eax
	push	_2414
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2411
	call	_brl_blitz_NullObjectError
_2411:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2413
	call	_brl_blitz_NullObjectError
_2413:
	push	_116
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
	jmp	_2402
_2404:
	mov	eax,ebp
	push	eax
	push	_2420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2417
	call	_brl_blitz_NullObjectError
_2417:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2419
	call	_brl_blitz_NullObjectError
_2419:
	push	_116
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
	jmp	_2402
_2405:
	mov	eax,ebp
	push	eax
	push	_2426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2423
	call	_brl_blitz_NullObjectError
_2423:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2425
	call	_brl_blitz_NullObjectError
_2425:
	push	_116
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
	jmp	_2402
_2406:
	mov	eax,ebp
	push	eax
	push	_2432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2429
	call	_brl_blitz_NullObjectError
_2429:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2431
	call	_brl_blitz_NullObjectError
_2431:
	push	_116
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
	jmp	_2402
_2407:
	mov	eax,ebp
	push	eax
	push	_2438
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2435
	call	_brl_blitz_NullObjectError
_2435:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2437
	call	_brl_blitz_NullObjectError
_2437:
	push	_116
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
	jmp	_2402
_2408:
	mov	eax,ebp
	push	eax
	push	_2444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2441
	call	_brl_blitz_NullObjectError
_2441:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2443
	call	_brl_blitz_NullObjectError
_2443:
	push	_116
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
	jmp	_2402
_2402:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2446
_2399:
	mov	eax,ebp
	push	eax
	push	_2478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2449
	call	_brl_blitz_NullObjectError
_2449:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2451
	call	_brl_blitz_NullObjectError
_2451:
	push	_273
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
	jne	_2452
	mov	eax,ebp
	push	eax
	push	_2462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-200],eax
	cmp	dword [ebp-200],_bbNullObject
	jne	_2455
	call	_brl_blitz_NullObjectError
_2455:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2457
	call	_brl_blitz_NullObjectError
_2457:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2459
	call	_brl_blitz_NullObjectError
_2459:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	push	_116
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
	push	_286
	push	0
	push	_273
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
	push	_77
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
	jmp	_2463
_2452:
	mov	eax,ebp
	push	eax
	push	_2477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-216],eax
	cmp	dword [ebp-216],_bbNullObject
	jne	_2466
	call	_brl_blitz_NullObjectError
_2466:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-208],eax
	cmp	dword [ebp-208],_bbNullObject
	jne	_2468
	call	_brl_blitz_NullObjectError
_2468:
	mov	eax,dword [ebp-16]
	mov	dword [ebp-204],eax
	cmp	dword [ebp-204],_bbNullObject
	jne	_2470
	call	_brl_blitz_NullObjectError
_2470:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2472
	call	_brl_blitz_NullObjectError
_2472:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2474
	call	_brl_blitz_NullObjectError
_2474:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2476
	call	_brl_blitz_NullObjectError
_2476:
	push	_116
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
	push	_116
	push	0
	push	_272
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-204]
	mov	eax,dword [ebp-204]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	_126
	push	_4
	push	_100
	push	0
	push	_273
	push	dword [ebp-208]
	mov	eax,dword [ebp-208]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-216]
	mov	eax,dword [ebp-216]
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_287
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
_2463:
	call	dword [_bbOnDebugLeaveScope]
_2446:
	call	dword [_bbOnDebugLeaveScope]
_2397:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1875:
	mov	eax,ebp
	push	eax
	push	_2531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2485
	call	_brl_blitz_NullObjectError
_2485:
	push	_60
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2488
	call	_brl_blitz_NullObjectError
_2488:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-88],_bbNullObject
	je	_2493
	mov	eax,ebp
	push	eax
	push	_2528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	edi,dword [ebp-88]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2498
	call	_brl_blitz_NullObjectError
_2498:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_289
_291:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2503
	call	_brl_blitz_NullObjectError
_2503:
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
	je	_289
	mov	eax,ebp
	push	eax
	push	_2527
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2506
	call	_brl_blitz_NullObjectError
_2506:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2507
	mov	eax,ebp
	push	eax
	push	_2514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2510
	call	_brl_blitz_NullObjectError
_2510:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2512
	call	_brl_blitz_NullObjectError
_2512:
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
	push	_2513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2507:
	push	_2515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
	push	_292
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2518
	movzx	eax,byte [ebp-4]
_2518:
	cmp	eax,0
	je	_2520
	mov	eax,ebp
	push	eax
	push	_2526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2524
	call	_brl_blitz_NullObjectError
_2524:
	push	_292
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_170
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2520:
	call	dword [_bbOnDebugLeaveScope]
_289:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2501
	call	_brl_blitz_NullObjectError
_2501:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_291
_290:
	call	dword [_bbOnDebugLeaveScope]
_2493:
	push	_2529
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
	push	_2530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1876:
	mov	eax,ebp
	push	eax
	push	_2569
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2536
	call	_brl_blitz_NullObjectError
_2536:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2539
	call	_brl_blitz_NullObjectError
_2539:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_294
_296:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2544
	call	_brl_blitz_NullObjectError
_2544:
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
	je	_294
	mov	eax,ebp
	push	eax
	push	_2563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_2547
	call	_brl_blitz_NullObjectError
_2547:
	push	_49
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2548
	mov	eax,ebp
	push	eax
	push	_2552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2551
	call	_brl_blitz_NullObjectError
_2551:
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
	jmp	_2553
_2548:
	mov	eax,ebp
	push	eax
	push	_2562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
	push	_51
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2557
	mov	eax,ebp
	push	eax
	push	_2561
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2560
	call	_brl_blitz_NullObjectError
_2560:
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
_2557:
	call	dword [_bbOnDebugLeaveScope]
_2553:
	call	dword [_bbOnDebugLeaveScope]
_294:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2542
	call	_brl_blitz_NullObjectError
_2542:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_296
_295:
	push	_2564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2566
	call	_brl_blitz_NullObjectError
_2566:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2568
	call	_brl_blitz_NullObjectError
_2568:
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
	jmp	_1856
_1877:
	mov	eax,ebp
	push	eax
	push	_2609
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_298
	push	_2571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2574
	call	_brl_blitz_NullObjectError
_2574:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2577
	call	_brl_blitz_NullObjectError
_2577:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_299
_301:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2582
	call	_brl_blitz_NullObjectError
_2582:
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
	je	_299
	mov	eax,ebp
	push	eax
	push	_2598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	push	_302
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2586
	mov	eax,ebp
	push	eax
	push	_2597
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2589
	call	_brl_blitz_NullObjectError
_2589:
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_2591
	call	_brl_blitz_NullObjectError
_2591:
	push	_70
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
	push	_2592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	add	dword [ebx+16],1
	push	_2596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_300
_2586:
	call	dword [_bbOnDebugLeaveScope]
_299:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2580
	call	_brl_blitz_NullObjectError
_2580:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_301
_300:
	push	_2599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2601
	call	_brl_blitz_NullObjectError
_2601:
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
	push	_2602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2604
	call	_brl_blitz_NullObjectError
_2604:
	sub	dword [ebx+16],1
	push	_2606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2608
	call	_brl_blitz_NullObjectError
_2608:
	push	_103
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
	jmp	_1856
_1878:
	mov	eax,ebp
	push	eax
	push	_2624
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2610
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2612
	call	_brl_blitz_NullObjectError
_2612:
	sub	dword [ebx+16],1
	push	_2614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2616
	call	_brl_blitz_NullObjectError
_2616:
	push	_304
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_50
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2619
	call	_brl_blitz_NullObjectError
_2619:
	add	dword [ebx+16],1
	push	_2621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2623
	call	_brl_blitz_NullObjectError
_2623:
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
	jmp	_1856
_1879:
	mov	eax,ebp
	push	eax
	push	_2664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_306
	push	_2626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2629
	call	_brl_blitz_NullObjectError
_2629:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2632
	call	_brl_blitz_NullObjectError
_2632:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_307
_309:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2637
	call	_brl_blitz_NullObjectError
_2637:
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
	je	_307
	mov	eax,ebp
	push	eax
	push	_2653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2640
	call	_brl_blitz_NullObjectError
_2640:
	push	_302
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2641
	mov	eax,ebp
	push	eax
	push	_2652
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2644
	call	_brl_blitz_NullObjectError
_2644:
	mov	esi,dword [ebp-104]
	cmp	esi,_bbNullObject
	jne	_2646
	call	_brl_blitz_NullObjectError
_2646:
	push	_70
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
	push	_2647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2649
	call	_brl_blitz_NullObjectError
_2649:
	add	dword [ebx+16],1
	push	_2651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_2641:
	call	dword [_bbOnDebugLeaveScope]
_307:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2635
	call	_brl_blitz_NullObjectError
_2635:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_309
_308:
	push	_2654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2656
	call	_brl_blitz_NullObjectError
_2656:
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
	push	_2657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2659
	call	_brl_blitz_NullObjectError
_2659:
	sub	dword [ebx+16],1
	push	_2661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2663
	call	_brl_blitz_NullObjectError
_2663:
	push	_103
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
	jmp	_1856
_1880:
	mov	eax,ebp
	push	eax
	push	_2704
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_311
	push	_2666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2668
	call	_brl_blitz_NullObjectError
_2668:
	add	dword [ebx+16],1
	push	_2670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2672
	call	_brl_blitz_NullObjectError
_2672:
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
	push	_2673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2675
	call	_brl_blitz_NullObjectError
_2675:
	sub	dword [ebx+16],1
	push	_2677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2679
	call	_brl_blitz_NullObjectError
_2679:
	push	_312
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
	push	_2680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2683
	call	_brl_blitz_NullObjectError
_2683:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2686
	call	_brl_blitz_NullObjectError
_2686:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_313
_315:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2691
	call	_brl_blitz_NullObjectError
_2691:
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
	je	_313
	mov	eax,ebp
	push	eax
	push	_2703
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2694
	call	_brl_blitz_NullObjectError
_2694:
	push	_302
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2695
	mov	eax,ebp
	push	eax
	push	_2702
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2698
	call	_brl_blitz_NullObjectError
_2698:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_2700
	call	_brl_blitz_NullObjectError
_2700:
	push	_316
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
	push	_2701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_314
_2695:
	call	dword [_bbOnDebugLeaveScope]
_313:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2689
	call	_brl_blitz_NullObjectError
_2689:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1881:
	mov	eax,ebp
	push	eax
	push	_2740
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbEmptyString
	push	_2707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2710
	call	_brl_blitz_NullObjectError
_2710:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2713
	call	_brl_blitz_NullObjectError
_2713:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-292],eax
	jmp	_318
_320:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_2718
	call	_brl_blitz_NullObjectError
_2718:
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
	je	_318
	mov	eax,ebp
	push	eax
	push	_2739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2721
	call	_brl_blitz_NullObjectError
_2721:
	push	_36
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2722
	mov	eax,ebp
	push	eax
	push	_2728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2725
	call	_brl_blitz_NullObjectError
_2725:
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2727
	call	_brl_blitz_NullObjectError
_2727:
	push	_321
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
_2722:
	push	_2729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2731
	call	_brl_blitz_NullObjectError
_2731:
	push	_268
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2732
	mov	eax,ebp
	push	eax
	push	_2738
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2735
	call	_brl_blitz_NullObjectError
_2735:
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2737
	call	_brl_blitz_NullObjectError
_2737:
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
_2732:
	call	dword [_bbOnDebugLeaveScope]
_318:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_2716
	call	_brl_blitz_NullObjectError
_2716:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_320
_319:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1882:
	mov	eax,ebp
	push	eax
	push	_2779
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_323
	push	_2742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2744
	call	_brl_blitz_NullObjectError
_2744:
	add	dword [ebx+16],1
	push	_2746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2749
	call	_brl_blitz_NullObjectError
_2749:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2752
	call	_brl_blitz_NullObjectError
_2752:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-228],eax
	jmp	_324
_326:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_2757
	call	_brl_blitz_NullObjectError
_2757:
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
	je	_324
	mov	eax,ebp
	push	eax
	push	_2768
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2760
	call	_brl_blitz_NullObjectError
_2760:
	push	_302
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2761
	mov	eax,ebp
	push	eax
	push	_2767
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2764
	call	_brl_blitz_NullObjectError
_2764:
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2766
	call	_brl_blitz_NullObjectError
_2766:
	push	_70
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
_2761:
	call	dword [_bbOnDebugLeaveScope]
_324:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_2755
	call	_brl_blitz_NullObjectError
_2755:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_326
_325:
	push	_2769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2771
	call	_brl_blitz_NullObjectError
_2771:
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
	push	_2772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2774
	call	_brl_blitz_NullObjectError
_2774:
	sub	dword [ebx+16],1
	push	_2776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2778
	call	_brl_blitz_NullObjectError
_2778:
	push	_103
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
	jmp	_1856
_1883:
	mov	eax,ebp
	push	eax
	push	_2822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2783
	call	_brl_blitz_NullObjectError
_2783:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2786
	call	_brl_blitz_NullObjectError
_2786:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_328
_330:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2791
	call	_brl_blitz_NullObjectError
_2791:
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
	je	_328
	mov	eax,ebp
	push	eax
	push	_2821
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2794
	call	_brl_blitz_NullObjectError
_2794:
	push	_302
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
	je	_2797
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2796
	call	_brl_blitz_NullObjectError
_2796:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2797:
	cmp	eax,0
	je	_2799
	mov	eax,ebp
	push	eax
	push	_2820
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2802
	call	_brl_blitz_NullObjectError
_2802:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_2804
	call	_brl_blitz_NullObjectError
_2804:
	push	_332
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
	push	_331
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
	push	_2805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2807
	call	_brl_blitz_NullObjectError
_2807:
	add	dword [ebx+16],1
	push	_2809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2811
	call	_brl_blitz_NullObjectError
_2811:
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
	push	_2812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2814
	call	_brl_blitz_NullObjectError
_2814:
	push	_333
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
	push	_2815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2817
	call	_brl_blitz_NullObjectError
_2817:
	sub	dword [ebx+16],1
	push	_2819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_329
_2799:
	call	dword [_bbOnDebugLeaveScope]
_328:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2789
	call	_brl_blitz_NullObjectError
_2789:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_330
_329:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1884:
	mov	eax,ebp
	push	eax
	push	_2835
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_335
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2826
	call	_brl_blitz_NullObjectError
_2826:
	add	dword [ebx+16],1
	push	_2828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2830
	call	_brl_blitz_NullObjectError
_2830:
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
	push	_2831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2833
	call	_brl_blitz_NullObjectError
_2833:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1885:
	mov	eax,ebp
	push	eax
	push	_2837
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_336
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1886:
	mov	eax,ebp
	push	eax
	push	_2839
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_337
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1887:
	mov	eax,ebp
	push	eax
	push	_2951
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_339
	push	_2841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_bbEmptyString
	push	_2843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbEmptyString
	push	_2845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbEmptyString
	push	_2847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2850
	call	_brl_blitz_NullObjectError
_2850:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-296],eax
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_2853
	call	_brl_blitz_NullObjectError
_2853:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-304],eax
	jmp	_340
_342:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_2858
	call	_brl_blitz_NullObjectError
_2858:
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
	je	_340
	mov	eax,ebp
	push	eax
	push	_2924
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_2861
	call	_brl_blitz_NullObjectError
_2861:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_343
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2864
	push	_348
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2865
	push	_273
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2866
	push	_349
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2867
	mov	eax,ebp
	push	eax
	push	_2869
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_341
_2864:
	mov	eax,ebp
	push	eax
	push	_2905
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_2873
	call	_brl_blitz_NullObjectError
_2873:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2876
	call	_brl_blitz_NullObjectError
_2876:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_344
_346:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2881
	call	_brl_blitz_NullObjectError
_2881:
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
	je	_344
	mov	eax,ebp
	push	eax
	push	_2904
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2884
	call	_brl_blitz_NullObjectError
_2884:
	push	_347
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2885
	mov	eax,ebp
	push	eax
	push	_2895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2888
	call	_brl_blitz_NullObjectError
_2888:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2890
	call	_brl_blitz_NullObjectError
_2890:
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
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2894
	call	_brl_blitz_NullObjectError
_2894:
	push	_339
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	push	_104
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
	jmp	_2896
_2885:
	mov	eax,ebp
	push	eax
	push	_2903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2899
	call	_brl_blitz_NullObjectError
_2899:
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_2901
	call	_brl_blitz_NullObjectError
_2901:
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
	push	_2902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2896:
	call	dword [_bbOnDebugLeaveScope]
_344:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2879
	call	_brl_blitz_NullObjectError
_2879:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_346
_345:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2863
_2865:
	mov	eax,ebp
	push	eax
	push	_2911
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2908
	call	_brl_blitz_NullObjectError
_2908:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2910
	call	_brl_blitz_NullObjectError
_2910:
	push	_201
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
	push	_321
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
	jmp	_2863
_2866:
	mov	eax,ebp
	push	eax
	push	_2917
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2914
	call	_brl_blitz_NullObjectError
_2914:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2916
	call	_brl_blitz_NullObjectError
_2916:
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
	jmp	_2863
_2867:
	mov	eax,ebp
	push	eax
	push	_2923
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2920
	call	_brl_blitz_NullObjectError
_2920:
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_2922
	call	_brl_blitz_NullObjectError
_2922:
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
	jmp	_2863
_2863:
	call	dword [_bbOnDebugLeaveScope]
_340:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_2856
	call	_brl_blitz_NullObjectError
_2856:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_342
_341:
	push	_2925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbEmptyString
	push	_2927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2928
	push	dword [ebp-132]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_2929
	mov	eax,ebp
	push	eax
	push	_2931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_247
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2932
_2929:
	mov	eax,ebp
	push	eax
	push	_2934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_5
	call	dword [_bbOnDebugLeaveScope]
_2932:
	push	_2935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-132]
	push	_350
	push	dword [ebp-128]
	push	_201
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
	push	_2936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2938
	call	_brl_blitz_NullObjectError
_2938:
	add	dword [ebx+16],1
	push	_2940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2942
	call	_brl_blitz_NullObjectError
_2942:
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
	push	_2943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2945
	call	_brl_blitz_NullObjectError
_2945:
	sub	dword [ebx+16],1
	push	_2947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2949
	call	_brl_blitz_NullObjectError
_2949:
	push	_351
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
	push	_2950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	_352
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1888:
	mov	eax,ebp
	push	eax
	push	_2961
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2958
	call	_brl_blitz_NullObjectError
_2958:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2960
	call	_brl_blitz_NullObjectError
_2960:
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
	push	_354
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1889:
	mov	eax,ebp
	push	eax
	push	_2963
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_356
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1890:
	mov	eax,ebp
	push	eax
	push	_3003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_2966
	call	_brl_blitz_NullObjectError
_2966:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2968
	call	_brl_blitz_NullObjectError
_2968:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2970
	call	_brl_blitz_NullObjectError
_2970:
	push	_57
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_55
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
	push	_2972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2974
	call	_brl_blitz_NullObjectError
_2974:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2976
	call	_brl_blitz_NullObjectError
_2976:
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
	jne	_2978
	call	_brl_blitz_NullObjectError
_2978:
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
	push	_2979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2982
	call	_brl_blitz_NullObjectError
_2982:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2985
	call	_brl_blitz_NullObjectError
_2985:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-224],eax
	jmp	_358
_360:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2990
	call	_brl_blitz_NullObjectError
_2990:
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
	je	_358
	mov	eax,ebp
	push	eax
	push	_3001
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2993
	call	_brl_blitz_NullObjectError
_2993:
	push	_57
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2994
	mov	eax,ebp
	push	eax
	push	_3000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2997
	call	_brl_blitz_NullObjectError
_2997:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2999
	call	_brl_blitz_NullObjectError
_2999:
	push	_185
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
	push	_141
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
_2994:
	call	dword [_bbOnDebugLeaveScope]
_358:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2988
	call	_brl_blitz_NullObjectError
_2988:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_360
_359:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1891:
	mov	eax,ebp
	push	eax
	push	_3009
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3006
	call	_brl_blitz_NullObjectError
_3006:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3008
	call	_brl_blitz_NullObjectError
_3008:
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
	jmp	_1856
_1892:
	mov	eax,ebp
	push	eax
	push	_3098
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3013
	call	_brl_blitz_NullObjectError
_3013:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-300],eax
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_3016
	call	_brl_blitz_NullObjectError
_3016:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-308],eax
	jmp	_362
_364:
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_3021
	call	_brl_blitz_NullObjectError
_3021:
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
	je	_362
	mov	eax,ebp
	push	eax
	push	_3097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3024
	call	_brl_blitz_NullObjectError
_3024:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_208
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3027
	push	_209
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3028
	jmp	_3026
_3027:
	mov	eax,ebp
	push	eax
	push	_3034
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3031
	call	_brl_blitz_NullObjectError
_3031:
	mov	esi,dword [ebp-164]
	cmp	esi,_bbNullObject
	jne	_3033
	call	_brl_blitz_NullObjectError
_3033:
	push	_365
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
	jmp	_3026
_3028:
	mov	eax,ebp
	push	eax
	push	_3093
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbEmptyString
	mov	byte [ebp-8],0
	push	_3039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3042
	call	_brl_blitz_NullObjectError
_3042:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3045
	call	_brl_blitz_NullObjectError
_3045:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-212],eax
	jmp	_366
_368:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3050
	call	_brl_blitz_NullObjectError
_3050:
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
	je	_366
	mov	eax,ebp
	push	eax
	push	_3059
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-176]
	cmp	esi,_bbNullObject
	jne	_3053
	call	_brl_blitz_NullObjectError
_3053:
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3055
	call	_brl_blitz_NullObjectError
_3055:
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
	jne	_3056
	mov	eax,ebp
	push	eax
	push	_3058
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-176]
	mov	dword [ebp-168],eax
	call	dword [_bbOnDebugLeaveScope]
_3056:
	call	dword [_bbOnDebugLeaveScope]
_366:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3048
	call	_brl_blitz_NullObjectError
_3048:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_368
_367:
	push	_3060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_369
_371:
	mov	eax,ebp
	push	eax
	push	_3087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],_bbEmptyString
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3068
	call	_brl_blitz_NullObjectError
_3068:
	mov	esi,dword [ebx+28]
	cmp	esi,_bbNullObject
	jne	_3071
	call	_brl_blitz_NullObjectError
_3071:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_373
_375:
	cmp	ebx,_bbNullObject
	jne	_3076
	call	_brl_blitz_NullObjectError
_3076:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-180],eax
	cmp	dword [ebp-180],_bbNullObject
	je	_373
	mov	eax,ebp
	push	eax
	push	_3081
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-180]
	cmp	dword [eax+8],0
	je	_3078
	mov	eax,ebp
	push	eax
	push	_3080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	call	dword [_bbOnDebugLeaveScope]
_3078:
	call	dword [_bbOnDebugLeaveScope]
_373:
	cmp	ebx,_bbNullObject
	jne	_3074
	call	_brl_blitz_NullObjectError
_3074:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_375
_374:
	push	_3083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	jne	_3084
	mov	eax,ebp
	push	eax
	push	_3086
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_376
	push	dword [ebp-172]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_3084:
	call	dword [_bbOnDebugLeaveScope]
_369:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3062
	call	_brl_blitz_NullObjectError
_3062:
	push	_372
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3063
	movzx	eax,byte [ebp-8]
_3063:
	cmp	eax,0
	jne	_371
_370:
	push	_3088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3090
	call	_brl_blitz_NullObjectError
_3090:
	mov	esi,dword [ebp-164]
	cmp	esi,_bbNullObject
	jne	_3092
	call	_brl_blitz_NullObjectError
_3092:
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
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3026
_3026:
	call	dword [_bbOnDebugLeaveScope]
_362:
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_3019
	call	_brl_blitz_NullObjectError
_3019:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_364
_363:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1893:
	mov	eax,ebp
	push	eax
	push	_3183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_3101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3103
	call	_brl_blitz_NullObjectError
_3103:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_3104
	mov	eax,ebp
	push	eax
	push	_3125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3108
	call	_brl_blitz_NullObjectError
_3108:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3111
	call	_brl_blitz_NullObjectError
_3111:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_378
_380:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3116
	call	_brl_blitz_NullObjectError
_3116:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-188],eax
	cmp	dword [ebp-188],_bbNullObject
	je	_378
	mov	eax,ebp
	push	eax
	push	_3123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_3119
	call	_brl_blitz_NullObjectError
_3119:
	push	_381
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
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
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	add	eax,1
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-12],al
	call	dword [_bbOnDebugLeaveScope]
_3120:
	call	dword [_bbOnDebugLeaveScope]
_378:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3114
	call	_brl_blitz_NullObjectError
_3114:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_380
_379:
	call	dword [_bbOnDebugLeaveScope]
_3104:
	push	_3126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3128
	call	_brl_blitz_NullObjectError
_3128:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3130
	call	_brl_blitz_NullObjectError
_3130:
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	push	_55
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-184],eax
	push	_3132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_3133
	mov	eax,ebp
	push	eax
	push	_3171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],0
	push	_3136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	push	_4
	push	_100
	push	dword [ebp-184]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_383
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_382
	push	dword [ebp-184]
	push	_77
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
	push	_3137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3140
	call	_brl_blitz_NullObjectError
_3140:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3143
	call	_brl_blitz_NullObjectError
_3143:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-220],eax
	jmp	_384
_386:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_3148
	call	_brl_blitz_NullObjectError
_3148:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-196],eax
	cmp	dword [ebp-196],_bbNullObject
	je	_384
	mov	eax,ebp
	push	eax
	push	_3160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-196]
	cmp	ebx,_bbNullObject
	jne	_3151
	call	_brl_blitz_NullObjectError
_3151:
	push	_381
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3152
	mov	eax,ebp
	push	eax
	push	_3159
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-192],1
	push	_3154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3156
	call	_brl_blitz_NullObjectError
_3156:
	mov	ebx,dword [ebp-196]
	cmp	ebx,_bbNullObject
	jne	_3158
	call	_brl_blitz_NullObjectError
_3158:
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
	push	_170
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_3152:
	call	dword [_bbOnDebugLeaveScope]
_384:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_3146
	call	_brl_blitz_NullObjectError
_3146:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_386
_385:
	push	_3161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3164
	call	_brl_blitz_NullObjectError
_3164:
	mov	eax,dword [ebp-192]
	cmp	dword [ebx+24],eax
	jge	_3165
	mov	eax,ebp
	push	eax
	push	_3170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3168
	call	_brl_blitz_NullObjectError
_3168:
	mov	eax,dword [ebp-192]
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_3165:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3172
_3133:
	mov	eax,ebp
	push	eax
	push	_3174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_388
	push	_4
	push	_100
	push	dword [ebp-184]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_387
	push	dword [ebp-184]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_77
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
_3172:
	push	_3175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3177
	call	_brl_blitz_NullObjectError
_3177:
	push	_4
	push	_100
	push	dword [ebp-184]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,0
	je	_3178
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3178:
	cmp	eax,0
	je	_3180
	mov	eax,ebp
	push	eax
	push	_3182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	push	dword [ebp-24]
	push	_77
	push	_4
	push	_100
	push	dword [ebp-184]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_389
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
_3180:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1856
_1856:
	push	_3186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
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
	push	_3250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3195
	call	_brl_blitz_NullObjectError
_3195:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3198
	call	_brl_blitz_NullObjectError
_3198:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_390
_392:
	cmp	ebx,_bbNullObject
	jne	_3203
	call	_brl_blitz_NullObjectError
_3203:
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
	je	_390
	mov	eax,ebp
	push	eax
	push	_3224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3206
	call	_brl_blitz_NullObjectError
_3206:
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
	je	_3209
	push	_55
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3210
	push	_57
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3211
	jmp	_3208
_3209:
	mov	eax,ebp
	push	eax
	push	_3215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3214
	call	_brl_blitz_NullObjectError
_3214:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3208
_3210:
	mov	eax,ebp
	push	eax
	push	_3219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3218
	call	_brl_blitz_NullObjectError
_3218:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3208
_3211:
	mov	eax,ebp
	push	eax
	push	_3223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3222
	call	_brl_blitz_NullObjectError
_3222:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3208
_3208:
	call	dword [_bbOnDebugLeaveScope]
_390:
	cmp	ebx,_bbNullObject
	jne	_3201
	call	_brl_blitz_NullObjectError
_3201:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_392
_391:
	push	_3227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_3229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3231
	call	_brl_blitz_NullObjectError
_3231:
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-28],eax
	push	_3233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3236
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3236
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3236
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3236
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3237
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3237
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3238
	mov	eax,ebp
	push	eax
	push	_3240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_395
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3235
_3236:
	mov	eax,ebp
	push	eax
	push	_3242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_393
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3235
_3237:
	mov	eax,ebp
	push	eax
	push	_3244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_394
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3235
_3238:
	mov	eax,ebp
	push	eax
	push	_3248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_3247
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3235
_3235:
	push	_3249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_201
	push	dword [ebp-24]
	push	_68
	push	dword [ebp-12]
	push	_65
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
	push	_3300
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3261
	call	_brl_blitz_NullObjectError
_3261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_3264
	call	_brl_blitz_NullObjectError
_3264:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_396
_398:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3269
	call	_brl_blitz_NullObjectError
_3269:
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
	je	_396
	mov	eax,ebp
	push	eax
	push	_3298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3272
	call	_brl_blitz_NullObjectError
_3272:
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
	je	_3275
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3276
	push	_57
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3277
	jmp	_3274
_3275:
	mov	eax,ebp
	push	eax
	push	_3281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3280
	call	_brl_blitz_NullObjectError
_3280:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3274
_3276:
	mov	eax,ebp
	push	eax
	push	_3287
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3284
	call	_brl_blitz_NullObjectError
_3284:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3286
	call	_brl_blitz_NullObjectError
_3286:
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
	jmp	_3274
_3277:
	mov	eax,ebp
	push	eax
	push	_3297
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3290
	call	_brl_blitz_NullObjectError
_3290:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	push	_3291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],1
	mov	ebx,dword [ebp-20]
	jmp	_3293
_401:
	mov	eax,ebp
	push	eax
	push	_3296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_399:
	add	dword [ebp-28],1
_3293:
	cmp	dword [ebp-28],ebx
	jle	_401
_400:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3274
_3274:
	call	dword [_bbOnDebugLeaveScope]
_396:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3267
	call	_brl_blitz_NullObjectError
_3267:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_398
_397:
	push	_3299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_402
	push	dword [ebp-12]
	push	_65
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
	push	_3351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3302
	push	ebp
	push	_3304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_3302:
	push	_3305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	push	_3307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3310
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3311
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3312
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3313
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3314
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3315
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3316
	push	_114
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3317
	push	ebp
	push	_3327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3320
	call	_brl_blitz_NullObjectError
_3320:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_3321
	push	ebp
	push	_3323
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	push	dword [ebp-8]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_410
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3324
_3321:
	push	ebp
	push	_3326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	push	dword [ebp-8]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_3324:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3310:
	push	ebp
	push	_3329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_403
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3311:
	push	ebp
	push	_3331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_404
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3312:
	push	ebp
	push	_3333
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_405
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3313:
	push	ebp
	push	_3335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_406
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3314:
	push	ebp
	push	_3337
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_407
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3315:
	push	ebp
	push	_3339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_408
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3316:
	push	ebp
	push	_3341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_409
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3317:
	push	ebp
	push	_3343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_114
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3309
_3309:
	push	_3344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],1
	mov	ebx,dword [ebp-12]
	jmp	_3346
_413:
	push	ebp
	push	_3349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_411:
	add	dword [ebp-20],1
_3346:
	cmp	dword [ebp-20],ebx
	jle	_413
_412:
	push	_3350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_507
_507:
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
	push	_3362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_414
	push	_4
	push	_100
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
	push	_3354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_114
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3357
	push	ebp
	push	_3359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_511
_3357:
	push	ebp
	push	_3361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_511
_511:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_528:
	dd	0
_436:
	db	"TCGenerator",0
	align	4
_527:
	dd	1
	dd	_436
	dd	0
_416:
	db	"TClass",0
_417:
	db	"Name",0
_418:
	db	"$",0
_419:
	db	"Superclass",0
_420:
	db	":TClass",0
_421:
	db	"VTable",0
_422:
	db	":brl.linkedlist.TList",0
_423:
	db	"UniqueDatatype",0
_424:
	db	"Count",0
_425:
	db	"i",0
_426:
	db	"Attributes",0
_427:
	db	"New",0
_428:
	db	"()i",0
_429:
	db	"Delete",0
	align	4
_415:
	dd	2
	dd	_416
	dd	3
	dd	_417
	dd	_418
	dd	8
	dd	3
	dd	_419
	dd	_420
	dd	12
	dd	3
	dd	_421
	dd	_422
	dd	16
	dd	3
	dd	_423
	dd	_422
	dd	20
	dd	3
	dd	_424
	dd	_425
	dd	24
	dd	3
	dd	_426
	dd	_422
	dd	28
	dd	6
	dd	_427
	dd	_428
	dd	16
	dd	6
	dd	_429
	dd	_428
	dd	20
	dd	0
	align	4
_bb_TClass:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_415
	dd	32
	dd	__bb_TClass_New
	dd	__bb_TClass_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_431:
	db	"TVirtualMethod",0
_432:
	db	"ID",0
_433:
	db	"Datatype",0
_434:
	db	"Dimension",0
	align	4
_430:
	dd	2
	dd	_431
	dd	3
	dd	_417
	dd	_418
	dd	8
	dd	3
	dd	_432
	dd	_425
	dd	12
	dd	3
	dd	_433
	dd	_418
	dd	16
	dd	3
	dd	_434
	dd	_425
	dd	20
	dd	6
	dd	_427
	dd	_428
	dd	16
	dd	6
	dd	_429
	dd	_428
	dd	20
	dd	0
	align	4
_bb_TVirtualMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_430
	dd	24
	dd	__bb_TVirtualMethod_New
	dd	__bb_TVirtualMethod_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_514:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCGenerator.bmx",0
	align	4
_513:
	dd	_514
	dd	21
	dd	2
	align	4
_525:
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
_437:
	db	"Classes",0
_438:
	db	"Output",0
_439:
	db	"ScopeCount",0
_440:
	db	"InStruct",0
_441:
	db	"b",0
_442:
	db	"MaxSizeArray",0
_443:
	db	"FuncDef",0
_444:
	db	"DebugMode",0
_445:
	db	"Types",0
_446:
	db	"TypeMainConstructor",0
_447:
	db	"Generate",0
_448:
	db	"($,$)i",0
_449:
	db	"GetTabs",0
_450:
	db	"()$",0
_451:
	db	"Block",0
_452:
	db	"(:bah.libxml.TxmlNode)$",0
_453:
	db	"GetNextMathString",0
_454:
	db	"VarDef",0
_455:
	db	"ArrayDef",0
_456:
	db	"GetRealDatatype",0
_457:
	db	"($,i)$",0
_458:
	db	"IsType",0
_459:
	db	"($)b",0
	align	4
_435:
	dd	2
	dd	_436
	dd	3
	dd	_437
	dd	_422
	dd	8
	dd	3
	dd	_438
	dd	_418
	dd	12
	dd	3
	dd	_439
	dd	_425
	dd	16
	dd	3
	dd	_440
	dd	_441
	dd	20
	dd	3
	dd	_442
	dd	_425
	dd	24
	dd	3
	dd	_443
	dd	_418
	dd	28
	dd	3
	dd	_444
	dd	_441
	dd	32
	dd	3
	dd	_445
	dd	_422
	dd	36
	dd	3
	dd	_446
	dd	_418
	dd	40
	dd	6
	dd	_427
	dd	_428
	dd	16
	dd	6
	dd	_429
	dd	_428
	dd	20
	dd	6
	dd	_447
	dd	_448
	dd	48
	dd	6
	dd	_449
	dd	_450
	dd	52
	dd	6
	dd	_451
	dd	_452
	dd	56
	dd	6
	dd	_453
	dd	_452
	dd	60
	dd	6
	dd	_454
	dd	_452
	dd	64
	dd	6
	dd	_455
	dd	_452
	dd	68
	dd	6
	dd	_456
	dd	_457
	dd	72
	dd	6
	dd	_458
	dd	_459
	dd	76
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_435
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
_537:
	db	"Self",0
	align	4
_536:
	dd	1
	dd	_427
	dd	2
	dd	_537
	dd	_420
	dd	-4
	dd	0
	align	4
_535:
	dd	3
	dd	0
	dd	0
_553:
	db	":TVirtualMethod",0
	align	4
_552:
	dd	1
	dd	_427
	dd	2
	dd	_537
	dd	_553
	dd	-4
	dd	0
	align	4
_551:
	dd	3
	dd	0
	dd	0
_566:
	db	":TCGenerator",0
	align	4
_565:
	dd	1
	dd	_427
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	0
	align	4
_564:
	dd	3
	dd	0
	dd	0
_1772:
	db	"InputPath",0
_1773:
	db	"OutputPath",0
_1774:
	db	"File",0
_1775:
	db	":bah.libxml.TxmlDoc",0
_1776:
	db	"Root",0
_681:
	db	":bah.libxml.TxmlNode",0
	align	4
_1771:
	dd	1
	dd	_447
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_1772
	dd	_418
	dd	-8
	dd	2
	dd	_1773
	dd	_418
	dd	-12
	dd	2
	dd	_1774
	dd	_1775
	dd	-16
	dd	2
	dd	_1776
	dd	_681
	dd	-20
	dd	0
	align	4
_578:
	dd	_514
	dd	32
	dd	3
	align	4
_580:
	dd	_514
	dd	34
	dd	3
	align	4
_584:
	dd	_514
	dd	35
	dd	3
_692:
	db	"Node",0
	align	4
_691:
	dd	3
	dd	0
	dd	2
	dd	_692
	dd	_681
	dd	-24
	dd	0
	align	4
_596:
	dd	_514
	dd	36
	dd	4
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
_690:
	db	"Class",0
	align	4
_689:
	dd	3
	dd	0
	dd	2
	dd	_417
	dd	_418
	dd	-28
	dd	2
	dd	_690
	dd	_420
	dd	-32
	dd	0
	align	4
_602:
	dd	_514
	dd	38
	dd	6
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_606:
	dd	_514
	dd	39
	dd	6
	align	4
_611:
	dd	_514
	dd	40
	dd	6
	align	4
_619:
	dd	_514
	dd	41
	dd	6
	align	4
_621:
	dd	_514
	dd	42
	dd	6
	align	4
_629:
	dd	_514
	dd	43
	dd	6
	align	4
_637:
	dd	_514
	dd	44
	dd	6
_683:
	db	"List",0
	align	4
_682:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_422
	dd	-36
	dd	0
	align	4
_641:
	dd	_514
	dd	45
	dd	7
	align	4
_645:
	dd	_514
	dd	46
	dd	7
_680:
	db	"Node2",0
	align	4
_679:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-40
	dd	0
	align	4
_655:
	dd	_514
	dd	47
	dd	8
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_666:
	dd	3
	dd	0
	dd	0
	align	4
_659:
	dd	_514
	dd	48
	dd	9
	align	4
_667:
	dd	_514
	dd	50
	dd	8
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_678:
	dd	3
	dd	0
	dd	0
	align	4
_671:
	dd	_514
	dd	51
	dd	9
	align	4
_684:
	dd	_514
	dd	55
	dd	6
	align	4
_693:
	dd	_514
	dd	58
	dd	3
	align	4
_1629:
	dd	3
	dd	0
	dd	2
	dd	_692
	dd	_681
	dd	-44
	dd	0
	align	4
_705:
	dd	_514
	dd	59
	dd	4
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_764:
	dd	3
	dd	0
	dd	0
	align	4
_714:
	dd	_514
	dd	61
	dd	6
	align	4
_763:
	dd	3
	dd	0
	dd	0
	align	4
_718:
	dd	_514
	dd	62
	dd	7
	align	4
_762:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-48
	dd	0
	align	4
_730:
	dd	_514
	dd	63
	dd	8
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_744:
	dd	3
	dd	0
	dd	0
	align	4
_734:
	dd	_514
	dd	64
	dd	9
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_746:
	dd	_514
	dd	65
	dd	8
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_760:
	dd	3
	dd	0
	dd	0
	align	4
_750:
	dd	_514
	dd	66
	dd	9
_936:
	db	"TypeDef",0
_937:
	db	"Text",0
_938:
	db	"UserFunc",0
_939:
	db	"DatatypesText",0
	align	4
_935:
	dd	3
	dd	0
	dd	2
	dd	_417
	dd	_418
	dd	-52
	dd	2
	dd	_433
	dd	_418
	dd	-56
	dd	2
	dd	_936
	dd	_418
	dd	-60
	dd	2
	dd	_937
	dd	_418
	dd	-64
	dd	2
	dd	_938
	dd	_425
	dd	-68
	dd	2
	dd	_939
	dd	_418
	dd	-72
	dd	0
	align	4
_765:
	dd	_514
	dd	71
	dd	6
	align	4
_769:
	dd	_514
	dd	72
	dd	6
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_772:
	dd	3
	dd	0
	dd	0
	align	4
_771:
	dd	_514
	dd	72
	dd	47
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,105,115,114,101,97,108,95
	align	4
_773:
	dd	_514
	dd	73
	dd	6
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_777:
	dd	_514
	dd	74
	dd	6
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	116,121,112,101,100,101,102,32
	align	4
_779:
	dd	_514
	dd	76
	dd	6
	align	4
_781:
	dd	_514
	dd	77
	dd	6
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_786:
	dd	_514
	dd	78
	dd	6
	align	4
_787:
	dd	_514
	dd	79
	dd	6
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_791:
	dd	_514
	dd	80
	dd	6
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,32
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_792:
	dd	_514
	dd	81
	dd	6
	align	4
_794:
	dd	_514
	dd	82
	dd	6
	align	4
_830:
	dd	3
	dd	0
	dd	0
	align	4
_798:
	dd	_514
	dd	83
	dd	7
	align	4
_829:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-76
	dd	0
	align	4
_810:
	dd	_514
	dd	84
	dd	8
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_828:
	dd	3
	dd	0
	dd	2
	dd	_433
	dd	_418
	dd	-80
	dd	0
	align	4
_814:
	dd	_514
	dd	86
	dd	9
	align	4
_822:
	dd	_514
	dd	87
	dd	9
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,44
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	32,95
	align	4
_825:
	dd	_514
	dd	88
	dd	9
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	44,32,95
	align	4
_831:
	dd	_514
	dd	92
	dd	6
	align	4
_832:
	dd	_514
	dd	93
	dd	6
	align	4
_896:
	dd	3
	dd	0
	dd	0
	align	4
_834:
	dd	_514
	dd	94
	dd	7
	align	4
_842:
	dd	_514
	dd	95
	dd	7
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,59,10
	align	4
_843:
	dd	_514
	dd	96
	dd	7
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	41,32,123,10
	align	4
_851:
	dd	_514
	dd	97
	dd	7
	align	4
_855:
	dd	_514
	dd	98
	dd	7
	align	4
_883:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-84
	dd	0
	align	4
_867:
	dd	_514
	dd	99
	dd	8
	align	4
_882:
	dd	3
	dd	0
	dd	0
	align	4
_871:
	dd	_514
	dd	100
	dd	9
	align	4
_881:
	dd	_514
	dd	101
	dd	9
	align	4
_884:
	dd	_514
	dd	104
	dd	7
	align	4
_888:
	dd	_514
	dd	105
	dd	7
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
_926:
	db	"RealName",0
	align	4
_925:
	dd	3
	dd	0
	dd	2
	dd	_926
	dd	_418
	dd	-88
	dd	0
	align	4
_898:
	dd	_514
	dd	107
	dd	7
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_902:
	dd	_514
	dd	108
	dd	7
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_921:
	dd	3
	dd	0
	dd	0
	align	4
_906:
	dd	_514
	dd	109
	dd	8
	align	4
_907:
	dd	_514
	dd	110
	dd	8
	align	4
_911:
	dd	_514
	dd	111
	dd	8
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_914:
	dd	_514
	dd	112
	dd	8
	align	4
_918:
	dd	_514
	dd	113
	dd	8
	align	4
_924:
	dd	3
	dd	0
	dd	0
	align	4
_923:
	dd	_514
	dd	115
	dd	8
	align	4
_927:
	dd	_514
	dd	119
	dd	6
_1569:
	db	"TmpList",0
	align	4
_1568:
	dd	3
	dd	0
	dd	2
	dd	_417
	dd	_418
	dd	-92
	dd	2
	dd	_690
	dd	_420
	dd	-96
	dd	2
	dd	_937
	dd	_418
	dd	-100
	dd	2
	dd	_1569
	dd	_422
	dd	-104
	dd	0
	align	4
_940:
	dd	_514
	dd	121
	dd	6
	align	4
_944:
	dd	_514
	dd	122
	dd	6
	align	4
_946:
	dd	_514
	dd	123
	dd	6
_966:
	db	"tmp",0
	align	4
_965:
	dd	3
	dd	0
	dd	2
	dd	_966
	dd	_420
	dd	-108
	dd	0
	align	4
_958:
	dd	_514
	dd	124
	dd	7
	align	4
_964:
	dd	3
	dd	0
	dd	0
	align	4
_962:
	dd	_514
	dd	125
	dd	8
	align	4
_963:
	dd	_514
	dd	126
	dd	8
	align	4
_967:
	dd	_514
	dd	129
	dd	6
	align	4
_969:
	dd	_514
	dd	130
	dd	6
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,123,10
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	116,121,112,101,100,101,102,32,115,116,114,117,99,116,32,95
	align	4
_970:
	dd	_514
	dd	131
	dd	6
	align	4
_974:
	dd	_514
	dd	132
	dd	6
	align	4
_978:
	dd	_514
	dd	133
	dd	6
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_989:
	dd	3
	dd	0
	dd	0
	align	4
_982:
	dd	_514
	dd	134
	dd	7
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	32,115,117,112,101,114,99,108,97,115,115,59,10
	align	4
_990:
	dd	_514
	dd	137
	dd	6
	align	4
_1076:
	dd	3
	dd	0
	dd	0
	align	4
_994:
	dd	_514
	dd	138
	dd	7
	align	4
_1075:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-112
	dd	0
	align	4
_1006:
	dd	_514
	dd	139
	dd	8
_1062:
	db	"Meth",0
	align	4
_1061:
	dd	3
	dd	0
	dd	2
	dd	_1062
	dd	_553
	dd	-116
	dd	0
	align	4
_1013:
	dd	_514
	dd	141
	dd	10
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	47,47,77,101,116,104,111,100,32,110,97,109,101,58
	align	4
_1018:
	dd	_514
	dd	142
	dd	10
	align	4
_1020:
	dd	_514
	dd	143
	dd	10
	align	4
_1030:
	dd	_514
	dd	144
	dd	10
	align	4
_1040:
	dd	_514
	dd	145
	dd	10
	align	4
_1046:
	dd	_514
	dd	146
	dd	10
	align	4
_1051:
	dd	_514
	dd	147
	dd	10
	align	4
_1057:
	dd	_514
	dd	148
	dd	10
	align	4
_1074:
	dd	3
	dd	0
	dd	0
	align	4
_1063:
	dd	_514
	dd	150
	dd	10
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_1077:
	dd	_514
	dd	155
	dd	6
	align	4
_1083:
	dd	_514
	dd	156
	dd	6
	align	4
_1124:
	dd	3
	dd	0
	dd	2
	dd	_1062
	dd	_553
	dd	-120
	dd	0
	align	4
_1093:
	dd	_514
	dd	157
	dd	7
_1123:
	db	"MethMeth",0
	align	4
_1122:
	dd	3
	dd	0
	dd	2
	dd	_1123
	dd	_553
	dd	-124
	dd	0
	align	4
_1103:
	dd	_514
	dd	158
	dd	8
	align	4
_1121:
	dd	3
	dd	0
	dd	0
	align	4
_1105:
	dd	_514
	dd	159
	dd	9
	align	4
_1120:
	dd	3
	dd	0
	dd	0
	align	4
_1117:
	dd	_514
	dd	160
	dd	10
	align	4
_1125:
	dd	_514
	dd	166
	dd	6
	align	4
_1164:
	dd	3
	dd	0
	dd	2
	dd	_1062
	dd	_553
	dd	-128
	dd	0
	align	4
_1135:
	dd	_514
	dd	167
	dd	7
	align	4
_1144:
	dd	_514
	dd	168
	dd	7
	align	4
_1148:
	dd	_514
	dd	169
	dd	7
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	41,40,41,59,10
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,100,105,109
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,40,42,42,118,112,116,114,95
	align	4
_1155:
	dd	_514
	dd	170
	dd	7
	align	4
_1159:
	dd	_514
	dd	171
	dd	7
	align	4
_1165:
	dd	_514
	dd	173
	dd	6
	align	4
_1169:
	dd	_514
	dd	174
	dd	6
	align	4
_1173:
	dd	_514
	dd	175
	dd	6
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	59,10
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_1178:
	dd	_514
	dd	176
	dd	6
	align	4
_1188:
	dd	_514
	dd	179
	dd	6
	align	4
_1345:
	dd	3
	dd	0
	dd	0
	align	4
_1192:
	dd	_514
	dd	180
	dd	7
	align	4
_1344:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-132
	dd	0
	align	4
_1204:
	dd	_514
	dd	181
	dd	8
_1342:
	db	"TmpTxt",0
	align	4
_1341:
	dd	3
	dd	0
	dd	2
	dd	_1342
	dd	_418
	dd	-136
	dd	0
	align	4
_1211:
	dd	_514
	dd	183
	dd	10
	align	4
_1213:
	dd	_514
	dd	184
	dd	10
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	32,95,116,104,105,115,95,44,32,105,110,116,32,95,95,118
	dw	112,111,115,95,95
	align	4
_1226:
	dd	_514
	dd	185
	dd	10
	align	4
_1267:
	dd	3
	dd	0
	dd	0
	align	4
_1230:
	dd	_514
	dd	186
	dd	11
_1266:
	db	"Node3",0
	align	4
_1265:
	dd	3
	dd	0
	dd	2
	dd	_1266
	dd	_681
	dd	-140
	dd	0
	align	4
_1242:
	dd	_514
	dd	187
	dd	12
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_1250:
	dd	3
	dd	0
	dd	0
	align	4
_1246:
	dd	_514
	dd	188
	dd	13
	align	4
_1249:
	dd	_514
	dd	189
	dd	13
	align	4
_1251:
	dd	_514
	dd	191
	dd	12
	align	4
_1264:
	dd	3
	dd	0
	dd	0
	align	4
_1255:
	dd	_514
	dd	192
	dd	13
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_1268:
	dd	_514
	dd	196
	dd	10
	align	4
_1269:
	dd	_514
	dd	197
	dd	10
	align	4
_1273:
	dd	_514
	dd	198
	dd	10
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_1286:
	dd	3
	dd	0
	dd	0
	align	4
_1277:
	dd	_514
	dd	199
	dd	11
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,116,117,114,110,32,40
	align	4
_1291:
	dd	3
	dd	0
	dd	0
	align	4
_1288:
	dd	_514
	dd	201
	dd	11
	align	4
_1292:
	dd	_514
	dd	203
	dd	10
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	91,95,95,118,112,111,115,95,95,93,40,95,116,104,105,115
	dw	95
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	95,116,104,105,115,95,45,62,118,112,116,114,95
	align	4
_1299:
	dd	_514
	dd	204
	dd	10
	align	4
_1324:
	dd	3
	dd	0
	dd	0
	align	4
_1303:
	dd	_514
	dd	205
	dd	11
	align	4
_1323:
	dd	3
	dd	0
	dd	2
	dd	_1266
	dd	_681
	dd	-144
	dd	0
	align	4
_1315:
	dd	_514
	dd	206
	dd	12
	align	4
_1322:
	dd	3
	dd	0
	dd	0
	align	4
_1319:
	dd	_514
	dd	207
	dd	13
	align	4
_1325:
	dd	_514
	dd	211
	dd	10
	align	4
_1326:
	dd	_514
	dd	212
	dd	10
	align	4
_1330:
	dd	_514
	dd	213
	dd	10
	align	4
_1333:
	dd	_514
	dd	214
	dd	10
	align	4
_1343:
	dd	3
	dd	0
	dd	0
	align	4
_1346:
	dd	_514
	dd	220
	dd	6
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	42,32,116,109,112,32,41,59,10
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	42,32,110,101,119,95
	align	4
_1356:
	dd	_514
	dd	222
	dd	6
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	42,32,116,109,112,32,41,32,123,10
	align	4
_1366:
	dd	_514
	dd	223
	dd	6
	align	4
_1370:
	dd	_514
	dd	224
	dd	6
	align	4
_1390:
	dd	3
	dd	0
	dd	0
	align	4
_1374:
	dd	_514
	dd	225
	dd	7
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	41,41,41,59,10
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	42,41,71,67,95,109,97,108,108,111,99,40,115,105,122,101
	dw	111,102,40
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,40
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	116,109,112,45,62,115,117,112,101,114,99,108,97,115,115,61
	dw	110,101,119,95
	align	4
_1391:
	dd	_514
	dd	228
	dd	6
	align	4
_1500:
	dd	3
	dd	0
	dd	2
	dd	_1062
	dd	_553
	dd	-148
	dd	2
	dd	_424
	dd	_425
	dd	-152
	dd	0
	align	4
_1403:
	dd	_514
	dd	229
	dd	7
	align	4
_1405:
	dd	_514
	dd	230
	dd	7
	align	4
_1431:
	dd	3
	dd	0
	dd	2
	dd	_1123
	dd	_553
	dd	-156
	dd	0
	align	4
_1417:
	dd	_514
	dd	231
	dd	8
	align	4
_1430:
	dd	3
	dd	0
	dd	0
	align	4
_1429:
	dd	_514
	dd	232
	dd	9
	align	4
_1432:
	dd	_514
	dd	235
	dd	7
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	40,41,41,42
	align	4
_136:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	61,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_135:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	116,109,112,45,62,118,112,116,114,95
	align	4
_1454:
	dd	_514
	dd	236
	dd	7
	align	4
_1499:
	dd	3
	dd	0
	dd	2
	dd	_1123
	dd	_553
	dd	-160
	dd	0
	align	4
_1466:
	dd	_514
	dd	237
	dd	8
	align	4
_1498:
	dd	3
	dd	0
	dd	0
	align	4
_1478:
	dd	_514
	dd	238
	dd	9
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	95,105,115,114,101,97,108,95,59,10
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	93,61,38,32
	align	4
_141:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_1501:
	dd	_514
	dd	243
	dd	6
	align	4
_1543:
	dd	3
	dd	0
	dd	0
	align	4
_1505:
	dd	_514
	dd	244
	dd	7
	align	4
_1542:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-164
	dd	0
	align	4
_1517:
	dd	_514
	dd	245
	dd	8
	align	4
_1524:
	dd	3
	dd	0
	dd	0
	align	4
_1541:
	dd	3
	dd	0
	dd	0
	align	4
_1525:
	dd	_514
	dd	249
	dd	10
	align	4
_148:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,61
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,109,112,45,62,95
	align	4
_1544:
	dd	_514
	dd	254
	dd	6
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	114,101,116,117,114,110,32,116,109,112,59,10
	align	4
_1554:
	dd	_514
	dd	255
	dd	6
	align	4
_1558:
	dd	_514
	dd	256
	dd	6
	align	4
_1628:
	dd	3
	dd	0
	dd	0
	align	4
_1570:
	dd	_514
	dd	393
	dd	6
	align	4
_1580:
	dd	_514
	dd	394
	dd	6
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	105,110,116,32,109,97,105,110,40,41,32,123,10
	align	4
_1590:
	dd	_514
	dd	395
	dd	6
	align	4
_1594:
	dd	_514
	dd	396
	dd	6
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_1604:
	dd	_514
	dd	397
	dd	6
	align	4
_1614:
	dd	_514
	dd	398
	dd	6
	align	4
_1618:
	dd	_514
	dd	399
	dd	6
	align	4
_1630:
	dd	_514
	dd	403
	dd	3
	align	4
_1734:
	dd	3
	dd	0
	dd	2
	dd	_425
	dd	_425
	dd	-168
	dd	2
	dd	_937
	dd	_418
	dd	-172
	dd	0
	align	4
_1636:
	dd	_514
	dd	420
	dd	4
	align	4
_1638:
	dd	_514
	dd	421
	dd	4
	align	4
_156:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	40,105,110,116,32,115,105,122,101
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	118,111,105,100,42,32,97,108,108,111,99,97,114,114,97,121
	dw	95,100,105,109
	align	4
_1641:
	dd	_514
	dd	422
	dd	4
_1647:
	db	"j",0
	align	4
_1646:
	dd	3
	dd	0
	dd	2
	dd	_1647
	dd	_425
	dd	-176
	dd	0
	align	4
_1645:
	dd	_514
	dd	423
	dd	5
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_1648:
	dd	_514
	dd	425
	dd	4
	align	4
_1649:
	dd	_514
	dd	426
	dd	4
	align	4
_1653:
	dd	_514
	dd	427
	dd	4
	align	4
_1656:
	dd	_514
	dd	428
	dd	4
_1662:
	db	"k",0
	align	4
_1661:
	dd	3
	dd	0
	dd	2
	dd	_1662
	dd	_425
	dd	-180
	dd	0
	align	4
_1660:
	dd	_514
	dd	429
	dd	5
	align	4
_1663:
	dd	_514
	dd	431
	dd	4
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	36
	dw	32,109,101,109,61,40,118,111,105,100,42,41,71,67,95,109
	dw	97,108,108,111,99,40,115,105,122,101,42,112,97,114,97,109
	dw	49,41,59,10
	align	4
_1664:
	dd	_514
	dd	433
	dd	4
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_1667:
	dd	_514
	dd	434
	dd	4
	align	4
_1676:
	dd	3
	dd	0
	dd	2
	dd	_1662
	dd	_425
	dd	-184
	dd	0
	align	4
_1671:
	dd	_514
	dd	435
	dd	5
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_1672:
	dd	_514
	dd	436
	dd	5
	align	4
_1675:
	dd	3
	dd	0
	dd	0
	align	4
_1674:
	dd	_514
	dd	436
	dd	17
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_1677:
	dd	_514
	dd	438
	dd	4
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_1678:
	dd	_514
	dd	440
	dd	4
_1703:
	db	"Tmp",0
	align	4
_1702:
	dd	3
	dd	0
	dd	2
	dd	_1662
	dd	_425
	dd	-188
	dd	2
	dd	_1703
	dd	_418
	dd	-192
	dd	0
	align	4
_1682:
	dd	_514
	dd	441
	dd	5
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	43,43,41,32,123,10
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	59,118,97,114,105
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	60,112,97,114,97,109
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	61,48,59,118,97,114,105
	align	4
_175:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,111,114,40,118,97,114,105
	align	4
_1685:
	dd	_514
	dd	442
	dd	5
	align	4
_1689:
	dd	_514
	dd	443
	dd	5
	align	4
_1692:
	dd	_514
	dd	444
	dd	5
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_1694:
	dd	_514
	dd	445
	dd	5
	align	4
_1699:
	dd	3
	dd	0
	dd	2
	dd	_1647
	dd	_425
	dd	-196
	dd	0
	align	4
_1698:
	dd	_514
	dd	447
	dd	6
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_1700:
	dd	_514
	dd	449
	dd	5
	align	4
_1701:
	dd	_514
	dd	450
	dd	5
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	61,40,118,111,105,100,42,41,71,67,95,109,97,108,108,111
	dw	99,40,115,105,122,101,42,112,97,114,97,109
	align	4
_1704:
	dd	_514
	dd	452
	dd	4
	align	4
_1715:
	dd	3
	dd	0
	dd	2
	dd	_1662
	dd	_425
	dd	-200
	dd	0
	align	4
_1708:
	dd	_514
	dd	453
	dd	5
	align	4
_1712:
	dd	_514
	dd	454
	dd	5
	align	4
_1716:
	dd	_514
	dd	456
	dd	4
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	114,101,116,117,114,110,32,40,118,111,105,100,42,41,109,101
	dw	109,59,10
	align	4
_1719:
	dd	_514
	dd	457
	dd	4
	align	4
_1723:
	dd	_514
	dd	458
	dd	4
	align	4
_1724:
	dd	_514
	dd	459
	dd	4
	align	4
_1735:
	dd	_514
	dd	461
	dd	3
	align	4
_1743:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	35,105,110,99,108,117,100,101,32,34,99,108,105,98,47,109
	dw	97,105,110,46,99,34,10
	align	4
_1750:
	dd	_514
	dd	462
	dd	3
	align	4
_1760:
	dd	_514
	dd	463
	dd	3
	align	4
_1768:
	dd	_514
	dd	464
	dd	3
	align	4
_1788:
	dd	1
	dd	_449
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_937
	dd	_418
	dd	-8
	dd	0
	align	4
_1777:
	dd	_514
	dd	468
	dd	3
	align	4
_1779:
	dd	_514
	dd	469
	dd	3
	align	4
_1786:
	dd	3
	dd	0
	dd	2
	dd	_425
	dd	_425
	dd	-12
	dd	0
	align	4
_1785:
	dd	_514
	dd	470
	dd	4
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_1787:
	dd	_514
	dd	472
	dd	3
	align	4
_1845:
	dd	1
	dd	_451
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_692
	dd	_681
	dd	-8
	dd	2
	dd	_438
	dd	_418
	dd	-12
	dd	0
	align	4
_1789:
	dd	_514
	dd	475
	dd	3
	align	4
_1791:
	dd	_514
	dd	476
	dd	3
	align	4
_1843:
	dd	3
	dd	0
	dd	0
	align	4
_1795:
	dd	_514
	dd	477
	dd	4
	align	4
_1842:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-16
	dd	0
	align	4
_1807:
	dd	_514
	dd	478
	dd	5
	align	4
_200:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_1841:
	dd	3
	dd	0
	dd	2
	dd	_937
	dd	_418
	dd	-20
	dd	0
	align	4
_1815:
	dd	_514
	dd	479
	dd	6
	align	4
_1821:
	dd	_514
	dd	480
	dd	6
	align	4
_1840:
	dd	3
	dd	0
	dd	0
	align	4
_1823:
	dd	_514
	dd	481
	dd	7
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_1834:
	dd	3
	dd	0
	dd	0
	align	4
_1831:
	dd	_514
	dd	482
	dd	9
	align	4
_1839:
	dd	3
	dd	0
	dd	0
	align	4
_1836:
	dd	_514
	dd	484
	dd	8
	align	4
_1844:
	dd	_514
	dd	490
	dd	3
	align	4
_3187:
	dd	1
	dd	_453
	dd	2
	dd	_537
	dd	_566
	dd	-16
	dd	2
	dd	_692
	dd	_681
	dd	-20
	dd	2
	dd	_937
	dd	_418
	dd	-24
	dd	0
	align	4
_1846:
	dd	_514
	dd	493
	dd	3
	align	4
_1848:
	dd	_514
	dd	494
	dd	3
	align	4
_1851:
	dd	3
	dd	0
	dd	0
	align	4
_1850:
	dd	_514
	dd	494
	dd	21
	align	4
_1852:
	dd	_514
	dd	495
	dd	3
	align	4
_203:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_210:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_215:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_220:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_234:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_239:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_248:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_263:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_270:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_271:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_293:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_297:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_322:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_327:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_334:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_336:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_338:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_361:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_377:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_1928:
	dd	3
	dd	0
	dd	0
	align	4
_1894:
	dd	_514
	dd	497
	dd	5
	align	4
_204:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_1895:
	dd	_514
	dd	498
	dd	5
	align	4
_1926:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-28
	dd	0
	align	4
_1907:
	dd	_514
	dd	499
	dd	6
	align	4
_208:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_1919:
	dd	3
	dd	0
	dd	0
	align	4
_1914:
	dd	_514
	dd	501
	dd	8
	align	4
_1925:
	dd	3
	dd	0
	dd	0
	align	4
_1920:
	dd	_514
	dd	503
	dd	8
	align	4
_1927:
	dd	_514
	dd	506
	dd	5
	align	4
_1961:
	dd	3
	dd	0
	dd	0
	align	4
_1929:
	dd	_514
	dd	508
	dd	5
	align	4
_1960:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-32
	dd	0
	align	4
_1941:
	dd	_514
	dd	509
	dd	6
	align	4
_1953:
	dd	3
	dd	0
	dd	0
	align	4
_1948:
	dd	_514
	dd	511
	dd	8
	align	4
_214:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_1959:
	dd	3
	dd	0
	dd	0
	align	4
_1954:
	dd	_514
	dd	513
	dd	8
	align	4
_1994:
	dd	3
	dd	0
	dd	0
	align	4
_1962:
	dd	_514
	dd	517
	dd	5
	align	4
_1993:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-36
	dd	0
	align	4
_1974:
	dd	_514
	dd	518
	dd	6
	align	4
_1986:
	dd	3
	dd	0
	dd	0
	align	4
_1981:
	dd	_514
	dd	520
	dd	8
	align	4
_219:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_1992:
	dd	3
	dd	0
	dd	0
	align	4
_1987:
	dd	_514
	dd	522
	dd	8
	align	4
_2027:
	dd	3
	dd	0
	dd	0
	align	4
_1995:
	dd	_514
	dd	526
	dd	5
	align	4
_2026:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-40
	dd	0
	align	4
_2007:
	dd	_514
	dd	527
	dd	6
	align	4
_2019:
	dd	3
	dd	0
	dd	0
	align	4
_2014:
	dd	_514
	dd	529
	dd	8
	align	4
_224:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_2025:
	dd	3
	dd	0
	dd	0
	align	4
_2020:
	dd	_514
	dd	531
	dd	8
	align	4
_2060:
	dd	3
	dd	0
	dd	0
	align	4
_2028:
	dd	_514
	dd	535
	dd	5
	align	4
_2059:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-44
	dd	0
	align	4
_2040:
	dd	_514
	dd	536
	dd	6
	align	4
_2052:
	dd	3
	dd	0
	dd	0
	align	4
_2047:
	dd	_514
	dd	538
	dd	8
	align	4
_2058:
	dd	3
	dd	0
	dd	0
	align	4
_2053:
	dd	_514
	dd	540
	dd	8
	align	4
_2093:
	dd	3
	dd	0
	dd	0
	align	4
_2061:
	dd	_514
	dd	544
	dd	5
	align	4
_2092:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-48
	dd	0
	align	4
_2073:
	dd	_514
	dd	545
	dd	6
	align	4
_2085:
	dd	3
	dd	0
	dd	0
	align	4
_2080:
	dd	_514
	dd	547
	dd	8
	align	4
_233:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_2091:
	dd	3
	dd	0
	dd	0
	align	4
_2086:
	dd	_514
	dd	549
	dd	8
	align	4
_2126:
	dd	3
	dd	0
	dd	0
	align	4
_2094:
	dd	_514
	dd	553
	dd	5
	align	4
_2125:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-52
	dd	0
	align	4
_2106:
	dd	_514
	dd	554
	dd	6
	align	4
_2118:
	dd	3
	dd	0
	dd	0
	align	4
_2113:
	dd	_514
	dd	556
	dd	8
	align	4
_238:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,124,124,32
	align	4
_2124:
	dd	3
	dd	0
	dd	0
	align	4
_2119:
	dd	_514
	dd	558
	dd	8
	align	4
_2159:
	dd	3
	dd	0
	dd	0
	align	4
_2127:
	dd	_514
	dd	562
	dd	5
	align	4
_2158:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-56
	dd	0
	align	4
_2139:
	dd	_514
	dd	563
	dd	6
	align	4
_2151:
	dd	3
	dd	0
	dd	0
	align	4
_2146:
	dd	_514
	dd	565
	dd	8
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_2157:
	dd	3
	dd	0
	dd	0
	align	4
_2152:
	dd	_514
	dd	567
	dd	8
	align	4
_2192:
	dd	3
	dd	0
	dd	0
	align	4
_2160:
	dd	_514
	dd	571
	dd	5
	align	4
_2191:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-60
	dd	0
	align	4
_2172:
	dd	_514
	dd	572
	dd	6
	align	4
_2184:
	dd	3
	dd	0
	dd	0
	align	4
_2179:
	dd	_514
	dd	574
	dd	8
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_2190:
	dd	3
	dd	0
	dd	0
	align	4
_2185:
	dd	_514
	dd	576
	dd	8
	align	4
_2225:
	dd	3
	dd	0
	dd	0
	align	4
_2193:
	dd	_514
	dd	580
	dd	5
	align	4
_2224:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-64
	dd	0
	align	4
_2205:
	dd	_514
	dd	581
	dd	6
	align	4
_2217:
	dd	3
	dd	0
	dd	0
	align	4
_2212:
	dd	_514
	dd	583
	dd	8
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_2223:
	dd	3
	dd	0
	dd	0
	align	4
_2218:
	dd	_514
	dd	585
	dd	8
	align	4
_2258:
	dd	3
	dd	0
	dd	0
	align	4
_2226:
	dd	_514
	dd	589
	dd	5
	align	4
_2257:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-68
	dd	0
	align	4
_2238:
	dd	_514
	dd	590
	dd	6
	align	4
_2250:
	dd	3
	dd	0
	dd	0
	align	4
_2245:
	dd	_514
	dd	592
	dd	8
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_2256:
	dd	3
	dd	0
	dd	0
	align	4
_2251:
	dd	_514
	dd	594
	dd	8
	align	4
_2291:
	dd	3
	dd	0
	dd	0
	align	4
_2259:
	dd	_514
	dd	598
	dd	5
	align	4
_2290:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-72
	dd	0
	align	4
_2271:
	dd	_514
	dd	599
	dd	6
	align	4
_2283:
	dd	3
	dd	0
	dd	0
	align	4
_2278:
	dd	_514
	dd	601
	dd	8
	align	4
_262:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_2289:
	dd	3
	dd	0
	dd	0
	align	4
_2284:
	dd	_514
	dd	603
	dd	8
	align	4
_2324:
	dd	3
	dd	0
	dd	0
	align	4
_2292:
	dd	_514
	dd	607
	dd	5
	align	4
_2323:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-76
	dd	0
	align	4
_2304:
	dd	_514
	dd	608
	dd	6
	align	4
_2316:
	dd	3
	dd	0
	dd	0
	align	4
_2311:
	dd	_514
	dd	610
	dd	8
	align	4
_267:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_2322:
	dd	3
	dd	0
	dd	0
	align	4
_2317:
	dd	_514
	dd	612
	dd	8
	align	4
_2328:
	dd	3
	dd	0
	dd	0
	align	4
_2325:
	dd	_514
	dd	616
	dd	5
	align	4
_268:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2332:
	dd	3
	dd	0
	dd	0
	align	4
_2329:
	dd	_514
	dd	618
	dd	5
	align	4
_1739:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2336:
	dd	3
	dd	0
	dd	0
	align	4
_2333:
	dd	_514
	dd	620
	dd	5
	align	4
_2340:
	dd	3
	dd	0
	dd	0
	align	4
_2337:
	dd	_514
	dd	622
	dd	5
_2481:
	db	"CastFrom",0
_2482:
	db	"CastTo",0
	align	4
_2480:
	dd	3
	dd	0
	dd	2
	dd	_2481
	dd	_418
	dd	-80
	dd	2
	dd	_2482
	dd	_418
	dd	-84
	dd	0
	align	4
_2341:
	dd	_514
	dd	624
	dd	5
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_2345:
	dd	_514
	dd	625
	dd	5
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_2349:
	dd	_514
	dd	626
	dd	5
	align	4
_2396:
	dd	3
	dd	0
	dd	0
	align	4
_2351:
	dd	_514
	dd	627
	dd	6
	align	4
_2365:
	dd	3
	dd	0
	dd	0
	align	4
_2360:
	dd	_514
	dd	629
	dd	8
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_2371:
	dd	3
	dd	0
	dd	0
	align	4
_2366:
	dd	_514
	dd	631
	dd	8
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_2377:
	dd	3
	dd	0
	dd	0
	align	4
_2372:
	dd	_514
	dd	633
	dd	8
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_2383:
	dd	3
	dd	0
	dd	0
	align	4
_2378:
	dd	_514
	dd	635
	dd	8
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_2389:
	dd	3
	dd	0
	dd	0
	align	4
_2384:
	dd	_514
	dd	637
	dd	8
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_2395:
	dd	3
	dd	0
	dd	0
	align	4
_2390:
	dd	_514
	dd	639
	dd	8
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_2479:
	dd	3
	dd	0
	dd	0
	align	4
_2398:
	dd	_514
	dd	641
	dd	5
	align	4
_2445:
	dd	3
	dd	0
	dd	0
	align	4
_2400:
	dd	_514
	dd	642
	dd	6
	align	4
_2414:
	dd	3
	dd	0
	dd	0
	align	4
_2409:
	dd	_514
	dd	644
	dd	8
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_2420:
	dd	3
	dd	0
	dd	0
	align	4
_2415:
	dd	_514
	dd	646
	dd	8
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_2426:
	dd	3
	dd	0
	dd	0
	align	4
_2421:
	dd	_514
	dd	648
	dd	8
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_2432:
	dd	3
	dd	0
	dd	0
	align	4
_2427:
	dd	_514
	dd	650
	dd	8
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_2438:
	dd	3
	dd	0
	dd	0
	align	4
_2433:
	dd	_514
	dd	652
	dd	8
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_2444:
	dd	3
	dd	0
	dd	0
	align	4
_2439:
	dd	_514
	dd	654
	dd	8
	align	4
_285:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_2478:
	dd	3
	dd	0
	dd	0
	align	4
_2447:
	dd	_514
	dd	656
	dd	5
	align	4
_2462:
	dd	3
	dd	0
	dd	0
	align	4
_2453:
	dd	_514
	dd	657
	dd	6
	align	4
_286:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_2477:
	dd	3
	dd	0
	dd	0
	align	4
_2464:
	dd	_514
	dd	659
	dd	6
	align	4
_287:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	99,97,115,116,116,111
_2532:
	db	"Tabled",0
	align	4
_2531:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_422
	dd	-88
	dd	2
	dd	_2532
	dd	_441
	dd	-4
	dd	0
	align	4
_2483:
	dd	_514
	dd	662
	dd	5
	align	4
_2486:
	dd	_514
	dd	663
	dd	5
	align	4
_2490:
	dd	_514
	dd	664
	dd	5
	align	4
_2492:
	dd	_514
	dd	665
	dd	5
	align	4
_2528:
	dd	3
	dd	0
	dd	0
	align	4
_2494:
	dd	_514
	dd	666
	dd	6
	align	4
_2527:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-92
	dd	0
	align	4
_2504:
	dd	_514
	dd	667
	dd	7
	align	4
_2514:
	dd	3
	dd	0
	dd	0
	align	4
_2508:
	dd	_514
	dd	668
	dd	8
	align	4
_2513:
	dd	_514
	dd	669
	dd	8
	align	4
_2515:
	dd	_514
	dd	671
	dd	7
	align	4
_292:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_2526:
	dd	3
	dd	0
	dd	0
	align	4
_2521:
	dd	_514
	dd	673
	dd	8
	align	4
_2522:
	dd	_514
	dd	674
	dd	8
	align	4
_2525:
	dd	_514
	dd	675
	dd	8
	align	4
_2529:
	dd	_514
	dd	679
	dd	5
	align	4
_2530:
	dd	_514
	dd	680
	dd	5
	align	4
_2569:
	dd	3
	dd	0
	dd	0
	align	4
_2533:
	dd	_514
	dd	682
	dd	5
	align	4
_2563:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-96
	dd	0
	align	4
_2545:
	dd	_514
	dd	683
	dd	6
	align	4
_2552:
	dd	3
	dd	0
	dd	0
	align	4
_2549:
	dd	_514
	dd	684
	dd	7
	align	4
_2562:
	dd	3
	dd	0
	dd	0
	align	4
_2554:
	dd	_514
	dd	685
	dd	6
	align	4
_2561:
	dd	3
	dd	0
	dd	0
	align	4
_2558:
	dd	_514
	dd	686
	dd	7
	align	4
_2564:
	dd	_514
	dd	689
	dd	5
	align	4
_2609:
	dd	3
	dd	0
	dd	0
	align	4
_2570:
	dd	_514
	dd	691
	dd	5
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_2571:
	dd	_514
	dd	692
	dd	5
	align	4
_2598:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-100
	dd	0
	align	4
_2583:
	dd	_514
	dd	694
	dd	6
	align	4
_302:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_2597:
	dd	3
	dd	0
	dd	0
	align	4
_2587:
	dd	_514
	dd	695
	dd	7
	align	4
_2592:
	dd	_514
	dd	696
	dd	7
	align	4
_2596:
	dd	_514
	dd	697
	dd	7
	align	4
_2599:
	dd	_514
	dd	700
	dd	5
	align	4
_2602:
	dd	_514
	dd	701
	dd	5
	align	4
_2606:
	dd	_514
	dd	702
	dd	5
	align	4
_2624:
	dd	3
	dd	0
	dd	0
	align	4
_2610:
	dd	_514
	dd	704
	dd	5
	align	4
_2614:
	dd	_514
	dd	705
	dd	5
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_2617:
	dd	_514
	dd	706
	dd	5
	align	4
_2621:
	dd	_514
	dd	707
	dd	5
	align	4
_2664:
	dd	3
	dd	0
	dd	0
	align	4
_2625:
	dd	_514
	dd	709
	dd	5
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_2626:
	dd	_514
	dd	710
	dd	5
	align	4
_2653:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-104
	dd	0
	align	4
_2638:
	dd	_514
	dd	711
	dd	6
	align	4
_2652:
	dd	3
	dd	0
	dd	0
	align	4
_2642:
	dd	_514
	dd	712
	dd	7
	align	4
_2647:
	dd	_514
	dd	713
	dd	7
	align	4
_2651:
	dd	_514
	dd	714
	dd	7
	align	4
_2654:
	dd	_514
	dd	717
	dd	5
	align	4
_2657:
	dd	_514
	dd	718
	dd	5
	align	4
_2661:
	dd	_514
	dd	719
	dd	5
	align	4
_2704:
	dd	3
	dd	0
	dd	0
	align	4
_2665:
	dd	_514
	dd	721
	dd	5
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_2666:
	dd	_514
	dd	722
	dd	5
	align	4
_2670:
	dd	_514
	dd	723
	dd	5
	align	4
_2673:
	dd	_514
	dd	724
	dd	5
	align	4
_2677:
	dd	_514
	dd	725
	dd	5
	align	4
_312:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_2680:
	dd	_514
	dd	726
	dd	5
	align	4
_2703:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-108
	dd	0
	align	4
_2692:
	dd	_514
	dd	727
	dd	6
	align	4
_2702:
	dd	3
	dd	0
	dd	0
	align	4
_2696:
	dd	_514
	dd	728
	dd	7
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_2701:
	dd	_514
	dd	729
	dd	7
	align	4
_2740:
	dd	3
	dd	0
	dd	2
	dd	_417
	dd	_418
	dd	-112
	dd	0
	align	4
_2705:
	dd	_514
	dd	733
	dd	5
	align	4
_2707:
	dd	_514
	dd	734
	dd	5
	align	4
_2739:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-116
	dd	0
	align	4
_2719:
	dd	_514
	dd	735
	dd	6
	align	4
_2728:
	dd	3
	dd	0
	dd	0
	align	4
_2723:
	dd	_514
	dd	736
	dd	7
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_2729:
	dd	_514
	dd	739
	dd	6
	align	4
_2738:
	dd	3
	dd	0
	dd	0
	align	4
_2733:
	dd	_514
	dd	740
	dd	7
	align	4
_2779:
	dd	3
	dd	0
	dd	0
	align	4
_2741:
	dd	_514
	dd	744
	dd	5
	align	4
_323:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_2742:
	dd	_514
	dd	745
	dd	5
	align	4
_2746:
	dd	_514
	dd	746
	dd	5
	align	4
_2768:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-120
	dd	0
	align	4
_2758:
	dd	_514
	dd	747
	dd	6
	align	4
_2767:
	dd	3
	dd	0
	dd	0
	align	4
_2762:
	dd	_514
	dd	748
	dd	7
	align	4
_2769:
	dd	_514
	dd	751
	dd	5
	align	4
_2772:
	dd	_514
	dd	752
	dd	5
	align	4
_2776:
	dd	_514
	dd	753
	dd	5
	align	4
_2822:
	dd	3
	dd	0
	dd	0
	align	4
_2780:
	dd	_514
	dd	755
	dd	5
	align	4
_2821:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-124
	dd	0
	align	4
_2792:
	dd	_514
	dd	756
	dd	6
	align	4
_2820:
	dd	3
	dd	0
	dd	0
	align	4
_2800:
	dd	_514
	dd	757
	dd	7
	align	4
_332:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_331:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_2805:
	dd	_514
	dd	758
	dd	7
	align	4
_2809:
	dd	_514
	dd	759
	dd	7
	align	4
_2812:
	dd	_514
	dd	760
	dd	7
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_2815:
	dd	_514
	dd	761
	dd	7
	align	4
_2819:
	dd	_514
	dd	762
	dd	7
	align	4
_2835:
	dd	3
	dd	0
	dd	0
	align	4
_2823:
	dd	_514
	dd	766
	dd	5
	align	4
_335:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_2824:
	dd	_514
	dd	767
	dd	5
	align	4
_2828:
	dd	_514
	dd	768
	dd	5
	align	4
_2831:
	dd	_514
	dd	769
	dd	5
	align	4
_2837:
	dd	3
	dd	0
	dd	0
	align	4
_2836:
	dd	_514
	dd	771
	dd	5
	align	4
_2839:
	dd	3
	dd	0
	dd	0
	align	4
_2838:
	dd	_514
	dd	773
	dd	5
_2952:
	db	"Variable",0
_2953:
	db	"StepVar",0
_2954:
	db	"ToVar",0
_2955:
	db	"Tok",0
	align	4
_2951:
	dd	3
	dd	0
	dd	2
	dd	_2952
	dd	_418
	dd	-128
	dd	2
	dd	_2953
	dd	_418
	dd	-132
	dd	2
	dd	_2954
	dd	_418
	dd	-136
	dd	2
	dd	_2955
	dd	_418
	dd	-140
	dd	0
	align	4
_2840:
	dd	_514
	dd	775
	dd	5
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_2841:
	dd	_514
	dd	776
	dd	5
	align	4
_2843:
	dd	_514
	dd	777
	dd	5
	align	4
_2845:
	dd	_514
	dd	778
	dd	5
	align	4
_2847:
	dd	_514
	dd	779
	dd	5
	align	4
_2924:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-144
	dd	0
	align	4
_2859:
	dd	_514
	dd	780
	dd	6
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_2869:
	dd	3
	dd	0
	dd	0
	align	4
_2868:
	dd	_514
	dd	799
	dd	8
	align	4
_2905:
	dd	3
	dd	0
	dd	0
	align	4
_2870:
	dd	_514
	dd	782
	dd	8
	align	4
_2904:
	dd	3
	dd	0
	dd	2
	dd	_1266
	dd	_681
	dd	-148
	dd	0
	align	4
_2882:
	dd	_514
	dd	783
	dd	9
	align	4
_347:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_2895:
	dd	3
	dd	0
	dd	2
	dd	_1703
	dd	_418
	dd	-152
	dd	0
	align	4
_2886:
	dd	_514
	dd	784
	dd	10
	align	4
_2892:
	dd	_514
	dd	786
	dd	10
	align	4
_2903:
	dd	3
	dd	0
	dd	0
	align	4
_2897:
	dd	_514
	dd	788
	dd	10
	align	4
_2902:
	dd	_514
	dd	789
	dd	10
	align	4
_2911:
	dd	3
	dd	0
	dd	0
	align	4
_2906:
	dd	_514
	dd	793
	dd	8
	align	4
_2917:
	dd	3
	dd	0
	dd	0
	align	4
_2912:
	dd	_514
	dd	795
	dd	8
	align	4
_2923:
	dd	3
	dd	0
	dd	0
	align	4
_2918:
	dd	_514
	dd	797
	dd	8
	align	4
_2925:
	dd	_514
	dd	802
	dd	5
	align	4
_2927:
	dd	_514
	dd	803
	dd	5
	align	4
_2928:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_2931:
	dd	3
	dd	0
	dd	0
	align	4
_2930:
	dd	_514
	dd	804
	dd	6
	align	4
_2934:
	dd	3
	dd	0
	dd	0
	align	4
_2933:
	dd	_514
	dd	806
	dd	6
	align	4
_2935:
	dd	_514
	dd	808
	dd	5
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_2936:
	dd	_514
	dd	809
	dd	5
	align	4
_2940:
	dd	_514
	dd	810
	dd	5
	align	4
_2943:
	dd	_514
	dd	811
	dd	5
	align	4
_2947:
	dd	_514
	dd	812
	dd	5
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_2950:
	dd	_514
	dd	813
	dd	5
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_2961:
	dd	3
	dd	0
	dd	0
	align	4
_2956:
	dd	_514
	dd	815
	dd	5
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_2963:
	dd	3
	dd	0
	dd	0
	align	4
_2962:
	dd	_514
	dd	817
	dd	5
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
	align	4
_3003:
	dd	3
	dd	0
	dd	2
	dd	_433
	dd	_418
	dd	-156
	dd	0
	align	4
_2964:
	dd	_514
	dd	820
	dd	5
	align	4
_2972:
	dd	_514
	dd	826
	dd	5
	align	4
_2979:
	dd	_514
	dd	827
	dd	5
_3002:
	db	"Child",0
	align	4
_3001:
	dd	3
	dd	0
	dd	2
	dd	_3002
	dd	_681
	dd	-160
	dd	0
	align	4
_2991:
	dd	_514
	dd	828
	dd	6
	align	4
_3000:
	dd	3
	dd	0
	dd	0
	align	4
_2995:
	dd	_514
	dd	829
	dd	7
	align	4
_3009:
	dd	3
	dd	0
	dd	0
	align	4
_3004:
	dd	_514
	dd	836
	dd	5
	align	4
_3098:
	dd	3
	dd	0
	dd	0
	align	4
_3010:
	dd	_514
	dd	840
	dd	5
	align	4
_3097:
	dd	3
	dd	0
	dd	2
	dd	_680
	dd	_681
	dd	-164
	dd	0
	align	4
_3022:
	dd	_514
	dd	841
	dd	6
	align	4
_3034:
	dd	3
	dd	0
	dd	0
	align	4
_3029:
	dd	_514
	dd	843
	dd	8
	align	4
_365:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,62
_3094:
	db	"Typ",0
_3095:
	db	"Add",0
_3096:
	db	"Find",0
	align	4
_3093:
	dd	3
	dd	0
	dd	2
	dd	_3094
	dd	_420
	dd	-168
	dd	2
	dd	_3095
	dd	_418
	dd	-172
	dd	2
	dd	_3096
	dd	_441
	dd	-8
	dd	0
	align	4
_3035:
	dd	_514
	dd	845
	dd	8
	align	4
_3039:
	dd	_514
	dd	846
	dd	8
	align	4
_3059:
	dd	3
	dd	0
	dd	2
	dd	_690
	dd	_420
	dd	-176
	dd	0
	align	4
_3051:
	dd	_514
	dd	847
	dd	9
	align	4
_3058:
	dd	3
	dd	0
	dd	0
	align	4
_3057:
	dd	_514
	dd	848
	dd	10
	align	4
_3060:
	dd	_514
	dd	851
	dd	8
	align	4
_3087:
	dd	3
	dd	0
	dd	0
	align	4
_3065:
	dd	_514
	dd	852
	dd	9
_3082:
	db	"Attribute",0
	align	4
_3081:
	dd	3
	dd	0
	dd	2
	dd	_3082
	dd	_418
	dd	-180
	dd	0
	align	4
_3077:
	dd	_514
	dd	853
	dd	10
	align	4
_3080:
	dd	3
	dd	0
	dd	0
	align	4
_3079:
	dd	_514
	dd	854
	dd	11
	align	4
_3083:
	dd	_514
	dd	857
	dd	9
	align	4
_3086:
	dd	3
	dd	0
	dd	0
	align	4
_3085:
	dd	_514
	dd	858
	dd	10
	align	4
_376:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,117,112,101,114,99,108,97,115,115,45,62
	align	4
_372:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
	align	4
_3088:
	dd	_514
	dd	862
	dd	8
_3184:
	db	"IsArray",0
_3185:
	db	"Obj",0
	align	4
_3183:
	dd	3
	dd	0
	dd	2
	dd	_3184
	dd	_441
	dd	-12
	dd	2
	dd	_3185
	dd	_418
	dd	-184
	dd	0
	align	4
_3099:
	dd	_514
	dd	867
	dd	5
	align	4
_3101:
	dd	_514
	dd	868
	dd	5
	align	4
_3125:
	dd	3
	dd	0
	dd	0
	align	4
_3105:
	dd	_514
	dd	869
	dd	6
_3124:
	db	"Dim",0
	align	4
_3123:
	dd	3
	dd	0
	dd	2
	dd	_3124
	dd	_681
	dd	-188
	dd	0
	align	4
_3117:
	dd	_514
	dd	870
	dd	7
	align	4
_381:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_3122:
	dd	3
	dd	0
	dd	0
	align	4
_3121:
	dd	_514
	dd	870
	dd	30
	align	4
_3126:
	dd	_514
	dd	873
	dd	5
	align	4
_3132:
	dd	_514
	dd	874
	dd	5
	align	4
_3171:
	dd	3
	dd	0
	dd	2
	dd	_424
	dd	_425
	dd	-192
	dd	0
	align	4
_3134:
	dd	_514
	dd	875
	dd	6
	align	4
_3136:
	dd	_514
	dd	876
	dd	6
	align	4
_383:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	40,115,105,122,101,111,102,40
	align	4
_382:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	41,97,108,108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_3137:
	dd	_514
	dd	877
	dd	6
	align	4
_3160:
	dd	3
	dd	0
	dd	2
	dd	_3124
	dd	_681
	dd	-196
	dd	0
	align	4
_3149:
	dd	_514
	dd	878
	dd	7
	align	4
_3159:
	dd	3
	dd	0
	dd	0
	align	4
_3153:
	dd	_514
	dd	879
	dd	8
	align	4
_3154:
	dd	_514
	dd	880
	dd	8
	align	4
_3161:
	dd	_514
	dd	883
	dd	6
	align	4
_3162:
	dd	_514
	dd	884
	dd	6
	align	4
_3170:
	dd	3
	dd	0
	dd	0
	align	4
_3166:
	dd	_514
	dd	884
	dd	28
	align	4
_3174:
	dd	3
	dd	0
	dd	0
	align	4
_3173:
	dd	_514
	dd	887
	dd	6
	align	4
_388:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,41
	align	4
_387:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_3175:
	dd	_514
	dd	889
	dd	5
	align	4
_3182:
	dd	3
	dd	0
	dd	0
	align	4
_3181:
	dd	_514
	dd	890
	dd	6
	align	4
_389:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_3186:
	dd	_514
	dd	894
	dd	3
_3251:
	db	"datatype",0
_3252:
	db	"Def",0
_3253:
	db	"RealType",0
	align	4
_3250:
	dd	1
	dd	_454
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_692
	dd	_681
	dd	-8
	dd	2
	dd	_417
	dd	_418
	dd	-12
	dd	2
	dd	_3251
	dd	_418
	dd	-16
	dd	2
	dd	_3124
	dd	_425
	dd	-20
	dd	2
	dd	_3252
	dd	_418
	dd	-24
	dd	2
	dd	_3253
	dd	_418
	dd	-28
	dd	0
	align	4
_3188:
	dd	_514
	dd	898
	dd	3
	align	4
_3192:
	dd	_514
	dd	899
	dd	3
_3225:
	db	"Att",0
_3226:
	db	":bah.libxml.TxmlAttribute",0
	align	4
_3224:
	dd	3
	dd	0
	dd	2
	dd	_3225
	dd	_3226
	dd	-32
	dd	0
	align	4
_3204:
	dd	_514
	dd	900
	dd	4
	align	4
_3215:
	dd	3
	dd	0
	dd	0
	align	4
_3212:
	dd	_514
	dd	902
	dd	6
	align	4
_3219:
	dd	3
	dd	0
	dd	0
	align	4
_3216:
	dd	_514
	dd	904
	dd	6
	align	4
_3223:
	dd	3
	dd	0
	dd	0
	align	4
_3220:
	dd	_514
	dd	906
	dd	6
	align	4
_3227:
	dd	_514
	dd	909
	dd	3
	align	4
_3229:
	dd	_514
	dd	910
	dd	3
	align	4
_3233:
	dd	_514
	dd	911
	dd	3
	align	4
_3240:
	dd	3
	dd	0
	dd	0
	align	4
_3239:
	dd	_514
	dd	919
	dd	5
	align	4
_395:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_3242:
	dd	3
	dd	0
	dd	0
	align	4
_3241:
	dd	_514
	dd	913
	dd	5
	align	4
_393:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_3244:
	dd	3
	dd	0
	dd	0
	align	4
_3243:
	dd	_514
	dd	915
	dd	5
	align	4
_394:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_3248:
	dd	3
	dd	0
	dd	0
	align	4
_3245:
	dd	_514
	dd	917
	dd	5
	align	4
_3247:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	61,34,34
	align	4
_3249:
	dd	_514
	dd	923
	dd	3
	align	4
_3300:
	dd	1
	dd	_455
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_692
	dd	_681
	dd	-8
	dd	2
	dd	_417
	dd	_418
	dd	-12
	dd	2
	dd	_3251
	dd	_418
	dd	-16
	dd	2
	dd	_3124
	dd	_425
	dd	-20
	dd	0
	align	4
_3254:
	dd	_514
	dd	926
	dd	3
	align	4
_3258:
	dd	_514
	dd	927
	dd	3
	align	4
_3298:
	dd	3
	dd	0
	dd	2
	dd	_3225
	dd	_3226
	dd	-24
	dd	0
	align	4
_3270:
	dd	_514
	dd	928
	dd	4
	align	4
_3281:
	dd	3
	dd	0
	dd	0
	align	4
_3278:
	dd	_514
	dd	930
	dd	6
	align	4
_3287:
	dd	3
	dd	0
	dd	0
	align	4
_3282:
	dd	_514
	dd	932
	dd	6
	align	4
_3297:
	dd	3
	dd	0
	dd	0
	align	4
_3288:
	dd	_514
	dd	934
	dd	6
	align	4
_3291:
	dd	_514
	dd	935
	dd	6
	align	4
_3296:
	dd	3
	dd	0
	dd	2
	dd	_425
	dd	_425
	dd	-28
	dd	0
	align	4
_3295:
	dd	_514
	dd	936
	dd	7
	align	4
_3299:
	dd	_514
	dd	940
	dd	3
	align	4
_402:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
_3352:
	db	"DimCount",0
	align	4
_3351:
	dd	1
	dd	_456
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_3094
	dd	_418
	dd	-8
	dd	2
	dd	_3352
	dd	_425
	dd	-12
	dd	2
	dd	_937
	dd	_418
	dd	-16
	dd	0
	align	4
_3301:
	dd	_514
	dd	943
	dd	3
	align	4
_3304:
	dd	3
	dd	0
	dd	0
	align	4
_3303:
	dd	_514
	dd	943
	dd	18
	align	4
_3305:
	dd	_514
	dd	944
	dd	3
	align	4
_3307:
	dd	_514
	dd	945
	dd	3
	align	4
_3327:
	dd	3
	dd	0
	dd	0
	align	4
_3318:
	dd	_514
	dd	963
	dd	5
	align	4
_3323:
	dd	3
	dd	0
	dd	0
	align	4
_3322:
	dd	_514
	dd	964
	dd	6
	align	4
_410:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_3326:
	dd	3
	dd	0
	dd	0
	align	4
_3325:
	dd	_514
	dd	966
	dd	6
	align	4
_3329:
	dd	3
	dd	0
	dd	0
	align	4
_3328:
	dd	_514
	dd	947
	dd	5
	align	4
_403:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_3331:
	dd	3
	dd	0
	dd	0
	align	4
_3330:
	dd	_514
	dd	949
	dd	5
	align	4
_404:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_3333:
	dd	3
	dd	0
	dd	0
	align	4
_3332:
	dd	_514
	dd	951
	dd	5
	align	4
_405:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_3335:
	dd	3
	dd	0
	dd	0
	align	4
_3334:
	dd	_514
	dd	953
	dd	5
	align	4
_406:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_3337:
	dd	3
	dd	0
	dd	0
	align	4
_3336:
	dd	_514
	dd	955
	dd	5
	align	4
_407:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_3339:
	dd	3
	dd	0
	dd	0
	align	4
_3338:
	dd	_514
	dd	957
	dd	5
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_3341:
	dd	3
	dd	0
	dd	0
	align	4
_3340:
	dd	_514
	dd	959
	dd	5
	align	4
_409:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_3343:
	dd	3
	dd	0
	dd	0
	align	4
_3342:
	dd	_514
	dd	961
	dd	5
	align	4
_3344:
	dd	_514
	dd	969
	dd	3
	align	4
_3349:
	dd	3
	dd	0
	dd	2
	dd	_425
	dd	_425
	dd	-20
	dd	0
	align	4
_3348:
	dd	_514
	dd	970
	dd	4
	align	4
_3350:
	dd	_514
	dd	972
	dd	3
	align	4
_3362:
	dd	1
	dd	_458
	dd	2
	dd	_537
	dd	_566
	dd	-4
	dd	2
	dd	_3094
	dd	_418
	dd	-8
	dd	0
	align	4
_3353:
	dd	_514
	dd	976
	dd	3
	align	4
_414:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
	align	4
_3354:
	dd	_514
	dd	977
	dd	3
	align	4
_3359:
	dd	3
	dd	0
	dd	0
	align	4
_3358:
	dd	_514
	dd	981
	dd	5
	align	4
_3361:
	dd	3
	dd	0
	dd	0
	align	4
_3360:
	dd	_514
	dd	979
	dd	5
