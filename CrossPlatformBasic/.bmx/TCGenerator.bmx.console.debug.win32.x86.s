	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tgenerator
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	___bb_libxml_libxml
	extrn	__bb_TGenerator_Delete
	extrn	__bb_TGenerator_New
	extrn	_bah_libxml_TxmlAttribute
	extrn	_bah_libxml_TxmlDoc
	extrn	_bah_libxml_TxmlNode
	extrn	_bbArrayConcat
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
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringReplace
	extrn	_bbStringSlice
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_bbStringToUpper
	extrn	_bb_TGenerator
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
	public	__bb_TCGenerator_GetLanguage
	public	__bb_TCGenerator_GetNextMathString
	public	__bb_TCGenerator_GetRealDatatype
	public	__bb_TCGenerator_GetTabs
	public	__bb_TCGenerator_IsType
	public	__bb_TCGenerator_New
	public	__bb_TCGenerator_VarDef
	public	__bb_TClass_Delete
	public	__bb_TClass_New
	public	__bb_main
	public	_bb_TCGenerator
	public	_bb_TClass
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_558],0
	je	_559
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_559:
	mov	dword [_558],1
	push	ebp
	push	_557
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_util_cpb
	call	___bb_crossplatformbasic_tgenerator
	push	_bb_TClass
	call	_bbObjectRegisterType
	add	esp,4
	push	_544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_555]
	and	eax,1
	cmp	eax,0
	jne	_556
	push	7
	push	_454
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
	inc	dword [eax+4]
	mov	dword [__bb_TCGenerator_AllDatatype],eax
	or	dword [_555],1
_556:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_494
_494:
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
	push	_563
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
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	ebp
	push	_562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_497
_497:
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
_500:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_568
	push	eax
	call	_bbGCFree
	add	esp,4
_568:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_570
	push	eax
	call	_bbGCFree
	add	esp,4
_570:
	mov	eax,0
	jmp	_566
_566:
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
	push	_580
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TGenerator_New
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
	mov	edx,_bbEmptyArray
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],0
	push	ebp
	push	_579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_503
_503:
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
_506:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_584
	push	eax
	call	_bbGCFree
	add	esp,4
_584:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_586
	push	eax
	call	_bbGCFree
	add	esp,4
_586:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_588
	push	eax
	call	_bbGCFree
	add	esp,4
_588:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_590
	push	eax
	call	_bbGCFree
	add	esp,4
_590:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_592
	push	eax
	call	_bbGCFree
	add	esp,4
_592:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_594
	push	eax
	call	_bbGCFree
	add	esp,4
_594:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_596
	push	eax
	call	_bbGCFree
	add	esp,4
_596:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_598
	push	eax
	call	_bbGCFree
	add	esp,4
_598:
	mov	dword [ebx],_bb_TGenerator
	push	ebx
	call	__bb_TGenerator_Delete
	add	esp,4
	mov	eax,0
	jmp	_582
_582:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_GetLanguage:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_600
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_32
	jmp	_509
_509:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Generate:
	push	ebp
	mov	ebp,esp
	sub	esp,284
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbEmptyString
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
	mov	dword [ebp-92],_bbEmptyString
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbEmptyString
	mov	dword [ebp-104],_bbEmptyString
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-112],_bbEmptyString
	mov	dword [ebp-116],_bbEmptyString
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbEmptyString
	mov	byte [ebp-4],0
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbEmptyString
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],0
	mov	dword [ebp-148],_bbEmptyString
	mov	dword [ebp-160],0
	mov	dword [ebp-152],_bbEmptyString
	mov	dword [ebp-156],_bbEmptyString
	mov	dword [ebp-164],0
	mov	dword [ebp-168],0
	mov	dword [ebp-172],0
	mov	dword [ebp-176],0
	mov	dword [ebp-180],0
	mov	dword [ebp-184],0
	mov	dword [ebp-188],0
	mov	dword [ebp-192],_bbEmptyString
	mov	dword [ebp-200],0
	mov	dword [ebp-196],_bbEmptyString
	mov	dword [ebp-204],0
	mov	dword [ebp-208],_bbEmptyString
	mov	dword [ebp-212],0
	mov	dword [ebp-216],0
	mov	dword [ebp-220],0
	mov	dword [ebp-28],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_1756
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_605
	call	_brl_blitz_NullObjectError
_605:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_610
	call	_brl_blitz_NullObjectError
_610:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-272],eax
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_613
	call	_brl_blitz_NullObjectError
_613:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_33
_35:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_618
	call	_brl_blitz_NullObjectError
_618:
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
	je	_33
	mov	eax,ebp
	push	eax
	push	_694
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_621
	call	_brl_blitz_NullObjectError
_621:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_36
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_624
	jmp	_623
_624:
	mov	eax,ebp
	push	eax
	push	_692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_627
	call	_brl_blitz_NullObjectError
_627:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_454
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_633
	push	eax
	call	_bbGCFree
	add	esp,4
_633:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	cmp	ebx,dword [eax+20]
	jb	_636
	call	_brl_blitz_ArrayBoundsError
_636:
	mov	esi,dword [__bb_TCGenerator_AllDatatype]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_641
	push	eax
	call	_bbGCFree
	add	esp,4
_641:
	mov	dword [esi+24],ebx
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TClass
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_651
	push	eax
	call	_bbGCFree
	add	esp,4
_651:
	mov	dword [esi+8],ebx
	push	_652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_654
	call	_brl_blitz_NullObjectError
_654:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_655
	mov	eax,ebp
	push	eax
	push	_685
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_658
	call	_brl_blitz_NullObjectError
_658:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	eax,dword [ebp-44]
	mov	dword [ebp-232],eax
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_664
	call	_brl_blitz_NullObjectError
_664:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_38
_40:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_669
	call	_brl_blitz_NullObjectError
_669:
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
	je	_38
	mov	eax,ebp
	push	eax
	push	_682
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_672
	call	_brl_blitz_NullObjectError
_672:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_673
	mov	eax,ebp
	push	eax
	push	_681
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	push	_37
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
_673:
	call	dword [_bbOnDebugLeaveScope]
_38:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_40
_39:
	call	dword [_bbOnDebugLeaveScope]
_655:
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_691
	call	_brl_blitz_NullObjectError
_691:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_623
_623:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_616
	call	_brl_blitz_NullObjectError
_616:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_699
	call	_brl_blitz_NullObjectError
_699:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-280],eax
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_702
	call	_brl_blitz_NullObjectError
_702:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_42
_44:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_707
	call	_brl_blitz_NullObjectError
_707:
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
	je	_42
	mov	eax,ebp
	push	eax
	push	_1447
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_710
	call	_brl_blitz_NullObjectError
_710:
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
	je	_713
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_714
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_715
	push	_79
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_716
	jmp	_712
_713:
	mov	eax,ebp
	push	eax
	push	_798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_719
	call	_brl_blitz_NullObjectError
_719:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_720
	mov	eax,ebp
	push	eax
	push	_797
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_724
	call	_brl_blitz_NullObjectError
_724:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-256],eax
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_727
	call	_brl_blitz_NullObjectError
_727:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_46
_48:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
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
	je	_46
	mov	eax,ebp
	push	eax
	push	_796
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_735
	call	_brl_blitz_NullObjectError
_735:
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_736
	mov	eax,ebp
	push	eax
	push	_747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_739
	call	_brl_blitz_NullObjectError
_739:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_742
	call	_brl_blitz_NullObjectError
_742:
	push	_50
	push	dword [ebp-56]
	push	esi
	call	__bb_TCGenerator_VarDef
	add	esp,8
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
	jnz	_746
	push	eax
	call	_bbGCFree
	add	esp,4
_746:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_748
_736:
	mov	eax,ebp
	push	eax
	push	_764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_751
	call	_brl_blitz_NullObjectError
_751:
	push	_51
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_752
	mov	eax,ebp
	push	eax
	push	_763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_755
	call	_brl_blitz_NullObjectError
_755:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_758
	call	_brl_blitz_NullObjectError
_758:
	push	_50
	push	dword [ebp-56]
	push	esi
	call	__bb_TCGenerator_ArrayDef
	add	esp,8
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
	jnz	_762
	push	eax
	call	_bbGCFree
	add	esp,4
_762:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_752:
	call	dword [_bbOnDebugLeaveScope]
_748:
	push	_765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_769
	call	_brl_blitz_NullObjectError
_769:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_772
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_771
	call	_brl_blitz_NullObjectError
_771:
	push	_51
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
_772:
	cmp	eax,0
	je	_774
	mov	eax,ebp
	push	eax
	push	_795
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_777
	call	_brl_blitz_NullObjectError
_777:
	add	dword [ebx+16],1
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_781
	call	_brl_blitz_NullObjectError
_781:
	mov	esi,ebx
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_786
	call	_brl_blitz_NullObjectError
_786:
	push	_54
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_53
	push	edi
	call	__bb_TCGenerator_GetTabs
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
	push	dword [esi+48]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_790
	push	eax
	call	_bbGCFree
	add	esp,4
_790:
	mov	dword [esi+48],ebx
	push	_791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_793
	call	_brl_blitz_NullObjectError
_793:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
_774:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_720:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_712
_714:
	mov	eax,ebp
	push	eax
	push	_1060
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	push	0
	push	_803
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_807
	push	eax
	call	_bbGCFree
	add	esp,4
_807:
	mov	dword [esi+44],ebx
	push	_808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_810
	call	_brl_blitz_NullObjectError
_810:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_814
	call	_brl_blitz_NullObjectError
_814:
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbEmptyString
	push	_818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
	push	dword [ebp-64]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_823
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_822
	call	_brl_blitz_NullObjectError
_822:
	push	_56
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
_823:
	cmp	eax,0
	je	_825
	mov	eax,ebp
	push	eax
	push	_827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_57
	call	dword [_bbOnDebugLeaveScope]
	jmp	_828
_825:
	mov	eax,ebp
	push	eax
	push	_834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_833
	call	_brl_blitz_NullObjectError
_833:
	push	_56
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
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-64],eax
	call	dword [_bbOnDebugLeaveScope]
_828:
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-64]
	mov	dword [ebp-72],eax
	push	_837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	push	dword [ebp-60]
	push	_59
	push	dword [ebp-64]
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
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbEmptyString
	push	_844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_846
	call	_brl_blitz_NullObjectError
_846:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_847
	mov	eax,ebp
	push	eax
	push	_935
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_851
	call	_brl_blitz_NullObjectError
_851:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-260],eax
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_854
	call	_brl_blitz_NullObjectError
_854:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_61
_63:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_859
	call	_brl_blitz_NullObjectError
_859:
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
	je	_61
	mov	eax,ebp
	push	eax
	push	_934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_862
	call	_brl_blitz_NullObjectError
_862:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_863
	mov	eax,ebp
	push	eax
	push	_931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_870
	call	_brl_blitz_NullObjectError
_870:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-88],eax
	push	_872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_879
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_878
	call	_brl_blitz_NullObjectError
_878:
	push	_56
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
_879:
	cmp	eax,0
	je	_881
	mov	eax,ebp
	push	eax
	push	_883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_57
	call	dword [_bbOnDebugLeaveScope]
_881:
	push	_884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_886
	call	_brl_blitz_NullObjectError
_886:
	push	_66
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_65
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
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_894
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_893
	call	_brl_blitz_NullObjectError
_893:
	push	_56
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
_894:
	cmp	eax,0
	je	_896
	mov	eax,ebp
	push	eax
	push	_909
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_899
	call	_brl_blitz_NullObjectError
_899:
	mov	edi,ebx
	push	1
	push	_454
	call	_bbArrayNew1D
	add	esp,8
	mov	esi,eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_902
	call	_brl_blitz_NullObjectError
_902:
	push	_67
	push	_37
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
	inc	dword [eax+4]
	mov	dword [esi+24],eax
	push	esi
	push	dword [edi+44]
	push	_454
	call	_bbArrayConcat
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+44]
	dec	dword [eax+4]
	jnz	_908
	push	eax
	call	_bbGCFree
	add	esp,4
_908:
	mov	dword [edi+44],ebx
	call	dword [_bbOnDebugLeaveScope]
_896:
	push	_910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_912
	call	_brl_blitz_NullObjectError
_912:
	push	_67
	push	_37
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
	mov	dword [ebp-92],eax
	push	_914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	push	_68
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_925
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_918
	call	_brl_blitz_NullObjectError
_918:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_923
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_922
	call	_brl_blitz_NullObjectError
_922:
	push	_56
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
_923:
_925:
	cmp	eax,0
	je	_927
	mov	eax,ebp
	push	eax
	push	_929
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-92]
	push	_69
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	call	dword [_bbOnDebugLeaveScope]
_927:
	push	_930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-92]
	push	_71
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-80]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-80],eax
	call	dword [_bbOnDebugLeaveScope]
_863:
	call	dword [_bbOnDebugLeaveScope]
_61:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_847:
	push	_936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-68]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-68],eax
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-76],0
	je	_938
	mov	eax,ebp
	push	eax
	push	_1014
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_941
	call	_brl_blitz_NullObjectError
_941:
	push	dword [ebp-68]
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_946
	push	eax
	call	_bbGCFree
	add	esp,4
_946:
	mov	dword [esi+28],ebx
	push	_947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_950
	call	_brl_blitz_NullObjectError
_950:
	push	_73
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_955
	push	eax
	call	_bbGCFree
	add	esp,4
_955:
	mov	dword [esi+28],ebx
	push	_956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_958
	call	_brl_blitz_NullObjectError
_958:
	add	dword [ebx+16],1
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	push	dword [ebp-72]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_961
	mov	eax,ebp
	push	eax
	push	_972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_964
	call	_brl_blitz_NullObjectError
_964:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_967
	call	_brl_blitz_NullObjectError
_967:
	push	_75
	push	dword [ebp-72]
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+28]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_971
	push	eax
	call	_bbGCFree
	add	esp,4
_971:
	mov	dword [ebx+28],esi
	call	dword [_bbOnDebugLeaveScope]
_961:
	push	_973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_976
	call	_brl_blitz_NullObjectError
_976:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_979
	call	_brl_blitz_NullObjectError
_979:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_76
_78:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_984
	call	_brl_blitz_NullObjectError
_984:
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
	je	_76
	mov	eax,ebp
	push	eax
	push	_1001
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_987
	call	_brl_blitz_NullObjectError
_987:
	push	_79
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_988
	mov	eax,ebp
	push	eax
	push	_1000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_991
	call	_brl_blitz_NullObjectError
_991:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_994
	call	_brl_blitz_NullObjectError
_994:
	push	dword [ebp-96]
	push	esi
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebx+28]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_998
	push	eax
	call	_bbGCFree
	add	esp,4
_998:
	mov	dword [ebx+28],esi
	push	_999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_77
_988:
	call	dword [_bbOnDebugLeaveScope]
_76:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_982
	call	_brl_blitz_NullObjectError
_982:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_78
_77:
	push	_1002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1004
	call	_brl_blitz_NullObjectError
_1004:
	sub	dword [ebx+16],1
	push	_1006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1008
	call	_brl_blitz_NullObjectError
_1008:
	push	_80
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1013
	push	eax
	call	_bbGCFree
	add	esp,4
_1013:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1015
_938:
	mov	eax,ebp
	push	eax
	push	_1050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1018
	call	_brl_blitz_NullObjectError
_1018:
	push	_81
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-100],eax
	push	_1020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-100]
	push	dword [ebp-60]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1021
	push	_4
	push	dword [ebp-100]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1021:
	cmp	eax,0
	je	_1023
	mov	eax,ebp
	push	eax
	push	_1046
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_1025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1027
	call	_brl_blitz_NullObjectError
_1027:
	add	dword [ebx+16],1
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	push	dword [ebp-64]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1030
	mov	eax,ebp
	push	eax
	push	_1032
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_82
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1033
_1030:
	mov	eax,ebp
	push	eax
	push	_1035
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_4
	call	dword [_bbOnDebugLeaveScope]
_1033:
	push	_1036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1038
	call	_brl_blitz_NullObjectError
_1038:
	push	_72
	mov	eax,dword [ebp-80]
	push	dword [eax+8]
	push	1
	push	dword [ebp-80]
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_83
	push	dword [ebp-100]
	push	dword [ebp-64]
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1041
	call	_brl_blitz_NullObjectError
_1041:
	sub	dword [ebx+16],1
	push	_1043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1045
	call	_brl_blitz_NullObjectError
_1045:
	push	_80
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1047
_1023:
	mov	eax,ebp
	push	eax
	push	_1049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	call	dword [_bbOnDebugLeaveScope]
_1047:
	call	dword [_bbOnDebugLeaveScope]
_1015:
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1054
	call	_brl_blitz_NullObjectError
_1054:
	push	dword [ebp-68]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1059
	push	eax
	call	_bbGCFree
	add	esp,4
_1059:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_712
_715:
	mov	eax,ebp
	push	eax
	push	_1368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1067
	call	_brl_blitz_NullObjectError
_1067:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-104],eax
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	push	_1071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1074
	call	_brl_blitz_NullObjectError
_1074:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1077
	call	_brl_blitz_NullObjectError
_1077:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_84
_86:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1082
	call	_brl_blitz_NullObjectError
_1082:
	push	_bb_TClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-120],eax
	cmp	dword [ebp-120],_bbNullObject
	je	_84
	mov	eax,ebp
	push	eax
	push	_1090
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1085
	call	_brl_blitz_NullObjectError
_1085:
	push	dword [ebp-104]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1086
	mov	eax,ebp
	push	eax
	push	_1089
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-108],eax
	push	_1088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_85
_1086:
	call	dword [_bbOnDebugLeaveScope]
_84:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1080
	call	_brl_blitz_NullObjectError
_1080:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_86
_85:
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbEmptyString
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_88
	push	dword [ebp-104]
	push	_87
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1097
	call	_brl_blitz_NullObjectError
_1097:
	mov	byte [ebx+20],1
	push	_1099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1101
	call	_brl_blitz_NullObjectError
_1101:
	add	dword [ebx+16],1
	push	_1103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_4
	push	_1105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1107
	call	_brl_blitz_NullObjectError
_1107:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1108
	mov	eax,ebp
	push	eax
	push	_1159
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1112
	call	_brl_blitz_NullObjectError
_1112:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-252],eax
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_89
_91:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1120
	call	_brl_blitz_NullObjectError
_1120:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-124],eax
	cmp	dword [ebp-124],_bbNullObject
	je	_89
	mov	eax,ebp
	push	eax
	push	_1158
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1123
	call	_brl_blitz_NullObjectError
_1123:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_92
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1126
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1127
	jmp	_1125
_1126:
	mov	eax,ebp
	push	eax
	push	_1134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1130
	call	_brl_blitz_NullObjectError
_1130:
	push	_94
	push	dword [ebp-104]
	push	_93
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1131
	mov	eax,ebp
	push	eax
	push	_1133
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_96
	push	dword [ebp-104]
	push	_95
	push	dword [ebp-104]
	push	_93
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
	mov	dword [ebp-116],eax
	call	dword [_bbOnDebugLeaveScope]
_1131:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1125
_1127:
	mov	eax,ebp
	push	eax
	push	_1156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1141
	call	_brl_blitz_NullObjectError
_1141:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-128],eax
	push	_1143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1147
	call	_brl_blitz_NullObjectError
_1147:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	je	_1148
	mov	eax,ebp
	push	eax
	push	_1150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_57
	call	dword [_bbOnDebugLeaveScope]
_1148:
	push	_1151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1153
	call	_brl_blitz_NullObjectError
_1153:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1155
	call	_brl_blitz_NullObjectError
_1155:
	push	_97
	push	_37
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_65
	push	dword [ebp-128]
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1125
_1125:
	call	dword [_bbOnDebugLeaveScope]
_89:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1118
	call	_brl_blitz_NullObjectError
_1118:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	call	dword [_bbOnDebugLeaveScope]
_1108:
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1162
	call	_brl_blitz_NullObjectError
_1162:
	mov	byte [ebx+20],0
	push	_1164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1166
	call	_brl_blitz_NullObjectError
_1166:
	sub	dword [ebx+16],1
	push	_1168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1170
	call	_brl_blitz_NullObjectError
_1170:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1172
	call	_brl_blitz_NullObjectError
_1172:
	push	_99
	push	0
	push	dword [ebp-104]
	push	esi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	0
	push	dword [ebp-104]
	push	ebx
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_98
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1175
	call	_brl_blitz_NullObjectError
_1175:
	push	_101
	push	dword [ebp-104]
	push	_100
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1178
	call	_brl_blitz_NullObjectError
_1178:
	add	dword [ebx+16],1
	push	_1180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1182
	call	_brl_blitz_NullObjectError
_1182:
	push	_102
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_1185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1187
	call	_brl_blitz_NullObjectError
_1187:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1188
	mov	eax,ebp
	push	eax
	push	_1236
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1192
	call	_brl_blitz_NullObjectError
_1192:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-244],eax
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_1195
	call	_brl_blitz_NullObjectError
_1195:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_103
_105:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1200
	call	_brl_blitz_NullObjectError
_1200:
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
	je	_103
	mov	eax,ebp
	push	eax
	push	_1235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1203
	call	_brl_blitz_NullObjectError
_1203:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1204
	mov	eax,ebp
	push	eax
	push	_1234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1207
	call	_brl_blitz_NullObjectError
_1207:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	esi
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_1212
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1211
	call	_brl_blitz_NullObjectError
_1211:
	push	_56
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
_1212:
	cmp	eax,0
	je	_1214
	mov	eax,ebp
	push	eax
	push	_1232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_1216
	mov	eax,ebp
	push	eax
	push	_1221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1219
	call	_brl_blitz_NullObjectError
_1219:
	push	_106
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_1216:
	push	_1222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1224
	call	_brl_blitz_NullObjectError
_1224:
	push	_67
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_108
	push	dword [ebp-104]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_107
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
	mov	dword [ebp-136],eax
	push	_1226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	push	_99
	push	dword [ebp-136]
	push	_109
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1231
	call	_brl_blitz_NullObjectError
_1231:
	push	_110
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	call	dword [_bbOnDebugLeaveScope]
_1214:
	call	dword [_bbOnDebugLeaveScope]
_1204:
	call	dword [_bbOnDebugLeaveScope]
_103:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1198
	call	_brl_blitz_NullObjectError
_1198:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_105
_104:
	call	dword [_bbOnDebugLeaveScope]
_1188:
	push	_1237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1239
	call	_brl_blitz_NullObjectError
_1239:
	sub	dword [ebx+16],1
	push	_1241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1243
	call	_brl_blitz_NullObjectError
_1243:
	push	_80
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-112],eax
	push	_1244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1246
	call	_brl_blitz_NullObjectError
_1246:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1249
	call	_brl_blitz_NullObjectError
_1249:
	push	dword [ebx+12]
	push	dword [ebp-112]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1253
	push	eax
	call	_bbGCFree
	add	esp,4
_1253:
	mov	dword [esi+12],ebx
	push	_1254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1256
	call	_brl_blitz_NullObjectError
_1256:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1259
	call	_brl_blitz_NullObjectError
_1259:
	push	_112
	push	dword [ebp-104]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_111
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1263
	push	eax
	call	_bbGCFree
	add	esp,4
_1263:
	mov	dword [esi+12],ebx
	push	_1264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1266
	call	_brl_blitz_NullObjectError
_1266:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1269
	call	_brl_blitz_NullObjectError
_1269:
	push	_113
	push	dword [ebp-104]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_111
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [esi+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1273
	push	eax
	call	_bbGCFree
	add	esp,4
_1273:
	mov	dword [esi+40],ebx
	push	_1274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1276
	call	_brl_blitz_NullObjectError
_1276:
	add	dword [ebx+16],1
	push	_1278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1280
	call	_brl_blitz_NullObjectError
_1280:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	push	_115
	push	dword [ebp-104]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	_114
	push	dword [ebp-104]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [esi+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1287
	push	eax
	call	_bbGCFree
	add	esp,4
_1287:
	mov	dword [esi+40],ebx
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-116]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1289
	mov	eax,ebp
	push	eax
	push	_1300
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1292
	call	_brl_blitz_NullObjectError
_1292:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1295
	call	_brl_blitz_NullObjectError
_1295:
	push	_99
	push	dword [ebp-116]
	push	_116
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebx+40]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1299
	push	eax
	call	_bbGCFree
	add	esp,4
_1299:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
_1289:
	push	_1301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1303
	call	_brl_blitz_NullObjectError
_1303:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1304
	mov	eax,ebp
	push	eax
	push	_1343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-248],eax
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_1311
	call	_brl_blitz_NullObjectError
_1311:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_117
_119:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1316
	call	_brl_blitz_NullObjectError
_1316:
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
	je	_117
	mov	eax,ebp
	push	eax
	push	_1342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1319
	call	_brl_blitz_NullObjectError
_1319:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_92
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1322
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1323
	jmp	_1321
_1322:
	mov	eax,ebp
	push	eax
	push	_1324
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1321
_1323:
	mov	eax,ebp
	push	eax
	push	_1341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	mov	dword [ebp-224],ebx
	mov	eax,dword [ebp-8]
	mov	dword [ebp-228],eax
	cmp	dword [ebp-228],_bbNullObject
	jne	_1330
	call	_brl_blitz_NullObjectError
_1330:
	mov	edi,dword [ebp-140]
	cmp	edi,_bbNullObject
	jne	_1332
	call	_brl_blitz_NullObjectError
_1332:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1336
	call	_brl_blitz_NullObjectError
_1336:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_121
	push	_37
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_120
	push	dword [ebp-228]
	call	__bb_TCGenerator_GetTabs
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
	mov	eax,dword [ebp-224]
	push	dword [eax+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-224]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1340
	push	eax
	call	_bbGCFree
	add	esp,4
_1340:
	mov	eax,dword [ebp-224]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1321
_1321:
	call	dword [_bbOnDebugLeaveScope]
_117:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1314
	call	_brl_blitz_NullObjectError
_1314:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	call	dword [_bbOnDebugLeaveScope]
_1304:
	push	_1344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1346
	call	_brl_blitz_NullObjectError
_1346:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1349
	call	_brl_blitz_NullObjectError
_1349:
	push	_122
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	jnz	_1353
	push	eax
	call	_bbGCFree
	add	esp,4
_1353:
	mov	dword [ebx+40],esi
	push	_1354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1356
	call	_brl_blitz_NullObjectError
_1356:
	sub	dword [ebx+16],1
	push	_1358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1360
	call	_brl_blitz_NullObjectError
_1360:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1363
	call	_brl_blitz_NullObjectError
_1363:
	push	_80
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	jnz	_1367
	push	eax
	call	_bbGCFree
	add	esp,4
_1367:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_712
_716:
	mov	eax,ebp
	push	eax
	push	_1446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1376
	call	_brl_blitz_NullObjectError
_1376:
	push	dword [ebx+40]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1380
	push	eax
	call	_bbGCFree
	add	esp,4
_1380:
	mov	dword [esi+12],ebx
	push	_1381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1383
	call	_brl_blitz_NullObjectError
_1383:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1386
	call	_brl_blitz_NullObjectError
_1386:
	push	_123
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	jnz	_1390
	push	eax
	call	_bbGCFree
	add	esp,4
_1390:
	mov	dword [ebx+12],esi
	push	_1391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1393
	call	_brl_blitz_NullObjectError
_1393:
	add	dword [ebx+16],1
	push	_1395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1397
	call	_brl_blitz_NullObjectError
_1397:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1400
	call	_brl_blitz_NullObjectError
_1400:
	push	_124
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	jnz	_1404
	push	eax
	call	_bbGCFree
	add	esp,4
_1404:
	mov	dword [ebx+12],esi
	push	_1405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1407
	call	_brl_blitz_NullObjectError
_1407:
	push	0
	push	_1409
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_1413
	push	eax
	call	_bbGCFree
	add	esp,4
_1413:
	mov	dword [esi+44],ebx
	push	_1414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1416
	call	_brl_blitz_NullObjectError
_1416:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1419
	call	_brl_blitz_NullObjectError
_1419:
	push	dword [ebp-52]
	push	esi
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1423
	push	eax
	call	_bbGCFree
	add	esp,4
_1423:
	mov	dword [ebx+12],esi
	push	_1424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1426
	call	_brl_blitz_NullObjectError
_1426:
	push	_125
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1431
	push	eax
	call	_bbGCFree
	add	esp,4
_1431:
	mov	dword [esi+12],ebx
	push	_1432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1434
	call	_brl_blitz_NullObjectError
_1434:
	sub	dword [ebx+16],1
	push	_1436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1438
	call	_brl_blitz_NullObjectError
_1438:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1441
	call	_brl_blitz_NullObjectError
_1441:
	push	_98
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	jnz	_1445
	push	eax
	call	_bbGCFree
	add	esp,4
_1445:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_712
_712:
	call	dword [_bbOnDebugLeaveScope]
_42:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	push	_1448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],0
	mov	dword [ebp-144],1
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1451
	call	_brl_blitz_NullObjectError
_1451:
	mov	edi,dword [ebx+24]
	jmp	_1452
_128:
	mov	eax,ebp
	push	eax
	push	_1687
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbEmptyString
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1458
	call	_brl_blitz_NullObjectError
_1458:
	push	_101
	push	dword [ebp-144]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_129
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	add	dword [ebx+16],1
	push	_1463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1465
	call	_brl_blitz_NullObjectError
_1465:
	push	_102
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	mov	dword [ebp-160],1
	mov	ebx,dword [ebp-144]
	jmp	_1468
_132:
	mov	eax,ebp
	push	eax
	push	_1480
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	push	_99
	push	dword [ebp-160]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_133
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	push	_1473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1475
	call	_brl_blitz_NullObjectError
_1475:
	push	_138
	push	dword [ebp-160]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_137
	mov	eax,dword [ebp-160]
	sub	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_136
	push	dword [ebp-160]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_135
	push	dword [ebp-160]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_134
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1478
	call	_brl_blitz_NullObjectError
_1478:
	mov	eax,esi
	add	dword [eax+16],1
	call	dword [_bbOnDebugLeaveScope]
_130:
	add	dword [ebp-160],1
_1468:
	cmp	dword [ebp-160],ebx
	jle	_132
_131:
	push	_1482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbEmptyString
	push	_1484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbEmptyString
	push	_1486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	mov	dword [ebp-164],0
	mov	ebx,dword [ebp-144]
	jmp	_1488
_141:
	mov	eax,ebp
	push	eax
	push	_1491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-156]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-156],eax
	call	dword [_bbOnDebugLeaveScope]
_139:
	add	dword [ebp-164],1
_1488:
	cmp	dword [ebp-164],ebx
	jle	_141
_140:
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_144
	push	dword [ebp-156]
	push	_143
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-152]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-152],eax
	push	_1493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],1
	mov	ebx,dword [ebp-144]
	jmp	_1495
_147:
	mov	eax,ebp
	push	eax
	push	_1498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	push	dword [ebp-168]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_148
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-152]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-152],eax
	call	dword [_bbOnDebugLeaveScope]
_145:
	add	dword [ebp-168],1
_1495:
	cmp	dword [ebp-168],ebx
	jle	_147
_146:
	push	_1499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-152]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-152],eax
	push	_1500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1502
	call	_brl_blitz_NullObjectError
_1502:
	push	_99
	push	dword [ebp-152]
	push	_151
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1505
	call	_brl_blitz_NullObjectError
_1505:
	push	_152
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	mov	dword [ebp-172],1
	mov	ebx,dword [ebp-144]
	jmp	_1508
_155:
	mov	eax,ebp
	push	eax
	push	_1517
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1512
	call	_brl_blitz_NullObjectError
_1512:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1516
	call	_brl_blitz_NullObjectError
_1516:
	push	_80
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_153:
	add	dword [ebp-172],1
_1508:
	cmp	dword [ebp-172],ebx
	jle	_155
_154:
	push	_1518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1520
	call	_brl_blitz_NullObjectError
_1520:
	sub	dword [ebx+16],1
	push	_1522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1524
	call	_brl_blitz_NullObjectError
_1524:
	push	_80
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1527
	call	_brl_blitz_NullObjectError
_1527:
	push	_157
	push	dword [ebp-144]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_156
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],1
	mov	ebx,dword [ebp-144]
	jmp	_1530
_160:
	mov	eax,ebp
	push	eax
	push	_1533
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-176]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_161
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_158:
	add	dword [ebp-176],1
_1530:
	cmp	dword [ebp-176],ebx
	jle	_160
_159:
	push	_1534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1537
	call	_brl_blitz_NullObjectError
_1537:
	add	dword [ebx+16],1
	push	_1539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1541
	call	_brl_blitz_NullObjectError
_1541:
	push	_57
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],1
	mov	ebx,dword [ebp-144]
	jmp	_1544
_164:
	mov	eax,ebp
	push	eax
	push	_1547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_162:
	add	dword [ebp-180],1
_1544:
	cmp	dword [ebp-180],ebx
	jle	_164
_163:
	push	_1549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_165
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1552
	call	_brl_blitz_NullObjectError
_1552:
	push	_166
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],0
	mov	dword [ebp-184],1
	mov	ebx,dword [ebp-144]
	jmp	_1555
_169:
	mov	eax,ebp
	push	eax
	push	_1562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-184]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_170
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	dword [ebp-184],eax
	jge	_1559
	mov	eax,ebp
	push	eax
	push	_1561
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_171
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_1559:
	call	dword [_bbOnDebugLeaveScope]
_167:
	add	dword [ebp-184],1
_1555:
	cmp	dword [ebp-184],ebx
	jle	_169
_168:
	push	_1563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_172
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1564
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],0
	mov	dword [ebp-188],1
	mov	ebx,dword [ebp-144]
	jmp	_1566
_175:
	mov	eax,ebp
	push	eax
	push	_1639
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1570
	call	_brl_blitz_NullObjectError
_1570:
	push	_138
	push	dword [ebp-188]
	call	_bbStringFromInt
	add	esp,4
	push	eax
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
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1573
	call	_brl_blitz_NullObjectError
_1573:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	dword [ebp-188],eax
	jge	_1576
	mov	eax,ebp
	push	eax
	push	_1598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1579
	call	_brl_blitz_NullObjectError
_1579:
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_180
	push	_1582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-200],1
	mov	esi,dword [ebp-188]
	jmp	_1584
_183:
	mov	eax,ebp
	push	eax
	push	_1587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	push	dword [ebp-200]
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
	add	dword [ebp-200],1
_1584:
	cmp	dword [ebp-200],esi
	jle	_183
_182:
	push	_1588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],_4
	push	_1591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	mov	eax,dword [ebp-188]
	mov	dword [ebp-204],eax
	mov	eax,dword [ebp-144]
	sub	eax,1
	mov	esi,eax
	jmp	_1593
_187:
	mov	eax,ebp
	push	eax
	push	_1596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-196]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-196],eax
	call	dword [_bbOnDebugLeaveScope]
_185:
	add	dword [ebp-204],1
_1593:
	cmp	dword [ebp-204],esi
	jle	_187
_186:
	push	_1597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	mov	eax,dword [ebp-188]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_189
	push	dword [ebp-196]
	push	_188
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1601
_1576:
	mov	eax,ebp
	push	eax
	push	_1638
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1604
	call	_brl_blitz_NullObjectError
_1604:
	push	_190
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1607
	call	_brl_blitz_NullObjectError
_1607:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],_bbEmptyString
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1613
	call	_brl_blitz_NullObjectError
_1613:
	push	_180
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-208]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-208],eax
	push	_1614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],0
	mov	dword [ebp-212],1
	mov	esi,dword [ebp-144]
	jmp	_1616
_193:
	mov	eax,ebp
	push	eax
	push	_1619
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_149
	push	dword [ebp-212]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_184
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-208]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-208],eax
	call	dword [_bbOnDebugLeaveScope]
_191:
	add	dword [ebp-212],1
_1616:
	cmp	dword [ebp-212],esi
	jle	_193
_192:
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_194
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1624
	call	_brl_blitz_NullObjectError
_1624:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1628
	call	_brl_blitz_NullObjectError
_1628:
	push	_195
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1631
	call	_brl_blitz_NullObjectError
_1631:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_196
	push	dword [ebp-208]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1636
	call	_brl_blitz_NullObjectError
_1636:
	mov	eax,esi
	sub	dword [eax+16],1
	call	dword [_bbOnDebugLeaveScope]
_1601:
	call	dword [_bbOnDebugLeaveScope]
_173:
	add	dword [ebp-188],1
_1566:
	cmp	dword [ebp-188],ebx
	jle	_175
_174:
	push	_1640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-216],0
	mov	dword [ebp-216],1
	mov	ebx,dword [ebp-144]
	jmp	_1642
_199:
	mov	eax,ebp
	push	eax
	push	_1651
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1646
	call	_brl_blitz_NullObjectError
_1646:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1650
	call	_brl_blitz_NullObjectError
_1650:
	push	_80
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_197:
	add	dword [ebp-216],1
_1642:
	cmp	dword [ebp-216],ebx
	jle	_199
_198:
	push	_1652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1654
	call	_brl_blitz_NullObjectError
_1654:
	push	_72
	push	dword [ebp-144]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_200
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1657
	call	_brl_blitz_NullObjectError
_1657:
	push	_201
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	push	_72
	push	dword [ebp-144]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_202
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	_1661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-220],0
	mov	dword [ebp-220],0
	mov	eax,dword [ebp-144]
	sub	eax,1
	mov	esi,eax
	jmp	_1663
_205:
	mov	eax,ebp
	push	eax
	push	_1668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1667
	call	_brl_blitz_NullObjectError
_1667:
	push	_99
	mov	eax,dword [ebp-220]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_207
	push	dword [ebp-220]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_206
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_203:
	add	dword [ebp-220],1
_1663:
	cmp	dword [ebp-220],esi
	jle	_205
_204:
	push	_1669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1671
	call	_brl_blitz_NullObjectError
_1671:
	push	_122
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1674
	call	_brl_blitz_NullObjectError
_1674:
	sub	dword [ebx+16],1
	push	_1676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_80
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1679
	call	_brl_blitz_NullObjectError
_1679:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1682
	call	_brl_blitz_NullObjectError
_1682:
	push	dword [esi+12]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1686
	push	eax
	call	_bbGCFree
	add	esp,4
_1686:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_126:
	add	dword [ebp-144],1
_1452:
	cmp	dword [ebp-144],edi
	jle	_128
_127:
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	push	_1691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1693
	call	_brl_blitz_NullObjectError
_1693:
	push	_208
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1696
	call	_brl_blitz_NullObjectError
_1696:
	add	dword [ebx+16],1
	push	_1698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1700
	call	_brl_blitz_NullObjectError
_1700:
	push	_209
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1703
	call	_brl_blitz_NullObjectError
_1703:
	sub	dword [ebx+16],1
	push	_1705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_80
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1708
	call	_brl_blitz_NullObjectError
_1708:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1711
	call	_brl_blitz_NullObjectError
_1711:
	push	dword [ebx+12]
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1715
	push	eax
	call	_bbGCFree
	add	esp,4
_1715:
	mov	dword [esi+12],ebx
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1718
	call	_brl_blitz_NullObjectError
_1718:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1730
	call	_brl_blitz_NullObjectError
_1730:
	push	dword [ebx+12]
	push	_1728
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1734
	push	eax
	call	_bbGCFree
	add	esp,4
_1734:
	mov	dword [esi+12],ebx
	push	_1735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1737
	call	_brl_blitz_NullObjectError
_1737:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1740
	call	_brl_blitz_NullObjectError
_1740:
	push	dword [ebx+28]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1744
	push	eax
	call	_bbGCFree
	add	esp,4
_1744:
	mov	dword [esi+12],ebx
	push	_1745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1747
	call	_brl_blitz_NullObjectError
_1747:
	push	_50
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1752
	push	eax
	call	_bbGCFree
	add	esp,4
_1752:
	mov	dword [esi+12],ebx
	push	_1753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1755
	call	_brl_blitz_NullObjectError
_1755:
	push	dword [ebp-16]
	push	dword [ebx+12]
	call	_brl_stream_SaveString
	add	esp,8
	mov	ebx,0
	jmp	_514
_514:
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
	push	_1773
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_1764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1767
	call	_brl_blitz_NullObjectError
_1767:
	mov	ebx,dword [ebx+16]
	jmp	_1768
_216:
	push	ebp
	push	_1771
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_217
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_214:
	add	dword [ebp-12],1
_1768:
	cmp	dword [ebp-12],ebx
	jle	_216
_215:
	push	_1772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_517
_517:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCGenerator_Block:
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
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_1869
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1778
	call	_brl_blitz_NullObjectError
_1778:
	push	_218
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1781
	call	_brl_blitz_NullObjectError
_1781:
	push	dword [ebx+48]
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1784
	call	_brl_blitz_NullObjectError
_1784:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_1789
	push	eax
	call	_bbGCFree
	add	esp,4
_1789:
	mov	dword [esi+48],ebx
	push	_1790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1793
	call	_brl_blitz_NullObjectError
_1793:
	mov	edi,dword [ebx+44]
	mov	eax,edi
	add	eax,24
	mov	esi,eax
	mov	eax,esi
	add	eax,dword [edi+16]
	mov	dword [ebp-28],eax
	jmp	_219
_221:
	mov	eax,dword [esi]
	mov	dword [ebp-16],eax
	add	esi,4
	cmp	dword [ebp-16],_bbNullObject
	je	_219
	mov	eax,ebp
	push	eax
	push	_1801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1800
	call	_brl_blitz_NullObjectError
_1800:
	push	_72
	push	dword [ebp-16]
	push	_222
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_219:
	cmp	esi,dword [ebp-28]
	jne	_221
_220:
	push	_1803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1805
	call	_brl_blitz_NullObjectError
_1805:
	push	0
	push	_1807
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_1811
	push	eax
	call	_bbGCFree
	add	esp,4
_1811:
	mov	dword [esi+44],ebx
	push	_1812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1814
	call	_brl_blitz_NullObjectError
_1814:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1815
	mov	eax,ebp
	push	eax
	push	_1864
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1819
	call	_brl_blitz_NullObjectError
_1819:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1822
	call	_brl_blitz_NullObjectError
_1822:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_223
_225:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1827
	call	_brl_blitz_NullObjectError
_1827:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_223
	mov	eax,ebp
	push	eax
	push	_1863
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1830
	call	_brl_blitz_NullObjectError
_1830:
	push	_226
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
	je	_1833
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1832
	call	_brl_blitz_NullObjectError
_1832:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1833:
	cmp	eax,0
	je	_1835
	mov	eax,ebp
	push	eax
	push	_1862
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1840
	call	_brl_blitz_NullObjectError
_1840:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-24],eax
	push	_1842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+8],0
	jle	_1843
	mov	eax,ebp
	push	eax
	push	_1861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_227
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1845
	push	_98
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1845:
	cmp	eax,0
	jne	_1847
	push	_228
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1847:
	cmp	eax,0
	jne	_1849
	push	_50
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1849:
	cmp	eax,0
	je	_1851
	mov	eax,ebp
	push	eax
	push	_1855
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1854
	call	_brl_blitz_NullObjectError
_1854:
	push	_50
	push	dword [ebp-24]
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1856
_1851:
	mov	eax,ebp
	push	eax
	push	_1860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1857
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1859
	call	_brl_blitz_NullObjectError
_1859:
	push	_99
	push	dword [ebp-24]
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
_1856:
	call	dword [_bbOnDebugLeaveScope]
_1843:
	call	dword [_bbOnDebugLeaveScope]
_1835:
	call	dword [_bbOnDebugLeaveScope]
_223:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1825
	call	_brl_blitz_NullObjectError
_1825:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_225
_224:
	call	dword [_bbOnDebugLeaveScope]
_1815:
	push	_1865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1867
	call	_brl_blitz_NullObjectError
_1867:
	push	_229
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_521
_521:
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
	sub	esp,336
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
	mov	dword [ebp-96],_bbEmptyString
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbEmptyString
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbEmptyString
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],_bbEmptyString
	mov	dword [ebp-144],_bbEmptyString
	mov	dword [ebp-148],_bbEmptyString
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbEmptyString
	mov	dword [ebp-152],_bbEmptyString
	mov	dword [ebp-168],_bbEmptyString
	mov	dword [ebp-172],_bbEmptyString
	mov	dword [ebp-180],0
	mov	dword [ebp-176],_bbEmptyString
	mov	dword [ebp-184],_bbNullObject
	mov	byte [ebp-8],0
	mov	dword [ebp-188],_bbNullObject
	mov	byte [ebp-12],0
	mov	dword [ebp-200],_bbNullObject
	mov	dword [ebp-192],_bbEmptyString
	mov	dword [ebp-196],_bbEmptyString
	mov	dword [ebp-204],0
	mov	dword [ebp-208],_bbEmptyString
	mov	dword [ebp-212],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3348
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_1872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	jne	_1873
	mov	eax,ebp
	push	eax
	push	_1875
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_525
_1873:
	push	_1876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_230
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1881
	push	_237
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1882
	push	_242
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1883
	push	_247
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1884
	push	_252
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1885
	push	_256
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1886
	push	_261
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1887
	push	_266
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1888
	push	_270
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1889
	push	_275
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1890
	push	_280
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1891
	push	_285
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1892
	push	_290
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1893
	push	_295
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1894
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1895
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1896
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1897
	push	_300
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1898
	push	_301
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1898
	push	_302
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1899
	push	_320
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1900
	push	_324
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1901
	push	_332
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1902
	push	_338
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1903
	push	_340
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1904
	push	_345
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1905
	push	_352
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1906
	push	_357
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1907
	push	_362
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1908
	push	_369
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1909
	push	_371
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1910
	push	_372
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1911
	push	_373
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1912
	push	_388
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1913
	push	_391
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1914
	push	_393
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1915
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1916
	push	_404
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1917
	push	_410
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1918
	jmp	_1880
_1881:
	mov	eax,ebp
	push	eax
	push	_1953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_231
	push	_1920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1923
	call	_brl_blitz_NullObjectError
_1923:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1926
	call	_brl_blitz_NullObjectError
_1926:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-308],eax
	jmp	_232
_234:
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_1931
	call	_brl_blitz_NullObjectError
_1931:
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
	je	_232
	mov	eax,ebp
	push	eax
	push	_1951
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1934
	call	_brl_blitz_NullObjectError
_1934:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1937
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1938
	jmp	_1936
_1937:
	mov	eax,ebp
	push	eax
	push	_1944
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1941
	call	_brl_blitz_NullObjectError
_1941:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1943
	call	_brl_blitz_NullObjectError
_1943:
	push	_171
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_1936
_1938:
	mov	eax,ebp
	push	eax
	push	_1950
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1949
	call	_brl_blitz_NullObjectError
_1949:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1936
_1936:
	call	dword [_bbOnDebugLeaveScope]
_232:
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_1929
	call	_brl_blitz_NullObjectError
_1929:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
	push	_1952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1882:
	mov	eax,ebp
	push	eax
	push	_1986
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1957
	call	_brl_blitz_NullObjectError
_1957:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1960
	call	_brl_blitz_NullObjectError
_1960:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-304],eax
	jmp	_238
_240:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_1965
	call	_brl_blitz_NullObjectError
_1965:
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
	je	_238
	mov	eax,ebp
	push	eax
	push	_1985
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1968
	call	_brl_blitz_NullObjectError
_1968:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1971
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1972
	jmp	_1970
_1971:
	mov	eax,ebp
	push	eax
	push	_1978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1975
	call	_brl_blitz_NullObjectError
_1975:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1977
	call	_brl_blitz_NullObjectError
_1977:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_1970
_1972:
	mov	eax,ebp
	push	eax
	push	_1984
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1981
	call	_brl_blitz_NullObjectError
_1981:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1983
	call	_brl_blitz_NullObjectError
_1983:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_1970
_1970:
	call	dword [_bbOnDebugLeaveScope]
_238:
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_1963
	call	_brl_blitz_NullObjectError
_1963:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_240
_239:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1883:
	mov	eax,ebp
	push	eax
	push	_2019
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
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
	mov	dword [ebp-300],eax
	jmp	_243
_245:
	mov	ebx,dword [ebp-300]
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
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_243
	mov	eax,ebp
	push	eax
	push	_2018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2001
	call	_brl_blitz_NullObjectError
_2001:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2004
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2005
	jmp	_2003
_2004:
	mov	eax,ebp
	push	eax
	push	_2011
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2008
	call	_brl_blitz_NullObjectError
_2008:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2010
	call	_brl_blitz_NullObjectError
_2010:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2003
_2005:
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
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2003
_2003:
	call	dword [_bbOnDebugLeaveScope]
_243:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_245
_244:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1884:
	mov	eax,ebp
	push	eax
	push	_2052
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2023
	call	_brl_blitz_NullObjectError
_2023:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2026
	call	_brl_blitz_NullObjectError
_2026:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-296],eax
	jmp	_248
_250:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
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
	je	_248
	mov	eax,ebp
	push	eax
	push	_2051
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2034
	call	_brl_blitz_NullObjectError
_2034:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2037
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2038
	jmp	_2036
_2037:
	mov	eax,ebp
	push	eax
	push	_2044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2041
	call	_brl_blitz_NullObjectError
_2041:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2043
	call	_brl_blitz_NullObjectError
_2043:
	push	_251
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2036
_2038:
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
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2036
_2036:
	call	dword [_bbOnDebugLeaveScope]
_248:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_2029
	call	_brl_blitz_NullObjectError
_2029:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_250
_249:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1885:
	mov	eax,ebp
	push	eax
	push	_2085
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2056
	call	_brl_blitz_NullObjectError
_2056:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2059
	call	_brl_blitz_NullObjectError
_2059:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-292],eax
	jmp	_253
_255:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_2064
	call	_brl_blitz_NullObjectError
_2064:
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
	je	_253
	mov	eax,ebp
	push	eax
	push	_2084
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2067
	call	_brl_blitz_NullObjectError
_2067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2070
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2071
	jmp	_2069
_2070:
	mov	eax,ebp
	push	eax
	push	_2077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2074
	call	_brl_blitz_NullObjectError
_2074:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2076
	call	_brl_blitz_NullObjectError
_2076:
	push	_142
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2069
_2071:
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
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2082
	call	_brl_blitz_NullObjectError
_2082:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2069
_2069:
	call	dword [_bbOnDebugLeaveScope]
_253:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_2062
	call	_brl_blitz_NullObjectError
_2062:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_255
_254:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1886:
	mov	eax,ebp
	push	eax
	push	_2118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2089
	call	_brl_blitz_NullObjectError
_2089:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2092
	call	_brl_blitz_NullObjectError
_2092:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_257
_259:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_2097
	call	_brl_blitz_NullObjectError
_2097:
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
	je	_257
	mov	eax,ebp
	push	eax
	push	_2117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2100
	call	_brl_blitz_NullObjectError
_2100:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2103
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2104
	jmp	_2102
_2103:
	mov	eax,ebp
	push	eax
	push	_2110
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2107
	call	_brl_blitz_NullObjectError
_2107:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2109
	call	_brl_blitz_NullObjectError
_2109:
	push	_260
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2102
_2104:
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
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2115
	call	_brl_blitz_NullObjectError
_2115:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2102
_2102:
	call	dword [_bbOnDebugLeaveScope]
_257:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_2095
	call	_brl_blitz_NullObjectError
_2095:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_259
_258:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1887:
	mov	eax,ebp
	push	eax
	push	_2151
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2122
	call	_brl_blitz_NullObjectError
_2122:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2125
	call	_brl_blitz_NullObjectError
_2125:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_262
_264:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_2130
	call	_brl_blitz_NullObjectError
_2130:
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
	je	_262
	mov	eax,ebp
	push	eax
	push	_2150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2133
	call	_brl_blitz_NullObjectError
_2133:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2136
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2137
	jmp	_2135
_2136:
	mov	eax,ebp
	push	eax
	push	_2143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2140
	call	_brl_blitz_NullObjectError
_2140:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2142
	call	_brl_blitz_NullObjectError
_2142:
	push	_265
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2135
_2137:
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
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2148
	call	_brl_blitz_NullObjectError
_2148:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2135
_2135:
	call	dword [_bbOnDebugLeaveScope]
_262:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_2128
	call	_brl_blitz_NullObjectError
_2128:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_264
_263:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1888:
	mov	eax,ebp
	push	eax
	push	_2184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2155
	call	_brl_blitz_NullObjectError
_2155:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2158
	call	_brl_blitz_NullObjectError
_2158:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_267
_269:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2163
	call	_brl_blitz_NullObjectError
_2163:
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
	je	_267
	mov	eax,ebp
	push	eax
	push	_2183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2166
	call	_brl_blitz_NullObjectError
_2166:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2169
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2170
	jmp	_2168
_2169:
	mov	eax,ebp
	push	eax
	push	_2176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2173
	call	_brl_blitz_NullObjectError
_2173:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2175
	call	_brl_blitz_NullObjectError
_2175:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2168
_2170:
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
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2181
	call	_brl_blitz_NullObjectError
_2181:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2168
_2168:
	call	dword [_bbOnDebugLeaveScope]
_267:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2161
	call	_brl_blitz_NullObjectError
_2161:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_269
_268:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1889:
	mov	eax,ebp
	push	eax
	push	_2217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2188
	call	_brl_blitz_NullObjectError
_2188:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2191
	call	_brl_blitz_NullObjectError
_2191:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_271
_273:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2196
	call	_brl_blitz_NullObjectError
_2196:
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
	je	_271
	mov	eax,ebp
	push	eax
	push	_2216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2199
	call	_brl_blitz_NullObjectError
_2199:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2202
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2203
	jmp	_2201
_2202:
	mov	eax,ebp
	push	eax
	push	_2209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2206
	call	_brl_blitz_NullObjectError
_2206:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2208
	call	_brl_blitz_NullObjectError
_2208:
	push	_274
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2201
_2203:
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
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2201
_2201:
	call	dword [_bbOnDebugLeaveScope]
_271:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2194
	call	_brl_blitz_NullObjectError
_2194:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_273
_272:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1890:
	mov	eax,ebp
	push	eax
	push	_2250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2221
	call	_brl_blitz_NullObjectError
_2221:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2224
	call	_brl_blitz_NullObjectError
_2224:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-272],eax
	jmp	_276
_278:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2229
	call	_brl_blitz_NullObjectError
_2229:
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
	je	_276
	mov	eax,ebp
	push	eax
	push	_2249
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2232
	call	_brl_blitz_NullObjectError
_2232:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2235
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2236
	jmp	_2234
_2235:
	mov	eax,ebp
	push	eax
	push	_2242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2239
	call	_brl_blitz_NullObjectError
_2239:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2241
	call	_brl_blitz_NullObjectError
_2241:
	push	_279
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2234
_2236:
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
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2247
	call	_brl_blitz_NullObjectError
_2247:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2234
_2234:
	call	dword [_bbOnDebugLeaveScope]
_276:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2227
	call	_brl_blitz_NullObjectError
_2227:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_278
_277:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1891:
	mov	eax,ebp
	push	eax
	push	_2283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2254
	call	_brl_blitz_NullObjectError
_2254:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2257
	call	_brl_blitz_NullObjectError
_2257:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_281
_283:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2262
	call	_brl_blitz_NullObjectError
_2262:
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
	je	_281
	mov	eax,ebp
	push	eax
	push	_2282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2265
	call	_brl_blitz_NullObjectError
_2265:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2268
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2269
	jmp	_2267
_2268:
	mov	eax,ebp
	push	eax
	push	_2275
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2272
	call	_brl_blitz_NullObjectError
_2272:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2274
	call	_brl_blitz_NullObjectError
_2274:
	push	_284
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2267
_2269:
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
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2267
_2267:
	call	dword [_bbOnDebugLeaveScope]
_281:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2260
	call	_brl_blitz_NullObjectError
_2260:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_283
_282:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1892:
	mov	eax,ebp
	push	eax
	push	_2316
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2287
	call	_brl_blitz_NullObjectError
_2287:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2290
	call	_brl_blitz_NullObjectError
_2290:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_286
_288:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2295
	call	_brl_blitz_NullObjectError
_2295:
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
	je	_286
	mov	eax,ebp
	push	eax
	push	_2315
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2298
	call	_brl_blitz_NullObjectError
_2298:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2301
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2302
	jmp	_2300
_2301:
	mov	eax,ebp
	push	eax
	push	_2308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2305
	call	_brl_blitz_NullObjectError
_2305:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2307
	call	_brl_blitz_NullObjectError
_2307:
	push	_289
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2300
_2302:
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
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2300
_2300:
	call	dword [_bbOnDebugLeaveScope]
_286:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2293
	call	_brl_blitz_NullObjectError
_2293:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_288
_287:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1893:
	mov	eax,ebp
	push	eax
	push	_2349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2320
	call	_brl_blitz_NullObjectError
_2320:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2323
	call	_brl_blitz_NullObjectError
_2323:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-260],eax
	jmp	_291
_293:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2328
	call	_brl_blitz_NullObjectError
_2328:
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
	je	_291
	mov	eax,ebp
	push	eax
	push	_2348
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2331
	call	_brl_blitz_NullObjectError
_2331:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2334
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2335
	jmp	_2333
_2334:
	mov	eax,ebp
	push	eax
	push	_2341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2338
	call	_brl_blitz_NullObjectError
_2338:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2340
	call	_brl_blitz_NullObjectError
_2340:
	push	_294
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_83
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
	jmp	_2333
_2335:
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
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2346
	call	_brl_blitz_NullObjectError
_2346:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_2333
_2333:
	call	dword [_bbOnDebugLeaveScope]
_291:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2326
	call	_brl_blitz_NullObjectError
_2326:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_293
_292:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1894:
	mov	eax,ebp
	push	eax
	push	_2355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2352
	call	_brl_blitz_NullObjectError
_2352:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2354
	call	_brl_blitz_NullObjectError
_2354:
	push	_297
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_296
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1895:
	mov	eax,ebp
	push	eax
	push	_2359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2358
	call	_brl_blitz_NullObjectError
_2358:
	push	_298
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
	jmp	_1880
_1896:
	mov	eax,ebp
	push	eax
	push	_2364
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2363
	call	_brl_blitz_NullObjectError
_2363:
	push	_150
	push	_1720
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_2361
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
	jmp	_1880
_1897:
	mov	eax,ebp
	push	eax
	push	_2368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2367
	call	_brl_blitz_NullObjectError
_2367:
	push	_298
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
	jmp	_1880
_1898:
	mov	eax,ebp
	push	eax
	push	_2372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2371
	call	_brl_blitz_NullObjectError
_2371:
	push	_67
	push	_37
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
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1899:
	mov	eax,ebp
	push	eax
	push	_2524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2375
	call	_brl_blitz_NullObjectError
_2375:
	push	_303
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2379
	call	_brl_blitz_NullObjectError
_2379:
	push	_304
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-84]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2382
	mov	eax,ebp
	push	eax
	push	_2428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2386
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2387
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2388
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2389
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2390
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2391
	jmp	_2385
_2386:
	mov	eax,ebp
	push	eax
	push	_2397
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2394
	call	_brl_blitz_NullObjectError
_2394:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2396
	call	_brl_blitz_NullObjectError
_2396:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_305
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2387:
	mov	eax,ebp
	push	eax
	push	_2403
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2400
	call	_brl_blitz_NullObjectError
_2400:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2402
	call	_brl_blitz_NullObjectError
_2402:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_306
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2388:
	mov	eax,ebp
	push	eax
	push	_2409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2404
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2406
	call	_brl_blitz_NullObjectError
_2406:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2408
	call	_brl_blitz_NullObjectError
_2408:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_307
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2389:
	mov	eax,ebp
	push	eax
	push	_2415
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2414
	call	_brl_blitz_NullObjectError
_2414:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_308
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2390:
	mov	eax,ebp
	push	eax
	push	_2421
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2418
	call	_brl_blitz_NullObjectError
_2418:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2420
	call	_brl_blitz_NullObjectError
_2420:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_309
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2391:
	mov	eax,ebp
	push	eax
	push	_2427
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
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2426
	call	_brl_blitz_NullObjectError
_2426:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_310
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2385
_2385:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2429
_2382:
	mov	eax,ebp
	push	eax
	push	_2523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-80]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2431
	mov	eax,ebp
	push	eax
	push	_2477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2435
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2436
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2437
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2438
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2439
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2440
	jmp	_2434
_2435:
	mov	eax,ebp
	push	eax
	push	_2446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2443
	call	_brl_blitz_NullObjectError
_2443:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2445
	call	_brl_blitz_NullObjectError
_2445:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_311
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2436:
	mov	eax,ebp
	push	eax
	push	_2452
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
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_312
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2437:
	mov	eax,ebp
	push	eax
	push	_2458
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2455
	call	_brl_blitz_NullObjectError
_2455:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2457
	call	_brl_blitz_NullObjectError
_2457:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_313
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2438:
	mov	eax,ebp
	push	eax
	push	_2464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2463
	call	_brl_blitz_NullObjectError
_2463:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_314
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2439:
	mov	eax,ebp
	push	eax
	push	_2470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2467
	call	_brl_blitz_NullObjectError
_2467:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2469
	call	_brl_blitz_NullObjectError
_2469:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_315
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2440:
	mov	eax,ebp
	push	eax
	push	_2476
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2473
	call	_brl_blitz_NullObjectError
_2473:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2475
	call	_brl_blitz_NullObjectError
_2475:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_316
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2434
_2434:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2478
_2431:
	mov	eax,ebp
	push	eax
	push	_2522
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
	push	_304
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_2484
	mov	eax,ebp
	push	eax
	push	_2494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-224],eax
	cmp	dword [ebp-224],_bbNullObject
	jne	_2487
	call	_brl_blitz_NullObjectError
_2487:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2489
	call	_brl_blitz_NullObjectError
_2489:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2491
	call	_brl_blitz_NullObjectError
_2491:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2493
	call	_brl_blitz_NullObjectError
_2493:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_317
	push	0
	push	_304
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-224]
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	push	_83
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
	jmp	_2495
_2484:
	mov	eax,ebp
	push	eax
	push	_2521
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2498
	call	_brl_blitz_NullObjectError
_2498:
	push	_318
	push	_304
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2499
	mov	eax,ebp
	push	eax
	push	_2505
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2502
	call	_brl_blitz_NullObjectError
_2502:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2504
	call	_brl_blitz_NullObjectError
_2504:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2506
_2499:
	mov	eax,ebp
	push	eax
	push	_2520
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-252],eax
	cmp	dword [ebp-252],_bbNullObject
	jne	_2509
	call	_brl_blitz_NullObjectError
_2509:
	mov	eax,dword [ebp-20]
	mov	dword [ebp-220],eax
	cmp	dword [ebp-220],_bbNullObject
	jne	_2511
	call	_brl_blitz_NullObjectError
_2511:
	mov	eax,dword [ebp-16]
	mov	dword [ebp-228],eax
	cmp	dword [ebp-228],_bbNullObject
	jne	_2513
	call	_brl_blitz_NullObjectError
_2513:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2515
	call	_brl_blitz_NullObjectError
_2515:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2519
	call	_brl_blitz_NullObjectError
_2519:
	push	_150
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_150
	push	0
	push	_303
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-228]
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	push	_107
	push	_4
	push	_142
	push	0
	push	_304
	push	dword [ebp-220]
	mov	eax,dword [ebp-220]
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebp-252]
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_319
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
_2506:
	call	dword [_bbOnDebugLeaveScope]
_2495:
	call	dword [_bbOnDebugLeaveScope]
_2478:
	call	dword [_bbOnDebugLeaveScope]
_2429:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1900:
	mov	eax,ebp
	push	eax
	push	_2563
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2529
	call	_brl_blitz_NullObjectError
_2529:
	push	_60
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2532
	call	_brl_blitz_NullObjectError
_2532:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-88],_bbNullObject
	je	_2537
	mov	eax,ebp
	push	eax
	push	_2560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	edi,dword [ebp-88]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2542
	call	_brl_blitz_NullObjectError
_2542:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-248],eax
	jmp	_321
_323:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2547
	call	_brl_blitz_NullObjectError
_2547:
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
	je	_321
	mov	eax,ebp
	push	eax
	push	_2559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2550
	call	_brl_blitz_NullObjectError
_2550:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2551
	mov	eax,ebp
	push	eax
	push	_2558
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2554
	call	_brl_blitz_NullObjectError
_2554:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_171
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2551:
	call	dword [_bbOnDebugLeaveScope]
_321:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2545
	call	_brl_blitz_NullObjectError
_2545:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_323
_322:
	call	dword [_bbOnDebugLeaveScope]
_2537:
	push	_2561
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
	push	_2562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1901:
	mov	eax,ebp
	push	eax
	push	_2634
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbEmptyString
	push	_2567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2570
	call	_brl_blitz_NullObjectError
_2570:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-316],eax
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_2573
	call	_brl_blitz_NullObjectError
_2573:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-332],eax
	jmp	_325
_327:
	mov	ebx,dword [ebp-332]
	cmp	ebx,_bbNullObject
	jne	_2578
	call	_brl_blitz_NullObjectError
_2578:
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
	je	_325
	mov	eax,ebp
	push	eax
	push	_2627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2581
	call	_brl_blitz_NullObjectError
_2581:
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2582
	mov	eax,ebp
	push	eax
	push	_2586
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	push	dword [ebp-100]
	push	ebx
	call	__bb_TCGenerator_VarDef
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2587
_2582:
	mov	eax,ebp
	push	eax
	push	_2596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2590
	call	_brl_blitz_NullObjectError
_2590:
	push	_51
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2591
	mov	eax,ebp
	push	eax
	push	_2595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	push	dword [ebp-100]
	push	ebx
	call	__bb_TCGenerator_ArrayDef
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2591:
	call	dword [_bbOnDebugLeaveScope]
_2587:
	push	_2597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2599
	call	_brl_blitz_NullObjectError
_2599:
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_2601
	call	_brl_blitz_NullObjectError
_2601:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_2604
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2603
	call	_brl_blitz_NullObjectError
_2603:
	push	_56
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
_2604:
	cmp	eax,0
	je	_2606
	mov	eax,ebp
	push	eax
	push	_2626
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_50
	push	dword [ebp-96]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2611
	call	_brl_blitz_NullObjectError
_2611:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2614
	call	_brl_blitz_NullObjectError
_2614:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_328
_330:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2619
	call	_brl_blitz_NullObjectError
_2619:
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
	je	_328
	mov	eax,ebp
	push	eax
	push	_2625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2622
	call	_brl_blitz_NullObjectError
_2622:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2624
	call	_brl_blitz_NullObjectError
_2624:
	push	_331
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_53
	push	esi
	call	__bb_TCGenerator_GetTabs
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
	push	dword [ebp-96]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_328:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_2617
	call	_brl_blitz_NullObjectError
_2617:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_330
_329:
	call	dword [_bbOnDebugLeaveScope]
_2606:
	call	dword [_bbOnDebugLeaveScope]
_325:
	mov	ebx,dword [ebp-332]
	cmp	ebx,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_327
_326:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1902:
	mov	eax,ebp
	push	eax
	push	_2675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_333
	push	_2637
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2640
	call	_brl_blitz_NullObjectError
_2640:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2643
	call	_brl_blitz_NullObjectError
_2643:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_334
_336:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2648
	call	_brl_blitz_NullObjectError
_2648:
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
	je	_334
	mov	eax,ebp
	push	eax
	push	_2664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2649
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2651
	call	_brl_blitz_NullObjectError
_2651:
	push	_337
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2652
	mov	eax,ebp
	push	eax
	push	_2663
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2655
	call	_brl_blitz_NullObjectError
_2655:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_2657
	call	_brl_blitz_NullObjectError
_2657:
	push	_73
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2660
	call	_brl_blitz_NullObjectError
_2660:
	add	dword [ebx+16],1
	push	_2662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_335
_2652:
	call	dword [_bbOnDebugLeaveScope]
_334:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2646
	call	_brl_blitz_NullObjectError
_2646:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_336
_335:
	push	_2665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2667
	call	_brl_blitz_NullObjectError
_2667:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2670
	call	_brl_blitz_NullObjectError
_2670:
	sub	dword [ebx+16],1
	push	_2672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2674
	call	_brl_blitz_NullObjectError
_2674:
	push	_98
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1880
_1903:
	mov	eax,ebp
	push	eax
	push	_2690
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2678
	call	_brl_blitz_NullObjectError
_2678:
	sub	dword [ebx+16],1
	push	_2680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2682
	call	_brl_blitz_NullObjectError
_2682:
	push	_339
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	push	_50
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2685
	call	_brl_blitz_NullObjectError
_2685:
	add	dword [ebx+16],1
	push	_2687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2689
	call	_brl_blitz_NullObjectError
_2689:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1904:
	mov	eax,ebp
	push	eax
	push	_2730
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_341
	push	_2692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2695
	call	_brl_blitz_NullObjectError
_2695:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2698
	call	_brl_blitz_NullObjectError
_2698:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_342
_344:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2703
	call	_brl_blitz_NullObjectError
_2703:
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
	je	_342
	mov	eax,ebp
	push	eax
	push	_2719
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_2706
	call	_brl_blitz_NullObjectError
_2706:
	push	_337
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2707
	mov	eax,ebp
	push	eax
	push	_2718
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2710
	call	_brl_blitz_NullObjectError
_2710:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_2712
	call	_brl_blitz_NullObjectError
_2712:
	push	_73
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2715
	call	_brl_blitz_NullObjectError
_2715:
	add	dword [ebx+16],1
	push	_2717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_343
_2707:
	call	dword [_bbOnDebugLeaveScope]
_342:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2701
	call	_brl_blitz_NullObjectError
_2701:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_344
_343:
	push	_2720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2722
	call	_brl_blitz_NullObjectError
_2722:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2723
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2725
	call	_brl_blitz_NullObjectError
_2725:
	sub	dword [ebx+16],1
	push	_2727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2729
	call	_brl_blitz_NullObjectError
_2729:
	push	_98
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1880
_1905:
	mov	eax,ebp
	push	eax
	push	_2770
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_346
	push	_2732
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2734
	call	_brl_blitz_NullObjectError
_2734:
	add	dword [ebx+16],1
	push	_2736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2738
	call	_brl_blitz_NullObjectError
_2738:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2741
	call	_brl_blitz_NullObjectError
_2741:
	sub	dword [ebx+16],1
	push	_2743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2745
	call	_brl_blitz_NullObjectError
_2745:
	push	_347
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
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
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2752
	call	_brl_blitz_NullObjectError
_2752:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_348
_350:
	mov	ebx,edi
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
	mov	dword [ebp-116],eax
	cmp	dword [ebp-116],_bbNullObject
	je	_348
	mov	eax,ebp
	push	eax
	push	_2769
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2760
	call	_brl_blitz_NullObjectError
_2760:
	push	_337
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
	push	_2768
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2764
	call	_brl_blitz_NullObjectError
_2764:
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_2766
	call	_brl_blitz_NullObjectError
_2766:
	push	_351
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_349
_2761:
	call	dword [_bbOnDebugLeaveScope]
_348:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2755
	call	_brl_blitz_NullObjectError
_2755:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_350
_349:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1906:
	mov	eax,ebp
	push	eax
	push	_2809
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbEmptyString
	push	_2773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2776
	call	_brl_blitz_NullObjectError
_2776:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2779
	call	_brl_blitz_NullObjectError
_2779:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-312],eax
	jmp	_353
_355:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_2784
	call	_brl_blitz_NullObjectError
_2784:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-124],eax
	cmp	dword [ebp-124],_bbNullObject
	je	_353
	mov	eax,ebp
	push	eax
	push	_2808
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2787
	call	_brl_blitz_NullObjectError
_2787:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2788
	mov	eax,ebp
	push	eax
	push	_2795
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2791
	call	_brl_blitz_NullObjectError
_2791:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2793
	call	_brl_blitz_NullObjectError
_2793:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-120],eax
	push	_2794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2788:
	push	_2796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2798
	call	_brl_blitz_NullObjectError
_2798:
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2799
	mov	eax,ebp
	push	eax
	push	_2807
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2802
	call	_brl_blitz_NullObjectError
_2802:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2804
	call	_brl_blitz_NullObjectError
_2804:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_356
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-128],eax
	push	_2806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2799:
	call	dword [_bbOnDebugLeaveScope]
_353:
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_2782
	call	_brl_blitz_NullObjectError
_2782:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_355
_354:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1907:
	mov	eax,ebp
	push	eax
	push	_2848
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_358
	push	_2811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2813
	call	_brl_blitz_NullObjectError
_2813:
	add	dword [ebx+16],1
	push	_2815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2818
	call	_brl_blitz_NullObjectError
_2818:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2821
	call	_brl_blitz_NullObjectError
_2821:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-244],eax
	jmp	_359
_361:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2826
	call	_brl_blitz_NullObjectError
_2826:
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
	je	_359
	mov	eax,ebp
	push	eax
	push	_2837
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_2829
	call	_brl_blitz_NullObjectError
_2829:
	push	_337
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2830
	mov	eax,ebp
	push	eax
	push	_2836
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2833
	call	_brl_blitz_NullObjectError
_2833:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_2835
	call	_brl_blitz_NullObjectError
_2835:
	push	_73
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
	call	__bb_TCGenerator_GetNextMathString
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
_2830:
	call	dword [_bbOnDebugLeaveScope]
_359:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2824
	call	_brl_blitz_NullObjectError
_2824:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_361
_360:
	push	_2838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2840
	call	_brl_blitz_NullObjectError
_2840:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2843
	call	_brl_blitz_NullObjectError
_2843:
	sub	dword [ebx+16],1
	push	_2845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2847
	call	_brl_blitz_NullObjectError
_2847:
	push	_98
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1880
_1908:
	mov	eax,ebp
	push	eax
	push	_2891
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2852
	call	_brl_blitz_NullObjectError
_2852:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2855
	call	_brl_blitz_NullObjectError
_2855:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_363
_365:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2860
	call	_brl_blitz_NullObjectError
_2860:
	push	_bah_libxml_TxmlNode
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-136],eax
	cmp	dword [ebp-136],_bbNullObject
	je	_363
	mov	eax,ebp
	push	eax
	push	_2890
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2863
	call	_brl_blitz_NullObjectError
_2863:
	push	_337
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
	je	_2866
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2865
	call	_brl_blitz_NullObjectError
_2865:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2866:
	cmp	eax,0
	je	_2868
	mov	eax,ebp
	push	eax
	push	_2889
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2871
	call	_brl_blitz_NullObjectError
_2871:
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2873
	call	_brl_blitz_NullObjectError
_2873:
	push	_367
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_366
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
	push	_2874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2876
	call	_brl_blitz_NullObjectError
_2876:
	add	dword [ebx+16],1
	push	_2878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2880
	call	_brl_blitz_NullObjectError
_2880:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2883
	call	_brl_blitz_NullObjectError
_2883:
	push	_368
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2886
	call	_brl_blitz_NullObjectError
_2886:
	sub	dword [ebx+16],1
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_364
_2868:
	call	dword [_bbOnDebugLeaveScope]
_363:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2858
	call	_brl_blitz_NullObjectError
_2858:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_365
_364:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1909:
	mov	eax,ebp
	push	eax
	push	_2904
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_370
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2895
	call	_brl_blitz_NullObjectError
_2895:
	add	dword [ebx+16],1
	push	_2897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2899
	call	_brl_blitz_NullObjectError
_2899:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2902
	call	_brl_blitz_NullObjectError
_2902:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1910:
	mov	eax,ebp
	push	eax
	push	_2909
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_229
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2908
	call	_brl_blitz_NullObjectError
_2908:
	push	_371
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1880
_1911:
	mov	eax,ebp
	push	eax
	push	_2911
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_372
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1912:
	mov	eax,ebp
	push	eax
	push	_3024
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_374
	push	_2913
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbEmptyString
	push	_2915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbEmptyString
	push	_2917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbEmptyString
	push	_2919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2922
	call	_brl_blitz_NullObjectError
_2922:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-324],eax
	mov	ebx,dword [ebp-324]
	cmp	ebx,_bbNullObject
	jne	_2925
	call	_brl_blitz_NullObjectError
_2925:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-336],eax
	jmp	_375
_377:
	mov	ebx,dword [ebp-336]
	cmp	ebx,_bbNullObject
	jne	_2930
	call	_brl_blitz_NullObjectError
_2930:
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
	je	_375
	mov	eax,ebp
	push	eax
	push	_2997
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_2933
	call	_brl_blitz_NullObjectError
_2933:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_378
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_383
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2937
	push	_304
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2938
	push	_384
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2939
	mov	eax,ebp
	push	eax
	push	_2941
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_376
_2936:
	mov	eax,ebp
	push	eax
	push	_2978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_2945
	call	_brl_blitz_NullObjectError
_2945:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2948
	call	_brl_blitz_NullObjectError
_2948:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-256],eax
	jmp	_379
_381:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2953
	call	_brl_blitz_NullObjectError
_2953:
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
	je	_379
	mov	eax,ebp
	push	eax
	push	_2976
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2956
	call	_brl_blitz_NullObjectError
_2956:
	push	_382
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2957
	mov	eax,ebp
	push	eax
	push	_2967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2960
	call	_brl_blitz_NullObjectError
_2960:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2962
	call	_brl_blitz_NullObjectError
_2962:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-164],eax
	push	_2964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2966
	call	_brl_blitz_NullObjectError
_2966:
	push	_374
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	push	_99
	push	dword [ebp-164]
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
	jmp	_2968
_2957:
	mov	eax,ebp
	push	eax
	push	_2975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2971
	call	_brl_blitz_NullObjectError
_2971:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2973
	call	_brl_blitz_NullObjectError
_2973:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-140],eax
	push	_2974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2968:
	call	dword [_bbOnDebugLeaveScope]
_379:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2951
	call	_brl_blitz_NullObjectError
_2951:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_381
_380:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2935
_2937:
	mov	eax,ebp
	push	eax
	push	_2984
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2981
	call	_brl_blitz_NullObjectError
_2981:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2983
	call	_brl_blitz_NullObjectError
_2983:
	push	_227
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_356
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
	jmp	_2935
_2938:
	mov	eax,ebp
	push	eax
	push	_2990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2987
	call	_brl_blitz_NullObjectError
_2987:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2989
	call	_brl_blitz_NullObjectError
_2989:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2935
_2939:
	mov	eax,ebp
	push	eax
	push	_2996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2993
	call	_brl_blitz_NullObjectError
_2993:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2995
	call	_brl_blitz_NullObjectError
_2995:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	mov	dword [ebp-144],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2935
_2935:
	call	dword [_bbOnDebugLeaveScope]
_375:
	mov	ebx,dword [ebp-336]
	cmp	ebx,_bbNullObject
	jne	_2928
	call	_brl_blitz_NullObjectError
_2928:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_377
_376:
	push	_2998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbEmptyString
	push	_3000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_3001
	push	dword [ebp-144]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_3002
	mov	eax,ebp
	push	eax
	push	_3004
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_274
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3005
_3002:
	mov	eax,ebp
	push	eax
	push	_3007
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_5
	call	dword [_bbOnDebugLeaveScope]
_3005:
	push	_3008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-144]
	push	_385
	push	dword [ebp-140]
	push	_227
	push	dword [ebp-148]
	push	dword [ebp-152]
	push	dword [ebp-140]
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
	push	_3009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3011
	call	_brl_blitz_NullObjectError
_3011:
	add	dword [ebx+16],1
	push	_3013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3015
	call	_brl_blitz_NullObjectError
_3015:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3018
	call	_brl_blitz_NullObjectError
_3018:
	sub	dword [ebx+16],1
	push	_3020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3022
	call	_brl_blitz_NullObjectError
_3022:
	push	_386
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	_387
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1913:
	mov	eax,ebp
	push	eax
	push	_3040
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
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3033
	call	_brl_blitz_NullObjectError
_3033:
	push	_99
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_389
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
	push	_3034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3036
	call	_brl_blitz_NullObjectError
_3036:
	push	_229
	push	ebx
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3039
	call	_brl_blitz_NullObjectError
_3039:
	push	_390
	push	ebx
	call	__bb_TCGenerator_GetTabs
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
	jmp	_1880
_1914:
	mov	eax,ebp
	push	eax
	push	_3042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_392
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1915:
	mov	eax,ebp
	push	eax
	push	_3122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbEmptyString
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3046
	call	_brl_blitz_NullObjectError
_3046:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3048
	call	_brl_blitz_NullObjectError
_3048:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3050
	call	_brl_blitz_NullObjectError
_3050:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-172],eax
	push	_3052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_57
	push	_3053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],1
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3056
	call	_brl_blitz_NullObjectError
_3056:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	ebx,eax
	jmp	_3057
_396:
	mov	eax,ebp
	push	eax
	push	_3060
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-168]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-168],eax
	call	dword [_bbOnDebugLeaveScope]
_394:
	add	dword [ebp-180],1
_3057:
	cmp	dword [ebp-180],ebx
	jle	_396
_395:
	push	_3061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-168]
	push	_397
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-176],eax
	push	_3063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3065
	call	_brl_blitz_NullObjectError
_3065:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3067
	call	_brl_blitz_NullObjectError
_3067:
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
	jne	_3069
	call	_brl_blitz_NullObjectError
_3069:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3073
	call	_brl_blitz_NullObjectError
_3073:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3076
	call	_brl_blitz_NullObjectError
_3076:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_398
_400:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_3081
	call	_brl_blitz_NullObjectError
_3081:
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
	je	_398
	mov	eax,ebp
	push	eax
	push	_3092
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3084
	call	_brl_blitz_NullObjectError
_3084:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3085
	mov	eax,ebp
	push	eax
	push	_3091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3088
	call	_brl_blitz_NullObjectError
_3088:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3090
	call	_brl_blitz_NullObjectError
_3090:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_401
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
_3085:
	call	dword [_bbOnDebugLeaveScope]
_398:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_3079
	call	_brl_blitz_NullObjectError
_3079:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_400
_399:
	push	_3094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3096
	call	_brl_blitz_NullObjectError
_3096:
	cmp	dword [ebx+56],0
	jne	_3097
	mov	eax,ebp
	push	eax
	push	_3099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [ebp-176]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3100
_3097:
	mov	eax,ebp
	push	eax
	push	_3109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3103
	call	_brl_blitz_NullObjectError
_3103:
	push	dword [ebp-176]
	push	dword [esi+52]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3108
	push	eax
	call	_bbGCFree
	add	esp,4
_3108:
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
_3100:
	push	_3110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3112
	call	_brl_blitz_NullObjectError
_3112:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3114
	call	_brl_blitz_NullObjectError
_3114:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_3115
	mov	eax,ebp
	push	eax
	push	_3121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3118
	call	_brl_blitz_NullObjectError
_3118:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3120
	call	_brl_blitz_NullObjectError
_3120:
	push	_70
	push	dword [ebp-24]
	push	_403
	push	0
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	push	_402
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
_3115:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1916:
	mov	eax,ebp
	push	eax
	push	_3130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3127
	call	_brl_blitz_NullObjectError
_3127:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3129
	call	_brl_blitz_NullObjectError
_3129:
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
	call	__bb_TCGenerator_GetNextMathString
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
	jmp	_1880
_1917:
	mov	eax,ebp
	push	eax
	push	_3246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_3133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3135
	call	_brl_blitz_NullObjectError
_3135:
	cmp	dword [ebx+56],0
	jne	_3136
	mov	eax,ebp
	push	eax
	push	_3154
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3139
	call	_brl_blitz_NullObjectError
_3139:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3144
	push	eax
	call	_bbGCFree
	add	esp,4
_3144:
	mov	dword [esi+52],ebx
	push	_3145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	push	_3146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3148
	call	_brl_blitz_NullObjectError
_3148:
	mov	dword [ebx+56],1
	push	_3150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3152
	call	_brl_blitz_NullObjectError
_3152:
	mov	dword [ebx+60],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3155
_3136:
	mov	eax,ebp
	push	eax
	push	_3160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3158
	call	_brl_blitz_NullObjectError
_3158:
	add	dword [ebx+60],1
	call	dword [_bbOnDebugLeaveScope]
_3155:
	push	_3161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3164
	call	_brl_blitz_NullObjectError
_3164:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-320],eax
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_3167
	call	_brl_blitz_NullObjectError
_3167:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-328],eax
	jmp	_405
_407:
	mov	ebx,dword [ebp-328]
	cmp	ebx,_bbNullObject
	jne	_3172
	call	_brl_blitz_NullObjectError
_3172:
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
	je	_405
	mov	eax,ebp
	push	eax
	push	_3223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_3175
	call	_brl_blitz_NullObjectError
_3175:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_235
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3178
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3179
	jmp	_3177
_3178:
	mov	eax,ebp
	push	eax
	push	_3199
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3182
	call	_brl_blitz_NullObjectError
_3182:
	mov	dword [ebp-216],ebx
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3185
	call	_brl_blitz_NullObjectError
_3185:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3187
	call	_brl_blitz_NullObjectError
_3187:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3189
	call	_brl_blitz_NullObjectError
_3189:
	push	dword [ebx+52]
	push	_150
	push	0
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	push	_107
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-216]
	mov	eax,dword [eax+52]
	dec	dword [eax+4]
	jnz	_3193
	push	eax
	call	_bbGCFree
	add	esp,4
_3193:
	mov	eax,dword [ebp-216]
	mov	dword [eax+52],ebx
	push	_3194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3196
	call	_brl_blitz_NullObjectError
_3196:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3198
	call	_brl_blitz_NullObjectError
_3198:
	push	_408
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3177
_3179:
	mov	eax,ebp
	push	eax
	push	_3222
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3202
	call	_brl_blitz_NullObjectError
_3202:
	cmp	dword [ebx+60],1
	jle	_3203
	mov	eax,ebp
	push	eax
	push	_3216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3206
	call	_brl_blitz_NullObjectError
_3206:
	mov	esi,ebx
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3209
	call	_brl_blitz_NullObjectError
_3209:
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_3211
	call	_brl_blitz_NullObjectError
_3211:
	push	_150
	push	0
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	edi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	push	eax
	push	_409
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+52]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3215
	push	eax
	call	_bbGCFree
	add	esp,4
_3215:
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
_3203:
	push	_3217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3219
	call	_brl_blitz_NullObjectError
_3219:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3221
	call	_brl_blitz_NullObjectError
_3221:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3177
_3177:
	call	dword [_bbOnDebugLeaveScope]
_405:
	mov	ebx,dword [ebp-328]
	cmp	ebx,_bbNullObject
	jne	_3170
	call	_brl_blitz_NullObjectError
_3170:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_407
_406:
	push	_3224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_3225
	mov	eax,ebp
	push	eax
	push	_3245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3228
	call	_brl_blitz_NullObjectError
_3228:
	push	dword [ebp-24]
	push	dword [ebx+52]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3231
	call	_brl_blitz_NullObjectError
_3231:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3236
	push	eax
	call	_bbGCFree
	add	esp,4
_3236:
	mov	dword [esi+52],ebx
	push	_3237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3239
	call	_brl_blitz_NullObjectError
_3239:
	mov	dword [ebx+56],0
	push	_3241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3243
	call	_brl_blitz_NullObjectError
_3243:
	mov	dword [ebx+60],0
	call	dword [_bbOnDebugLeaveScope]
_3225:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1918:
	mov	eax,ebp
	push	eax
	push	_3343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_3250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3252
	call	_brl_blitz_NullObjectError
_3252:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_3253
	mov	eax,ebp
	push	eax
	push	_3274
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3257
	call	_brl_blitz_NullObjectError
_3257:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3260
	call	_brl_blitz_NullObjectError
_3260:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_411
_413:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3265
	call	_brl_blitz_NullObjectError
_3265:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-200],eax
	cmp	dword [ebp-200],_bbNullObject
	je	_411
	mov	eax,ebp
	push	eax
	push	_3272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_3268
	call	_brl_blitz_NullObjectError
_3268:
	push	_414
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3269
	mov	eax,ebp
	push	eax
	push	_3271
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3270
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
_3269:
	call	dword [_bbOnDebugLeaveScope]
_411:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3263
	call	_brl_blitz_NullObjectError
_3263:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_413
_412:
	call	dword [_bbOnDebugLeaveScope]
_3253:
	push	_3275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_57
	push	_3277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3279
	call	_brl_blitz_NullObjectError
_3279:
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	mov	dword [ebp-196],eax
	push	_3281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_3282
	mov	eax,ebp
	push	eax
	push	_3330
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	push	_3285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],_415
	push	_3287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3289
	call	_brl_blitz_NullObjectError
_3289:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3291
	call	_brl_blitz_NullObjectError
_3291:
	push	_52
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_3292
	mov	eax,ebp
	push	eax
	push	_3294
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-196]
	push	_416
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-208],eax
	call	dword [_bbOnDebugLeaveScope]
_3292:
	push	_3295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	push	_83
	movzx	eax,byte [ebp-12]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_417
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3299
	call	_brl_blitz_NullObjectError
_3299:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3302
	call	_brl_blitz_NullObjectError
_3302:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_418
_420:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_3307
	call	_brl_blitz_NullObjectError
_3307:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-212],eax
	cmp	dword [ebp-212],_bbNullObject
	je	_418
	mov	eax,ebp
	push	eax
	push	_3319
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3308
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3310
	call	_brl_blitz_NullObjectError
_3310:
	push	_414
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3311
	mov	eax,ebp
	push	eax
	push	_3318
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-204],1
	push	_3313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3315
	call	_brl_blitz_NullObjectError
_3315:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3317
	call	_brl_blitz_NullObjectError
_3317:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_171
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_3311:
	call	dword [_bbOnDebugLeaveScope]
_418:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_3305
	call	_brl_blitz_NullObjectError
_3305:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_420
_419:
	push	_3320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3323
	call	_brl_blitz_NullObjectError
_3323:
	mov	eax,dword [ebp-204]
	cmp	dword [ebx+24],eax
	jge	_3324
	mov	eax,ebp
	push	eax
	push	_3329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3327
	call	_brl_blitz_NullObjectError
_3327:
	mov	eax,dword [ebp-204]
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_3324:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3332
_3282:
	mov	eax,ebp
	push	eax
	push	_3334
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-196]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_422
	push	dword [ebp-196]
	push	_421
	push	dword [ebp-192]
	push	_83
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
_3332:
	push	_3335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3337
	call	_brl_blitz_NullObjectError
_3337:
	push	dword [ebp-196]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	je	_3338
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3338:
	cmp	eax,0
	je	_3340
	mov	eax,ebp
	push	eax
	push	_3342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	push	_83
	push	dword [ebp-196]
	push	_423
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
_3340:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1880
_1880:
	push	_3347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_525
_525:
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
	push	_3420
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3356
	call	_brl_blitz_NullObjectError
_3356:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3359
	call	_brl_blitz_NullObjectError
_3359:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_424
_426:
	cmp	ebx,_bbNullObject
	jne	_3364
	call	_brl_blitz_NullObjectError
_3364:
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
	je	_424
	mov	eax,ebp
	push	eax
	push	_3385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3367
	call	_brl_blitz_NullObjectError
_3367:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	mov	esi,eax
	push	_37
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3370
	push	_52
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3371
	push	_56
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3372
	jmp	_3369
_3370:
	mov	eax,ebp
	push	eax
	push	_3376
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3375
	call	_brl_blitz_NullObjectError
_3375:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3369
_3371:
	mov	eax,ebp
	push	eax
	push	_3380
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3379
	call	_brl_blitz_NullObjectError
_3379:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3369
_3372:
	mov	eax,ebp
	push	eax
	push	_3384
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3383
	call	_brl_blitz_NullObjectError
_3383:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3369
_3369:
	call	dword [_bbOnDebugLeaveScope]
_424:
	cmp	ebx,_bbNullObject
	jne	_3362
	call	_brl_blitz_NullObjectError
_3362:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_426
_425:
	push	_3388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_3390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3392
	call	_brl_blitz_NullObjectError
_3392:
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	ebx
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-28],eax
	push	_3394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3396
	call	_brl_blitz_NullObjectError
_3396:
	push	dword [ebp-16]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_3397
	mov	eax,dword [ebp-20]
	cmp	eax,0
	setg	al
	movzx	eax,al
_3397:
	cmp	eax,0
	je	_3399
	mov	eax,ebp
	push	eax
	push	_3401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_57
	call	dword [_bbOnDebugLeaveScope]
_3399:
	push	_3402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3405
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3405
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3405
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3405
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3406
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3406
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3407
	mov	eax,ebp
	push	eax
	push	_3409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_430
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3404
_3405:
	mov	eax,ebp
	push	eax
	push	_3411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_427
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3404
_3406:
	mov	eax,ebp
	push	eax
	push	_3413
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_428
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3404
_3407:
	mov	eax,ebp
	push	eax
	push	_3418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_3417
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3404
_3404:
	push	_3419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_227
	push	dword [ebp-24]
	push	_67
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
	jmp	_529
_529:
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
	push	_3470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3430
	call	_brl_blitz_NullObjectError
_3430:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_3433
	call	_brl_blitz_NullObjectError
_3433:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_431
_433:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3438
	call	_brl_blitz_NullObjectError
_3438:
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
	je	_431
	mov	eax,ebp
	push	eax
	push	_3467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3441
	call	_brl_blitz_NullObjectError
_3441:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_37
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3444
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3445
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3446
	jmp	_3443
_3444:
	mov	eax,ebp
	push	eax
	push	_3450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3449
	call	_brl_blitz_NullObjectError
_3449:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3443
_3445:
	mov	eax,ebp
	push	eax
	push	_3456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3453
	call	_brl_blitz_NullObjectError
_3453:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3455
	call	_brl_blitz_NullObjectError
_3455:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	push	esi
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3443
_3446:
	mov	eax,ebp
	push	eax
	push	_3466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3459
	call	_brl_blitz_NullObjectError
_3459:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	push	_3460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],1
	mov	ebx,dword [ebp-20]
	jmp	_3462
_436:
	mov	eax,ebp
	push	eax
	push	_3465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_434:
	add	dword [ebp-28],1
_3462:
	cmp	dword [ebp-28],ebx
	jle	_436
_435:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3443
_3443:
	call	dword [_bbOnDebugLeaveScope]
_431:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3436
	call	_brl_blitz_NullObjectError
_3436:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_433
_432:
	push	_3468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_57
	push	_3469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_437
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
	jmp	_533
_533:
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
	push	_3524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3472
	push	ebp
	push	_3474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_3472:
	push	_3475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	push	_3477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3480
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3481
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3482
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3483
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3484
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3485
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3486
	push	_74
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3487
	push	_318
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3488
	push	ebp
	push	_3498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3491
	call	_brl_blitz_NullObjectError
_3491:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_3492
	push	ebp
	push	_3494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-8]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_446
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3495
_3492:
	push	ebp
	push	_3497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-8]
	call	_bbStringToUpper
	add	esp,4
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_3495:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3480:
	push	ebp
	push	_3500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_438
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3481:
	push	ebp
	push	_3502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_439
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3482:
	push	ebp
	push	_3504
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_440
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3483:
	push	ebp
	push	_3506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_441
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3484:
	push	ebp
	push	_3508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_442
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3485:
	push	ebp
	push	_3510
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_443
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3486:
	push	ebp
	push	_3512
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_444
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3487:
	push	ebp
	push	_3514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_74
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3488:
	push	ebp
	push	_3516
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_445
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3479
_3479:
	push	_3517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],1
	mov	ebx,dword [ebp-12]
	jmp	_3519
_449:
	push	ebp
	push	_3522
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_447:
	add	dword [ebp-20],1
_3519:
	cmp	dword [ebp-20],ebx
	jle	_449
_448:
	push	_3523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_538
_538:
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
	push	_3536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_450
	push	_4
	push	_142
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
	push	_3528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_74
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3531
	push	ebp
	push	_3533
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_542
_3531:
	push	ebp
	push	_3535
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_542
_542:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_558:
	dd	0
_463:
	db	"TCGenerator",0
	align	4
_557:
	dd	1
	dd	_463
	dd	0
_452:
	db	"TClass",0
_453:
	db	"Name",0
_454:
	db	"$",0
_455:
	db	"Count",0
_456:
	db	"i",0
_457:
	db	"Attributes",0
_458:
	db	":brl.linkedlist.TList",0
_459:
	db	"New",0
_460:
	db	"()i",0
_461:
	db	"Delete",0
	align	4
_451:
	dd	2
	dd	_452
	dd	3
	dd	_453
	dd	_454
	dd	8
	dd	3
	dd	_455
	dd	_456
	dd	12
	dd	3
	dd	_457
	dd	_458
	dd	16
	dd	6
	dd	_459
	dd	_460
	dd	16
	dd	6
	dd	_461
	dd	_460
	dd	20
	dd	0
	align	4
_bb_TClass:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_451
	dd	20
	dd	__bb_TClass_New
	dd	__bb_TClass_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_545:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCGenerator.bmx",0
	align	4
_544:
	dd	_545
	dd	14
	dd	2
	align	4
_555:
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
	dd	4
	dw	98,121,116,101
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
__bb_TCGenerator_AllDatatype:
	dd	_bbEmptyArray
_464:
	db	"Classes",0
_465:
	db	"Output",0
_466:
	db	"ScopeCount",0
_467:
	db	"InStruct",0
_468:
	db	"b",0
_469:
	db	"MaxSizeArray",0
_470:
	db	"FuncDef",0
_471:
	db	"DebugMode",0
_472:
	db	"Types",0
_473:
	db	"TypeMainConstructor",0
_474:
	db	"Parameter",0
_475:
	db	"[]$",0
_476:
	db	"GlobalInit",0
_477:
	db	"ArrayCast",0
_478:
	db	"ShouldCast",0
_479:
	db	"AccessIteration",0
_480:
	db	"GetLanguage",0
_481:
	db	"()$",0
_482:
	db	"Generate",0
_483:
	db	"($,$)i",0
_484:
	db	"GetTabs",0
_485:
	db	"Block",0
_486:
	db	"(:bah.libxml.TxmlNode)$",0
_487:
	db	"GetNextMathString",0
_488:
	db	"VarDef",0
_489:
	db	"ArrayDef",0
_490:
	db	"GetRealDatatype",0
_491:
	db	"($,i)$",0
_492:
	db	"IsType",0
_493:
	db	"($)b",0
	align	4
_462:
	dd	2
	dd	_463
	dd	3
	dd	_464
	dd	_458
	dd	8
	dd	3
	dd	_465
	dd	_454
	dd	12
	dd	3
	dd	_466
	dd	_456
	dd	16
	dd	3
	dd	_467
	dd	_468
	dd	20
	dd	3
	dd	_469
	dd	_456
	dd	24
	dd	3
	dd	_470
	dd	_454
	dd	28
	dd	3
	dd	_471
	dd	_468
	dd	32
	dd	3
	dd	_472
	dd	_458
	dd	36
	dd	3
	dd	_473
	dd	_454
	dd	40
	dd	3
	dd	_474
	dd	_475
	dd	44
	dd	3
	dd	_476
	dd	_454
	dd	48
	dd	3
	dd	_477
	dd	_454
	dd	52
	dd	3
	dd	_478
	dd	_456
	dd	56
	dd	3
	dd	_479
	dd	_456
	dd	60
	dd	6
	dd	_459
	dd	_460
	dd	__bb_TCGenerator_New
	dd	6
	dd	_461
	dd	_460
	dd	__bb_TCGenerator_Delete
	dd	6
	dd	_480
	dd	_481
	dd	__bb_TCGenerator_GetLanguage
	dd	6
	dd	_482
	dd	_483
	dd	__bb_TCGenerator_Generate
	dd	6
	dd	_484
	dd	_481
	dd	__bb_TCGenerator_GetTabs
	dd	6
	dd	_485
	dd	_486
	dd	__bb_TCGenerator_Block
	dd	6
	dd	_487
	dd	_486
	dd	__bb_TCGenerator_GetNextMathString
	dd	6
	dd	_488
	dd	_486
	dd	__bb_TCGenerator_VarDef
	dd	6
	dd	_489
	dd	_486
	dd	__bb_TCGenerator_ArrayDef
	dd	6
	dd	_490
	dd	_491
	dd	__bb_TCGenerator_GetRealDatatype
	dd	6
	dd	_492
	dd	_493
	dd	__bb_TCGenerator_IsType
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bb_TGenerator
	dd	_bbObjectFree
	dd	_462
	dd	64
	dd	__bb_TCGenerator_New
	dd	__bb_TCGenerator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCGenerator_Generate
	dd	__bb_TCGenerator_GetLanguage
	dd	__bb_TCGenerator_GetTabs
	dd	__bb_TCGenerator_Block
	dd	__bb_TCGenerator_GetNextMathString
	dd	__bb_TCGenerator_VarDef
	dd	__bb_TCGenerator_ArrayDef
	dd	__bb_TCGenerator_GetRealDatatype
	dd	__bb_TCGenerator_IsType
_564:
	db	"Self",0
_565:
	db	":TClass",0
	align	4
_563:
	dd	1
	dd	_459
	dd	2
	dd	_564
	dd	_565
	dd	-4
	dd	0
	align	4
_562:
	dd	3
	dd	0
	dd	0
_581:
	db	":TCGenerator",0
	align	4
_580:
	dd	1
	dd	_459
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	0
	align	4
_579:
	dd	3
	dd	0
	dd	0
	align	4
_600:
	dd	1
	dd	_480
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	0
	align	4
_599:
	dd	_545
	dd	29
	dd	3
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	67
_1757:
	db	"InputPath",0
_1758:
	db	"OutputPath",0
_1759:
	db	"File",0
_1760:
	db	":bah.libxml.TxmlDoc",0
_1761:
	db	"Root",0
_684:
	db	":bah.libxml.TxmlNode",0
_1061:
	db	"Text",0
	align	4
_1756:
	dd	1
	dd	_482
	dd	2
	dd	_564
	dd	_581
	dd	-8
	dd	2
	dd	_1757
	dd	_454
	dd	-12
	dd	2
	dd	_1758
	dd	_454
	dd	-16
	dd	2
	dd	_1759
	dd	_1760
	dd	-20
	dd	2
	dd	_1761
	dd	_684
	dd	-24
	dd	2
	dd	_1061
	dd	_454
	dd	-28
	dd	0
	align	4
_601:
	dd	_545
	dd	32
	dd	3
	align	4
_603:
	dd	_545
	dd	34
	dd	3
	align	4
_607:
	dd	_545
	dd	36
	dd	3
_695:
	db	"Node",0
	align	4
_694:
	dd	3
	dd	0
	dd	2
	dd	_695
	dd	_684
	dd	-32
	dd	0
	align	4
_619:
	dd	_545
	dd	37
	dd	4
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
_693:
	db	"Class",0
	align	4
_692:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_454
	dd	-36
	dd	2
	dd	_693
	dd	_565
	dd	-40
	dd	0
	align	4
_625:
	dd	_545
	dd	39
	dd	6
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_629:
	dd	_545
	dd	40
	dd	6
	align	4
_634:
	dd	_545
	dd	41
	dd	6
	align	4
_642:
	dd	_545
	dd	42
	dd	6
	align	4
_644:
	dd	_545
	dd	43
	dd	6
	align	4
_652:
	dd	_545
	dd	44
	dd	6
_686:
	db	"List",0
	align	4
_685:
	dd	3
	dd	0
	dd	2
	dd	_686
	dd	_458
	dd	-44
	dd	0
	align	4
_656:
	dd	_545
	dd	45
	dd	7
	align	4
_660:
	dd	_545
	dd	46
	dd	7
_683:
	db	"Node2",0
	align	4
_682:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-48
	dd	0
	align	4
_670:
	dd	_545
	dd	47
	dd	8
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_681:
	dd	3
	dd	0
	dd	0
	align	4
_674:
	dd	_545
	dd	48
	dd	9
	align	4
_687:
	dd	_545
	dd	52
	dd	6
	align	4
_696:
	dd	_545
	dd	55
	dd	3
	align	4
_1447:
	dd	3
	dd	0
	dd	2
	dd	_695
	dd	_684
	dd	-52
	dd	0
	align	4
_708:
	dd	_545
	dd	56
	dd	4
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_79:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_798:
	dd	3
	dd	0
	dd	0
	align	4
_717:
	dd	_545
	dd	58
	dd	6
	align	4
_797:
	dd	3
	dd	0
	dd	0
	align	4
_721:
	dd	_545
	dd	59
	dd	7
	align	4
_796:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-56
	dd	0
	align	4
_733:
	dd	_545
	dd	60
	dd	8
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_747:
	dd	3
	dd	0
	dd	0
	align	4
_737:
	dd	_545
	dd	61
	dd	9
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_764:
	dd	3
	dd	0
	dd	0
	align	4
_749:
	dd	_545
	dd	62
	dd	8
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_763:
	dd	3
	dd	0
	dd	0
	align	4
_753:
	dd	_545
	dd	63
	dd	9
	align	4
_765:
	dd	_545
	dd	65
	dd	8
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_795:
	dd	3
	dd	0
	dd	0
	align	4
_775:
	dd	_545
	dd	66
	dd	9
	align	4
_779:
	dd	_545
	dd	67
	dd	9
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,41,59,10
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,97,99,107,95,112,117,115,104,40,38,95
	align	4
_791:
	dd	_545
	dd	68
	dd	9
_932:
	db	"Datatype",0
_1062:
	db	"FuncDatatype",0
_1063:
	db	"UserFunc",0
_1064:
	db	"DatatypesText",0
	align	4
_1060:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_454
	dd	-60
	dd	2
	dd	_932
	dd	_454
	dd	-64
	dd	2
	dd	_1061
	dd	_454
	dd	-68
	dd	2
	dd	_1062
	dd	_454
	dd	-72
	dd	2
	dd	_1063
	dd	_456
	dd	-76
	dd	2
	dd	_1064
	dd	_454
	dd	-80
	dd	0
	align	4
_799:
	dd	_545
	dd	73
	dd	6
_803:
	db	"$",0
	align	4
_808:
	dd	_545
	dd	74
	dd	6
	align	4
_812:
	dd	_545
	dd	75
	dd	6
	align	4
_816:
	dd	_545
	dd	77
	dd	6
	align	4
_818:
	dd	_545
	dd	78
	dd	6
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_827:
	dd	3
	dd	0
	dd	0
	align	4
_826:
	dd	_545
	dd	79
	dd	7
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	71,67,83,116,97,99,107,78,111,100,101,42
	align	4
_834:
	dd	3
	dd	0
	dd	0
	align	4
_829:
	dd	_545
	dd	81
	dd	7
	align	4
_835:
	dd	_545
	dd	83
	dd	6
	align	4
_837:
	dd	_545
	dd	84
	dd	6
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_841:
	dd	_545
	dd	85
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
_842:
	dd	_545
	dd	86
	dd	6
	align	4
_844:
	dd	_545
	dd	87
	dd	6
	align	4
_935:
	dd	3
	dd	0
	dd	0
	align	4
_848:
	dd	_545
	dd	88
	dd	7
	align	4
_934:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-84
	dd	0
	align	4
_860:
	dd	_545
	dd	89
	dd	8
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
_933:
	db	"Add",0
	align	4
_931:
	dd	3
	dd	0
	dd	2
	dd	_932
	dd	_454
	dd	-88
	dd	2
	dd	_933
	dd	_454
	dd	-92
	dd	0
	align	4
_864:
	dd	_545
	dd	91
	dd	9
	align	4
_872:
	dd	_545
	dd	92
	dd	9
	align	4
_883:
	dd	3
	dd	0
	dd	0
	align	4
_882:
	dd	_545
	dd	93
	dd	10
	align	4
_884:
	dd	_545
	dd	95
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
_887:
	dd	_545
	dd	96
	dd	9
	align	4
_909:
	dd	3
	dd	0
	dd	0
	align	4
_897:
	dd	_545
	dd	96
	dd	95
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_910:
	dd	_545
	dd	97
	dd	9
	align	4
_914:
	dd	_545
	dd	98
	dd	9
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,112,116,114
	align	4
_929:
	dd	3
	dd	0
	dd	0
	align	4
_928:
	dd	_545
	dd	98
	dd	132
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	45,62,111,98,106,41
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	40,40,67,80,66,95,83,84,82,73,78,71,41
	align	4
_930:
	dd	_545
	dd	99
	dd	9
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_936:
	dd	_545
	dd	103
	dd	6
	align	4
_937:
	dd	_545
	dd	104
	dd	6
	align	4
_1014:
	dd	3
	dd	0
	dd	0
	align	4
_939:
	dd	_545
	dd	105
	dd	7
	align	4
_947:
	dd	_545
	dd	106
	dd	7
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,59,10
	align	4
_948:
	dd	_545
	dd	107
	dd	7
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	41,32,123,10
	align	4
_956:
	dd	_545
	dd	109
	dd	7
	align	4
_960:
	dd	_545
	dd	110
	dd	7
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_972:
	dd	3
	dd	0
	dd	0
	align	4
_962:
	dd	_545
	dd	110
	dd	31
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,114,101,116,118,97,108,117,101,59,10
	align	4
_973:
	dd	_545
	dd	111
	dd	7
	align	4
_1001:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-96
	dd	0
	align	4
_985:
	dd	_545
	dd	112
	dd	8
	align	4
_1000:
	dd	3
	dd	0
	dd	0
	align	4
_989:
	dd	_545
	dd	113
	dd	9
	align	4
_999:
	dd	_545
	dd	114
	dd	9
	align	4
_1002:
	dd	_545
	dd	117
	dd	7
	align	4
_1006:
	dd	_545
	dd	118
	dd	7
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
_1051:
	db	"RealName",0
	align	4
_1050:
	dd	3
	dd	0
	dd	2
	dd	_1051
	dd	_454
	dd	-100
	dd	0
	align	4
_1016:
	dd	_545
	dd	120
	dd	7
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_1020:
	dd	_545
	dd	121
	dd	7
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_1046:
	dd	3
	dd	0
	dd	0
	align	4
_1024:
	dd	_545
	dd	122
	dd	8
	align	4
_1025:
	dd	_545
	dd	123
	dd	8
	align	4
_1029:
	dd	_545
	dd	124
	dd	8
	align	4
_1032:
	dd	3
	dd	0
	dd	0
	align	4
_1031:
	dd	_545
	dd	124
	dd	28
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_1035:
	dd	3
	dd	0
	dd	0
	align	4
_1034:
	dd	_545
	dd	124
	dd	52
	align	4
_1036:
	dd	_545
	dd	125
	dd	8
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_1039:
	dd	_545
	dd	126
	dd	8
	align	4
_1043:
	dd	_545
	dd	127
	dd	8
	align	4
_1049:
	dd	3
	dd	0
	dd	0
	align	4
_1048:
	dd	_545
	dd	129
	dd	8
	align	4
_1052:
	dd	_545
	dd	133
	dd	6
_1369:
	db	"FInalizer",0
_1370:
	db	"Added",0
	align	4
_1368:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_454
	dd	-104
	dd	2
	dd	_693
	dd	_565
	dd	-108
	dd	2
	dd	_1061
	dd	_454
	dd	-112
	dd	2
	dd	_1369
	dd	_454
	dd	-116
	dd	2
	dd	_1370
	dd	_468
	dd	-4
	dd	0
	align	4
_1065:
	dd	_545
	dd	135
	dd	6
	align	4
_1069:
	dd	_545
	dd	136
	dd	6
	align	4
_1071:
	dd	_545
	dd	137
	dd	6
_1091:
	db	"tmp",0
	align	4
_1090:
	dd	3
	dd	0
	dd	2
	dd	_1091
	dd	_565
	dd	-120
	dd	0
	align	4
_1083:
	dd	_545
	dd	138
	dd	7
	align	4
_1089:
	dd	3
	dd	0
	dd	0
	align	4
_1087:
	dd	_545
	dd	139
	dd	8
	align	4
_1088:
	dd	_545
	dd	140
	dd	8
	align	4
_1092:
	dd	_545
	dd	143
	dd	6
	align	4
_1094:
	dd	_545
	dd	144
	dd	6
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,123,10
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	116,121,112,101,100,101,102,32,115,116,114,117,99,116,32,95
	align	4
_1095:
	dd	_545
	dd	145
	dd	6
	align	4
_1099:
	dd	_545
	dd	146
	dd	6
	align	4
_1103:
	dd	_545
	dd	147
	dd	6
	align	4
_1105:
	dd	_545
	dd	149
	dd	6
	align	4
_1159:
	dd	3
	dd	0
	dd	0
	align	4
_1109:
	dd	_545
	dd	150
	dd	7
	align	4
_1158:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-124
	dd	0
	align	4
_1121:
	dd	_545
	dd	151
	dd	8
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_1134:
	dd	3
	dd	0
	dd	0
	align	4
_1128:
	dd	_545
	dd	153
	dd	10
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	95,95,100,101,108,101,116,101,95,95,105,110,116,101,114,110
	dw	109,101,116,104,111,100,95,95
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,95,95
	align	4
_1133:
	dd	3
	dd	0
	dd	0
	align	4
_1132:
	dd	_545
	dd	154
	dd	11
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,95,100,105,109,95,48,95
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	25
	dw	95,95,100,101,108,101,116,101,95,95,105,110,116,101,114,110
	dw	109,101,116,104,111,100,95,95,95
_1157:
	db	"Data",0
	align	4
_1156:
	dd	3
	dd	0
	dd	2
	dd	_1157
	dd	_454
	dd	-128
	dd	0
	align	4
_1135:
	dd	_545
	dd	157
	dd	10
	align	4
_1143:
	dd	_545
	dd	158
	dd	10
	align	4
_1150:
	dd	3
	dd	0
	dd	0
	align	4
_1149:
	dd	_545
	dd	158
	dd	48
	align	4
_1151:
	dd	_545
	dd	159
	dd	10
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_1160:
	dd	_545
	dd	163
	dd	6
	align	4
_1164:
	dd	_545
	dd	164
	dd	6
	align	4
_1168:
	dd	_545
	dd	165
	dd	6
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	59,10
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	125
	align	4
_1173:
	dd	_545
	dd	166
	dd	6
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,32,110,111
	dw	100,101,41,32,123,10
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	118,111,105,100,32,116,114,97,99,101
	align	4
_1176:
	dd	_545
	dd	167
	dd	6
	align	4
_1180:
	dd	_545
	dd	168
	dd	6
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	110,111,100,101,45,62,109,97,114,107,61,49,59,10
	align	4
_1183:
	dd	_545
	dd	169
	dd	6
	align	4
_1185:
	dd	_545
	dd	170
	dd	6
	align	4
_1236:
	dd	3
	dd	0
	dd	0
	align	4
_1189:
	dd	_545
	dd	171
	dd	7
	align	4
_1235:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-132
	dd	0
	align	4
_1201:
	dd	_545
	dd	172
	dd	8
	align	4
_1234:
	dd	3
	dd	0
	dd	0
	align	4
_1205:
	dd	_545
	dd	173
	dd	9
_1233:
	db	"Access",0
	align	4
_1232:
	dd	3
	dd	0
	dd	2
	dd	_1233
	dd	_454
	dd	-136
	dd	0
	align	4
_1215:
	dd	_545
	dd	174
	dd	10
	align	4
_1221:
	dd	3
	dd	0
	dd	0
	align	4
_1217:
	dd	_545
	dd	175
	dd	11
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	71,67,83,116,97,99,107,78,111,100,101,42,32,116,109,112
	dw	59,10
	align	4
_1220:
	dd	_545
	dd	176
	dd	11
	align	4
_1222:
	dd	_545
	dd	178
	dd	10
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	42,41,110,111,100,101,45,62,111,98,106,41,45,62,95
	align	4
_107:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	40,40
	align	4
_1226:
	dd	_545
	dd	179
	dd	10
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,109,112,61
	align	4
_1229:
	dd	_545
	dd	180
	dd	10
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	50
	dw	105,102,32,40,116,109,112,32,33,61,32,78,85,76,76,32
	dw	38,38,32,116,109,112,45,62,109,97,114,107,61,61,48,41
	dw	32,116,109,112,45,62,116,114,97,99,101,40,116,109,112,41
	dw	59,10
	align	4
_1237:
	dd	_545
	dd	185
	dd	6
	align	4
_1241:
	dd	_545
	dd	186
	dd	6
	align	4
_1244:
	dd	_545
	dd	187
	dd	6
	align	4
_1254:
	dd	_545
	dd	189
	dd	6
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,32,110,111
	dw	100,101,32,41,59,10
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	71,67,83,116,97,99,107,78,111,100,101,42,32,110,101,119
	dw	95
	align	4
_1264:
	dd	_545
	dd	191
	dd	6
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,32,110,111
	dw	100,101,32,41,32,123,10
	align	4
_1274:
	dd	_545
	dd	192
	dd	6
	align	4
_1278:
	dd	_545
	dd	193
	dd	6
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	42,41,110,111,100,101,45,62,111,98,106,59,10
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	42,32,116,109,112,32,61,32,40
	align	4
_1288:
	dd	_545
	dd	194
	dd	6
	align	4
_1300:
	dd	3
	dd	0
	dd	0
	align	4
_1290:
	dd	_545
	dd	195
	dd	7
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	110,111,100,101,45,62,102,105,110,97,108,105,122,101,114,32
	dw	61,32,38
	align	4
_1301:
	dd	_545
	dd	198
	dd	6
	align	4
_1343:
	dd	3
	dd	0
	dd	0
	align	4
_1305:
	dd	_545
	dd	199
	dd	7
	align	4
_1342:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-140
	dd	0
	align	4
_1317:
	dd	_545
	dd	200
	dd	8
	align	4
_1324:
	dd	3
	dd	0
	dd	0
	align	4
_1341:
	dd	3
	dd	0
	dd	0
	align	4
_1325:
	dd	_545
	dd	204
	dd	10
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,61
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	116,109,112,45,62,95
	align	4
_1344:
	dd	_545
	dd	209
	dd	6
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	114,101,116,117,114,110,32,110,111,100,101,59,10
	align	4
_1354:
	dd	_545
	dd	210
	dd	6
	align	4
_1358:
	dd	_545
	dd	211
	dd	6
	align	4
_1446:
	dd	3
	dd	0
	dd	0
	align	4
_1371:
	dd	_545
	dd	213
	dd	6
	align	4
_1381:
	dd	_545
	dd	214
	dd	6
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	37
	dw	105,110,116,32,109,97,105,110,32,40,32,105,110,116,32,97
	dw	114,103,99,44,32,99,104,97,114,42,42,32,97,114,103,118
	dw	32,41,32,123,10
	align	4
_1391:
	dd	_545
	dd	215
	dd	6
	align	4
_1395:
	dd	_545
	dd	216
	dd	6
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_1405:
	dd	_545
	dd	217
	dd	6
_1409:
	db	"$",0
	align	4
_1414:
	dd	_545
	dd	218
	dd	6
	align	4
_1424:
	dd	_545
	dd	219
	dd	6
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	114,101,116,117,114,110,32,48,59,10
	align	4
_1432:
	dd	_545
	dd	220
	dd	6
	align	4
_1436:
	dd	_545
	dd	221
	dd	6
	align	4
_1448:
	dd	_545
	dd	226
	dd	3
_1688:
	db	"Arr",0
	align	4
_1687:
	dd	3
	dd	0
	dd	2
	dd	_456
	dd	_456
	dd	-144
	dd	2
	dd	_1061
	dd	_454
	dd	-148
	dd	2
	dd	_1233
	dd	_454
	dd	-152
	dd	2
	dd	_1688
	dd	_454
	dd	-156
	dd	0
	align	4
_1454:
	dd	_545
	dd	243
	dd	4
	align	4
_1456:
	dd	_545
	dd	244
	dd	4
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	118,111,105,100,32,116,114,97,99,101,100,68,105,109,67,111
	dw	117,110,116
	align	4
_1459:
	dd	_545
	dd	245
	dd	4
	align	4
_1463:
	dd	_545
	dd	246
	dd	4
	align	4
_1466:
	dd	_545
	dd	247
	dd	4
_1481:
	db	"j",0
	align	4
_1480:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-160
	dd	0
	align	4
_1470:
	dd	_545
	dd	248
	dd	5
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	105,110,116,32,105
	align	4
_1473:
	dd	_545
	dd	249
	dd	5
	align	4
_138:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	43,43,41,32,123,10
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	93,59,32,105
	align	4
_136:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	60,110,111,100,101,45,62,105,110,102,111,91
	align	4
_135:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,59,32,105
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,32,40,105
	align	4
_1476:
	dd	_545
	dd	250
	dd	5
	align	4
_1482:
	dd	_545
	dd	252
	dd	4
	align	4
_1484:
	dd	_545
	dd	253
	dd	4
	align	4
_1486:
	dd	_545
	dd	254
	dd	4
	align	4
_1491:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-164
	dd	0
	align	4
_1490:
	dd	_545
	dd	255
	dd	5
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_1492:
	dd	_545
	dd	257
	dd	4
	align	4
_144:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	41,110,111,100,101,45,62,111,98,106,41
	align	4
_143:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	40,40,40,71,67,83,116,97,99,107,78,111,100,101
	align	4
_1493:
	dd	_545
	dd	258
	dd	4
	align	4
_1498:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-168
	dd	0
	align	4
_1497:
	dd	_545
	dd	259
	dd	5
	align	4
_149:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_148:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,105
	align	4
_1499:
	dd	_545
	dd	261
	dd	4
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_1500:
	dd	_545
	dd	262
	dd	4
	align	4
_151:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	71,67,83,116,97,99,107,78,111,100,101,42,32,116,109,112
	dw	32,61,32
	align	4
_1503:
	dd	_545
	dd	263
	dd	4
	align	4
_152:
	dd	_bbStringClass
	dd	2147483647
	dd	72
	dw	105,102,32,40,116,109,112,32,33,61,32,78,85,76,76,32
	dw	38,38,32,116,109,112,45,62,109,97,114,107,61,61,48,32
	dw	38,38,32,116,109,112,45,62,116,114,97,99,101,32,33,61
	dw	32,78,85,76,76,41,32,116,109,112,45,62,116,114,97,99
	dw	101,40,116,109,112,41,59,10
	align	4
_1506:
	dd	_545
	dd	264
	dd	4
	align	4
_1517:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-172
	dd	0
	align	4
_1510:
	dd	_545
	dd	265
	dd	5
	align	4
_1514:
	dd	_545
	dd	266
	dd	5
	align	4
_1518:
	dd	_545
	dd	269
	dd	4
	align	4
_1522:
	dd	_545
	dd	270
	dd	4
	align	4
_1525:
	dd	_545
	dd	271
	dd	4
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	40,105,110,116,32,115,105,122,101
	align	4
_156:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	71,67,83,116,97,99,107,78,111,100,101,42,32,97,108,108
	dw	111,99,97,114,114,97,121,95,100,105,109
	align	4
_1528:
	dd	_545
	dd	272
	dd	4
	align	4
_1533:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-176
	dd	0
	align	4
_1532:
	dd	_545
	dd	273
	dd	5
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_1534:
	dd	_545
	dd	275
	dd	4
	align	4
_1535:
	dd	_545
	dd	276
	dd	4
	align	4
_1539:
	dd	_545
	dd	277
	dd	4
	align	4
_1542:
	dd	_545
	dd	278
	dd	4
_1548:
	db	"k",0
	align	4
_1547:
	dd	3
	dd	0
	dd	2
	dd	_1548
	dd	_456
	dd	-180
	dd	0
	align	4
_1546:
	dd	_545
	dd	279
	dd	5
	align	4
_1549:
	dd	_545
	dd	281
	dd	4
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	41
	dw	32,109,101,109,61,109,97,108,108,111,99,40,115,105,122,101
	dw	111,102,40,71,67,83,116,97,99,107,78,111,100,101,41,42
	dw	112,97,114,97,109,49,41,59,10
	align	4
_1550:
	dd	_545
	dd	283
	dd	4
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_1553:
	dd	_545
	dd	284
	dd	4
	align	4
_1562:
	dd	3
	dd	0
	dd	2
	dd	_1548
	dd	_456
	dd	-184
	dd	0
	align	4
_1557:
	dd	_545
	dd	285
	dd	5
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_1558:
	dd	_545
	dd	286
	dd	5
	align	4
_1561:
	dd	3
	dd	0
	dd	0
	align	4
_1560:
	dd	_545
	dd	286
	dd	17
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_1563:
	dd	_545
	dd	288
	dd	4
	align	4
_172:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_1564:
	dd	_545
	dd	290
	dd	4
	align	4
_1639:
	dd	3
	dd	0
	dd	2
	dd	_1548
	dd	_456
	dd	-188
	dd	0
	align	4
_1568:
	dd	_545
	dd	291
	dd	5
	align	4
_179:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	59,118,97,114,105
	align	4
_178:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	60,112,97,114,97,109
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	61,48,59,118,97,114,105
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,111,114,40,118,97,114,105
	align	4
_1571:
	dd	_545
	dd	292
	dd	5
	align	4
_1575:
	dd	_545
	dd	293
	dd	5
_1599:
	db	"Tmp",0
_1600:
	db	"MulPtr",0
	align	4
_1598:
	dd	3
	dd	0
	dd	2
	dd	_1599
	dd	_454
	dd	-192
	dd	2
	dd	_1600
	dd	_454
	dd	-196
	dd	0
	align	4
_1577:
	dd	_545
	dd	294
	dd	6
	align	4
_1580:
	dd	_545
	dd	295
	dd	6
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_1582:
	dd	_545
	dd	296
	dd	6
	align	4
_1587:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-200
	dd	0
	align	4
_1586:
	dd	_545
	dd	298
	dd	7
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_1588:
	dd	_545
	dd	300
	dd	6
	align	4
_1589:
	dd	_545
	dd	301
	dd	6
	align	4
_1591:
	dd	_545
	dd	302
	dd	6
	align	4
_1596:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-204
	dd	0
	align	4
_1595:
	dd	_545
	dd	303
	dd	7
	align	4
_1597:
	dd	_545
	dd	305
	dd	6
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	33
	dw	41,109,97,108,108,111,99,40,115,105,122,101,111,102,40,71
	dw	67,83,116,97,99,107,78,111,100,101,41,42,112,97,114,97
	dw	109
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	61,40,71,67,83,116,97,99,107,78,111,100,101,42
	align	4
_1638:
	dd	3
	dd	0
	dd	2
	dd	_1233
	dd	_454
	dd	-208
	dd	0
	align	4
_1602:
	dd	_545
	dd	307
	dd	6
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	105,102,32,40,115,105,122,101,32,61,61,32,45,49,41,10
	align	4
_1605:
	dd	_545
	dd	308
	dd	6
	align	4
_1609:
	dd	_545
	dd	309
	dd	6
	align	4
_1611:
	dd	_545
	dd	310
	dd	6
	align	4
_1614:
	dd	_545
	dd	311
	dd	6
	align	4
_1619:
	dd	3
	dd	0
	dd	2
	dd	_1481
	dd	_456
	dd	-212
	dd	0
	align	4
_1618:
	dd	_545
	dd	312
	dd	7
	align	4
_1620:
	dd	_545
	dd	314
	dd	6
	align	4
_1621:
	dd	_545
	dd	315
	dd	6
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,61,32,78,85,76,76,59,10
	align	4
_1622:
	dd	_545
	dd	316
	dd	6
	align	4
_1626:
	dd	_545
	dd	317
	dd	6
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,108,115,101,10
	align	4
_1629:
	dd	_545
	dd	318
	dd	6
	align	4
_1633:
	dd	_545
	dd	319
	dd	6
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	34
	dw	32,61,32,71,67,95,109,97,108,108,111,99,40,115,105,122
	dw	101,44,32,38,110,111,114,109,97,108,84,114,97,99,101,41
	dw	59,10
	align	4
_1634:
	dd	_545
	dd	320
	dd	6
	align	4
_1640:
	dd	_545
	dd	323
	dd	4
	align	4
_1651:
	dd	3
	dd	0
	dd	2
	dd	_1548
	dd	_456
	dd	-216
	dd	0
	align	4
_1644:
	dd	_545
	dd	324
	dd	5
	align	4
_1648:
	dd	_545
	dd	325
	dd	5
	align	4
_1652:
	dd	_545
	dd	327
	dd	4
	align	4
_200:
	dd	_bbStringClass
	dd	2147483647
	dd	59
	dw	71,67,83,116,97,99,107,78,111,100,101,42,32,110,111,100
	dw	101,61,40,71,67,83,116,97,99,107,78,111,100,101,42,41
	dw	71,67,95,109,97,108,108,111,99,40,48,44,38,116,114,97
	dw	99,101,100,68,105,109,67,111,117,110,116
	align	4
_1655:
	dd	_545
	dd	328
	dd	4
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	110,111,100,101,45,62,111,98,106,32,61,32,40,118,111,105
	dw	100,42,41,109,101,109,59,10
	align	4
_1658:
	dd	_545
	dd	329
	dd	4
	align	4
_202:
	dd	_bbStringClass
	dd	2147483647
	dd	32
	dw	110,111,100,101,45,62,105,110,102,111,32,61,32,109,97,108
	dw	108,111,99,40,115,105,122,101,111,102,40,105,110,116,41,42
	align	4
_1661:
	dd	_545
	dd	330
	dd	4
	align	4
_1668:
	dd	3
	dd	0
	dd	2
	dd	_1548
	dd	_456
	dd	-220
	dd	0
	align	4
_1665:
	dd	_545
	dd	331
	dd	5
	align	4
_207:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	93,32,61,32,112,97,114,97,109
	align	4
_206:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	110,111,100,101,45,62,105,110,102,111,91
	align	4
_1669:
	dd	_545
	dd	333
	dd	4
	align	4
_1672:
	dd	_545
	dd	334
	dd	4
	align	4
_1676:
	dd	_545
	dd	335
	dd	4
	align	4
_1677:
	dd	_545
	dd	336
	dd	4
	align	4
_1689:
	dd	_545
	dd	338
	dd	3
	align	4
_1691:
	dd	_545
	dd	339
	dd	3
	align	4
_208:
	dd	_bbStringClass
	dd	2147483647
	dd	38
	dw	118,111,105,100,32,110,111,114,109,97,108,84,114,97,99,101
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,32,110,111
	dw	100,101,41,32,123,10
	align	4
_1694:
	dd	_545
	dd	340
	dd	3
	align	4
_1698:
	dd	_545
	dd	341
	dd	3
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	110,111,100,101,45,62,109,97,114,107,32,61,32,49,59,10
	align	4
_1701:
	dd	_545
	dd	342
	dd	3
	align	4
_1705:
	dd	_545
	dd	343
	dd	3
	align	4
_1706:
	dd	_545
	dd	344
	dd	3
	align	4
_1716:
	dd	_545
	dd	345
	dd	3
	align	4
_1728:
	dd	_bbStringClass
	dd	2147483647
	dd	106
	dw	35,105,110,99,108,117,100,101,32,34,46,46,47,76,97,110
	dw	103,117,97,103,101,47,67,47,108,105,98,115,47,99,112,98
	dw	95,99,111,114,101,46,104,34,10,35,105,110,99,108,117,100
	dw	101,32,60,115,116,100,108,105,98,46,104,62,10,35,105,110
	dw	99,108,117,100,101,32,34,46,46,47,76,97,110,103,117,97
	dw	103,101,47,67,47,108,105,98,115,47,99,112,98,95,103,114
	dw	97,112,104,105,99,115,46,104,34,10
	align	4
_1735:
	dd	_545
	dd	346
	dd	3
	align	4
_1745:
	dd	_545
	dd	347
	dd	3
	align	4
_1753:
	dd	_545
	dd	348
	dd	3
	align	4
_1773:
	dd	1
	dd	_484
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_1061
	dd	_454
	dd	-8
	dd	0
	align	4
_1762:
	dd	_545
	dd	352
	dd	3
	align	4
_1764:
	dd	_545
	dd	353
	dd	3
	align	4
_1771:
	dd	3
	dd	0
	dd	2
	dd	_456
	dd	_456
	dd	-12
	dd	0
	align	4
_1770:
	dd	_545
	dd	354
	dd	4
	align	4
_217:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_1772:
	dd	_545
	dd	356
	dd	3
	align	4
_1869:
	dd	1
	dd	_485
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_695
	dd	_684
	dd	-8
	dd	2
	dd	_465
	dd	_454
	dd	-12
	dd	0
	align	4
_1774:
	dd	_545
	dd	359
	dd	3
	align	4
_1776:
	dd	_545
	dd	360
	dd	3
	align	4
_218:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	115,116,97,99,107,95,101,110,116,101,114,40,41,59,10
	align	4
_1779:
	dd	_545
	dd	361
	dd	3
	align	4
_1782:
	dd	_545
	dd	362
	dd	3
	align	4
_1790:
	dd	_545
	dd	364
	dd	3
_1802:
	db	"P",0
	align	4
_1801:
	dd	3
	dd	0
	dd	2
	dd	_1802
	dd	_454
	dd	-16
	dd	0
	align	4
_1798:
	dd	_545
	dd	365
	dd	4
	align	4
_222:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,97,99,107,95,112,117,115,104,40,38
	align	4
_1803:
	dd	_545
	dd	367
	dd	3
_1807:
	db	"$",0
	align	4
_1812:
	dd	_545
	dd	368
	dd	3
	align	4
_1864:
	dd	3
	dd	0
	dd	0
	align	4
_1816:
	dd	_545
	dd	369
	dd	4
	align	4
_1863:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-20
	dd	0
	align	4
_1828:
	dd	_545
	dd	370
	dd	5
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_1862:
	dd	3
	dd	0
	dd	2
	dd	_1061
	dd	_454
	dd	-24
	dd	0
	align	4
_1836:
	dd	_545
	dd	371
	dd	6
	align	4
_1842:
	dd	_545
	dd	372
	dd	6
	align	4
_1861:
	dd	3
	dd	0
	dd	0
	align	4
_1844:
	dd	_545
	dd	373
	dd	7
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_228:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	123
	align	4
_1855:
	dd	3
	dd	0
	dd	0
	align	4
_1852:
	dd	_545
	dd	374
	dd	9
	align	4
_1860:
	dd	3
	dd	0
	dd	0
	align	4
_1857:
	dd	_545
	dd	376
	dd	8
	align	4
_1865:
	dd	_545
	dd	382
	dd	3
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	115,116,97,99,107,95,108,101,97,118,101,40,41,59,10
	align	4
_1868:
	dd	_545
	dd	383
	dd	3
	align	4
_3348:
	dd	1
	dd	_487
	dd	2
	dd	_564
	dd	_581
	dd	-16
	dd	2
	dd	_695
	dd	_684
	dd	-20
	dd	2
	dd	_1061
	dd	_454
	dd	-24
	dd	0
	align	4
_1870:
	dd	_545
	dd	386
	dd	3
	align	4
_1872:
	dd	_545
	dd	387
	dd	3
	align	4
_1875:
	dd	3
	dd	0
	dd	0
	align	4
_1874:
	dd	_545
	dd	387
	dd	21
	align	4
_1876:
	dd	_545
	dd	388
	dd	3
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_237:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_242:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_261:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_266:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_270:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_285:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_290:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_295:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,111,116
	align	4
_300:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_301:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_302:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_320:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_324:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_332:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_338:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_362:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_369:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_371:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_372:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_373:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_388:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_391:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_393:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_404:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_410:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_1953:
	dd	3
	dd	0
	dd	0
	align	4
_1919:
	dd	_545
	dd	390
	dd	5
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_1920:
	dd	_545
	dd	391
	dd	5
	align	4
_1951:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-28
	dd	0
	align	4
_1932:
	dd	_545
	dd	392
	dd	6
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_236:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_1944:
	dd	3
	dd	0
	dd	0
	align	4
_1939:
	dd	_545
	dd	394
	dd	8
	align	4
_1950:
	dd	3
	dd	0
	dd	0
	align	4
_1945:
	dd	_545
	dd	396
	dd	8
	align	4
_1952:
	dd	_545
	dd	399
	dd	5
	align	4
_1986:
	dd	3
	dd	0
	dd	0
	align	4
_1954:
	dd	_545
	dd	401
	dd	5
	align	4
_1985:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-32
	dd	0
	align	4
_1966:
	dd	_545
	dd	402
	dd	6
	align	4
_1978:
	dd	3
	dd	0
	dd	0
	align	4
_1973:
	dd	_545
	dd	404
	dd	8
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_1984:
	dd	3
	dd	0
	dd	0
	align	4
_1979:
	dd	_545
	dd	406
	dd	8
	align	4
_2019:
	dd	3
	dd	0
	dd	0
	align	4
_1987:
	dd	_545
	dd	410
	dd	5
	align	4
_2018:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-36
	dd	0
	align	4
_1999:
	dd	_545
	dd	411
	dd	6
	align	4
_2011:
	dd	3
	dd	0
	dd	0
	align	4
_2006:
	dd	_545
	dd	413
	dd	8
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_2017:
	dd	3
	dd	0
	dd	0
	align	4
_2012:
	dd	_545
	dd	415
	dd	8
	align	4
_2052:
	dd	3
	dd	0
	dd	0
	align	4
_2020:
	dd	_545
	dd	419
	dd	5
	align	4
_2051:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-40
	dd	0
	align	4
_2032:
	dd	_545
	dd	420
	dd	6
	align	4
_2044:
	dd	3
	dd	0
	dd	0
	align	4
_2039:
	dd	_545
	dd	422
	dd	8
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_2050:
	dd	3
	dd	0
	dd	0
	align	4
_2045:
	dd	_545
	dd	424
	dd	8
	align	4
_2085:
	dd	3
	dd	0
	dd	0
	align	4
_2053:
	dd	_545
	dd	428
	dd	5
	align	4
_2084:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-44
	dd	0
	align	4
_2065:
	dd	_545
	dd	429
	dd	6
	align	4
_2077:
	dd	3
	dd	0
	dd	0
	align	4
_2072:
	dd	_545
	dd	431
	dd	8
	align	4
_2083:
	dd	3
	dd	0
	dd	0
	align	4
_2078:
	dd	_545
	dd	433
	dd	8
	align	4
_2118:
	dd	3
	dd	0
	dd	0
	align	4
_2086:
	dd	_545
	dd	437
	dd	5
	align	4
_2117:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-48
	dd	0
	align	4
_2098:
	dd	_545
	dd	438
	dd	6
	align	4
_2110:
	dd	3
	dd	0
	dd	0
	align	4
_2105:
	dd	_545
	dd	440
	dd	8
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_2116:
	dd	3
	dd	0
	dd	0
	align	4
_2111:
	dd	_545
	dd	442
	dd	8
	align	4
_2151:
	dd	3
	dd	0
	dd	0
	align	4
_2119:
	dd	_545
	dd	446
	dd	5
	align	4
_2150:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-52
	dd	0
	align	4
_2131:
	dd	_545
	dd	447
	dd	6
	align	4
_2143:
	dd	3
	dd	0
	dd	0
	align	4
_2138:
	dd	_545
	dd	449
	dd	8
	align	4
_265:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,124,124,32
	align	4
_2149:
	dd	3
	dd	0
	dd	0
	align	4
_2144:
	dd	_545
	dd	451
	dd	8
	align	4
_2184:
	dd	3
	dd	0
	dd	0
	align	4
_2152:
	dd	_545
	dd	455
	dd	5
	align	4
_2183:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-56
	dd	0
	align	4
_2164:
	dd	_545
	dd	456
	dd	6
	align	4
_2176:
	dd	3
	dd	0
	dd	0
	align	4
_2171:
	dd	_545
	dd	458
	dd	8
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_2182:
	dd	3
	dd	0
	dd	0
	align	4
_2177:
	dd	_545
	dd	460
	dd	8
	align	4
_2217:
	dd	3
	dd	0
	dd	0
	align	4
_2185:
	dd	_545
	dd	464
	dd	5
	align	4
_2216:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-60
	dd	0
	align	4
_2197:
	dd	_545
	dd	465
	dd	6
	align	4
_2209:
	dd	3
	dd	0
	dd	0
	align	4
_2204:
	dd	_545
	dd	467
	dd	8
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_2215:
	dd	3
	dd	0
	dd	0
	align	4
_2210:
	dd	_545
	dd	469
	dd	8
	align	4
_2250:
	dd	3
	dd	0
	dd	0
	align	4
_2218:
	dd	_545
	dd	473
	dd	5
	align	4
_2249:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-64
	dd	0
	align	4
_2230:
	dd	_545
	dd	474
	dd	6
	align	4
_2242:
	dd	3
	dd	0
	dd	0
	align	4
_2237:
	dd	_545
	dd	476
	dd	8
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_2248:
	dd	3
	dd	0
	dd	0
	align	4
_2243:
	dd	_545
	dd	478
	dd	8
	align	4
_2283:
	dd	3
	dd	0
	dd	0
	align	4
_2251:
	dd	_545
	dd	482
	dd	5
	align	4
_2282:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-68
	dd	0
	align	4
_2263:
	dd	_545
	dd	483
	dd	6
	align	4
_2275:
	dd	3
	dd	0
	dd	0
	align	4
_2270:
	dd	_545
	dd	485
	dd	8
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_2281:
	dd	3
	dd	0
	dd	0
	align	4
_2276:
	dd	_545
	dd	487
	dd	8
	align	4
_2316:
	dd	3
	dd	0
	dd	0
	align	4
_2284:
	dd	_545
	dd	491
	dd	5
	align	4
_2315:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-72
	dd	0
	align	4
_2296:
	dd	_545
	dd	492
	dd	6
	align	4
_2308:
	dd	3
	dd	0
	dd	0
	align	4
_2303:
	dd	_545
	dd	494
	dd	8
	align	4
_289:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_2314:
	dd	3
	dd	0
	dd	0
	align	4
_2309:
	dd	_545
	dd	496
	dd	8
	align	4
_2349:
	dd	3
	dd	0
	dd	0
	align	4
_2317:
	dd	_545
	dd	500
	dd	5
	align	4
_2348:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-76
	dd	0
	align	4
_2329:
	dd	_545
	dd	501
	dd	6
	align	4
_2341:
	dd	3
	dd	0
	dd	0
	align	4
_2336:
	dd	_545
	dd	503
	dd	8
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_2347:
	dd	3
	dd	0
	dd	0
	align	4
_2342:
	dd	_545
	dd	505
	dd	8
	align	4
_2355:
	dd	3
	dd	0
	dd	0
	align	4
_2350:
	dd	_545
	dd	509
	dd	5
	align	4
_297:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,41
	align	4
_296:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	40,33,40
	align	4
_2359:
	dd	3
	dd	0
	dd	0
	align	4
_2356:
	dd	_545
	dd	511
	dd	5
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2364:
	dd	3
	dd	0
	dd	0
	align	4
_2360:
	dd	_545
	dd	513
	dd	5
	align	4
_1720:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2361:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	110,101,119,83,116,114,105,110,103,40,34
	align	4
_2368:
	dd	3
	dd	0
	dd	0
	align	4
_2365:
	dd	_545
	dd	515
	dd	5
	align	4
_2372:
	dd	3
	dd	0
	dd	0
	align	4
_2369:
	dd	_545
	dd	517
	dd	5
_2525:
	db	"CastFrom",0
_2526:
	db	"CastTo",0
	align	4
_2524:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_454
	dd	-80
	dd	2
	dd	_2526
	dd	_454
	dd	-84
	dd	0
	align	4
_2373:
	dd	_545
	dd	519
	dd	5
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_2377:
	dd	_545
	dd	520
	dd	5
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_2381:
	dd	_545
	dd	521
	dd	5
	align	4
_2428:
	dd	3
	dd	0
	dd	0
	align	4
_2383:
	dd	_545
	dd	522
	dd	6
	align	4
_2397:
	dd	3
	dd	0
	dd	0
	align	4
_2392:
	dd	_545
	dd	524
	dd	8
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_2403:
	dd	3
	dd	0
	dd	0
	align	4
_2398:
	dd	_545
	dd	526
	dd	8
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_2409:
	dd	3
	dd	0
	dd	0
	align	4
_2404:
	dd	_545
	dd	528
	dd	8
	align	4
_307:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_2415:
	dd	3
	dd	0
	dd	0
	align	4
_2410:
	dd	_545
	dd	530
	dd	8
	align	4
_308:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_2421:
	dd	3
	dd	0
	dd	0
	align	4
_2416:
	dd	_545
	dd	532
	dd	8
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_2427:
	dd	3
	dd	0
	dd	0
	align	4
_2422:
	dd	_545
	dd	534
	dd	8
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_2523:
	dd	3
	dd	0
	dd	0
	align	4
_2430:
	dd	_545
	dd	536
	dd	5
	align	4
_2477:
	dd	3
	dd	0
	dd	0
	align	4
_2432:
	dd	_545
	dd	537
	dd	6
	align	4
_2446:
	dd	3
	dd	0
	dd	0
	align	4
_2441:
	dd	_545
	dd	539
	dd	8
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_2452:
	dd	3
	dd	0
	dd	0
	align	4
_2447:
	dd	_545
	dd	541
	dd	8
	align	4
_312:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_2458:
	dd	3
	dd	0
	dd	0
	align	4
_2453:
	dd	_545
	dd	543
	dd	8
	align	4
_313:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_2464:
	dd	3
	dd	0
	dd	0
	align	4
_2459:
	dd	_545
	dd	545
	dd	8
	align	4
_314:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_2470:
	dd	3
	dd	0
	dd	0
	align	4
_2465:
	dd	_545
	dd	547
	dd	8
	align	4
_315:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_2476:
	dd	3
	dd	0
	dd	0
	align	4
_2471:
	dd	_545
	dd	549
	dd	8
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_2522:
	dd	3
	dd	0
	dd	0
	align	4
_2479:
	dd	_545
	dd	551
	dd	5
	align	4
_2494:
	dd	3
	dd	0
	dd	0
	align	4
_2485:
	dd	_545
	dd	552
	dd	6
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_2521:
	dd	3
	dd	0
	dd	0
	align	4
_2496:
	dd	_545
	dd	553
	dd	5
	align	4
_318:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	63
	align	4
_2505:
	dd	3
	dd	0
	dd	0
	align	4
_2500:
	dd	_545
	dd	554
	dd	6
	align	4
_2520:
	dd	3
	dd	0
	dd	0
	align	4
_2507:
	dd	_545
	dd	556
	dd	6
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	99,97,115,116,116,111
_2564:
	db	"Tabled",0
	align	4
_2563:
	dd	3
	dd	0
	dd	2
	dd	_686
	dd	_458
	dd	-88
	dd	2
	dd	_2564
	dd	_468
	dd	-4
	dd	0
	align	4
_2527:
	dd	_545
	dd	559
	dd	5
	align	4
_2530:
	dd	_545
	dd	560
	dd	5
	align	4
_2534:
	dd	_545
	dd	561
	dd	5
	align	4
_2536:
	dd	_545
	dd	562
	dd	5
	align	4
_2560:
	dd	3
	dd	0
	dd	0
	align	4
_2538:
	dd	_545
	dd	563
	dd	6
	align	4
_2559:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-92
	dd	0
	align	4
_2548:
	dd	_545
	dd	564
	dd	7
	align	4
_2558:
	dd	3
	dd	0
	dd	0
	align	4
_2552:
	dd	_545
	dd	565
	dd	8
	align	4
_2557:
	dd	_545
	dd	566
	dd	8
	align	4
_2561:
	dd	_545
	dd	570
	dd	5
	align	4
_2562:
	dd	_545
	dd	571
	dd	5
_2635:
	db	"Push",0
	align	4
_2634:
	dd	3
	dd	0
	dd	2
	dd	_2635
	dd	_454
	dd	-96
	dd	0
	align	4
_2565:
	dd	_545
	dd	573
	dd	5
	align	4
_2567:
	dd	_545
	dd	574
	dd	5
	align	4
_2627:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-100
	dd	0
	align	4
_2579:
	dd	_545
	dd	575
	dd	6
	align	4
_2586:
	dd	3
	dd	0
	dd	0
	align	4
_2583:
	dd	_545
	dd	576
	dd	7
	align	4
_2596:
	dd	3
	dd	0
	dd	0
	align	4
_2588:
	dd	_545
	dd	577
	dd	6
	align	4
_2595:
	dd	3
	dd	0
	dd	0
	align	4
_2592:
	dd	_545
	dd	578
	dd	7
	align	4
_2597:
	dd	_545
	dd	580
	dd	6
	align	4
_2626:
	dd	3
	dd	0
	dd	0
	align	4
_2607:
	dd	_545
	dd	581
	dd	7
	align	4
_2608:
	dd	_545
	dd	582
	dd	7
	align	4
_2625:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-104
	dd	0
	align	4
_2620:
	dd	_545
	dd	583
	dd	8
	align	4
_331:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,41
	align	4
_2628:
	dd	_545
	dd	587
	dd	5
	align	4
_2633:
	dd	_545
	dd	588
	dd	5
	align	4
_2675:
	dd	3
	dd	0
	dd	0
	align	4
_2636:
	dd	_545
	dd	590
	dd	5
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_2637:
	dd	_545
	dd	591
	dd	5
	align	4
_2664:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-108
	dd	0
	align	4
_2649:
	dd	_545
	dd	593
	dd	6
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_2663:
	dd	3
	dd	0
	dd	0
	align	4
_2653:
	dd	_545
	dd	594
	dd	7
	align	4
_2658:
	dd	_545
	dd	595
	dd	7
	align	4
_2662:
	dd	_545
	dd	596
	dd	7
	align	4
_2665:
	dd	_545
	dd	599
	dd	5
	align	4
_2668:
	dd	_545
	dd	600
	dd	5
	align	4
_2672:
	dd	_545
	dd	601
	dd	5
	align	4
_2690:
	dd	3
	dd	0
	dd	0
	align	4
_2676:
	dd	_545
	dd	603
	dd	5
	align	4
_2680:
	dd	_545
	dd	604
	dd	5
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_2683:
	dd	_545
	dd	605
	dd	5
	align	4
_2687:
	dd	_545
	dd	606
	dd	5
	align	4
_2730:
	dd	3
	dd	0
	dd	0
	align	4
_2691:
	dd	_545
	dd	608
	dd	5
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_2692:
	dd	_545
	dd	609
	dd	5
	align	4
_2719:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-112
	dd	0
	align	4
_2704:
	dd	_545
	dd	610
	dd	6
	align	4
_2718:
	dd	3
	dd	0
	dd	0
	align	4
_2708:
	dd	_545
	dd	611
	dd	7
	align	4
_2713:
	dd	_545
	dd	612
	dd	7
	align	4
_2717:
	dd	_545
	dd	613
	dd	7
	align	4
_2720:
	dd	_545
	dd	616
	dd	5
	align	4
_2723:
	dd	_545
	dd	617
	dd	5
	align	4
_2727:
	dd	_545
	dd	618
	dd	5
	align	4
_2770:
	dd	3
	dd	0
	dd	0
	align	4
_2731:
	dd	_545
	dd	620
	dd	5
	align	4
_346:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_2732:
	dd	_545
	dd	621
	dd	5
	align	4
_2736:
	dd	_545
	dd	622
	dd	5
	align	4
_2739:
	dd	_545
	dd	623
	dd	5
	align	4
_2743:
	dd	_545
	dd	624
	dd	5
	align	4
_347:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_2746:
	dd	_545
	dd	625
	dd	5
	align	4
_2769:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-116
	dd	0
	align	4
_2758:
	dd	_545
	dd	626
	dd	6
	align	4
_2768:
	dd	3
	dd	0
	dd	0
	align	4
_2762:
	dd	_545
	dd	627
	dd	7
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_2767:
	dd	_545
	dd	628
	dd	7
	align	4
_2809:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_454
	dd	-120
	dd	0
	align	4
_2771:
	dd	_545
	dd	632
	dd	5
	align	4
_2773:
	dd	_545
	dd	633
	dd	5
	align	4
_2808:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-124
	dd	0
	align	4
_2785:
	dd	_545
	dd	634
	dd	6
	align	4
_2795:
	dd	3
	dd	0
	dd	0
	align	4
_2789:
	dd	_545
	dd	635
	dd	7
	align	4
_2794:
	dd	_545
	dd	636
	dd	7
	align	4
_2796:
	dd	_545
	dd	638
	dd	6
	align	4
_2807:
	dd	3
	dd	0
	dd	2
	dd	_1599
	dd	_454
	dd	-128
	dd	0
	align	4
_2800:
	dd	_545
	dd	639
	dd	7
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_2806:
	dd	_545
	dd	641
	dd	7
	align	4
_2848:
	dd	3
	dd	0
	dd	0
	align	4
_2810:
	dd	_545
	dd	646
	dd	5
	align	4
_358:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_2811:
	dd	_545
	dd	647
	dd	5
	align	4
_2815:
	dd	_545
	dd	648
	dd	5
	align	4
_2837:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-132
	dd	0
	align	4
_2827:
	dd	_545
	dd	649
	dd	6
	align	4
_2836:
	dd	3
	dd	0
	dd	0
	align	4
_2831:
	dd	_545
	dd	650
	dd	7
	align	4
_2838:
	dd	_545
	dd	653
	dd	5
	align	4
_2841:
	dd	_545
	dd	654
	dd	5
	align	4
_2845:
	dd	_545
	dd	655
	dd	5
	align	4
_2891:
	dd	3
	dd	0
	dd	0
	align	4
_2849:
	dd	_545
	dd	657
	dd	5
	align	4
_2890:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-136
	dd	0
	align	4
_2861:
	dd	_545
	dd	658
	dd	6
	align	4
_2889:
	dd	3
	dd	0
	dd	0
	align	4
_2869:
	dd	_545
	dd	659
	dd	7
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_366:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_2874:
	dd	_545
	dd	660
	dd	7
	align	4
_2878:
	dd	_545
	dd	661
	dd	7
	align	4
_2881:
	dd	_545
	dd	662
	dd	7
	align	4
_368:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_2884:
	dd	_545
	dd	663
	dd	7
	align	4
_2888:
	dd	_545
	dd	664
	dd	7
	align	4
_2904:
	dd	3
	dd	0
	dd	0
	align	4
_2892:
	dd	_545
	dd	668
	dd	5
	align	4
_370:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_2893:
	dd	_545
	dd	669
	dd	5
	align	4
_2897:
	dd	_545
	dd	670
	dd	5
	align	4
_2900:
	dd	_545
	dd	671
	dd	5
	align	4
_2909:
	dd	3
	dd	0
	dd	0
	align	4
_2905:
	dd	_545
	dd	673
	dd	5
	align	4
_2906:
	dd	_545
	dd	674
	dd	5
	align	4
_2911:
	dd	3
	dd	0
	dd	0
	align	4
_2910:
	dd	_545
	dd	676
	dd	5
_3025:
	db	"Variable",0
_3026:
	db	"StepVar",0
_3027:
	db	"ToVar",0
_3028:
	db	"Tok",0
	align	4
_3024:
	dd	3
	dd	0
	dd	2
	dd	_3025
	dd	_454
	dd	-140
	dd	2
	dd	_3026
	dd	_454
	dd	-144
	dd	2
	dd	_3027
	dd	_454
	dd	-148
	dd	2
	dd	_3028
	dd	_454
	dd	-152
	dd	0
	align	4
_2912:
	dd	_545
	dd	678
	dd	5
	align	4
_374:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_2913:
	dd	_545
	dd	679
	dd	5
	align	4
_2915:
	dd	_545
	dd	680
	dd	5
	align	4
_2917:
	dd	_545
	dd	681
	dd	5
	align	4
_2919:
	dd	_545
	dd	682
	dd	5
	align	4
_2997:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-156
	dd	0
	align	4
_2931:
	dd	_545
	dd	683
	dd	6
	align	4
_378:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_383:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_384:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_2941:
	dd	3
	dd	0
	dd	0
	align	4
_2940:
	dd	_545
	dd	702
	dd	8
	align	4
_2978:
	dd	3
	dd	0
	dd	0
	align	4
_2942:
	dd	_545
	dd	685
	dd	8
_2977:
	db	"Node3",0
	align	4
_2976:
	dd	3
	dd	0
	dd	2
	dd	_2977
	dd	_684
	dd	-160
	dd	0
	align	4
_2954:
	dd	_545
	dd	686
	dd	9
	align	4
_382:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_2967:
	dd	3
	dd	0
	dd	2
	dd	_1599
	dd	_454
	dd	-164
	dd	0
	align	4
_2958:
	dd	_545
	dd	687
	dd	10
	align	4
_2964:
	dd	_545
	dd	689
	dd	10
	align	4
_2975:
	dd	3
	dd	0
	dd	0
	align	4
_2969:
	dd	_545
	dd	691
	dd	10
	align	4
_2974:
	dd	_545
	dd	692
	dd	10
	align	4
_2984:
	dd	3
	dd	0
	dd	0
	align	4
_2979:
	dd	_545
	dd	696
	dd	8
	align	4
_2990:
	dd	3
	dd	0
	dd	0
	align	4
_2985:
	dd	_545
	dd	698
	dd	8
	align	4
_2996:
	dd	3
	dd	0
	dd	0
	align	4
_2991:
	dd	_545
	dd	700
	dd	8
	align	4
_2998:
	dd	_545
	dd	705
	dd	5
	align	4
_3000:
	dd	_545
	dd	706
	dd	5
	align	4
_3001:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_3004:
	dd	3
	dd	0
	dd	0
	align	4
_3003:
	dd	_545
	dd	707
	dd	6
	align	4
_3007:
	dd	3
	dd	0
	dd	0
	align	4
_3006:
	dd	_545
	dd	709
	dd	6
	align	4
_3008:
	dd	_545
	dd	711
	dd	5
	align	4
_385:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_3009:
	dd	_545
	dd	712
	dd	5
	align	4
_3013:
	dd	_545
	dd	713
	dd	5
	align	4
_3016:
	dd	_545
	dd	714
	dd	5
	align	4
_3020:
	dd	_545
	dd	715
	dd	5
	align	4
_386:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_3023:
	dd	_545
	dd	716
	dd	5
	align	4
_387:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_3040:
	dd	3
	dd	0
	dd	0
	align	4
_3029:
	dd	_545
	dd	718
	dd	5
	align	4
_389:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	114,101,116,118,97,108,117,101,61
	align	4
_3034:
	dd	_545
	dd	719
	dd	5
	align	4
_3037:
	dd	_545
	dd	720
	dd	5
	align	4
_390:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	114,101,116,117,114,110,32,114,101,116,118,97,108,117,101
	align	4
_3042:
	dd	3
	dd	0
	dd	0
	align	4
_3041:
	dd	_545
	dd	722
	dd	5
	align	4
_392:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
_3123:
	db	"DatatypeReal",0
_3124:
	db	"Caster",0
	align	4
_3122:
	dd	3
	dd	0
	dd	2
	dd	_932
	dd	_454
	dd	-168
	dd	2
	dd	_3123
	dd	_454
	dd	-172
	dd	2
	dd	_3124
	dd	_454
	dd	-176
	dd	0
	align	4
_3043:
	dd	_545
	dd	725
	dd	5
	align	4
_3052:
	dd	_545
	dd	726
	dd	5
	align	4
_3053:
	dd	_545
	dd	727
	dd	5
	align	4
_3060:
	dd	3
	dd	0
	dd	2
	dd	_456
	dd	_456
	dd	-180
	dd	0
	align	4
_3059:
	dd	_545
	dd	728
	dd	6
	align	4
_3061:
	dd	_545
	dd	730
	dd	5
	align	4
_397:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	40,40,47,42,32,99,97,115,116,48,114,32,42,47
	align	4
_3063:
	dd	_545
	dd	731
	dd	5
	align	4
_3070:
	dd	_545
	dd	732
	dd	5
_3093:
	db	"Child",0
	align	4
_3092:
	dd	3
	dd	0
	dd	2
	dd	_3093
	dd	_684
	dd	-184
	dd	0
	align	4
_3082:
	dd	_545
	dd	733
	dd	6
	align	4
_3091:
	dd	3
	dd	0
	dd	0
	align	4
_3086:
	dd	_545
	dd	734
	dd	7
	align	4
_401:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_3094:
	dd	_545
	dd	737
	dd	5
	align	4
_3099:
	dd	3
	dd	0
	dd	0
	align	4
_3098:
	dd	_545
	dd	738
	dd	6
	align	4
_3109:
	dd	3
	dd	0
	dd	0
	align	4
_3101:
	dd	_545
	dd	741
	dd	7
	align	4
_3110:
	dd	_545
	dd	749
	dd	5
	align	4
_3121:
	dd	3
	dd	0
	dd	0
	align	4
_3116:
	dd	_545
	dd	750
	dd	6
	align	4
_403:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	42,41
	align	4
_402:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	42,40,40
	align	4
_3130:
	dd	3
	dd	0
	dd	0
	align	4
_3125:
	dd	_545
	dd	753
	dd	5
_3247:
	db	"WasMe",0
	align	4
_3246:
	dd	3
	dd	0
	dd	2
	dd	_3247
	dd	_468
	dd	-8
	dd	0
	align	4
_3131:
	dd	_545
	dd	755
	dd	5
	align	4
_3133:
	dd	_545
	dd	756
	dd	5
	align	4
_3154:
	dd	3
	dd	0
	dd	0
	align	4
_3137:
	dd	_545
	dd	757
	dd	6
	align	4
_3145:
	dd	_545
	dd	758
	dd	6
	align	4
_3146:
	dd	_545
	dd	759
	dd	6
	align	4
_3150:
	dd	_545
	dd	760
	dd	6
	align	4
_3160:
	dd	3
	dd	0
	dd	0
	align	4
_3156:
	dd	_545
	dd	762
	dd	6
	align	4
_3161:
	dd	_545
	dd	765
	dd	5
	align	4
_3223:
	dd	3
	dd	0
	dd	2
	dd	_683
	dd	_684
	dd	-188
	dd	0
	align	4
_3173:
	dd	_545
	dd	766
	dd	6
	align	4
_3199:
	dd	3
	dd	0
	dd	0
	align	4
_3180:
	dd	_545
	dd	768
	dd	8
	align	4
_3194:
	dd	_545
	dd	769
	dd	8
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	45,62,111,98,106,41,45,62
	align	4
_3222:
	dd	3
	dd	0
	dd	0
	align	4
_3200:
	dd	_545
	dd	771
	dd	8
	align	4
_3216:
	dd	3
	dd	0
	dd	0
	align	4
_3204:
	dd	_545
	dd	771
	dd	29
	align	4
_409:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	40,47,42,32,102,114,111,109,114,105,103,104,116,32,42,47
	align	4
_3217:
	dd	_545
	dd	772
	dd	8
	align	4
_3224:
	dd	_545
	dd	775
	dd	5
	align	4
_3245:
	dd	3
	dd	0
	dd	0
	align	4
_3226:
	dd	_545
	dd	776
	dd	6
	align	4
_3229:
	dd	_545
	dd	777
	dd	6
	align	4
_3237:
	dd	_545
	dd	778
	dd	6
	align	4
_3241:
	dd	_545
	dd	779
	dd	6
_3344:
	db	"IsArray",0
_3345:
	db	"Obj",0
_3346:
	db	"RealType",0
	align	4
_3343:
	dd	3
	dd	0
	dd	2
	dd	_3344
	dd	_468
	dd	-12
	dd	2
	dd	_3345
	dd	_454
	dd	-192
	dd	2
	dd	_3346
	dd	_454
	dd	-196
	dd	0
	align	4
_3248:
	dd	_545
	dd	783
	dd	5
	align	4
_3250:
	dd	_545
	dd	784
	dd	5
	align	4
_3274:
	dd	3
	dd	0
	dd	0
	align	4
_3254:
	dd	_545
	dd	785
	dd	6
_3273:
	db	"Dim",0
	align	4
_3272:
	dd	3
	dd	0
	dd	2
	dd	_3273
	dd	_684
	dd	-200
	dd	0
	align	4
_3266:
	dd	_545
	dd	786
	dd	7
	align	4
_414:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_3271:
	dd	3
	dd	0
	dd	0
	align	4
_3270:
	dd	_545
	dd	786
	dd	30
	align	4
_3275:
	dd	_545
	dd	789
	dd	5
	align	4
_3277:
	dd	_545
	dd	790
	dd	5
	align	4
_3281:
	dd	_545
	dd	791
	dd	5
_3331:
	db	"SizeIdent",0
	align	4
_3330:
	dd	3
	dd	0
	dd	2
	dd	_455
	dd	_456
	dd	-204
	dd	2
	dd	_3331
	dd	_454
	dd	-208
	dd	0
	align	4
_3283:
	dd	_545
	dd	792
	dd	6
	align	4
_3285:
	dd	_545
	dd	793
	dd	6
	align	4
_415:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_3287:
	dd	_545
	dd	794
	dd	6
	align	4
_3294:
	dd	3
	dd	0
	dd	0
	align	4
_3293:
	dd	_545
	dd	794
	dd	47
	align	4
_416:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,105,122,101,111,102,40
	align	4
_3295:
	dd	_545
	dd	795
	dd	6
	align	4
_417:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,41,97,108
	dw	108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_3296:
	dd	_545
	dd	796
	dd	6
	align	4
_3319:
	dd	3
	dd	0
	dd	2
	dd	_3273
	dd	_684
	dd	-212
	dd	0
	align	4
_3308:
	dd	_545
	dd	797
	dd	7
	align	4
_3318:
	dd	3
	dd	0
	dd	0
	align	4
_3312:
	dd	_545
	dd	798
	dd	8
	align	4
_3313:
	dd	_545
	dd	799
	dd	8
	align	4
_3320:
	dd	_545
	dd	802
	dd	6
	align	4
_3321:
	dd	_545
	dd	803
	dd	6
	align	4
_3329:
	dd	3
	dd	0
	dd	0
	align	4
_3325:
	dd	_545
	dd	803
	dd	28
	align	4
_3334:
	dd	3
	dd	0
	dd	0
	align	4
_3333:
	dd	_545
	dd	806
	dd	6
	align	4
_422:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	41,44,38,116,114,97,99,101
	align	4
_421:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_3335:
	dd	_545
	dd	808
	dd	5
	align	4
_3342:
	dd	3
	dd	0
	dd	0
	align	4
_3341:
	dd	_545
	dd	809
	dd	6
	align	4
_423:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_3347:
	dd	_545
	dd	813
	dd	3
_3421:
	db	"datatype",0
_3422:
	db	"Def",0
	align	4
_3420:
	dd	1
	dd	_488
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_695
	dd	_684
	dd	-8
	dd	2
	dd	_453
	dd	_454
	dd	-12
	dd	2
	dd	_3421
	dd	_454
	dd	-16
	dd	2
	dd	_3273
	dd	_456
	dd	-20
	dd	2
	dd	_3422
	dd	_454
	dd	-24
	dd	2
	dd	_3346
	dd	_454
	dd	-28
	dd	0
	align	4
_3349:
	dd	_545
	dd	817
	dd	3
	align	4
_3353:
	dd	_545
	dd	818
	dd	3
_3386:
	db	"Att",0
_3387:
	db	":bah.libxml.TxmlAttribute",0
	align	4
_3385:
	dd	3
	dd	0
	dd	2
	dd	_3386
	dd	_3387
	dd	-32
	dd	0
	align	4
_3365:
	dd	_545
	dd	819
	dd	4
	align	4
_3376:
	dd	3
	dd	0
	dd	0
	align	4
_3373:
	dd	_545
	dd	821
	dd	6
	align	4
_3380:
	dd	3
	dd	0
	dd	0
	align	4
_3377:
	dd	_545
	dd	823
	dd	6
	align	4
_3384:
	dd	3
	dd	0
	dd	0
	align	4
_3381:
	dd	_545
	dd	825
	dd	6
	align	4
_3388:
	dd	_545
	dd	828
	dd	3
	align	4
_3390:
	dd	_545
	dd	829
	dd	3
	align	4
_3394:
	dd	_545
	dd	830
	dd	3
	align	4
_3401:
	dd	3
	dd	0
	dd	0
	align	4
_3400:
	dd	_545
	dd	830
	dd	32
	align	4
_3402:
	dd	_545
	dd	831
	dd	3
	align	4
_3409:
	dd	3
	dd	0
	dd	0
	align	4
_3408:
	dd	_545
	dd	839
	dd	5
	align	4
_430:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_3411:
	dd	3
	dd	0
	dd	0
	align	4
_3410:
	dd	_545
	dd	833
	dd	5
	align	4
_427:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_3413:
	dd	3
	dd	0
	dd	0
	align	4
_3412:
	dd	_545
	dd	835
	dd	5
	align	4
_428:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_3418:
	dd	3
	dd	0
	dd	0
	align	4
_3414:
	dd	_545
	dd	837
	dd	5
	align	4
_3417:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	61,110,101,119,83,116,114,105,110,103,40,34,34,41
	align	4
_3419:
	dd	_545
	dd	843
	dd	3
	align	4
_3470:
	dd	1
	dd	_489
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_695
	dd	_684
	dd	-8
	dd	2
	dd	_453
	dd	_454
	dd	-12
	dd	2
	dd	_3421
	dd	_454
	dd	-16
	dd	2
	dd	_3273
	dd	_456
	dd	-20
	dd	0
	align	4
_3423:
	dd	_545
	dd	846
	dd	3
	align	4
_3427:
	dd	_545
	dd	847
	dd	3
	align	4
_3467:
	dd	3
	dd	0
	dd	2
	dd	_3386
	dd	_3387
	dd	-24
	dd	0
	align	4
_3439:
	dd	_545
	dd	848
	dd	4
	align	4
_3450:
	dd	3
	dd	0
	dd	0
	align	4
_3447:
	dd	_545
	dd	850
	dd	6
	align	4
_3456:
	dd	3
	dd	0
	dd	0
	align	4
_3451:
	dd	_545
	dd	852
	dd	6
	align	4
_3466:
	dd	3
	dd	0
	dd	0
	align	4
_3457:
	dd	_545
	dd	854
	dd	6
	align	4
_3460:
	dd	_545
	dd	855
	dd	6
	align	4
_3465:
	dd	3
	dd	0
	dd	2
	dd	_456
	dd	_456
	dd	-28
	dd	0
	align	4
_3464:
	dd	_545
	dd	856
	dd	7
	align	4
_3468:
	dd	_545
	dd	860
	dd	3
	align	4
_3469:
	dd	_545
	dd	861
	dd	3
	align	4
_437:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
_3525:
	db	"Typ",0
_3526:
	db	"DimCount",0
	align	4
_3524:
	dd	1
	dd	_490
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_3525
	dd	_454
	dd	-8
	dd	2
	dd	_3526
	dd	_456
	dd	-12
	dd	2
	dd	_1061
	dd	_454
	dd	-16
	dd	0
	align	4
_3471:
	dd	_545
	dd	864
	dd	3
	align	4
_3474:
	dd	3
	dd	0
	dd	0
	align	4
_3473:
	dd	_545
	dd	864
	dd	18
	align	4
_3475:
	dd	_545
	dd	865
	dd	3
	align	4
_3477:
	dd	_545
	dd	866
	dd	3
	align	4
_3498:
	dd	3
	dd	0
	dd	0
	align	4
_3489:
	dd	_545
	dd	886
	dd	5
	align	4
_3494:
	dd	3
	dd	0
	dd	0
	align	4
_3493:
	dd	_545
	dd	887
	dd	6
	align	4
_446:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_3497:
	dd	3
	dd	0
	dd	0
	align	4
_3496:
	dd	_545
	dd	889
	dd	6
	align	4
_3500:
	dd	3
	dd	0
	dd	0
	align	4
_3499:
	dd	_545
	dd	868
	dd	5
	align	4
_438:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_3502:
	dd	3
	dd	0
	dd	0
	align	4
_3501:
	dd	_545
	dd	870
	dd	5
	align	4
_439:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_3504:
	dd	3
	dd	0
	dd	0
	align	4
_3503:
	dd	_545
	dd	872
	dd	5
	align	4
_440:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_3506:
	dd	3
	dd	0
	dd	0
	align	4
_3505:
	dd	_545
	dd	874
	dd	5
	align	4
_441:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_3508:
	dd	3
	dd	0
	dd	0
	align	4
_3507:
	dd	_545
	dd	876
	dd	5
	align	4
_442:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_3510:
	dd	3
	dd	0
	dd	0
	align	4
_3509:
	dd	_545
	dd	878
	dd	5
	align	4
_443:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_3512:
	dd	3
	dd	0
	dd	0
	align	4
_3511:
	dd	_545
	dd	880
	dd	5
	align	4
_444:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_3514:
	dd	3
	dd	0
	dd	0
	align	4
_3513:
	dd	_545
	dd	882
	dd	5
	align	4
_3516:
	dd	3
	dd	0
	dd	0
	align	4
_3515:
	dd	_545
	dd	884
	dd	5
	align	4
_445:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,111,105,100,42
	align	4
_3517:
	dd	_545
	dd	892
	dd	3
	align	4
_3522:
	dd	3
	dd	0
	dd	2
	dd	_456
	dd	_456
	dd	-20
	dd	0
	align	4
_3521:
	dd	_545
	dd	893
	dd	4
	align	4
_3523:
	dd	_545
	dd	895
	dd	3
	align	4
_3536:
	dd	1
	dd	_492
	dd	2
	dd	_564
	dd	_581
	dd	-4
	dd	2
	dd	_3525
	dd	_454
	dd	-8
	dd	0
	align	4
_3527:
	dd	_545
	dd	899
	dd	3
	align	4
_450:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
	align	4
_3528:
	dd	_545
	dd	900
	dd	3
	align	4
_3533:
	dd	3
	dd	0
	dd	0
	align	4
_3532:
	dd	_545
	dd	904
	dd	5
	align	4
_3535:
	dd	3
	dd	0
	dd	0
	align	4
_3534:
	dd	_545
	dd	902
	dd	5
