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
	public	___bb_crossplatformbasic_tcgenerator
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
	public	_bb_TCGenerator
	public	_bb_TClass
	section	"code" code
___bb_crossplatformbasic_tcgenerator:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_556],0
	je	_557
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_557:
	mov	dword [_556],1
	push	ebp
	push	_555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_util_cpb
	call	___bb_crossplatformbasic_tgenerator
	push	_bb_TClass
	call	_bbObjectRegisterType
	add	esp,4
	push	_542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_553]
	and	eax,1
	cmp	eax,0
	jne	_554
	push	7
	push	_452
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
	or	dword [_553],1
_554:
	push	_bb_TCGenerator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_492
_492:
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
	push	_561
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
	push	_560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_495
_495:
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
_498:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_566
	push	eax
	call	_bbGCFree
	add	esp,4
_566:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_568
	push	eax
	call	_bbGCFree
	add	esp,4
_568:
	mov	eax,0
	jmp	_564
_564:
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
	push	_578
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
	push	_577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_501
_501:
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
_504:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_582
	push	eax
	call	_bbGCFree
	add	esp,4
_582:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_584
	push	eax
	call	_bbGCFree
	add	esp,4
_584:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_586
	push	eax
	call	_bbGCFree
	add	esp,4
_586:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_588
	push	eax
	call	_bbGCFree
	add	esp,4
_588:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_590
	push	eax
	call	_bbGCFree
	add	esp,4
_590:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_592
	push	eax
	call	_bbGCFree
	add	esp,4
_592:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_594
	push	eax
	call	_bbGCFree
	add	esp,4
_594:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_596
	push	eax
	call	_bbGCFree
	add	esp,4
_596:
	mov	dword [ebx],_bb_TGenerator
	push	ebx
	call	__bb_TGenerator_Delete
	add	esp,4
	mov	eax,0
	jmp	_580
_580:
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
	push	_598
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_597
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_32
	jmp	_507
_507:
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
	push	_1754
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_603
	call	_brl_blitz_NullObjectError
_603:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_608
	call	_brl_blitz_NullObjectError
_608:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-272],eax
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_611
	call	_brl_blitz_NullObjectError
_611:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_33
_35:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_616
	call	_brl_blitz_NullObjectError
_616:
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
	push	_692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_619
	call	_brl_blitz_NullObjectError
_619:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	_36
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_622
	jmp	_621
_622:
	mov	eax,ebp
	push	eax
	push	_690
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_625
	call	_brl_blitz_NullObjectError
_625:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [__bb_TCGenerator_AllDatatype]
	push	_452
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	dec	dword [eax+4]
	jnz	_631
	push	eax
	call	_bbGCFree
	add	esp,4
_631:
	mov	dword [__bb_TCGenerator_AllDatatype],ebx
	push	_632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [__bb_TCGenerator_AllDatatype]
	cmp	ebx,dword [eax+20]
	jb	_634
	call	_brl_blitz_ArrayBoundsError
_634:
	mov	esi,dword [__bb_TCGenerator_AllDatatype]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_639
	push	eax
	call	_bbGCFree
	add	esp,4
_639:
	mov	dword [esi+24],ebx
	push	_640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TClass
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_649
	push	eax
	call	_bbGCFree
	add	esp,4
_649:
	mov	dword [esi+8],ebx
	push	_650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_652
	call	_brl_blitz_NullObjectError
_652:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_653
	mov	eax,ebp
	push	eax
	push	_683
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_656
	call	_brl_blitz_NullObjectError
_656:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	eax,dword [ebp-44]
	mov	dword [ebp-232],eax
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_662
	call	_brl_blitz_NullObjectError
_662:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_38
_40:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_667
	call	_brl_blitz_NullObjectError
_667:
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
	push	_680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_670
	call	_brl_blitz_NullObjectError
_670:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_671
	mov	eax,ebp
	push	eax
	push	_679
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
	mov	esi,dword [ebx+16]
	cmp	esi,_bbNullObject
	jne	_676
	call	_brl_blitz_NullObjectError
_676:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_678
	call	_brl_blitz_NullObjectError
_678:
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
_671:
	call	dword [_bbOnDebugLeaveScope]
_38:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_665
	call	_brl_blitz_NullObjectError
_665:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_40
_39:
	call	dword [_bbOnDebugLeaveScope]
_653:
	push	_685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_687
	call	_brl_blitz_NullObjectError
_687:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_689
	call	_brl_blitz_NullObjectError
_689:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_621
_621:
	call	dword [_bbOnDebugLeaveScope]
_33:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_614
	call	_brl_blitz_NullObjectError
_614:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_35
_34:
	push	_694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-280],eax
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_700
	call	_brl_blitz_NullObjectError
_700:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_42
_44:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_705
	call	_brl_blitz_NullObjectError
_705:
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
	push	_1445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_708
	call	_brl_blitz_NullObjectError
_708:
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
	je	_711
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_712
	push	_36
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_713
	push	_79
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_714
	jmp	_710
_711:
	mov	eax,ebp
	push	eax
	push	_796
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_717
	call	_brl_blitz_NullObjectError
_717:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_718
	mov	eax,ebp
	push	eax
	push	_795
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_722
	call	_brl_blitz_NullObjectError
_722:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-256],eax
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_725
	call	_brl_blitz_NullObjectError
_725:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_46
_48:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_730
	call	_brl_blitz_NullObjectError
_730:
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
	push	_794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_733
	call	_brl_blitz_NullObjectError
_733:
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_734
	mov	eax,ebp
	push	eax
	push	_745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_740
	call	_brl_blitz_NullObjectError
_740:
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
	jnz	_744
	push	eax
	call	_bbGCFree
	add	esp,4
_744:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_746
_734:
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	_51
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_750
	mov	eax,ebp
	push	eax
	push	_761
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_753
	call	_brl_blitz_NullObjectError
_753:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
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
	jnz	_760
	push	eax
	call	_bbGCFree
	add	esp,4
_760:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_750:
	call	dword [_bbOnDebugLeaveScope]
_746:
	push	_763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_765
	call	_brl_blitz_NullObjectError
_765:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_767
	call	_brl_blitz_NullObjectError
_767:
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
	jne	_770
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_769
	call	_brl_blitz_NullObjectError
_769:
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
_770:
	cmp	eax,0
	je	_772
	mov	eax,ebp
	push	eax
	push	_793
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_775
	call	_brl_blitz_NullObjectError
_775:
	add	dword [ebx+16],1
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_779
	call	_brl_blitz_NullObjectError
_779:
	mov	esi,ebx
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_782
	call	_brl_blitz_NullObjectError
_782:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_784
	call	_brl_blitz_NullObjectError
_784:
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
	jnz	_788
	push	eax
	call	_bbGCFree
	add	esp,4
_788:
	mov	dword [esi+48],ebx
	push	_789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_791
	call	_brl_blitz_NullObjectError
_791:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
_772:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_728
	call	_brl_blitz_NullObjectError
_728:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_718:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_710
_712:
	mov	eax,ebp
	push	eax
	push	_1058
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_799
	call	_brl_blitz_NullObjectError
_799:
	push	0
	push	_801
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_805
	push	eax
	call	_bbGCFree
	add	esp,4
_805:
	mov	dword [esi+44],ebx
	push	_806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_808
	call	_brl_blitz_NullObjectError
_808:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_812
	call	_brl_blitz_NullObjectError
_812:
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbEmptyString
	push	_816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_818
	call	_brl_blitz_NullObjectError
_818:
	push	dword [ebp-64]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_821
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_820
	call	_brl_blitz_NullObjectError
_820:
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
_821:
	cmp	eax,0
	je	_823
	mov	eax,ebp
	push	eax
	push	_825
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_57
	call	dword [_bbOnDebugLeaveScope]
	jmp	_826
_823:
	mov	eax,ebp
	push	eax
	push	_832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_829
	call	_brl_blitz_NullObjectError
_829:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_831
	call	_brl_blitz_NullObjectError
_831:
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
_826:
	push	_833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-64]
	mov	dword [ebp-72],eax
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_837
	call	_brl_blitz_NullObjectError
_837:
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-76],eax
	push	_839
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
	push	_840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbEmptyString
	push	_842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_845
	mov	eax,ebp
	push	eax
	push	_933
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-84],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_849
	call	_brl_blitz_NullObjectError
_849:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-260],eax
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_852
	call	_brl_blitz_NullObjectError
_852:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_61
_63:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_857
	call	_brl_blitz_NullObjectError
_857:
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
	push	_932
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_860
	call	_brl_blitz_NullObjectError
_860:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_861
	mov	eax,ebp
	push	eax
	push	_929
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_864
	call	_brl_blitz_NullObjectError
_864:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_866
	call	_brl_blitz_NullObjectError
_866:
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_868
	call	_brl_blitz_NullObjectError
_868:
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
	push	_870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_872
	call	_brl_blitz_NullObjectError
_872:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_874
	call	_brl_blitz_NullObjectError
_874:
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
	jne	_877
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_876
	call	_brl_blitz_NullObjectError
_876:
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
_877:
	cmp	eax,0
	je	_879
	mov	eax,ebp
	push	eax
	push	_881
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-88],_57
	call	dword [_bbOnDebugLeaveScope]
_879:
	push	_882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_884
	call	_brl_blitz_NullObjectError
_884:
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
	push	_885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_887
	call	_brl_blitz_NullObjectError
_887:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_889
	call	_brl_blitz_NullObjectError
_889:
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
	jne	_892
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_891
	call	_brl_blitz_NullObjectError
_891:
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
_892:
	cmp	eax,0
	je	_894
	mov	eax,ebp
	push	eax
	push	_907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_897
	call	_brl_blitz_NullObjectError
_897:
	mov	edi,ebx
	push	1
	push	_452
	call	_bbArrayNew1D
	add	esp,8
	mov	esi,eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_900
	call	_brl_blitz_NullObjectError
_900:
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
	push	_452
	call	_bbArrayConcat
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+44]
	dec	dword [eax+4]
	jnz	_906
	push	eax
	call	_bbGCFree
	add	esp,4
_906:
	mov	dword [edi+44],ebx
	call	dword [_bbOnDebugLeaveScope]
_894:
	push	_908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_910
	call	_brl_blitz_NullObjectError
_910:
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
	push	_912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_914
	call	_brl_blitz_NullObjectError
_914:
	push	_68
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_923
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_916
	call	_brl_blitz_NullObjectError
_916:
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_918
	call	_brl_blitz_NullObjectError
_918:
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
	jne	_921
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_920
	call	_brl_blitz_NullObjectError
_920:
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
_921:
_923:
	cmp	eax,0
	je	_925
	mov	eax,ebp
	push	eax
	push	_927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_926
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
_925:
	push	_928
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
_861:
	call	dword [_bbOnDebugLeaveScope]
_61:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_855
	call	_brl_blitz_NullObjectError
_855:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_63
_62:
	call	dword [_bbOnDebugLeaveScope]
_845:
	push	_934
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
	push	_935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-76],0
	je	_936
	mov	eax,ebp
	push	eax
	push	_1012
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_939
	call	_brl_blitz_NullObjectError
_939:
	push	dword [ebp-68]
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_944
	push	eax
	call	_bbGCFree
	add	esp,4
_944:
	mov	dword [esi+28],ebx
	push	_945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_948
	call	_brl_blitz_NullObjectError
_948:
	push	_73
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_953
	push	eax
	call	_bbGCFree
	add	esp,4
_953:
	mov	dword [esi+28],ebx
	push	_954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_956
	call	_brl_blitz_NullObjectError
_956:
	add	dword [ebx+16],1
	push	_958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	push	dword [ebp-72]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_959
	mov	eax,ebp
	push	eax
	push	_970
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_962
	call	_brl_blitz_NullObjectError
_962:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_965
	call	_brl_blitz_NullObjectError
_965:
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
	jnz	_969
	push	eax
	call	_bbGCFree
	add	esp,4
_969:
	mov	dword [ebx+28],esi
	call	dword [_bbOnDebugLeaveScope]
_959:
	push	_971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_974
	call	_brl_blitz_NullObjectError
_974:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_977
	call	_brl_blitz_NullObjectError
_977:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_76
_78:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_982
	call	_brl_blitz_NullObjectError
_982:
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
	push	_999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_985
	call	_brl_blitz_NullObjectError
_985:
	push	_79
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_986
	mov	eax,ebp
	push	eax
	push	_998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_989
	call	_brl_blitz_NullObjectError
_989:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_992
	call	_brl_blitz_NullObjectError
_992:
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
	jnz	_996
	push	eax
	call	_bbGCFree
	add	esp,4
_996:
	mov	dword [ebx+28],esi
	push	_997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_77
_986:
	call	dword [_bbOnDebugLeaveScope]
_76:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_980
	call	_brl_blitz_NullObjectError
_980:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_78
_77:
	push	_1000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1002
	call	_brl_blitz_NullObjectError
_1002:
	sub	dword [ebx+16],1
	push	_1004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1006
	call	_brl_blitz_NullObjectError
_1006:
	push	_80
	push	dword [esi+28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1011
	push	eax
	call	_bbGCFree
	add	esp,4
_1011:
	mov	dword [esi+28],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1013
_936:
	mov	eax,ebp
	push	eax
	push	_1048
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1016
	call	_brl_blitz_NullObjectError
_1016:
	push	_81
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-100],eax
	push	_1018
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
	je	_1019
	push	_4
	push	dword [ebp-100]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1019:
	cmp	eax,0
	je	_1021
	mov	eax,ebp
	push	eax
	push	_1044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	push	_1023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1025
	call	_brl_blitz_NullObjectError
_1025:
	add	dword [ebx+16],1
	push	_1027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_74
	push	dword [ebp-64]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1028
	mov	eax,ebp
	push	eax
	push	_1030
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_82
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1031
_1028:
	mov	eax,ebp
	push	eax
	push	_1033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_4
	call	dword [_bbOnDebugLeaveScope]
_1031:
	push	_1034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1036
	call	_brl_blitz_NullObjectError
_1036:
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
	push	_1037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1039
	call	_brl_blitz_NullObjectError
_1039:
	sub	dword [ebx+16],1
	push	_1041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1043
	call	_brl_blitz_NullObjectError
_1043:
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
	jmp	_1045
_1021:
	mov	eax,ebp
	push	eax
	push	_1047
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_72
	push	dword [ebp-68]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-68],eax
	call	dword [_bbOnDebugLeaveScope]
_1045:
	call	dword [_bbOnDebugLeaveScope]
_1013:
	push	_1050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1052
	call	_brl_blitz_NullObjectError
_1052:
	push	dword [ebp-68]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1057
	push	eax
	call	_bbGCFree
	add	esp,4
_1057:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_710
_713:
	mov	eax,ebp
	push	eax
	push	_1366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1065
	call	_brl_blitz_NullObjectError
_1065:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-104],eax
	push	_1067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	push	_1069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1072
	call	_brl_blitz_NullObjectError
_1072:
	mov	edi,dword [ebx+36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1075
	call	_brl_blitz_NullObjectError
_1075:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_84
_86:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1080
	call	_brl_blitz_NullObjectError
_1080:
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
	push	_1088
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_1083
	call	_brl_blitz_NullObjectError
_1083:
	push	dword [ebp-104]
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1084
	mov	eax,ebp
	push	eax
	push	_1087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1085
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-108],eax
	push	_1086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_85
_1084:
	call	dword [_bbOnDebugLeaveScope]
_84:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1078
	call	_brl_blitz_NullObjectError
_1078:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_86
_85:
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbEmptyString
	push	_1092
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
	push	_1093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1095
	call	_brl_blitz_NullObjectError
_1095:
	mov	byte [ebx+20],1
	push	_1097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1099
	call	_brl_blitz_NullObjectError
_1099:
	add	dword [ebx+16],1
	push	_1101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_4
	push	_1103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1105
	call	_brl_blitz_NullObjectError
_1105:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1106
	mov	eax,ebp
	push	eax
	push	_1157
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-252],eax
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_89
_91:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1118
	call	_brl_blitz_NullObjectError
_1118:
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
	push	_1156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1121
	call	_brl_blitz_NullObjectError
_1121:
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
	je	_1124
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1125
	jmp	_1123
_1124:
	mov	eax,ebp
	push	eax
	push	_1132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1128
	call	_brl_blitz_NullObjectError
_1128:
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
	jne	_1129
	mov	eax,ebp
	push	eax
	push	_1131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1130
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
_1129:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1123
_1125:
	mov	eax,ebp
	push	eax
	push	_1154
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1137
	call	_brl_blitz_NullObjectError
_1137:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_1139
	call	_brl_blitz_NullObjectError
_1139:
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
	push	_1141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
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
	je	_1146
	mov	eax,ebp
	push	eax
	push	_1148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-128],_57
	call	dword [_bbOnDebugLeaveScope]
_1146:
	push	_1149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1151
	call	_brl_blitz_NullObjectError
_1151:
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_1153
	call	_brl_blitz_NullObjectError
_1153:
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
	jmp	_1123
_1123:
	call	dword [_bbOnDebugLeaveScope]
_89:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_1116
	call	_brl_blitz_NullObjectError
_1116:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	call	dword [_bbOnDebugLeaveScope]
_1106:
	push	_1158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1160
	call	_brl_blitz_NullObjectError
_1160:
	mov	byte [ebx+20],0
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1164
	call	_brl_blitz_NullObjectError
_1164:
	sub	dword [ebx+16],1
	push	_1166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1168
	call	_brl_blitz_NullObjectError
_1168:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1170
	call	_brl_blitz_NullObjectError
_1170:
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
	push	_1171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1173
	call	_brl_blitz_NullObjectError
_1173:
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
	push	_1174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1176
	call	_brl_blitz_NullObjectError
_1176:
	add	dword [ebx+16],1
	push	_1178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1180
	call	_brl_blitz_NullObjectError
_1180:
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
	push	_1181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_1183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1185
	call	_brl_blitz_NullObjectError
_1185:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1186
	mov	eax,ebp
	push	eax
	push	_1234
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1190
	call	_brl_blitz_NullObjectError
_1190:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-244],eax
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_1193
	call	_brl_blitz_NullObjectError
_1193:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_103
_105:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1198
	call	_brl_blitz_NullObjectError
_1198:
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
	push	_1233
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1202
	mov	eax,ebp
	push	eax
	push	_1232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1205
	call	_brl_blitz_NullObjectError
_1205:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1207
	call	_brl_blitz_NullObjectError
_1207:
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
	jne	_1210
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1209
	call	_brl_blitz_NullObjectError
_1209:
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
_1210:
	cmp	eax,0
	je	_1212
	mov	eax,ebp
	push	eax
	push	_1230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_1214
	mov	eax,ebp
	push	eax
	push	_1219
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
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
	push	_1218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_1214:
	push	_1220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_1222
	call	_brl_blitz_NullObjectError
_1222:
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
	push	_1224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1226
	call	_brl_blitz_NullObjectError
_1226:
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
	push	_1227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1229
	call	_brl_blitz_NullObjectError
_1229:
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
_1212:
	call	dword [_bbOnDebugLeaveScope]
_1202:
	call	dword [_bbOnDebugLeaveScope]
_103:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1196
	call	_brl_blitz_NullObjectError
_1196:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_105
_104:
	call	dword [_bbOnDebugLeaveScope]
_1186:
	push	_1235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1237
	call	_brl_blitz_NullObjectError
_1237:
	sub	dword [ebx+16],1
	push	_1239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1241
	call	_brl_blitz_NullObjectError
_1241:
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
	push	_1242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1247
	call	_brl_blitz_NullObjectError
_1247:
	push	dword [ebx+12]
	push	dword [ebp-112]
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
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1254
	call	_brl_blitz_NullObjectError
_1254:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
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
	jnz	_1261
	push	eax
	call	_bbGCFree
	add	esp,4
_1261:
	mov	dword [esi+12],ebx
	push	_1262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1264
	call	_brl_blitz_NullObjectError
_1264:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1267
	call	_brl_blitz_NullObjectError
_1267:
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
	jnz	_1271
	push	eax
	call	_bbGCFree
	add	esp,4
_1271:
	mov	dword [esi+40],ebx
	push	_1272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1274
	call	_brl_blitz_NullObjectError
_1274:
	add	dword [ebx+16],1
	push	_1276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1278
	call	_brl_blitz_NullObjectError
_1278:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1281
	call	_brl_blitz_NullObjectError
_1281:
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
	jnz	_1285
	push	eax
	call	_bbGCFree
	add	esp,4
_1285:
	mov	dword [esi+40],ebx
	push	_1286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-116]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1287
	mov	eax,ebp
	push	eax
	push	_1298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1290
	call	_brl_blitz_NullObjectError
_1290:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1293
	call	_brl_blitz_NullObjectError
_1293:
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
	jnz	_1297
	push	eax
	call	_bbGCFree
	add	esp,4
_1297:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
_1287:
	push	_1299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
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
	push	_1341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbNullObject
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1306
	call	_brl_blitz_NullObjectError
_1306:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-248],eax
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_1309
	call	_brl_blitz_NullObjectError
_1309:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_117
_119:
	mov	ebx,dword [ebp-236]
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
	mov	dword [ebp-140],eax
	cmp	dword [ebp-140],_bbNullObject
	je	_117
	mov	eax,ebp
	push	eax
	push	_1340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1317
	call	_brl_blitz_NullObjectError
_1317:
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
	je	_1320
	push	_41
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1321
	jmp	_1319
_1320:
	mov	eax,ebp
	push	eax
	push	_1322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1319
_1321:
	mov	eax,ebp
	push	eax
	push	_1339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1325
	call	_brl_blitz_NullObjectError
_1325:
	mov	dword [ebp-224],ebx
	mov	eax,dword [ebp-8]
	mov	dword [ebp-228],eax
	cmp	dword [ebp-228],_bbNullObject
	jne	_1328
	call	_brl_blitz_NullObjectError
_1328:
	mov	edi,dword [ebp-140]
	cmp	edi,_bbNullObject
	jne	_1330
	call	_brl_blitz_NullObjectError
_1330:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1332
	call	_brl_blitz_NullObjectError
_1332:
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_1334
	call	_brl_blitz_NullObjectError
_1334:
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
	jnz	_1338
	push	eax
	call	_bbGCFree
	add	esp,4
_1338:
	mov	eax,dword [ebp-224]
	mov	dword [eax+40],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1319
_1319:
	call	dword [_bbOnDebugLeaveScope]
_117:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_1312
	call	_brl_blitz_NullObjectError
_1312:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_119
_118:
	call	dword [_bbOnDebugLeaveScope]
_1302:
	push	_1342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1344
	call	_brl_blitz_NullObjectError
_1344:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1347
	call	_brl_blitz_NullObjectError
_1347:
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
	jnz	_1351
	push	eax
	call	_bbGCFree
	add	esp,4
_1351:
	mov	dword [ebx+40],esi
	push	_1352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1354
	call	_brl_blitz_NullObjectError
_1354:
	sub	dword [ebx+16],1
	push	_1356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1358
	call	_brl_blitz_NullObjectError
_1358:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1361
	call	_brl_blitz_NullObjectError
_1361:
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
	jnz	_1365
	push	eax
	call	_bbGCFree
	add	esp,4
_1365:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_710
_714:
	mov	eax,ebp
	push	eax
	push	_1444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1371
	call	_brl_blitz_NullObjectError
_1371:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1374
	call	_brl_blitz_NullObjectError
_1374:
	push	dword [ebx+40]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1378
	push	eax
	call	_bbGCFree
	add	esp,4
_1378:
	mov	dword [esi+12],ebx
	push	_1379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1384
	call	_brl_blitz_NullObjectError
_1384:
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
	jnz	_1388
	push	eax
	call	_bbGCFree
	add	esp,4
_1388:
	mov	dword [ebx+12],esi
	push	_1389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1391
	call	_brl_blitz_NullObjectError
_1391:
	add	dword [ebx+16],1
	push	_1393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1395
	call	_brl_blitz_NullObjectError
_1395:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1398
	call	_brl_blitz_NullObjectError
_1398:
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
	jnz	_1402
	push	eax
	call	_bbGCFree
	add	esp,4
_1402:
	mov	dword [ebx+12],esi
	push	_1403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1405
	call	_brl_blitz_NullObjectError
_1405:
	push	0
	push	_1407
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_1411
	push	eax
	call	_bbGCFree
	add	esp,4
_1411:
	mov	dword [esi+44],ebx
	push	_1412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1414
	call	_brl_blitz_NullObjectError
_1414:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1417
	call	_brl_blitz_NullObjectError
_1417:
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
	jnz	_1421
	push	eax
	call	_bbGCFree
	add	esp,4
_1421:
	mov	dword [ebx+12],esi
	push	_1422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1424
	call	_brl_blitz_NullObjectError
_1424:
	push	_125
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1429
	push	eax
	call	_bbGCFree
	add	esp,4
_1429:
	mov	dword [esi+12],ebx
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	sub	dword [ebx+16],1
	push	_1434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1436
	call	_brl_blitz_NullObjectError
_1436:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1439
	call	_brl_blitz_NullObjectError
_1439:
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
	jnz	_1443
	push	eax
	call	_bbGCFree
	add	esp,4
_1443:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_710
_710:
	call	dword [_bbOnDebugLeaveScope]
_42:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_703
	call	_brl_blitz_NullObjectError
_703:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	push	_1446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],0
	mov	dword [ebp-144],1
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1449
	call	_brl_blitz_NullObjectError
_1449:
	mov	edi,dword [ebx+24]
	jmp	_1450
_128:
	mov	eax,ebp
	push	eax
	push	_1685
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1452
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbEmptyString
	push	_1454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1456
	call	_brl_blitz_NullObjectError
_1456:
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
	push	_1457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1459
	call	_brl_blitz_NullObjectError
_1459:
	add	dword [ebx+16],1
	push	_1461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1463
	call	_brl_blitz_NullObjectError
_1463:
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
	push	_1464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	mov	dword [ebp-160],1
	mov	ebx,dword [ebp-144]
	jmp	_1466
_132:
	mov	eax,ebp
	push	eax
	push	_1478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1470
	call	_brl_blitz_NullObjectError
_1470:
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
	push	_1471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1473
	call	_brl_blitz_NullObjectError
_1473:
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
	push	_1474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1476
	call	_brl_blitz_NullObjectError
_1476:
	mov	eax,esi
	add	dword [eax+16],1
	call	dword [_bbOnDebugLeaveScope]
_130:
	add	dword [ebp-160],1
_1466:
	cmp	dword [ebp-160],ebx
	jle	_132
_131:
	push	_1480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbEmptyString
	push	_1482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbEmptyString
	push	_1484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	mov	dword [ebp-164],0
	mov	ebx,dword [ebp-144]
	jmp	_1486
_141:
	mov	eax,ebp
	push	eax
	push	_1489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1488
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
_1486:
	cmp	dword [ebp-164],ebx
	jle	_141
_140:
	push	_1490
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
	push	_1491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],0
	mov	dword [ebp-168],1
	mov	ebx,dword [ebp-144]
	jmp	_1493
_147:
	mov	eax,ebp
	push	eax
	push	_1496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1495
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
_1493:
	cmp	dword [ebp-168],ebx
	jle	_147
_146:
	push	_1497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-152]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-152],eax
	push	_1498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1500
	call	_brl_blitz_NullObjectError
_1500:
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
	push	_1501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1503
	call	_brl_blitz_NullObjectError
_1503:
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
	push	_1504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	mov	dword [ebp-172],1
	mov	ebx,dword [ebp-144]
	jmp	_1506
_155:
	mov	eax,ebp
	push	eax
	push	_1515
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1510
	call	_brl_blitz_NullObjectError
_1510:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1514
	call	_brl_blitz_NullObjectError
_1514:
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
_1506:
	cmp	dword [ebp-172],ebx
	jle	_155
_154:
	push	_1516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1518
	call	_brl_blitz_NullObjectError
_1518:
	sub	dword [ebx+16],1
	push	_1520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1522
	call	_brl_blitz_NullObjectError
_1522:
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
	push	_1523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1525
	call	_brl_blitz_NullObjectError
_1525:
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
	push	_1526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],0
	mov	dword [ebp-176],1
	mov	ebx,dword [ebp-144]
	jmp	_1528
_160:
	mov	eax,ebp
	push	eax
	push	_1531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1530
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
_1528:
	cmp	dword [ebp-176],ebx
	jle	_160
_159:
	push	_1532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1535
	call	_brl_blitz_NullObjectError
_1535:
	add	dword [ebx+16],1
	push	_1537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1539
	call	_brl_blitz_NullObjectError
_1539:
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
	push	_1540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],1
	mov	ebx,dword [ebp-144]
	jmp	_1542
_164:
	mov	eax,ebp
	push	eax
	push	_1545
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1544
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
_1542:
	cmp	dword [ebp-180],ebx
	jle	_164
_163:
	push	_1547
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_165
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1550
	call	_brl_blitz_NullObjectError
_1550:
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
	push	_1551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],0
	mov	dword [ebp-184],1
	mov	ebx,dword [ebp-144]
	jmp	_1553
_169:
	mov	eax,ebp
	push	eax
	push	_1560
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1555
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
	push	_1556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	dword [ebp-184],eax
	jge	_1557
	mov	eax,ebp
	push	eax
	push	_1559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_171
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	call	dword [_bbOnDebugLeaveScope]
_1557:
	call	dword [_bbOnDebugLeaveScope]
_167:
	add	dword [ebp-184],1
_1553:
	cmp	dword [ebp-184],ebx
	jle	_169
_168:
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_172
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],0
	mov	dword [ebp-188],1
	mov	ebx,dword [ebp-144]
	jmp	_1564
_175:
	mov	eax,ebp
	push	eax
	push	_1637
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1568
	call	_brl_blitz_NullObjectError
_1568:
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
	push	_1569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1571
	call	_brl_blitz_NullObjectError
_1571:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1573
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-144]
	cmp	dword [ebp-188],eax
	jge	_1574
	mov	eax,ebp
	push	eax
	push	_1596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1577
	call	_brl_blitz_NullObjectError
_1577:
	push	esi
	call	__bb_TCGenerator_GetTabs
	add	esp,4
	push	eax
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_180
	push	_1580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],0
	mov	dword [ebp-200],1
	mov	esi,dword [ebp-188]
	jmp	_1582
_183:
	mov	eax,ebp
	push	eax
	push	_1585
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1584
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
_1582:
	cmp	dword [ebp-200],esi
	jle	_183
_182:
	push	_1586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-192]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-196],_4
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	mov	eax,dword [ebp-188]
	mov	dword [ebp-204],eax
	mov	eax,dword [ebp-144]
	sub	eax,1
	mov	esi,eax
	jmp	_1591
_187:
	mov	eax,ebp
	push	eax
	push	_1594
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1593
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
_1591:
	cmp	dword [ebp-204],esi
	jle	_187
_186:
	push	_1595
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
	jmp	_1599
_1574:
	mov	eax,ebp
	push	eax
	push	_1636
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1602
	call	_brl_blitz_NullObjectError
_1602:
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
	push	_1603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1605
	call	_brl_blitz_NullObjectError
_1605:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],_bbEmptyString
	push	_1609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1611
	call	_brl_blitz_NullObjectError
_1611:
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
	push	_1612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],0
	mov	dword [ebp-212],1
	mov	esi,dword [ebp-144]
	jmp	_1614
_193:
	mov	eax,ebp
	push	eax
	push	_1617
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1616
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
_1614:
	cmp	dword [ebp-212],esi
	jle	_193
_192:
	push	_1618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-208]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_194
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1622
	call	_brl_blitz_NullObjectError
_1622:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1626
	call	_brl_blitz_NullObjectError
_1626:
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
	push	_1627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1629
	call	_brl_blitz_NullObjectError
_1629:
	mov	eax,esi
	add	dword [eax+16],1
	push	_1631
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
	push	_1632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1634
	call	_brl_blitz_NullObjectError
_1634:
	mov	eax,esi
	sub	dword [eax+16],1
	call	dword [_bbOnDebugLeaveScope]
_1599:
	call	dword [_bbOnDebugLeaveScope]
_173:
	add	dword [ebp-188],1
_1564:
	cmp	dword [ebp-188],ebx
	jle	_175
_174:
	push	_1638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-216],0
	mov	dword [ebp-216],1
	mov	ebx,dword [ebp-144]
	jmp	_1640
_199:
	mov	eax,ebp
	push	eax
	push	_1649
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1644
	call	_brl_blitz_NullObjectError
_1644:
	mov	eax,esi
	sub	dword [eax+16],1
	push	_1646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1648
	call	_brl_blitz_NullObjectError
_1648:
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
_1640:
	cmp	dword [ebp-216],ebx
	jle	_199
_198:
	push	_1650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1652
	call	_brl_blitz_NullObjectError
_1652:
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
	push	_1653
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1655
	call	_brl_blitz_NullObjectError
_1655:
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
	push	_1656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1658
	call	_brl_blitz_NullObjectError
_1658:
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
	push	_1659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-220],0
	mov	dword [ebp-220],0
	mov	eax,dword [ebp-144]
	sub	eax,1
	mov	esi,eax
	jmp	_1661
_205:
	mov	eax,ebp
	push	eax
	push	_1666
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1665
	call	_brl_blitz_NullObjectError
_1665:
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
_1661:
	cmp	dword [ebp-220],esi
	jle	_205
_204:
	push	_1667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1669
	call	_brl_blitz_NullObjectError
_1669:
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
	push	_1670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1672
	call	_brl_blitz_NullObjectError
_1672:
	sub	dword [ebx+16],1
	push	_1674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_80
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-148],eax
	push	_1675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1677
	call	_brl_blitz_NullObjectError
_1677:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1680
	call	_brl_blitz_NullObjectError
_1680:
	push	dword [esi+12]
	push	dword [ebp-148]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1684
	push	eax
	call	_bbGCFree
	add	esp,4
_1684:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_126:
	add	dword [ebp-144],1
_1450:
	cmp	dword [ebp-144],edi
	jle	_128
_127:
	push	_1687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	push	_1689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1691
	call	_brl_blitz_NullObjectError
_1691:
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
	push	_1692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1694
	call	_brl_blitz_NullObjectError
_1694:
	add	dword [ebx+16],1
	push	_1696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1698
	call	_brl_blitz_NullObjectError
_1698:
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
	push	_1699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1701
	call	_brl_blitz_NullObjectError
_1701:
	sub	dword [ebx+16],1
	push	_1703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_80
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-28],eax
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1706
	call	_brl_blitz_NullObjectError
_1706:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1709
	call	_brl_blitz_NullObjectError
_1709:
	push	dword [ebx+12]
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1713
	push	eax
	call	_bbGCFree
	add	esp,4
_1713:
	mov	dword [esi+12],ebx
	push	_1714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1716
	call	_brl_blitz_NullObjectError
_1716:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1728
	call	_brl_blitz_NullObjectError
_1728:
	push	dword [ebx+12]
	push	_1726
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1732
	push	eax
	call	_bbGCFree
	add	esp,4
_1732:
	mov	dword [esi+12],ebx
	push	_1733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1735
	call	_brl_blitz_NullObjectError
_1735:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1738
	call	_brl_blitz_NullObjectError
_1738:
	push	dword [ebx+28]
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1742
	push	eax
	call	_bbGCFree
	add	esp,4
_1742:
	mov	dword [esi+12],ebx
	push	_1743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1745
	call	_brl_blitz_NullObjectError
_1745:
	push	_50
	push	dword [esi+12]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1750
	push	eax
	call	_bbGCFree
	add	esp,4
_1750:
	mov	dword [esi+12],ebx
	push	_1751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1753
	call	_brl_blitz_NullObjectError
_1753:
	push	dword [ebp-16]
	push	dword [ebx+12]
	call	_brl_stream_SaveString
	add	esp,8
	mov	ebx,0
	jmp	_512
_512:
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
	push	_1771
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_1762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1765
	call	_brl_blitz_NullObjectError
_1765:
	mov	ebx,dword [ebx+16]
	jmp	_1766
_216:
	push	ebp
	push	_1769
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1768
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
_1766:
	cmp	dword [ebp-12],ebx
	jle	_216
_215:
	push	_1770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_515
_515:
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
	push	_1867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	push	_1774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1776
	call	_brl_blitz_NullObjectError
_1776:
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
	push	_1777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1779
	call	_brl_blitz_NullObjectError
_1779:
	push	dword [ebx+48]
	push	dword [ebp-12]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_1780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_1787
	push	eax
	call	_bbGCFree
	add	esp,4
_1787:
	mov	dword [esi+48],ebx
	push	_1788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1791
	call	_brl_blitz_NullObjectError
_1791:
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
	push	_1799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1798
	call	_brl_blitz_NullObjectError
_1798:
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
	push	_1801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1803
	call	_brl_blitz_NullObjectError
_1803:
	push	0
	push	_1805
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_1809
	push	eax
	call	_bbGCFree
	add	esp,4
_1809:
	mov	dword [esi+44],ebx
	push	_1810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1813
	mov	eax,ebp
	push	eax
	push	_1862
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1817
	call	_brl_blitz_NullObjectError
_1817:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1820
	call	_brl_blitz_NullObjectError
_1820:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_223
_225:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1825
	call	_brl_blitz_NullObjectError
_1825:
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
	push	_1861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1828
	call	_brl_blitz_NullObjectError
_1828:
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
	je	_1831
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1830
	call	_brl_blitz_NullObjectError
_1830:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1831:
	cmp	eax,0
	je	_1833
	mov	eax,ebp
	push	eax
	push	_1860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1836
	call	_brl_blitz_NullObjectError
_1836:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
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
	push	_1840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	cmp	dword [eax+8],0
	jle	_1841
	mov	eax,ebp
	push	eax
	push	_1859
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1842
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
	jne	_1843
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
_1843:
	cmp	eax,0
	jne	_1845
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
_1845:
	cmp	eax,0
	jne	_1847
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
_1847:
	cmp	eax,0
	je	_1849
	mov	eax,ebp
	push	eax
	push	_1853
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1852
	call	_brl_blitz_NullObjectError
_1852:
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
	jmp	_1854
_1849:
	mov	eax,ebp
	push	eax
	push	_1858
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
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
_1854:
	call	dword [_bbOnDebugLeaveScope]
_1841:
	call	dword [_bbOnDebugLeaveScope]
_1833:
	call	dword [_bbOnDebugLeaveScope]
_223:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1823
	call	_brl_blitz_NullObjectError
_1823:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_225
_224:
	call	dword [_bbOnDebugLeaveScope]
_1813:
	push	_1863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1865
	call	_brl_blitz_NullObjectError
_1865:
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
	push	_1866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_519
_519:
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
	sub	esp,324
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
	push	_3326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_1870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	jne	_1871
	mov	eax,ebp
	push	eax
	push	_1873
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_523
_1871:
	push	_1874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1876
	call	_brl_blitz_NullObjectError
_1876:
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
	je	_1879
	push	_237
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1880
	push	_242
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1881
	push	_247
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1882
	push	_252
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1883
	push	_256
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1884
	push	_261
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1885
	push	_266
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1886
	push	_270
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1887
	push	_275
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1888
	push	_280
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1889
	push	_285
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1890
	push	_290
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1891
	push	_295
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1892
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1893
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1894
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1895
	push	_300
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1896
	push	_301
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1896
	push	_302
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1897
	push	_318
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1898
	push	_322
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1899
	push	_330
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1900
	push	_336
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1901
	push	_338
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1902
	push	_343
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1903
	push	_350
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1904
	push	_355
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1905
	push	_360
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1906
	push	_367
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1907
	push	_369
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1908
	push	_370
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
	push	_386
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1911
	push	_389
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1912
	push	_391
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1913
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1914
	push	_402
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1915
	push	_408
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1916
	jmp	_1878
_1879:
	mov	eax,ebp
	push	eax
	push	_1951
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_231
	push	_1918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1921
	call	_brl_blitz_NullObjectError
_1921:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1924
	call	_brl_blitz_NullObjectError
_1924:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-296],eax
	jmp	_232
_234:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_1929
	call	_brl_blitz_NullObjectError
_1929:
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
	push	_1949
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1932
	call	_brl_blitz_NullObjectError
_1932:
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
	je	_1935
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1936
	jmp	_1934
_1935:
	mov	eax,ebp
	push	eax
	push	_1942
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1939
	call	_brl_blitz_NullObjectError
_1939:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1941
	call	_brl_blitz_NullObjectError
_1941:
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
	jmp	_1934
_1936:
	mov	eax,ebp
	push	eax
	push	_1948
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1945
	call	_brl_blitz_NullObjectError
_1945:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1947
	call	_brl_blitz_NullObjectError
_1947:
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
	jmp	_1934
_1934:
	call	dword [_bbOnDebugLeaveScope]
_232:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_1927
	call	_brl_blitz_NullObjectError
_1927:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
	push	_1950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1880:
	mov	eax,ebp
	push	eax
	push	_1984
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1955
	call	_brl_blitz_NullObjectError
_1955:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1958
	call	_brl_blitz_NullObjectError
_1958:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-292],eax
	jmp	_238
_240:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_1963
	call	_brl_blitz_NullObjectError
_1963:
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
	push	_1983
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1966
	call	_brl_blitz_NullObjectError
_1966:
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
	je	_1969
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1970
	jmp	_1968
_1969:
	mov	eax,ebp
	push	eax
	push	_1976
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1973
	call	_brl_blitz_NullObjectError
_1973:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1975
	call	_brl_blitz_NullObjectError
_1975:
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
	jmp	_1968
_1970:
	mov	eax,ebp
	push	eax
	push	_1982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1979
	call	_brl_blitz_NullObjectError
_1979:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1981
	call	_brl_blitz_NullObjectError
_1981:
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
	jmp	_1968
_1968:
	call	dword [_bbOnDebugLeaveScope]
_238:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_1961
	call	_brl_blitz_NullObjectError
_1961:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_240
_239:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1881:
	mov	eax,ebp
	push	eax
	push	_2017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1988
	call	_brl_blitz_NullObjectError
_1988:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1991
	call	_brl_blitz_NullObjectError
_1991:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-288],eax
	jmp	_243
_245:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1996
	call	_brl_blitz_NullObjectError
_1996:
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
	push	_2016
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1999
	call	_brl_blitz_NullObjectError
_1999:
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
	je	_2002
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2003
	jmp	_2001
_2002:
	mov	eax,ebp
	push	eax
	push	_2009
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2006
	call	_brl_blitz_NullObjectError
_2006:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2008
	call	_brl_blitz_NullObjectError
_2008:
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
	jmp	_2001
_2003:
	mov	eax,ebp
	push	eax
	push	_2015
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2012
	call	_brl_blitz_NullObjectError
_2012:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2014
	call	_brl_blitz_NullObjectError
_2014:
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
	jmp	_2001
_2001:
	call	dword [_bbOnDebugLeaveScope]
_243:
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_1994
	call	_brl_blitz_NullObjectError
_1994:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_245
_244:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1882:
	mov	eax,ebp
	push	eax
	push	_2050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2021
	call	_brl_blitz_NullObjectError
_2021:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-284],eax
	jmp	_248
_250:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_2029
	call	_brl_blitz_NullObjectError
_2029:
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
	push	_2049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2032
	call	_brl_blitz_NullObjectError
_2032:
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
	je	_2035
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2036
	jmp	_2034
_2035:
	mov	eax,ebp
	push	eax
	push	_2042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2039
	call	_brl_blitz_NullObjectError
_2039:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2041
	call	_brl_blitz_NullObjectError
_2041:
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
	jmp	_2034
_2036:
	mov	eax,ebp
	push	eax
	push	_2048
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2045
	call	_brl_blitz_NullObjectError
_2045:
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2047
	call	_brl_blitz_NullObjectError
_2047:
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
	jmp	_2034
_2034:
	call	dword [_bbOnDebugLeaveScope]
_248:
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_2027
	call	_brl_blitz_NullObjectError
_2027:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_250
_249:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1883:
	mov	eax,ebp
	push	eax
	push	_2083
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2054
	call	_brl_blitz_NullObjectError
_2054:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2057
	call	_brl_blitz_NullObjectError
_2057:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-280],eax
	jmp	_253
_255:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2062
	call	_brl_blitz_NullObjectError
_2062:
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
	push	_2082
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2065
	call	_brl_blitz_NullObjectError
_2065:
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
	je	_2068
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2069
	jmp	_2067
_2068:
	mov	eax,ebp
	push	eax
	push	_2075
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2072
	call	_brl_blitz_NullObjectError
_2072:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2074
	call	_brl_blitz_NullObjectError
_2074:
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
	jmp	_2067
_2069:
	mov	eax,ebp
	push	eax
	push	_2081
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2078
	call	_brl_blitz_NullObjectError
_2078:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_2080
	call	_brl_blitz_NullObjectError
_2080:
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
	jmp	_2067
_2067:
	call	dword [_bbOnDebugLeaveScope]
_253:
	mov	ebx,dword [ebp-280]
	cmp	ebx,_bbNullObject
	jne	_2060
	call	_brl_blitz_NullObjectError
_2060:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_255
_254:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1884:
	mov	eax,ebp
	push	eax
	push	_2116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2087
	call	_brl_blitz_NullObjectError
_2087:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2090
	call	_brl_blitz_NullObjectError
_2090:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-276],eax
	jmp	_257
_259:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2095
	call	_brl_blitz_NullObjectError
_2095:
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
	push	_2115
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2098
	call	_brl_blitz_NullObjectError
_2098:
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
	je	_2101
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2102
	jmp	_2100
_2101:
	mov	eax,ebp
	push	eax
	push	_2108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2105
	call	_brl_blitz_NullObjectError
_2105:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2107
	call	_brl_blitz_NullObjectError
_2107:
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
	jmp	_2100
_2102:
	mov	eax,ebp
	push	eax
	push	_2114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2111
	call	_brl_blitz_NullObjectError
_2111:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2113
	call	_brl_blitz_NullObjectError
_2113:
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
	jmp	_2100
_2100:
	call	dword [_bbOnDebugLeaveScope]
_257:
	mov	ebx,dword [ebp-276]
	cmp	ebx,_bbNullObject
	jne	_2093
	call	_brl_blitz_NullObjectError
_2093:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_259
_258:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1885:
	mov	eax,ebp
	push	eax
	push	_2149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2120
	call	_brl_blitz_NullObjectError
_2120:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2123
	call	_brl_blitz_NullObjectError
_2123:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-272],eax
	jmp	_262
_264:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2128
	call	_brl_blitz_NullObjectError
_2128:
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
	push	_2148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2131
	call	_brl_blitz_NullObjectError
_2131:
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
	je	_2134
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2135
	jmp	_2133
_2134:
	mov	eax,ebp
	push	eax
	push	_2141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2138
	call	_brl_blitz_NullObjectError
_2138:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2140
	call	_brl_blitz_NullObjectError
_2140:
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
	jmp	_2133
_2135:
	mov	eax,ebp
	push	eax
	push	_2147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2144
	call	_brl_blitz_NullObjectError
_2144:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2146
	call	_brl_blitz_NullObjectError
_2146:
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
	jmp	_2133
_2133:
	call	dword [_bbOnDebugLeaveScope]
_262:
	mov	ebx,dword [ebp-272]
	cmp	ebx,_bbNullObject
	jne	_2126
	call	_brl_blitz_NullObjectError
_2126:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_264
_263:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1886:
	mov	eax,ebp
	push	eax
	push	_2182
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2153
	call	_brl_blitz_NullObjectError
_2153:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2156
	call	_brl_blitz_NullObjectError
_2156:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-268],eax
	jmp	_267
_269:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2161
	call	_brl_blitz_NullObjectError
_2161:
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
	push	_2181
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2164
	call	_brl_blitz_NullObjectError
_2164:
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
	je	_2167
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2168
	jmp	_2166
_2167:
	mov	eax,ebp
	push	eax
	push	_2174
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2171
	call	_brl_blitz_NullObjectError
_2171:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2173
	call	_brl_blitz_NullObjectError
_2173:
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
	jmp	_2166
_2168:
	mov	eax,ebp
	push	eax
	push	_2180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2177
	call	_brl_blitz_NullObjectError
_2177:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2179
	call	_brl_blitz_NullObjectError
_2179:
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
	jmp	_2166
_2166:
	call	dword [_bbOnDebugLeaveScope]
_267:
	mov	ebx,dword [ebp-268]
	cmp	ebx,_bbNullObject
	jne	_2159
	call	_brl_blitz_NullObjectError
_2159:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_269
_268:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1887:
	mov	eax,ebp
	push	eax
	push	_2215
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2186
	call	_brl_blitz_NullObjectError
_2186:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2189
	call	_brl_blitz_NullObjectError
_2189:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-264],eax
	jmp	_271
_273:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2194
	call	_brl_blitz_NullObjectError
_2194:
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
	push	_2214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2197
	call	_brl_blitz_NullObjectError
_2197:
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
	je	_2200
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2201
	jmp	_2199
_2200:
	mov	eax,ebp
	push	eax
	push	_2207
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2204
	call	_brl_blitz_NullObjectError
_2204:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2206
	call	_brl_blitz_NullObjectError
_2206:
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
	jmp	_2199
_2201:
	mov	eax,ebp
	push	eax
	push	_2213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2210
	call	_brl_blitz_NullObjectError
_2210:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2212
	call	_brl_blitz_NullObjectError
_2212:
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
	jmp	_2199
_2199:
	call	dword [_bbOnDebugLeaveScope]
_271:
	mov	ebx,dword [ebp-264]
	cmp	ebx,_bbNullObject
	jne	_2192
	call	_brl_blitz_NullObjectError
_2192:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_273
_272:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1888:
	mov	eax,ebp
	push	eax
	push	_2248
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2219
	call	_brl_blitz_NullObjectError
_2219:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2222
	call	_brl_blitz_NullObjectError
_2222:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-260],eax
	jmp	_276
_278:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2227
	call	_brl_blitz_NullObjectError
_2227:
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
	push	_2247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2230
	call	_brl_blitz_NullObjectError
_2230:
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
	je	_2233
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2234
	jmp	_2232
_2233:
	mov	eax,ebp
	push	eax
	push	_2240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2237
	call	_brl_blitz_NullObjectError
_2237:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2239
	call	_brl_blitz_NullObjectError
_2239:
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
	jmp	_2232
_2234:
	mov	eax,ebp
	push	eax
	push	_2246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2243
	call	_brl_blitz_NullObjectError
_2243:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_2245
	call	_brl_blitz_NullObjectError
_2245:
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
	jmp	_2232
_2232:
	call	dword [_bbOnDebugLeaveScope]
_276:
	mov	ebx,dword [ebp-260]
	cmp	ebx,_bbNullObject
	jne	_2225
	call	_brl_blitz_NullObjectError
_2225:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_278
_277:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1889:
	mov	eax,ebp
	push	eax
	push	_2281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2252
	call	_brl_blitz_NullObjectError
_2252:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2255
	call	_brl_blitz_NullObjectError
_2255:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-256],eax
	jmp	_281
_283:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2260
	call	_brl_blitz_NullObjectError
_2260:
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
	push	_2280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2263
	call	_brl_blitz_NullObjectError
_2263:
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
	je	_2266
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2267
	jmp	_2265
_2266:
	mov	eax,ebp
	push	eax
	push	_2273
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2270
	call	_brl_blitz_NullObjectError
_2270:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2272
	call	_brl_blitz_NullObjectError
_2272:
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
	jmp	_2265
_2267:
	mov	eax,ebp
	push	eax
	push	_2279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2276
	call	_brl_blitz_NullObjectError
_2276:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2278
	call	_brl_blitz_NullObjectError
_2278:
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
	jmp	_2265
_2265:
	call	dword [_bbOnDebugLeaveScope]
_281:
	mov	ebx,dword [ebp-256]
	cmp	ebx,_bbNullObject
	jne	_2258
	call	_brl_blitz_NullObjectError
_2258:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_283
_282:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1890:
	mov	eax,ebp
	push	eax
	push	_2314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2285
	call	_brl_blitz_NullObjectError
_2285:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2288
	call	_brl_blitz_NullObjectError
_2288:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-252],eax
	jmp	_286
_288:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2293
	call	_brl_blitz_NullObjectError
_2293:
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
	push	_2313
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2296
	call	_brl_blitz_NullObjectError
_2296:
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
	je	_2299
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2300
	jmp	_2298
_2299:
	mov	eax,ebp
	push	eax
	push	_2306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2303
	call	_brl_blitz_NullObjectError
_2303:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2305
	call	_brl_blitz_NullObjectError
_2305:
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
	jmp	_2298
_2300:
	mov	eax,ebp
	push	eax
	push	_2312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2309
	call	_brl_blitz_NullObjectError
_2309:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2311
	call	_brl_blitz_NullObjectError
_2311:
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
	jmp	_2298
_2298:
	call	dword [_bbOnDebugLeaveScope]
_286:
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_2291
	call	_brl_blitz_NullObjectError
_2291:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_288
_287:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1891:
	mov	eax,ebp
	push	eax
	push	_2347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-76],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2318
	call	_brl_blitz_NullObjectError
_2318:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2321
	call	_brl_blitz_NullObjectError
_2321:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-248],eax
	jmp	_291
_293:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2326
	call	_brl_blitz_NullObjectError
_2326:
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
	push	_2346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2329
	call	_brl_blitz_NullObjectError
_2329:
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
	je	_2332
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2333
	jmp	_2331
_2332:
	mov	eax,ebp
	push	eax
	push	_2339
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2336
	call	_brl_blitz_NullObjectError
_2336:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2338
	call	_brl_blitz_NullObjectError
_2338:
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
	jmp	_2331
_2333:
	mov	eax,ebp
	push	eax
	push	_2345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2342
	call	_brl_blitz_NullObjectError
_2342:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_2344
	call	_brl_blitz_NullObjectError
_2344:
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
	jmp	_2331
_2331:
	call	dword [_bbOnDebugLeaveScope]
_291:
	mov	ebx,dword [ebp-248]
	cmp	ebx,_bbNullObject
	jne	_2324
	call	_brl_blitz_NullObjectError
_2324:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_293
_292:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1892:
	mov	eax,ebp
	push	eax
	push	_2353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2350
	call	_brl_blitz_NullObjectError
_2350:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2352
	call	_brl_blitz_NullObjectError
_2352:
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
	jmp	_1878
_1893:
	mov	eax,ebp
	push	eax
	push	_2357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2356
	call	_brl_blitz_NullObjectError
_2356:
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
	jmp	_1878
_1894:
	mov	eax,ebp
	push	eax
	push	_2362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2361
	call	_brl_blitz_NullObjectError
_2361:
	push	_150
	push	_1718
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_2359
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
	jmp	_1878
_1895:
	mov	eax,ebp
	push	eax
	push	_2366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2365
	call	_brl_blitz_NullObjectError
_2365:
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
	jmp	_1878
_1896:
	mov	eax,ebp
	push	eax
	push	_2370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2369
	call	_brl_blitz_NullObjectError
_2369:
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
	jmp	_1878
_1897:
	mov	eax,ebp
	push	eax
	push	_2502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2373
	call	_brl_blitz_NullObjectError
_2373:
	push	_303
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_2375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	push	_304
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_2379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-84]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2380
	mov	eax,ebp
	push	eax
	push	_2426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2384
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2385
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2386
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2387
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2388
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2389
	jmp	_2383
_2384:
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
	jmp	_2383
_2385:
	mov	eax,ebp
	push	eax
	push	_2401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2398
	call	_brl_blitz_NullObjectError
_2398:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2400
	call	_brl_blitz_NullObjectError
_2400:
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
	jmp	_2383
_2386:
	mov	eax,ebp
	push	eax
	push	_2407
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2404
	call	_brl_blitz_NullObjectError
_2404:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2406
	call	_brl_blitz_NullObjectError
_2406:
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
	jmp	_2383
_2387:
	mov	eax,ebp
	push	eax
	push	_2413
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2410
	call	_brl_blitz_NullObjectError
_2410:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2412
	call	_brl_blitz_NullObjectError
_2412:
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
	jmp	_2383
_2388:
	mov	eax,ebp
	push	eax
	push	_2419
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2416
	call	_brl_blitz_NullObjectError
_2416:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2418
	call	_brl_blitz_NullObjectError
_2418:
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
	jmp	_2383
_2389:
	mov	eax,ebp
	push	eax
	push	_2425
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2422
	call	_brl_blitz_NullObjectError
_2422:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2424
	call	_brl_blitz_NullObjectError
_2424:
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
	jmp	_2383
_2383:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2427
_2380:
	mov	eax,ebp
	push	eax
	push	_2501
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_31
	push	dword [ebp-80]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2429
	mov	eax,ebp
	push	eax
	push	_2475
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2433
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2434
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2435
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2436
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2437
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2438
	jmp	_2432
_2433:
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
	jmp	_2432
_2434:
	mov	eax,ebp
	push	eax
	push	_2450
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2447
	call	_brl_blitz_NullObjectError
_2447:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2449
	call	_brl_blitz_NullObjectError
_2449:
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
	jmp	_2432
_2435:
	mov	eax,ebp
	push	eax
	push	_2456
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2453
	call	_brl_blitz_NullObjectError
_2453:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2455
	call	_brl_blitz_NullObjectError
_2455:
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
	jmp	_2432
_2436:
	mov	eax,ebp
	push	eax
	push	_2462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2459
	call	_brl_blitz_NullObjectError
_2459:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
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
	jmp	_2432
_2437:
	mov	eax,ebp
	push	eax
	push	_2468
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2465
	call	_brl_blitz_NullObjectError
_2465:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2467
	call	_brl_blitz_NullObjectError
_2467:
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
	jmp	_2432
_2438:
	mov	eax,ebp
	push	eax
	push	_2474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2471
	call	_brl_blitz_NullObjectError
_2471:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2473
	call	_brl_blitz_NullObjectError
_2473:
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
	jmp	_2432
_2432:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2476
_2429:
	mov	eax,ebp
	push	eax
	push	_2500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2479
	call	_brl_blitz_NullObjectError
_2479:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2481
	call	_brl_blitz_NullObjectError
_2481:
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
	jne	_2482
	mov	eax,ebp
	push	eax
	push	_2492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-16]
	mov	dword [ebp-220],eax
	cmp	dword [ebp-220],_bbNullObject
	jne	_2485
	call	_brl_blitz_NullObjectError
_2485:
	mov	edi,dword [ebp-20]
	cmp	edi,_bbNullObject
	jne	_2487
	call	_brl_blitz_NullObjectError
_2487:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2489
	call	_brl_blitz_NullObjectError
_2489:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2491
	call	_brl_blitz_NullObjectError
_2491:
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
	push	dword [ebp-220]
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
	jmp	_2493
_2482:
	mov	eax,ebp
	push	eax
	push	_2499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2496
	call	_brl_blitz_NullObjectError
_2496:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2498
	call	_brl_blitz_NullObjectError
_2498:
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
_2493:
	call	dword [_bbOnDebugLeaveScope]
_2476:
	call	dword [_bbOnDebugLeaveScope]
_2427:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1898:
	mov	eax,ebp
	push	eax
	push	_2541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2507
	call	_brl_blitz_NullObjectError
_2507:
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
	push	_2508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2510
	call	_brl_blitz_NullObjectError
_2510:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-88],_bbNullObject
	je	_2515
	mov	eax,ebp
	push	eax
	push	_2538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	edi,dword [ebp-88]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2520
	call	_brl_blitz_NullObjectError
_2520:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-240],eax
	jmp	_319
_321:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2525
	call	_brl_blitz_NullObjectError
_2525:
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
	je	_319
	mov	eax,ebp
	push	eax
	push	_2537
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2528
	call	_brl_blitz_NullObjectError
_2528:
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2529
	mov	eax,ebp
	push	eax
	push	_2536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2532
	call	_brl_blitz_NullObjectError
_2532:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_2534
	call	_brl_blitz_NullObjectError
_2534:
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
	push	_2535
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_171
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2529:
	call	dword [_bbOnDebugLeaveScope]
_319:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_2523
	call	_brl_blitz_NullObjectError
_2523:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_321
_320:
	call	dword [_bbOnDebugLeaveScope]
_2515:
	push	_2539
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
	push	_2540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1899:
	mov	eax,ebp
	push	eax
	push	_2612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbEmptyString
	push	_2545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2548
	call	_brl_blitz_NullObjectError
_2548:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-304],eax
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_2551
	call	_brl_blitz_NullObjectError
_2551:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-320],eax
	jmp	_323
_325:
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
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
	je	_323
	mov	eax,ebp
	push	eax
	push	_2605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2559
	call	_brl_blitz_NullObjectError
_2559:
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2560
	mov	eax,ebp
	push	eax
	push	_2564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2563
	call	_brl_blitz_NullObjectError
_2563:
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
	jmp	_2565
_2560:
	mov	eax,ebp
	push	eax
	push	_2574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2568
	call	_brl_blitz_NullObjectError
_2568:
	push	_51
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2569
	mov	eax,ebp
	push	eax
	push	_2573
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2572
	call	_brl_blitz_NullObjectError
_2572:
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
_2569:
	call	dword [_bbOnDebugLeaveScope]
_2565:
	push	_2575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2577
	call	_brl_blitz_NullObjectError
_2577:
	mov	esi,dword [ebp-100]
	cmp	esi,_bbNullObject
	jne	_2579
	call	_brl_blitz_NullObjectError
_2579:
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
	jne	_2582
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2581
	call	_brl_blitz_NullObjectError
_2581:
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
_2582:
	cmp	eax,0
	je	_2584
	mov	eax,ebp
	push	eax
	push	_2604
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_50
	push	dword [ebp-96]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2589
	call	_brl_blitz_NullObjectError
_2589:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2592
	call	_brl_blitz_NullObjectError
_2592:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-224],eax
	jmp	_326
_328:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2597
	call	_brl_blitz_NullObjectError
_2597:
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
	je	_326
	mov	eax,ebp
	push	eax
	push	_2603
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2600
	call	_brl_blitz_NullObjectError
_2600:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2602
	call	_brl_blitz_NullObjectError
_2602:
	push	_329
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
_326:
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_2595
	call	_brl_blitz_NullObjectError
_2595:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_328
_327:
	call	dword [_bbOnDebugLeaveScope]
_2584:
	call	dword [_bbOnDebugLeaveScope]
_323:
	mov	ebx,dword [ebp-320]
	cmp	ebx,_bbNullObject
	jne	_2554
	call	_brl_blitz_NullObjectError
_2554:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_325
_324:
	push	_2606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2608
	call	_brl_blitz_NullObjectError
_2608:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_2610
	call	_brl_blitz_NullObjectError
_2610:
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
	push	_2611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-96]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1900:
	mov	eax,ebp
	push	eax
	push	_2653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2614
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_331
	push	_2615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2618
	call	_brl_blitz_NullObjectError
_2618:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2621
	call	_brl_blitz_NullObjectError
_2621:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_332
_334:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2626
	call	_brl_blitz_NullObjectError
_2626:
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
	je	_332
	mov	eax,ebp
	push	eax
	push	_2642
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2627
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2629
	call	_brl_blitz_NullObjectError
_2629:
	push	_335
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2630
	mov	eax,ebp
	push	eax
	push	_2641
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2633
	call	_brl_blitz_NullObjectError
_2633:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_2635
	call	_brl_blitz_NullObjectError
_2635:
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
	push	_2636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2638
	call	_brl_blitz_NullObjectError
_2638:
	add	dword [ebx+16],1
	push	_2640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_333
_2630:
	call	dword [_bbOnDebugLeaveScope]
_332:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2624
	call	_brl_blitz_NullObjectError
_2624:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_334
_333:
	push	_2643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2645
	call	_brl_blitz_NullObjectError
_2645:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2648
	call	_brl_blitz_NullObjectError
_2648:
	sub	dword [ebx+16],1
	push	_2650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2652
	call	_brl_blitz_NullObjectError
_2652:
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
	jmp	_1878
_1901:
	mov	eax,ebp
	push	eax
	push	_2668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2656
	call	_brl_blitz_NullObjectError
_2656:
	sub	dword [ebx+16],1
	push	_2658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2660
	call	_brl_blitz_NullObjectError
_2660:
	push	_337
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
	push	_2661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2663
	call	_brl_blitz_NullObjectError
_2663:
	add	dword [ebx+16],1
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
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1902:
	mov	eax,ebp
	push	eax
	push	_2708
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_339
	push	_2670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2673
	call	_brl_blitz_NullObjectError
_2673:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2676
	call	_brl_blitz_NullObjectError
_2676:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_340
_342:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2681
	call	_brl_blitz_NullObjectError
_2681:
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
	je	_340
	mov	eax,ebp
	push	eax
	push	_2697
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_2684
	call	_brl_blitz_NullObjectError
_2684:
	push	_335
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2685
	mov	eax,ebp
	push	eax
	push	_2696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2688
	call	_brl_blitz_NullObjectError
_2688:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_2690
	call	_brl_blitz_NullObjectError
_2690:
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
	push	_2691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2693
	call	_brl_blitz_NullObjectError
_2693:
	add	dword [ebx+16],1
	push	_2695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_341
_2685:
	call	dword [_bbOnDebugLeaveScope]
_340:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2679
	call	_brl_blitz_NullObjectError
_2679:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_342
_341:
	push	_2698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2700
	call	_brl_blitz_NullObjectError
_2700:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2703
	call	_brl_blitz_NullObjectError
_2703:
	sub	dword [ebx+16],1
	push	_2705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2707
	call	_brl_blitz_NullObjectError
_2707:
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
	jmp	_1878
_1903:
	mov	eax,ebp
	push	eax
	push	_2748
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_344
	push	_2710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2712
	call	_brl_blitz_NullObjectError
_2712:
	add	dword [ebx+16],1
	push	_2714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2716
	call	_brl_blitz_NullObjectError
_2716:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2719
	call	_brl_blitz_NullObjectError
_2719:
	sub	dword [ebx+16],1
	push	_2721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2723
	call	_brl_blitz_NullObjectError
_2723:
	push	_345
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
	push	_2724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-116],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2727
	call	_brl_blitz_NullObjectError
_2727:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2730
	call	_brl_blitz_NullObjectError
_2730:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_346
_348:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2735
	call	_brl_blitz_NullObjectError
_2735:
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
	je	_346
	mov	eax,ebp
	push	eax
	push	_2747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_2738
	call	_brl_blitz_NullObjectError
_2738:
	push	_335
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2739
	mov	eax,ebp
	push	eax
	push	_2746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2742
	call	_brl_blitz_NullObjectError
_2742:
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_2744
	call	_brl_blitz_NullObjectError
_2744:
	push	_349
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
	push	_2745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_347
_2739:
	call	dword [_bbOnDebugLeaveScope]
_346:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2733
	call	_brl_blitz_NullObjectError
_2733:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_348
_347:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1904:
	mov	eax,ebp
	push	eax
	push	_2787
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbEmptyString
	push	_2751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2754
	call	_brl_blitz_NullObjectError
_2754:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2757
	call	_brl_blitz_NullObjectError
_2757:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-300],eax
	jmp	_351
_353:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_2762
	call	_brl_blitz_NullObjectError
_2762:
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
	je	_351
	mov	eax,ebp
	push	eax
	push	_2786
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2765
	call	_brl_blitz_NullObjectError
_2765:
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2766
	mov	eax,ebp
	push	eax
	push	_2773
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2769
	call	_brl_blitz_NullObjectError
_2769:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2771
	call	_brl_blitz_NullObjectError
_2771:
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
	push	_2772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-120]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2766:
	push	_2774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2776
	call	_brl_blitz_NullObjectError
_2776:
	push	_298
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2777
	mov	eax,ebp
	push	eax
	push	_2785
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2780
	call	_brl_blitz_NullObjectError
_2780:
	mov	ebx,dword [ebp-124]
	cmp	ebx,_bbNullObject
	jne	_2782
	call	_brl_blitz_NullObjectError
_2782:
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
	push	_354
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-128],eax
	push	_2784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-128]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2777:
	call	dword [_bbOnDebugLeaveScope]
_351:
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_2760
	call	_brl_blitz_NullObjectError
_2760:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_353
_352:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1905:
	mov	eax,ebp
	push	eax
	push	_2826
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_356
	push	_2789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2791
	call	_brl_blitz_NullObjectError
_2791:
	add	dword [ebx+16],1
	push	_2793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2796
	call	_brl_blitz_NullObjectError
_2796:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2799
	call	_brl_blitz_NullObjectError
_2799:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-236],eax
	jmp	_357
_359:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2804
	call	_brl_blitz_NullObjectError
_2804:
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
	je	_357
	mov	eax,ebp
	push	eax
	push	_2815
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_2807
	call	_brl_blitz_NullObjectError
_2807:
	push	_335
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2808
	mov	eax,ebp
	push	eax
	push	_2814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2811
	call	_brl_blitz_NullObjectError
_2811:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_2813
	call	_brl_blitz_NullObjectError
_2813:
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
_2808:
	call	dword [_bbOnDebugLeaveScope]
_357:
	mov	ebx,dword [ebp-236]
	cmp	ebx,_bbNullObject
	jne	_2802
	call	_brl_blitz_NullObjectError
_2802:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_359
_358:
	push	_2816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2818
	call	_brl_blitz_NullObjectError
_2818:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2821
	call	_brl_blitz_NullObjectError
_2821:
	sub	dword [ebx+16],1
	push	_2823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2825
	call	_brl_blitz_NullObjectError
_2825:
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
	jmp	_1878
_1906:
	mov	eax,ebp
	push	eax
	push	_2869
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2830
	call	_brl_blitz_NullObjectError
_2830:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2833
	call	_brl_blitz_NullObjectError
_2833:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_361
_363:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2838
	call	_brl_blitz_NullObjectError
_2838:
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
	je	_361
	mov	eax,ebp
	push	eax
	push	_2868
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2841
	call	_brl_blitz_NullObjectError
_2841:
	push	_335
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
	je	_2844
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2843
	call	_brl_blitz_NullObjectError
_2843:
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2844:
	cmp	eax,0
	je	_2846
	mov	eax,ebp
	push	eax
	push	_2867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2849
	call	_brl_blitz_NullObjectError
_2849:
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_2851
	call	_brl_blitz_NullObjectError
_2851:
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
	call	__bb_TCGenerator_GetNextMathString
	add	esp,8
	push	eax
	push	_364
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
	push	_2852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2854
	call	_brl_blitz_NullObjectError
_2854:
	add	dword [ebx+16],1
	push	_2856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2858
	call	_brl_blitz_NullObjectError
_2858:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2861
	call	_brl_blitz_NullObjectError
_2861:
	push	_366
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
	push	_2862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2864
	call	_brl_blitz_NullObjectError
_2864:
	sub	dword [ebx+16],1
	push	_2866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_362
_2846:
	call	dword [_bbOnDebugLeaveScope]
_361:
	mov	esi,edi
	cmp	esi,_bbNullObject
	jne	_2836
	call	_brl_blitz_NullObjectError
_2836:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_363
_362:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1907:
	mov	eax,ebp
	push	eax
	push	_2882
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_368
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2871
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2873
	call	_brl_blitz_NullObjectError
_2873:
	add	dword [ebx+16],1
	push	_2875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2877
	call	_brl_blitz_NullObjectError
_2877:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2880
	call	_brl_blitz_NullObjectError
_2880:
	sub	dword [ebx+16],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1908:
	mov	eax,ebp
	push	eax
	push	_2887
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_229
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
	push	_369
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
	jmp	_1878
_1909:
	mov	eax,ebp
	push	eax
	push	_2889
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_370
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1910:
	mov	eax,ebp
	push	eax
	push	_3002
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_372
	push	_2891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbEmptyString
	push	_2893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbEmptyString
	push	_2895
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbEmptyString
	push	_2897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2900
	call	_brl_blitz_NullObjectError
_2900:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-312],eax
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_2903
	call	_brl_blitz_NullObjectError
_2903:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-324],eax
	jmp	_373
_375:
	mov	ebx,dword [ebp-324]
	cmp	ebx,_bbNullObject
	jne	_2908
	call	_brl_blitz_NullObjectError
_2908:
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
	je	_373
	mov	eax,ebp
	push	eax
	push	_2975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_2911
	call	_brl_blitz_NullObjectError
_2911:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_376
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2914
	push	_381
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2915
	push	_304
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2916
	push	_382
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2917
	mov	eax,ebp
	push	eax
	push	_2919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_374
_2914:
	mov	eax,ebp
	push	eax
	push	_2956
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_2923
	call	_brl_blitz_NullObjectError
_2923:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2926
	call	_brl_blitz_NullObjectError
_2926:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-244],eax
	jmp	_377
_379:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2931
	call	_brl_blitz_NullObjectError
_2931:
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
	je	_377
	mov	eax,ebp
	push	eax
	push	_2954
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2934
	call	_brl_blitz_NullObjectError
_2934:
	push	_380
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2935
	mov	eax,ebp
	push	eax
	push	_2945
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2938
	call	_brl_blitz_NullObjectError
_2938:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2940
	call	_brl_blitz_NullObjectError
_2940:
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
	push	_2942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2944
	call	_brl_blitz_NullObjectError
_2944:
	push	_372
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
	jmp	_2946
_2935:
	mov	eax,ebp
	push	eax
	push	_2953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_2949
	call	_brl_blitz_NullObjectError
_2949:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_2951
	call	_brl_blitz_NullObjectError
_2951:
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
	push	_2952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-140]
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_2946:
	call	dword [_bbOnDebugLeaveScope]
_377:
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_2929
	call	_brl_blitz_NullObjectError
_2929:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_379
_378:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2913
_2915:
	mov	eax,ebp
	push	eax
	push	_2962
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2959
	call	_brl_blitz_NullObjectError
_2959:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2961
	call	_brl_blitz_NullObjectError
_2961:
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
	push	_354
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
	jmp	_2913
_2916:
	mov	eax,ebp
	push	eax
	push	_2968
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2965
	call	_brl_blitz_NullObjectError
_2965:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2967
	call	_brl_blitz_NullObjectError
_2967:
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
	jmp	_2913
_2917:
	mov	eax,ebp
	push	eax
	push	_2974
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2971
	call	_brl_blitz_NullObjectError
_2971:
	mov	esi,dword [ebp-156]
	cmp	esi,_bbNullObject
	jne	_2973
	call	_brl_blitz_NullObjectError
_2973:
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
	jmp	_2913
_2913:
	call	dword [_bbOnDebugLeaveScope]
_373:
	mov	ebx,dword [ebp-324]
	cmp	ebx,_bbNullObject
	jne	_2906
	call	_brl_blitz_NullObjectError
_2906:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_375
_374:
	push	_2976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbEmptyString
	push	_2978
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2979
	push	dword [ebp-144]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jle	_2980
	mov	eax,ebp
	push	eax
	push	_2982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_274
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2983
_2980:
	mov	eax,ebp
	push	eax
	push	_2985
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_5
	call	dword [_bbOnDebugLeaveScope]
_2983:
	push	_2986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_73
	push	dword [ebp-144]
	push	_383
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
	push	_2987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2989
	call	_brl_blitz_NullObjectError
_2989:
	add	dword [ebx+16],1
	push	_2991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2993
	call	_brl_blitz_NullObjectError
_2993:
	push	dword [ebp-20]
	push	ebx
	call	__bb_TCGenerator_Block
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_2996
	call	_brl_blitz_NullObjectError
_2996:
	sub	dword [ebx+16],1
	push	_2998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3000
	call	_brl_blitz_NullObjectError
_3000:
	push	_384
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
	push	_3001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	_385
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1911:
	mov	eax,ebp
	push	eax
	push	_3018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3009
	call	_brl_blitz_NullObjectError
_3009:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3011
	call	_brl_blitz_NullObjectError
_3011:
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
	push	_387
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
	push	_3012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3014
	call	_brl_blitz_NullObjectError
_3014:
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
	push	_3015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3017
	call	_brl_blitz_NullObjectError
_3017:
	push	_388
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
	jmp	_1878
_1912:
	mov	eax,ebp
	push	eax
	push	_3020
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_390
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1913:
	mov	eax,ebp
	push	eax
	push	_3100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbEmptyString
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3024
	call	_brl_blitz_NullObjectError
_3024:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3026
	call	_brl_blitz_NullObjectError
_3026:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3028
	call	_brl_blitz_NullObjectError
_3028:
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
	push	_3030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_57
	push	_3031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],0
	mov	dword [ebp-180],1
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3034
	call	_brl_blitz_NullObjectError
_3034:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	ebx,eax
	jmp	_3035
_394:
	mov	eax,ebp
	push	eax
	push	_3038
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-168]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-168],eax
	call	dword [_bbOnDebugLeaveScope]
_392:
	add	dword [ebp-180],1
_3035:
	cmp	dword [ebp-180],ebx
	jle	_394
_393:
	push	_3039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-168]
	push	_395
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-176],eax
	push	_3041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3043
	call	_brl_blitz_NullObjectError
_3043:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3045
	call	_brl_blitz_NullObjectError
_3045:
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
	jne	_3047
	call	_brl_blitz_NullObjectError
_3047:
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
	push	_3048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3051
	call	_brl_blitz_NullObjectError
_3051:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3054
	call	_brl_blitz_NullObjectError
_3054:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_396
_398:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_3059
	call	_brl_blitz_NullObjectError
_3059:
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
	je	_396
	mov	eax,ebp
	push	eax
	push	_3070
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3062
	call	_brl_blitz_NullObjectError
_3062:
	push	_56
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3063
	mov	eax,ebp
	push	eax
	push	_3069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3066
	call	_brl_blitz_NullObjectError
_3066:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3068
	call	_brl_blitz_NullObjectError
_3068:
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
	push	_399
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
_3063:
	call	dword [_bbOnDebugLeaveScope]
_396:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_3057
	call	_brl_blitz_NullObjectError
_3057:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_398
_397:
	push	_3072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3074
	call	_brl_blitz_NullObjectError
_3074:
	cmp	dword [ebx+56],0
	jne	_3075
	mov	eax,ebp
	push	eax
	push	_3077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [ebp-176]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3078
_3075:
	mov	eax,ebp
	push	eax
	push	_3087
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3081
	call	_brl_blitz_NullObjectError
_3081:
	push	dword [ebp-176]
	push	dword [esi+52]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3086
	push	eax
	call	_bbGCFree
	add	esp,4
_3086:
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
_3078:
	push	_3088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3090
	call	_brl_blitz_NullObjectError
_3090:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3092
	call	_brl_blitz_NullObjectError
_3092:
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
	jne	_3093
	mov	eax,ebp
	push	eax
	push	_3099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3096
	call	_brl_blitz_NullObjectError
_3096:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3098
	call	_brl_blitz_NullObjectError
_3098:
	push	_70
	push	dword [ebp-24]
	push	_401
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
	push	_400
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
_3093:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1914:
	mov	eax,ebp
	push	eax
	push	_3108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3105
	call	_brl_blitz_NullObjectError
_3105:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3107
	call	_brl_blitz_NullObjectError
_3107:
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
	jmp	_1878
_1915:
	mov	eax,ebp
	push	eax
	push	_3224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_3111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3113
	call	_brl_blitz_NullObjectError
_3113:
	cmp	dword [ebx+56],0
	jne	_3114
	mov	eax,ebp
	push	eax
	push	_3132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3117
	call	_brl_blitz_NullObjectError
_3117:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3122
	push	eax
	call	_bbGCFree
	add	esp,4
_3122:
	mov	dword [esi+52],ebx
	push	_3123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	push	_3124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3126
	call	_brl_blitz_NullObjectError
_3126:
	mov	dword [ebx+56],1
	push	_3128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3130
	call	_brl_blitz_NullObjectError
_3130:
	mov	dword [ebx+60],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3133
_3114:
	mov	eax,ebp
	push	eax
	push	_3138
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3136
	call	_brl_blitz_NullObjectError
_3136:
	add	dword [ebx+60],1
	call	dword [_bbOnDebugLeaveScope]
_3133:
	push	_3139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3142
	call	_brl_blitz_NullObjectError
_3142:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-308],eax
	mov	ebx,dword [ebp-308]
	cmp	ebx,_bbNullObject
	jne	_3145
	call	_brl_blitz_NullObjectError
_3145:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-316],eax
	jmp	_403
_405:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_3150
	call	_brl_blitz_NullObjectError
_3150:
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
	je	_403
	mov	eax,ebp
	push	eax
	push	_3201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_3153
	call	_brl_blitz_NullObjectError
_3153:
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
	je	_3156
	push	_236
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3157
	jmp	_3155
_3156:
	mov	eax,ebp
	push	eax
	push	_3177
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3160
	call	_brl_blitz_NullObjectError
_3160:
	mov	dword [ebp-216],ebx
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3163
	call	_brl_blitz_NullObjectError
_3163:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3165
	call	_brl_blitz_NullObjectError
_3165:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3167
	call	_brl_blitz_NullObjectError
_3167:
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
	jnz	_3171
	push	eax
	call	_bbGCFree
	add	esp,4
_3171:
	mov	eax,dword [ebp-216]
	mov	dword [eax+52],ebx
	push	_3172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3174
	call	_brl_blitz_NullObjectError
_3174:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3176
	call	_brl_blitz_NullObjectError
_3176:
	push	_406
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
	jmp	_3155
_3157:
	mov	eax,ebp
	push	eax
	push	_3200
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3180
	call	_brl_blitz_NullObjectError
_3180:
	cmp	dword [ebx+60],1
	jle	_3181
	mov	eax,ebp
	push	eax
	push	_3194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3184
	call	_brl_blitz_NullObjectError
_3184:
	mov	esi,ebx
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_3187
	call	_brl_blitz_NullObjectError
_3187:
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_3189
	call	_brl_blitz_NullObjectError
_3189:
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
	push	_407
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
	jnz	_3193
	push	eax
	call	_bbGCFree
	add	esp,4
_3193:
	mov	dword [esi+52],ebx
	call	dword [_bbOnDebugLeaveScope]
_3181:
	push	_3195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3197
	call	_brl_blitz_NullObjectError
_3197:
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_3199
	call	_brl_blitz_NullObjectError
_3199:
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
	jmp	_3155
_3155:
	call	dword [_bbOnDebugLeaveScope]
_403:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_3148
	call	_brl_blitz_NullObjectError
_3148:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_405
_404:
	push	_3202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_3203
	mov	eax,ebp
	push	eax
	push	_3223
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
	push	dword [ebp-24]
	push	dword [ebx+52]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3209
	call	_brl_blitz_NullObjectError
_3209:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3214
	push	eax
	call	_bbGCFree
	add	esp,4
_3214:
	mov	dword [esi+52],ebx
	push	_3215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3217
	call	_brl_blitz_NullObjectError
_3217:
	mov	dword [ebx+56],0
	push	_3219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3221
	call	_brl_blitz_NullObjectError
_3221:
	mov	dword [ebx+60],0
	call	dword [_bbOnDebugLeaveScope]
_3203:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1916:
	mov	eax,ebp
	push	eax
	push	_3321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_3228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3230
	call	_brl_blitz_NullObjectError
_3230:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_3231
	mov	eax,ebp
	push	eax
	push	_3252
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-200],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3235
	call	_brl_blitz_NullObjectError
_3235:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3238
	call	_brl_blitz_NullObjectError
_3238:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_409
_411:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3243
	call	_brl_blitz_NullObjectError
_3243:
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
	je	_409
	mov	eax,ebp
	push	eax
	push	_3250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_3246
	call	_brl_blitz_NullObjectError
_3246:
	push	_412
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3247
	mov	eax,ebp
	push	eax
	push	_3249
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3248
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
_3247:
	call	dword [_bbOnDebugLeaveScope]
_409:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3241
	call	_brl_blitz_NullObjectError
_3241:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_411
_410:
	call	dword [_bbOnDebugLeaveScope]
_3231:
	push	_3253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_57
	push	_3255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3257
	call	_brl_blitz_NullObjectError
_3257:
	push	_52
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToUpper
	add	esp,4
	mov	dword [ebp-196],eax
	push	_3259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_3260
	mov	eax,ebp
	push	eax
	push	_3308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-204],0
	push	_3263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-208],_413
	push	_3265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3267
	call	_brl_blitz_NullObjectError
_3267:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3269
	call	_brl_blitz_NullObjectError
_3269:
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
	jne	_3270
	mov	eax,ebp
	push	eax
	push	_3272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-196]
	push	_414
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-208],eax
	call	dword [_bbOnDebugLeaveScope]
_3270:
	push	_3273
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
	push	_415
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-212],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3277
	call	_brl_blitz_NullObjectError
_3277:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3280
	call	_brl_blitz_NullObjectError
_3280:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-228],eax
	jmp	_416
_418:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_3285
	call	_brl_blitz_NullObjectError
_3285:
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
	je	_416
	mov	eax,ebp
	push	eax
	push	_3297
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3288
	call	_brl_blitz_NullObjectError
_3288:
	push	_412
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3289
	mov	eax,ebp
	push	eax
	push	_3296
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-204],1
	push	_3291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_3293
	call	_brl_blitz_NullObjectError
_3293:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3295
	call	_brl_blitz_NullObjectError
_3295:
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
_3289:
	call	dword [_bbOnDebugLeaveScope]
_416:
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_3283
	call	_brl_blitz_NullObjectError
_3283:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_418
_417:
	push	_3298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3301
	call	_brl_blitz_NullObjectError
_3301:
	mov	eax,dword [ebp-204]
	cmp	dword [ebx+24],eax
	jge	_3302
	mov	eax,ebp
	push	eax
	push	_3307
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3305
	call	_brl_blitz_NullObjectError
_3305:
	mov	eax,dword [ebp-204]
	mov	dword [ebx+24],eax
	call	dword [_bbOnDebugLeaveScope]
_3302:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3310
_3260:
	mov	eax,ebp
	push	eax
	push	_3312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-196]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_420
	push	dword [ebp-196]
	push	_419
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
_3310:
	push	_3313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3315
	call	_brl_blitz_NullObjectError
_3315:
	push	dword [ebp-196]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	je	_3316
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	sete	al
	movzx	eax,al
_3316:
	cmp	eax,0
	je	_3318
	mov	eax,ebp
	push	eax
	push	_3320
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_150
	push	dword [ebp-24]
	push	_83
	push	dword [ebp-196]
	push	_421
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
_3318:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1878
_1878:
	push	_3325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	jmp	_523
_523:
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
	push	_3398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3334
	call	_brl_blitz_NullObjectError
_3334:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3337
	call	_brl_blitz_NullObjectError
_3337:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_422
_424:
	cmp	ebx,_bbNullObject
	jne	_3342
	call	_brl_blitz_NullObjectError
_3342:
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
	je	_422
	mov	eax,ebp
	push	eax
	push	_3363
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3345
	call	_brl_blitz_NullObjectError
_3345:
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
	je	_3348
	push	_52
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3349
	push	_56
	push	esi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3350
	jmp	_3347
_3348:
	mov	eax,ebp
	push	eax
	push	_3354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3353
	call	_brl_blitz_NullObjectError
_3353:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3347
_3349:
	mov	eax,ebp
	push	eax
	push	_3358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3357
	call	_brl_blitz_NullObjectError
_3357:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3347
_3350:
	mov	eax,ebp
	push	eax
	push	_3362
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3361
	call	_brl_blitz_NullObjectError
_3361:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3347
_3347:
	call	dword [_bbOnDebugLeaveScope]
_422:
	cmp	ebx,_bbNullObject
	jne	_3340
	call	_brl_blitz_NullObjectError
_3340:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_424
_423:
	push	_3366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	_3368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3370
	call	_brl_blitz_NullObjectError
_3370:
	push	dword [ebp-20]
	push	dword [ebp-16]
	push	ebx
	call	__bb_TCGenerator_GetRealDatatype
	add	esp,12
	mov	dword [ebp-28],eax
	push	_3372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3374
	call	_brl_blitz_NullObjectError
_3374:
	push	dword [ebp-16]
	push	ebx
	call	__bb_TCGenerator_IsType
	add	esp,8
	cmp	eax,0
	jne	_3375
	mov	eax,dword [ebp-20]
	cmp	eax,0
	setg	al
	movzx	eax,al
_3375:
	cmp	eax,0
	je	_3377
	mov	eax,ebp
	push	eax
	push	_3379
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_57
	call	dword [_bbOnDebugLeaveScope]
_3377:
	push	_3380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3383
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3383
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3383
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3383
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3384
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3384
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3385
	mov	eax,ebp
	push	eax
	push	_3387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_428
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3382
_3383:
	mov	eax,ebp
	push	eax
	push	_3389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_425
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3382
_3384:
	mov	eax,ebp
	push	eax
	push	_3391
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_426
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3382
_3385:
	mov	eax,ebp
	push	eax
	push	_3396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_3395
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3382
_3382:
	push	_3397
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
	jmp	_527
_527:
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
	push	_3448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyString
	mov	dword [ebp-20],0
	push	_3405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3408
	call	_brl_blitz_NullObjectError
_3408:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+288]
	add	esp,4
	mov	dword [ebp-32],eax
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_3411
	call	_brl_blitz_NullObjectError
_3411:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_429
_431:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3416
	call	_brl_blitz_NullObjectError
_3416:
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
	je	_429
	mov	eax,ebp
	push	eax
	push	_3445
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3419
	call	_brl_blitz_NullObjectError
_3419:
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
	je	_3422
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3423
	push	_56
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3424
	jmp	_3421
_3422:
	mov	eax,ebp
	push	eax
	push	_3428
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3427
	call	_brl_blitz_NullObjectError
_3427:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3421
_3423:
	mov	eax,ebp
	push	eax
	push	_3434
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3431
	call	_brl_blitz_NullObjectError
_3431:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3433
	call	_brl_blitz_NullObjectError
_3433:
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
	jmp	_3421
_3424:
	mov	eax,ebp
	push	eax
	push	_3444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3437
	call	_brl_blitz_NullObjectError
_3437:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-20],eax
	push	_3438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],1
	mov	ebx,dword [ebp-20]
	jmp	_3440
_434:
	mov	eax,ebp
	push	eax
	push	_3443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_432:
	add	dword [ebp-28],1
_3440:
	cmp	dword [ebp-28],ebx
	jle	_434
_433:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3421
_3421:
	call	dword [_bbOnDebugLeaveScope]
_429:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3414
	call	_brl_blitz_NullObjectError
_3414:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_431
_430:
	push	_3446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_57
	push	_3447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_435
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
	jmp	_531
_531:
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
	push	_3502
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3450
	push	ebp
	push	_3452
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_3450:
	push	_3453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbEmptyString
	push	_3455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_31
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3458
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3459
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3460
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3461
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3462
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3463
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3464
	push	_74
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3465
	push	_443
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3466
	push	ebp
	push	_3476
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3469
	call	_brl_blitz_NullObjectError
_3469:
	movzx	eax,byte [ebx+20]
	cmp	eax,0
	je	_3470
	push	ebp
	push	_3472
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-8]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	_444
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3473
_3470:
	push	ebp
	push	_3475
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3474
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
_3473:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3458:
	push	ebp
	push	_3478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_436
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3459:
	push	ebp
	push	_3480
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_437
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3460:
	push	ebp
	push	_3482
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_438
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3461:
	push	ebp
	push	_3484
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_439
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3462:
	push	ebp
	push	_3486
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_440
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3463:
	push	ebp
	push	_3488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_441
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3464:
	push	ebp
	push	_3490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_442
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3465:
	push	ebp
	push	_3492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_74
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3466:
	push	ebp
	push	_3494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3493
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_57
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3457
_3457:
	push	_3495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	mov	dword [ebp-20],1
	mov	ebx,dword [ebp-12]
	jmp	_3497
_447:
	push	ebp
	push	_3500
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_142
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_445:
	add	dword [ebp-20],1
_3497:
	cmp	dword [ebp-20],ebx
	jle	_447
_446:
	push	_3501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_536
_536:
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
	push	_3514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	_448
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
	push	_3506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	push	_25
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_26
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_74
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_30
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_28
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_29
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	_27
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3509
	push	ebp
	push	_3511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_540
_3509:
	push	ebp
	push	_3513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_540
_540:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_556:
	dd	0
_461:
	db	"TCGenerator",0
	align	4
_555:
	dd	1
	dd	_461
	dd	0
_450:
	db	"TClass",0
_451:
	db	"Name",0
_452:
	db	"$",0
_453:
	db	"Count",0
_454:
	db	"i",0
_455:
	db	"Attributes",0
_456:
	db	":brl.linkedlist.TList",0
_457:
	db	"New",0
_458:
	db	"()i",0
_459:
	db	"Delete",0
	align	4
_449:
	dd	2
	dd	_450
	dd	3
	dd	_451
	dd	_452
	dd	8
	dd	3
	dd	_453
	dd	_454
	dd	12
	dd	3
	dd	_455
	dd	_456
	dd	16
	dd	6
	dd	_457
	dd	_458
	dd	16
	dd	6
	dd	_459
	dd	_458
	dd	20
	dd	0
	align	4
_bb_TClass:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_449
	dd	20
	dd	__bb_TClass_New
	dd	__bb_TClass_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_543:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCGenerator.bmx",0
	align	4
_542:
	dd	_543
	dd	14
	dd	2
	align	4
_553:
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
_462:
	db	"Classes",0
_463:
	db	"Output",0
_464:
	db	"ScopeCount",0
_465:
	db	"InStruct",0
_466:
	db	"b",0
_467:
	db	"MaxSizeArray",0
_468:
	db	"FuncDef",0
_469:
	db	"DebugMode",0
_470:
	db	"Types",0
_471:
	db	"TypeMainConstructor",0
_472:
	db	"Parameter",0
_473:
	db	"[]$",0
_474:
	db	"GlobalInit",0
_475:
	db	"ArrayCast",0
_476:
	db	"ShouldCast",0
_477:
	db	"AccessIteration",0
_478:
	db	"GetLanguage",0
_479:
	db	"()$",0
_480:
	db	"Generate",0
_481:
	db	"($,$)i",0
_482:
	db	"GetTabs",0
_483:
	db	"Block",0
_484:
	db	"(:bah.libxml.TxmlNode)$",0
_485:
	db	"GetNextMathString",0
_486:
	db	"VarDef",0
_487:
	db	"ArrayDef",0
_488:
	db	"GetRealDatatype",0
_489:
	db	"($,i)$",0
_490:
	db	"IsType",0
_491:
	db	"($)b",0
	align	4
_460:
	dd	2
	dd	_461
	dd	3
	dd	_462
	dd	_456
	dd	8
	dd	3
	dd	_463
	dd	_452
	dd	12
	dd	3
	dd	_464
	dd	_454
	dd	16
	dd	3
	dd	_465
	dd	_466
	dd	20
	dd	3
	dd	_467
	dd	_454
	dd	24
	dd	3
	dd	_468
	dd	_452
	dd	28
	dd	3
	dd	_469
	dd	_466
	dd	32
	dd	3
	dd	_470
	dd	_456
	dd	36
	dd	3
	dd	_471
	dd	_452
	dd	40
	dd	3
	dd	_472
	dd	_473
	dd	44
	dd	3
	dd	_474
	dd	_452
	dd	48
	dd	3
	dd	_475
	dd	_452
	dd	52
	dd	3
	dd	_476
	dd	_454
	dd	56
	dd	3
	dd	_477
	dd	_454
	dd	60
	dd	6
	dd	_457
	dd	_458
	dd	__bb_TCGenerator_New
	dd	6
	dd	_459
	dd	_458
	dd	__bb_TCGenerator_Delete
	dd	6
	dd	_478
	dd	_479
	dd	__bb_TCGenerator_GetLanguage
	dd	6
	dd	_480
	dd	_481
	dd	__bb_TCGenerator_Generate
	dd	6
	dd	_482
	dd	_479
	dd	__bb_TCGenerator_GetTabs
	dd	6
	dd	_483
	dd	_484
	dd	__bb_TCGenerator_Block
	dd	6
	dd	_485
	dd	_484
	dd	__bb_TCGenerator_GetNextMathString
	dd	6
	dd	_486
	dd	_484
	dd	__bb_TCGenerator_VarDef
	dd	6
	dd	_487
	dd	_484
	dd	__bb_TCGenerator_ArrayDef
	dd	6
	dd	_488
	dd	_489
	dd	__bb_TCGenerator_GetRealDatatype
	dd	6
	dd	_490
	dd	_491
	dd	__bb_TCGenerator_IsType
	dd	0
	align	4
_bb_TCGenerator:
	dd	_bb_TGenerator
	dd	_bbObjectFree
	dd	_460
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
_562:
	db	"Self",0
_563:
	db	":TClass",0
	align	4
_561:
	dd	1
	dd	_457
	dd	2
	dd	_562
	dd	_563
	dd	-4
	dd	0
	align	4
_560:
	dd	3
	dd	0
	dd	0
_579:
	db	":TCGenerator",0
	align	4
_578:
	dd	1
	dd	_457
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	0
	align	4
_577:
	dd	3
	dd	0
	dd	0
	align	4
_598:
	dd	1
	dd	_478
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	0
	align	4
_597:
	dd	_543
	dd	29
	dd	3
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	67
_1755:
	db	"InputPath",0
_1756:
	db	"OutputPath",0
_1757:
	db	"File",0
_1758:
	db	":bah.libxml.TxmlDoc",0
_1759:
	db	"Root",0
_682:
	db	":bah.libxml.TxmlNode",0
_1059:
	db	"Text",0
	align	4
_1754:
	dd	1
	dd	_480
	dd	2
	dd	_562
	dd	_579
	dd	-8
	dd	2
	dd	_1755
	dd	_452
	dd	-12
	dd	2
	dd	_1756
	dd	_452
	dd	-16
	dd	2
	dd	_1757
	dd	_1758
	dd	-20
	dd	2
	dd	_1759
	dd	_682
	dd	-24
	dd	2
	dd	_1059
	dd	_452
	dd	-28
	dd	0
	align	4
_599:
	dd	_543
	dd	32
	dd	3
	align	4
_601:
	dd	_543
	dd	34
	dd	3
	align	4
_605:
	dd	_543
	dd	36
	dd	3
_693:
	db	"Node",0
	align	4
_692:
	dd	3
	dd	0
	dd	2
	dd	_693
	dd	_682
	dd	-32
	dd	0
	align	4
_617:
	dd	_543
	dd	37
	dd	4
	align	4
_36:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
_691:
	db	"Class",0
	align	4
_690:
	dd	3
	dd	0
	dd	2
	dd	_451
	dd	_452
	dd	-36
	dd	2
	dd	_691
	dd	_563
	dd	-40
	dd	0
	align	4
_623:
	dd	_543
	dd	39
	dd	6
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_627:
	dd	_543
	dd	40
	dd	6
	align	4
_632:
	dd	_543
	dd	41
	dd	6
	align	4
_640:
	dd	_543
	dd	42
	dd	6
	align	4
_642:
	dd	_543
	dd	43
	dd	6
	align	4
_650:
	dd	_543
	dd	44
	dd	6
_684:
	db	"List",0
	align	4
_683:
	dd	3
	dd	0
	dd	2
	dd	_684
	dd	_456
	dd	-44
	dd	0
	align	4
_654:
	dd	_543
	dd	45
	dd	7
	align	4
_658:
	dd	_543
	dd	46
	dd	7
_681:
	db	"Node2",0
	align	4
_680:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-48
	dd	0
	align	4
_668:
	dd	_543
	dd	47
	dd	8
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_679:
	dd	3
	dd	0
	dd	0
	align	4
_672:
	dd	_543
	dd	48
	dd	9
	align	4
_685:
	dd	_543
	dd	52
	dd	6
	align	4
_694:
	dd	_543
	dd	55
	dd	3
	align	4
_1445:
	dd	3
	dd	0
	dd	2
	dd	_693
	dd	_682
	dd	-52
	dd	0
	align	4
_706:
	dd	_543
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
_796:
	dd	3
	dd	0
	dd	0
	align	4
_715:
	dd	_543
	dd	58
	dd	6
	align	4
_795:
	dd	3
	dd	0
	dd	0
	align	4
_719:
	dd	_543
	dd	59
	dd	7
	align	4
_794:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-56
	dd	0
	align	4
_731:
	dd	_543
	dd	60
	dd	8
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_745:
	dd	3
	dd	0
	dd	0
	align	4
_735:
	dd	_543
	dd	61
	dd	9
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_762:
	dd	3
	dd	0
	dd	0
	align	4
_747:
	dd	_543
	dd	62
	dd	8
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_761:
	dd	3
	dd	0
	dd	0
	align	4
_751:
	dd	_543
	dd	63
	dd	9
	align	4
_763:
	dd	_543
	dd	65
	dd	8
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_793:
	dd	3
	dd	0
	dd	0
	align	4
_773:
	dd	_543
	dd	66
	dd	9
	align	4
_777:
	dd	_543
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
_789:
	dd	_543
	dd	68
	dd	9
_930:
	db	"Datatype",0
_1060:
	db	"FuncDatatype",0
_1061:
	db	"UserFunc",0
_1062:
	db	"DatatypesText",0
	align	4
_1058:
	dd	3
	dd	0
	dd	2
	dd	_451
	dd	_452
	dd	-60
	dd	2
	dd	_930
	dd	_452
	dd	-64
	dd	2
	dd	_1059
	dd	_452
	dd	-68
	dd	2
	dd	_1060
	dd	_452
	dd	-72
	dd	2
	dd	_1061
	dd	_454
	dd	-76
	dd	2
	dd	_1062
	dd	_452
	dd	-80
	dd	0
	align	4
_797:
	dd	_543
	dd	73
	dd	6
_801:
	db	"$",0
	align	4
_806:
	dd	_543
	dd	74
	dd	6
	align	4
_810:
	dd	_543
	dd	75
	dd	6
	align	4
_814:
	dd	_543
	dd	77
	dd	6
	align	4
_816:
	dd	_543
	dd	78
	dd	6
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_825:
	dd	3
	dd	0
	dd	0
	align	4
_824:
	dd	_543
	dd	79
	dd	7
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	71,67,83,116,97,99,107,78,111,100,101,42
	align	4
_832:
	dd	3
	dd	0
	dd	0
	align	4
_827:
	dd	_543
	dd	81
	dd	7
	align	4
_833:
	dd	_543
	dd	83
	dd	6
	align	4
_835:
	dd	_543
	dd	84
	dd	6
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_839:
	dd	_543
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
_840:
	dd	_543
	dd	86
	dd	6
	align	4
_842:
	dd	_543
	dd	87
	dd	6
	align	4
_933:
	dd	3
	dd	0
	dd	0
	align	4
_846:
	dd	_543
	dd	88
	dd	7
	align	4
_932:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-84
	dd	0
	align	4
_858:
	dd	_543
	dd	89
	dd	8
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
_931:
	db	"Add",0
	align	4
_929:
	dd	3
	dd	0
	dd	2
	dd	_930
	dd	_452
	dd	-88
	dd	2
	dd	_931
	dd	_452
	dd	-92
	dd	0
	align	4
_862:
	dd	_543
	dd	91
	dd	9
	align	4
_870:
	dd	_543
	dd	92
	dd	9
	align	4
_881:
	dd	3
	dd	0
	dd	0
	align	4
_880:
	dd	_543
	dd	93
	dd	10
	align	4
_882:
	dd	_543
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
_885:
	dd	_543
	dd	96
	dd	9
	align	4
_907:
	dd	3
	dd	0
	dd	0
	align	4
_895:
	dd	_543
	dd	96
	dd	95
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_908:
	dd	_543
	dd	97
	dd	9
	align	4
_912:
	dd	_543
	dd	98
	dd	9
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,112,116,114
	align	4
_927:
	dd	3
	dd	0
	dd	0
	align	4
_926:
	dd	_543
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
_928:
	dd	_543
	dd	99
	dd	9
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	44,32
	align	4
_934:
	dd	_543
	dd	103
	dd	6
	align	4
_935:
	dd	_543
	dd	104
	dd	6
	align	4
_1012:
	dd	3
	dd	0
	dd	0
	align	4
_937:
	dd	_543
	dd	105
	dd	7
	align	4
_945:
	dd	_543
	dd	106
	dd	7
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,59,10
	align	4
_946:
	dd	_543
	dd	107
	dd	7
	align	4
_73:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	41,32,123,10
	align	4
_954:
	dd	_543
	dd	109
	dd	7
	align	4
_958:
	dd	_543
	dd	110
	dd	7
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_970:
	dd	3
	dd	0
	dd	0
	align	4
_960:
	dd	_543
	dd	110
	dd	31
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,114,101,116,118,97,108,117,101,59,10
	align	4
_971:
	dd	_543
	dd	111
	dd	7
	align	4
_999:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-96
	dd	0
	align	4
_983:
	dd	_543
	dd	112
	dd	8
	align	4
_998:
	dd	3
	dd	0
	dd	0
	align	4
_987:
	dd	_543
	dd	113
	dd	9
	align	4
_997:
	dd	_543
	dd	114
	dd	9
	align	4
_1000:
	dd	_543
	dd	117
	dd	7
	align	4
_1004:
	dd	_543
	dd	118
	dd	7
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	125,10
_1049:
	db	"RealName",0
	align	4
_1048:
	dd	3
	dd	0
	dd	2
	dd	_1049
	dd	_452
	dd	-100
	dd	0
	align	4
_1014:
	dd	_543
	dd	120
	dd	7
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_1018:
	dd	_543
	dd	121
	dd	7
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_1044:
	dd	3
	dd	0
	dd	0
	align	4
_1022:
	dd	_543
	dd	122
	dd	8
	align	4
_1023:
	dd	_543
	dd	123
	dd	8
	align	4
_1027:
	dd	_543
	dd	124
	dd	8
	align	4
_1030:
	dd	3
	dd	0
	dd	0
	align	4
_1029:
	dd	_543
	dd	124
	dd	28
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,116,117,114,110,32
	align	4
_1033:
	dd	3
	dd	0
	dd	0
	align	4
_1032:
	dd	_543
	dd	124
	dd	52
	align	4
_1034:
	dd	_543
	dd	125
	dd	8
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_1037:
	dd	_543
	dd	126
	dd	8
	align	4
_1041:
	dd	_543
	dd	127
	dd	8
	align	4
_1047:
	dd	3
	dd	0
	dd	0
	align	4
_1046:
	dd	_543
	dd	129
	dd	8
	align	4
_1050:
	dd	_543
	dd	133
	dd	6
_1367:
	db	"FInalizer",0
_1368:
	db	"Added",0
	align	4
_1366:
	dd	3
	dd	0
	dd	2
	dd	_451
	dd	_452
	dd	-104
	dd	2
	dd	_691
	dd	_563
	dd	-108
	dd	2
	dd	_1059
	dd	_452
	dd	-112
	dd	2
	dd	_1367
	dd	_452
	dd	-116
	dd	2
	dd	_1368
	dd	_466
	dd	-4
	dd	0
	align	4
_1063:
	dd	_543
	dd	135
	dd	6
	align	4
_1067:
	dd	_543
	dd	136
	dd	6
	align	4
_1069:
	dd	_543
	dd	137
	dd	6
_1089:
	db	"tmp",0
	align	4
_1088:
	dd	3
	dd	0
	dd	2
	dd	_1089
	dd	_563
	dd	-120
	dd	0
	align	4
_1081:
	dd	_543
	dd	138
	dd	7
	align	4
_1087:
	dd	3
	dd	0
	dd	0
	align	4
_1085:
	dd	_543
	dd	139
	dd	8
	align	4
_1086:
	dd	_543
	dd	140
	dd	8
	align	4
_1090:
	dd	_543
	dd	143
	dd	6
	align	4
_1092:
	dd	_543
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
_1093:
	dd	_543
	dd	145
	dd	6
	align	4
_1097:
	dd	_543
	dd	146
	dd	6
	align	4
_1101:
	dd	_543
	dd	147
	dd	6
	align	4
_1103:
	dd	_543
	dd	149
	dd	6
	align	4
_1157:
	dd	3
	dd	0
	dd	0
	align	4
_1107:
	dd	_543
	dd	150
	dd	7
	align	4
_1156:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-124
	dd	0
	align	4
_1119:
	dd	_543
	dd	151
	dd	8
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_1132:
	dd	3
	dd	0
	dd	0
	align	4
_1126:
	dd	_543
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
_1131:
	dd	3
	dd	0
	dd	0
	align	4
_1130:
	dd	_543
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
_1155:
	db	"Data",0
	align	4
_1154:
	dd	3
	dd	0
	dd	2
	dd	_1155
	dd	_452
	dd	-128
	dd	0
	align	4
_1133:
	dd	_543
	dd	157
	dd	10
	align	4
_1141:
	dd	_543
	dd	158
	dd	10
	align	4
_1148:
	dd	3
	dd	0
	dd	0
	align	4
_1147:
	dd	_543
	dd	158
	dd	48
	align	4
_1149:
	dd	_543
	dd	159
	dd	10
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,59,10
	align	4
_1158:
	dd	_543
	dd	163
	dd	6
	align	4
_1162:
	dd	_543
	dd	164
	dd	6
	align	4
_1166:
	dd	_543
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
_1171:
	dd	_543
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
_1174:
	dd	_543
	dd	167
	dd	6
	align	4
_1178:
	dd	_543
	dd	168
	dd	6
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	110,111,100,101,45,62,109,97,114,107,61,49,59,10
	align	4
_1181:
	dd	_543
	dd	169
	dd	6
	align	4
_1183:
	dd	_543
	dd	170
	dd	6
	align	4
_1234:
	dd	3
	dd	0
	dd	0
	align	4
_1187:
	dd	_543
	dd	171
	dd	7
	align	4
_1233:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-132
	dd	0
	align	4
_1199:
	dd	_543
	dd	172
	dd	8
	align	4
_1232:
	dd	3
	dd	0
	dd	0
	align	4
_1203:
	dd	_543
	dd	173
	dd	9
_1231:
	db	"Access",0
	align	4
_1230:
	dd	3
	dd	0
	dd	2
	dd	_1231
	dd	_452
	dd	-136
	dd	0
	align	4
_1213:
	dd	_543
	dd	174
	dd	10
	align	4
_1219:
	dd	3
	dd	0
	dd	0
	align	4
_1215:
	dd	_543
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
_1218:
	dd	_543
	dd	176
	dd	11
	align	4
_1220:
	dd	_543
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
_1224:
	dd	_543
	dd	179
	dd	10
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,109,112,61
	align	4
_1227:
	dd	_543
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
_1235:
	dd	_543
	dd	185
	dd	6
	align	4
_1239:
	dd	_543
	dd	186
	dd	6
	align	4
_1242:
	dd	_543
	dd	187
	dd	6
	align	4
_1252:
	dd	_543
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
_1262:
	dd	_543
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
_1272:
	dd	_543
	dd	192
	dd	6
	align	4
_1276:
	dd	_543
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
_1286:
	dd	_543
	dd	194
	dd	6
	align	4
_1298:
	dd	3
	dd	0
	dd	0
	align	4
_1288:
	dd	_543
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
_1299:
	dd	_543
	dd	198
	dd	6
	align	4
_1341:
	dd	3
	dd	0
	dd	0
	align	4
_1303:
	dd	_543
	dd	199
	dd	7
	align	4
_1340:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-140
	dd	0
	align	4
_1315:
	dd	_543
	dd	200
	dd	8
	align	4
_1322:
	dd	3
	dd	0
	dd	0
	align	4
_1339:
	dd	3
	dd	0
	dd	0
	align	4
_1323:
	dd	_543
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
_1342:
	dd	_543
	dd	209
	dd	6
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	114,101,116,117,114,110,32,110,111,100,101,59,10
	align	4
_1352:
	dd	_543
	dd	210
	dd	6
	align	4
_1356:
	dd	_543
	dd	211
	dd	6
	align	4
_1444:
	dd	3
	dd	0
	dd	0
	align	4
_1369:
	dd	_543
	dd	213
	dd	6
	align	4
_1379:
	dd	_543
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
_1389:
	dd	_543
	dd	215
	dd	6
	align	4
_1393:
	dd	_543
	dd	216
	dd	6
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	71,67,95,73,78,73,84,40,41,59,10
	align	4
_1403:
	dd	_543
	dd	217
	dd	6
_1407:
	db	"$",0
	align	4
_1412:
	dd	_543
	dd	218
	dd	6
	align	4
_1422:
	dd	_543
	dd	219
	dd	6
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	114,101,116,117,114,110,32,48,59,10
	align	4
_1430:
	dd	_543
	dd	220
	dd	6
	align	4
_1434:
	dd	_543
	dd	221
	dd	6
	align	4
_1446:
	dd	_543
	dd	226
	dd	3
_1686:
	db	"Arr",0
	align	4
_1685:
	dd	3
	dd	0
	dd	2
	dd	_454
	dd	_454
	dd	-144
	dd	2
	dd	_1059
	dd	_452
	dd	-148
	dd	2
	dd	_1231
	dd	_452
	dd	-152
	dd	2
	dd	_1686
	dd	_452
	dd	-156
	dd	0
	align	4
_1452:
	dd	_543
	dd	243
	dd	4
	align	4
_1454:
	dd	_543
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
_1457:
	dd	_543
	dd	245
	dd	4
	align	4
_1461:
	dd	_543
	dd	246
	dd	4
	align	4
_1464:
	dd	_543
	dd	247
	dd	4
_1479:
	db	"j",0
	align	4
_1478:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-160
	dd	0
	align	4
_1468:
	dd	_543
	dd	248
	dd	5
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	105,110,116,32,105
	align	4
_1471:
	dd	_543
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
_1474:
	dd	_543
	dd	250
	dd	5
	align	4
_1480:
	dd	_543
	dd	252
	dd	4
	align	4
_1482:
	dd	_543
	dd	253
	dd	4
	align	4
_1484:
	dd	_543
	dd	254
	dd	4
	align	4
_1489:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-164
	dd	0
	align	4
_1488:
	dd	_543
	dd	255
	dd	5
	align	4
_142:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_1490:
	dd	_543
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
_1491:
	dd	_543
	dd	258
	dd	4
	align	4
_1496:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-168
	dd	0
	align	4
_1495:
	dd	_543
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
_1497:
	dd	_543
	dd	261
	dd	4
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_1498:
	dd	_543
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
_1501:
	dd	_543
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
_1504:
	dd	_543
	dd	264
	dd	4
	align	4
_1515:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-172
	dd	0
	align	4
_1508:
	dd	_543
	dd	265
	dd	5
	align	4
_1512:
	dd	_543
	dd	266
	dd	5
	align	4
_1516:
	dd	_543
	dd	269
	dd	4
	align	4
_1520:
	dd	_543
	dd	270
	dd	4
	align	4
_1523:
	dd	_543
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
_1526:
	dd	_543
	dd	272
	dd	4
	align	4
_1531:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-176
	dd	0
	align	4
_1530:
	dd	_543
	dd	273
	dd	5
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	44,32,105,110,116,32,112,97,114,97,109
	align	4
_1532:
	dd	_543
	dd	275
	dd	4
	align	4
_1533:
	dd	_543
	dd	276
	dd	4
	align	4
_1537:
	dd	_543
	dd	277
	dd	4
	align	4
_1540:
	dd	_543
	dd	278
	dd	4
_1546:
	db	"k",0
	align	4
_1545:
	dd	3
	dd	0
	dd	2
	dd	_1546
	dd	_454
	dd	-180
	dd	0
	align	4
_1544:
	dd	_543
	dd	279
	dd	5
	align	4
_1547:
	dd	_543
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
_1548:
	dd	_543
	dd	283
	dd	4
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,110,116,32
	align	4
_1551:
	dd	_543
	dd	284
	dd	4
	align	4
_1560:
	dd	3
	dd	0
	dd	2
	dd	_1546
	dd	_454
	dd	-184
	dd	0
	align	4
_1555:
	dd	_543
	dd	285
	dd	5
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	32,118,97,114,105
	align	4
_1556:
	dd	_543
	dd	286
	dd	5
	align	4
_1559:
	dd	3
	dd	0
	dd	0
	align	4
_1558:
	dd	_543
	dd	286
	dd	17
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_1561:
	dd	_543
	dd	288
	dd	4
	align	4
_172:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	59,32,10
	align	4
_1562:
	dd	_543
	dd	290
	dd	4
	align	4
_1637:
	dd	3
	dd	0
	dd	2
	dd	_1546
	dd	_454
	dd	-188
	dd	0
	align	4
_1566:
	dd	_543
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
_1569:
	dd	_543
	dd	292
	dd	5
	align	4
_1573:
	dd	_543
	dd	293
	dd	5
_1597:
	db	"Tmp",0
_1598:
	db	"MulPtr",0
	align	4
_1596:
	dd	3
	dd	0
	dd	2
	dd	_1597
	dd	_452
	dd	-192
	dd	2
	dd	_1598
	dd	_452
	dd	-196
	dd	0
	align	4
_1575:
	dd	_543
	dd	294
	dd	6
	align	4
_1578:
	dd	_543
	dd	295
	dd	6
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,101,109
	align	4
_1580:
	dd	_543
	dd	296
	dd	6
	align	4
_1585:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-200
	dd	0
	align	4
_1584:
	dd	_543
	dd	298
	dd	7
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	91,118,97,114,105
	align	4
_1586:
	dd	_543
	dd	300
	dd	6
	align	4
_1587:
	dd	_543
	dd	301
	dd	6
	align	4
_1589:
	dd	_543
	dd	302
	dd	6
	align	4
_1594:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-204
	dd	0
	align	4
_1593:
	dd	_543
	dd	303
	dd	7
	align	4
_1595:
	dd	_543
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
_1636:
	dd	3
	dd	0
	dd	2
	dd	_1231
	dd	_452
	dd	-208
	dd	0
	align	4
_1600:
	dd	_543
	dd	307
	dd	6
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	105,102,32,40,115,105,122,101,32,61,61,32,45,49,41,10
	align	4
_1603:
	dd	_543
	dd	308
	dd	6
	align	4
_1607:
	dd	_543
	dd	309
	dd	6
	align	4
_1609:
	dd	_543
	dd	310
	dd	6
	align	4
_1612:
	dd	_543
	dd	311
	dd	6
	align	4
_1617:
	dd	3
	dd	0
	dd	2
	dd	_1479
	dd	_454
	dd	-212
	dd	0
	align	4
_1616:
	dd	_543
	dd	312
	dd	7
	align	4
_1618:
	dd	_543
	dd	314
	dd	6
	align	4
_1619:
	dd	_543
	dd	315
	dd	6
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	32,61,32,78,85,76,76,59,10
	align	4
_1620:
	dd	_543
	dd	316
	dd	6
	align	4
_1624:
	dd	_543
	dd	317
	dd	6
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,108,115,101,10
	align	4
_1627:
	dd	_543
	dd	318
	dd	6
	align	4
_1631:
	dd	_543
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
_1632:
	dd	_543
	dd	320
	dd	6
	align	4
_1638:
	dd	_543
	dd	323
	dd	4
	align	4
_1649:
	dd	3
	dd	0
	dd	2
	dd	_1546
	dd	_454
	dd	-216
	dd	0
	align	4
_1642:
	dd	_543
	dd	324
	dd	5
	align	4
_1646:
	dd	_543
	dd	325
	dd	5
	align	4
_1650:
	dd	_543
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
_1653:
	dd	_543
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
_1656:
	dd	_543
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
_1659:
	dd	_543
	dd	330
	dd	4
	align	4
_1666:
	dd	3
	dd	0
	dd	2
	dd	_1546
	dd	_454
	dd	-220
	dd	0
	align	4
_1663:
	dd	_543
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
_1667:
	dd	_543
	dd	333
	dd	4
	align	4
_1670:
	dd	_543
	dd	334
	dd	4
	align	4
_1674:
	dd	_543
	dd	335
	dd	4
	align	4
_1675:
	dd	_543
	dd	336
	dd	4
	align	4
_1687:
	dd	_543
	dd	338
	dd	3
	align	4
_1689:
	dd	_543
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
_1692:
	dd	_543
	dd	340
	dd	3
	align	4
_1696:
	dd	_543
	dd	341
	dd	3
	align	4
_209:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	110,111,100,101,45,62,109,97,114,107,32,61,32,49,59,10
	align	4
_1699:
	dd	_543
	dd	342
	dd	3
	align	4
_1703:
	dd	_543
	dd	343
	dd	3
	align	4
_1704:
	dd	_543
	dd	344
	dd	3
	align	4
_1714:
	dd	_543
	dd	345
	dd	3
	align	4
_1726:
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
_1733:
	dd	_543
	dd	346
	dd	3
	align	4
_1743:
	dd	_543
	dd	347
	dd	3
	align	4
_1751:
	dd	_543
	dd	348
	dd	3
	align	4
_1771:
	dd	1
	dd	_482
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_1059
	dd	_452
	dd	-8
	dd	0
	align	4
_1760:
	dd	_543
	dd	352
	dd	3
	align	4
_1762:
	dd	_543
	dd	353
	dd	3
	align	4
_1769:
	dd	3
	dd	0
	dd	2
	dd	_454
	dd	_454
	dd	-12
	dd	0
	align	4
_1768:
	dd	_543
	dd	354
	dd	4
	align	4
_217:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	32,32,32
	align	4
_1770:
	dd	_543
	dd	356
	dd	3
	align	4
_1867:
	dd	1
	dd	_483
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_693
	dd	_682
	dd	-8
	dd	2
	dd	_463
	dd	_452
	dd	-12
	dd	0
	align	4
_1772:
	dd	_543
	dd	359
	dd	3
	align	4
_1774:
	dd	_543
	dd	360
	dd	3
	align	4
_218:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	115,116,97,99,107,95,101,110,116,101,114,40,41,59,10
	align	4
_1777:
	dd	_543
	dd	361
	dd	3
	align	4
_1780:
	dd	_543
	dd	362
	dd	3
	align	4
_1788:
	dd	_543
	dd	364
	dd	3
_1800:
	db	"P",0
	align	4
_1799:
	dd	3
	dd	0
	dd	2
	dd	_1800
	dd	_452
	dd	-16
	dd	0
	align	4
_1796:
	dd	_543
	dd	365
	dd	4
	align	4
_222:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,97,99,107,95,112,117,115,104,40,38
	align	4
_1801:
	dd	_543
	dd	367
	dd	3
_1805:
	db	"$",0
	align	4
_1810:
	dd	_543
	dd	368
	dd	3
	align	4
_1862:
	dd	3
	dd	0
	dd	0
	align	4
_1814:
	dd	_543
	dd	369
	dd	4
	align	4
_1861:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-20
	dd	0
	align	4
_1826:
	dd	_543
	dd	370
	dd	5
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_1860:
	dd	3
	dd	0
	dd	2
	dd	_1059
	dd	_452
	dd	-24
	dd	0
	align	4
_1834:
	dd	_543
	dd	371
	dd	6
	align	4
_1840:
	dd	_543
	dd	372
	dd	6
	align	4
_1859:
	dd	3
	dd	0
	dd	0
	align	4
_1842:
	dd	_543
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
_1853:
	dd	3
	dd	0
	dd	0
	align	4
_1850:
	dd	_543
	dd	374
	dd	9
	align	4
_1858:
	dd	3
	dd	0
	dd	0
	align	4
_1855:
	dd	_543
	dd	376
	dd	8
	align	4
_1863:
	dd	_543
	dd	382
	dd	3
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	115,116,97,99,107,95,108,101,97,118,101,40,41,59,10
	align	4
_1866:
	dd	_543
	dd	383
	dd	3
	align	4
_3326:
	dd	1
	dd	_485
	dd	2
	dd	_562
	dd	_579
	dd	-16
	dd	2
	dd	_693
	dd	_682
	dd	-20
	dd	2
	dd	_1059
	dd	_452
	dd	-24
	dd	0
	align	4
_1868:
	dd	_543
	dd	386
	dd	3
	align	4
_1870:
	dd	_543
	dd	387
	dd	3
	align	4
_1873:
	dd	3
	dd	0
	dd	0
	align	4
_1872:
	dd	_543
	dd	387
	dd	21
	align	4
_1874:
	dd	_543
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
_318:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_322:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_330:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_336:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_338:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_360:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_369:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_370:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_371:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_386:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_389:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_391:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_402:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_1951:
	dd	3
	dd	0
	dd	0
	align	4
_1917:
	dd	_543
	dd	390
	dd	5
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	106,111,105,110,115,116,114,40
	align	4
_1918:
	dd	_543
	dd	391
	dd	5
	align	4
_1949:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-28
	dd	0
	align	4
_1930:
	dd	_543
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
_1942:
	dd	3
	dd	0
	dd	0
	align	4
_1937:
	dd	_543
	dd	394
	dd	8
	align	4
_1948:
	dd	3
	dd	0
	dd	0
	align	4
_1943:
	dd	_543
	dd	396
	dd	8
	align	4
_1950:
	dd	_543
	dd	399
	dd	5
	align	4
_1984:
	dd	3
	dd	0
	dd	0
	align	4
_1952:
	dd	_543
	dd	401
	dd	5
	align	4
_1983:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-32
	dd	0
	align	4
_1964:
	dd	_543
	dd	402
	dd	6
	align	4
_1976:
	dd	3
	dd	0
	dd	0
	align	4
_1971:
	dd	_543
	dd	404
	dd	8
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_1982:
	dd	3
	dd	0
	dd	0
	align	4
_1977:
	dd	_543
	dd	406
	dd	8
	align	4
_2017:
	dd	3
	dd	0
	dd	0
	align	4
_1985:
	dd	_543
	dd	410
	dd	5
	align	4
_2016:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-36
	dd	0
	align	4
_1997:
	dd	_543
	dd	411
	dd	6
	align	4
_2009:
	dd	3
	dd	0
	dd	0
	align	4
_2004:
	dd	_543
	dd	413
	dd	8
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_2015:
	dd	3
	dd	0
	dd	0
	align	4
_2010:
	dd	_543
	dd	415
	dd	8
	align	4
_2050:
	dd	3
	dd	0
	dd	0
	align	4
_2018:
	dd	_543
	dd	419
	dd	5
	align	4
_2049:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-40
	dd	0
	align	4
_2030:
	dd	_543
	dd	420
	dd	6
	align	4
_2042:
	dd	3
	dd	0
	dd	0
	align	4
_2037:
	dd	_543
	dd	422
	dd	8
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_2048:
	dd	3
	dd	0
	dd	0
	align	4
_2043:
	dd	_543
	dd	424
	dd	8
	align	4
_2083:
	dd	3
	dd	0
	dd	0
	align	4
_2051:
	dd	_543
	dd	428
	dd	5
	align	4
_2082:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-44
	dd	0
	align	4
_2063:
	dd	_543
	dd	429
	dd	6
	align	4
_2075:
	dd	3
	dd	0
	dd	0
	align	4
_2070:
	dd	_543
	dd	431
	dd	8
	align	4
_2081:
	dd	3
	dd	0
	dd	0
	align	4
_2076:
	dd	_543
	dd	433
	dd	8
	align	4
_2116:
	dd	3
	dd	0
	dd	0
	align	4
_2084:
	dd	_543
	dd	437
	dd	5
	align	4
_2115:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-48
	dd	0
	align	4
_2096:
	dd	_543
	dd	438
	dd	6
	align	4
_2108:
	dd	3
	dd	0
	dd	0
	align	4
_2103:
	dd	_543
	dd	440
	dd	8
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,38,38,32
	align	4
_2114:
	dd	3
	dd	0
	dd	0
	align	4
_2109:
	dd	_543
	dd	442
	dd	8
	align	4
_2149:
	dd	3
	dd	0
	dd	0
	align	4
_2117:
	dd	_543
	dd	446
	dd	5
	align	4
_2148:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-52
	dd	0
	align	4
_2129:
	dd	_543
	dd	447
	dd	6
	align	4
_2141:
	dd	3
	dd	0
	dd	0
	align	4
_2136:
	dd	_543
	dd	449
	dd	8
	align	4
_265:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,124,124,32
	align	4
_2147:
	dd	3
	dd	0
	dd	0
	align	4
_2142:
	dd	_543
	dd	451
	dd	8
	align	4
_2182:
	dd	3
	dd	0
	dd	0
	align	4
_2150:
	dd	_543
	dd	455
	dd	5
	align	4
_2181:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-56
	dd	0
	align	4
_2162:
	dd	_543
	dd	456
	dd	6
	align	4
_2174:
	dd	3
	dd	0
	dd	0
	align	4
_2169:
	dd	_543
	dd	458
	dd	8
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_2180:
	dd	3
	dd	0
	dd	0
	align	4
_2175:
	dd	_543
	dd	460
	dd	8
	align	4
_2215:
	dd	3
	dd	0
	dd	0
	align	4
_2183:
	dd	_543
	dd	464
	dd	5
	align	4
_2214:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-60
	dd	0
	align	4
_2195:
	dd	_543
	dd	465
	dd	6
	align	4
_2207:
	dd	3
	dd	0
	dd	0
	align	4
_2202:
	dd	_543
	dd	467
	dd	8
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_2213:
	dd	3
	dd	0
	dd	0
	align	4
_2208:
	dd	_543
	dd	469
	dd	8
	align	4
_2248:
	dd	3
	dd	0
	dd	0
	align	4
_2216:
	dd	_543
	dd	473
	dd	5
	align	4
_2247:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-64
	dd	0
	align	4
_2228:
	dd	_543
	dd	474
	dd	6
	align	4
_2240:
	dd	3
	dd	0
	dd	0
	align	4
_2235:
	dd	_543
	dd	476
	dd	8
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_2246:
	dd	3
	dd	0
	dd	0
	align	4
_2241:
	dd	_543
	dd	478
	dd	8
	align	4
_2281:
	dd	3
	dd	0
	dd	0
	align	4
_2249:
	dd	_543
	dd	482
	dd	5
	align	4
_2280:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-68
	dd	0
	align	4
_2261:
	dd	_543
	dd	483
	dd	6
	align	4
_2273:
	dd	3
	dd	0
	dd	0
	align	4
_2268:
	dd	_543
	dd	485
	dd	8
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_2279:
	dd	3
	dd	0
	dd	0
	align	4
_2274:
	dd	_543
	dd	487
	dd	8
	align	4
_2314:
	dd	3
	dd	0
	dd	0
	align	4
_2282:
	dd	_543
	dd	491
	dd	5
	align	4
_2313:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-72
	dd	0
	align	4
_2294:
	dd	_543
	dd	492
	dd	6
	align	4
_2306:
	dd	3
	dd	0
	dd	0
	align	4
_2301:
	dd	_543
	dd	494
	dd	8
	align	4
_289:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_2312:
	dd	3
	dd	0
	dd	0
	align	4
_2307:
	dd	_543
	dd	496
	dd	8
	align	4
_2347:
	dd	3
	dd	0
	dd	0
	align	4
_2315:
	dd	_543
	dd	500
	dd	5
	align	4
_2346:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-76
	dd	0
	align	4
_2327:
	dd	_543
	dd	501
	dd	6
	align	4
_2339:
	dd	3
	dd	0
	dd	0
	align	4
_2334:
	dd	_543
	dd	503
	dd	8
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	33,61
	align	4
_2345:
	dd	3
	dd	0
	dd	0
	align	4
_2340:
	dd	_543
	dd	505
	dd	8
	align	4
_2353:
	dd	3
	dd	0
	dd	0
	align	4
_2348:
	dd	_543
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
_2357:
	dd	3
	dd	0
	dd	0
	align	4
_2354:
	dd	_543
	dd	511
	dd	5
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2362:
	dd	3
	dd	0
	dd	0
	align	4
_2358:
	dd	_543
	dd	513
	dd	5
	align	4
_1718:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2359:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	110,101,119,83,116,114,105,110,103,40,34
	align	4
_2366:
	dd	3
	dd	0
	dd	0
	align	4
_2363:
	dd	_543
	dd	515
	dd	5
	align	4
_2370:
	dd	3
	dd	0
	dd	0
	align	4
_2367:
	dd	_543
	dd	517
	dd	5
_2503:
	db	"CastFrom",0
_2504:
	db	"CastTo",0
	align	4
_2502:
	dd	3
	dd	0
	dd	2
	dd	_2503
	dd	_452
	dd	-80
	dd	2
	dd	_2504
	dd	_452
	dd	-84
	dd	0
	align	4
_2371:
	dd	_543
	dd	519
	dd	5
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_2375:
	dd	_543
	dd	520
	dd	5
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_2379:
	dd	_543
	dd	521
	dd	5
	align	4
_2426:
	dd	3
	dd	0
	dd	0
	align	4
_2381:
	dd	_543
	dd	522
	dd	6
	align	4
_2395:
	dd	3
	dd	0
	dd	0
	align	4
_2390:
	dd	_543
	dd	524
	dd	8
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	105,110,116,50,115,116,114,105,110,103,40
	align	4
_2401:
	dd	3
	dd	0
	dd	0
	align	4
_2396:
	dd	_543
	dd	526
	dd	8
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	102,108,111,97,116,50,115,116,114,105,110,103,40
	align	4
_2407:
	dd	3
	dd	0
	dd	0
	align	4
_2402:
	dd	_543
	dd	528
	dd	8
	align	4
_307:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	100,111,117,98,108,101,50,115,116,114,105,110,103,40
	align	4
_2413:
	dd	3
	dd	0
	dd	0
	align	4
_2408:
	dd	_543
	dd	530
	dd	8
	align	4
_308:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	108,111,110,103,50,115,116,114,105,110,103,40
	align	4
_2419:
	dd	3
	dd	0
	dd	0
	align	4
_2414:
	dd	_543
	dd	532
	dd	8
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,104,111,114,116,50,115,116,114,105,110,103,40
	align	4
_2425:
	dd	3
	dd	0
	dd	0
	align	4
_2420:
	dd	_543
	dd	534
	dd	8
	align	4
_310:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	98,121,116,101,50,115,116,114,105,110,103,40
	align	4
_2501:
	dd	3
	dd	0
	dd	0
	align	4
_2428:
	dd	_543
	dd	536
	dd	5
	align	4
_2475:
	dd	3
	dd	0
	dd	0
	align	4
_2430:
	dd	_543
	dd	537
	dd	6
	align	4
_2444:
	dd	3
	dd	0
	dd	0
	align	4
_2439:
	dd	_543
	dd	539
	dd	8
	align	4
_311:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	115,116,114,105,110,103,50,105,110,116,40
	align	4
_2450:
	dd	3
	dd	0
	dd	0
	align	4
_2445:
	dd	_543
	dd	541
	dd	8
	align	4
_312:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,102,108,111,97,116,40
	align	4
_2456:
	dd	3
	dd	0
	dd	0
	align	4
_2451:
	dd	_543
	dd	543
	dd	8
	align	4
_313:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	115,116,114,105,110,103,50,100,111,117,98,108,101,40
	align	4
_2462:
	dd	3
	dd	0
	dd	0
	align	4
_2457:
	dd	_543
	dd	545
	dd	8
	align	4
_314:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,108,111,110,103,40
	align	4
_2468:
	dd	3
	dd	0
	dd	0
	align	4
_2463:
	dd	_543
	dd	547
	dd	8
	align	4
_315:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	115,116,114,105,110,103,50,115,104,111,114,116,40
	align	4
_2474:
	dd	3
	dd	0
	dd	0
	align	4
_2469:
	dd	_543
	dd	549
	dd	8
	align	4
_316:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	115,116,114,105,110,103,50,98,121,116,101,40
	align	4
_2500:
	dd	3
	dd	0
	dd	0
	align	4
_2477:
	dd	_543
	dd	551
	dd	5
	align	4
_2492:
	dd	3
	dd	0
	dd	0
	align	4
_2483:
	dd	_543
	dd	552
	dd	6
	align	4
_317:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	41,40
	align	4
_2499:
	dd	3
	dd	0
	dd	0
	align	4
_2494:
	dd	_543
	dd	554
	dd	6
_2542:
	db	"Tabled",0
	align	4
_2541:
	dd	3
	dd	0
	dd	2
	dd	_684
	dd	_456
	dd	-88
	dd	2
	dd	_2542
	dd	_466
	dd	-4
	dd	0
	align	4
_2505:
	dd	_543
	dd	559
	dd	5
	align	4
_2508:
	dd	_543
	dd	560
	dd	5
	align	4
_2512:
	dd	_543
	dd	561
	dd	5
	align	4
_2514:
	dd	_543
	dd	562
	dd	5
	align	4
_2538:
	dd	3
	dd	0
	dd	0
	align	4
_2516:
	dd	_543
	dd	563
	dd	6
	align	4
_2537:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-92
	dd	0
	align	4
_2526:
	dd	_543
	dd	564
	dd	7
	align	4
_2536:
	dd	3
	dd	0
	dd	0
	align	4
_2530:
	dd	_543
	dd	565
	dd	8
	align	4
_2535:
	dd	_543
	dd	566
	dd	8
	align	4
_2539:
	dd	_543
	dd	570
	dd	5
	align	4
_2540:
	dd	_543
	dd	571
	dd	5
_2613:
	db	"Push",0
	align	4
_2612:
	dd	3
	dd	0
	dd	2
	dd	_2613
	dd	_452
	dd	-96
	dd	0
	align	4
_2543:
	dd	_543
	dd	573
	dd	5
	align	4
_2545:
	dd	_543
	dd	574
	dd	5
	align	4
_2605:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-100
	dd	0
	align	4
_2557:
	dd	_543
	dd	575
	dd	6
	align	4
_2564:
	dd	3
	dd	0
	dd	0
	align	4
_2561:
	dd	_543
	dd	576
	dd	7
	align	4
_2574:
	dd	3
	dd	0
	dd	0
	align	4
_2566:
	dd	_543
	dd	577
	dd	6
	align	4
_2573:
	dd	3
	dd	0
	dd	0
	align	4
_2570:
	dd	_543
	dd	578
	dd	7
	align	4
_2575:
	dd	_543
	dd	580
	dd	6
	align	4
_2604:
	dd	3
	dd	0
	dd	0
	align	4
_2585:
	dd	_543
	dd	581
	dd	7
	align	4
_2586:
	dd	_543
	dd	582
	dd	7
	align	4
_2603:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-104
	dd	0
	align	4
_2598:
	dd	_543
	dd	583
	dd	8
	align	4
_329:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,41
	align	4
_2606:
	dd	_543
	dd	587
	dd	5
	align	4
_2611:
	dd	_543
	dd	588
	dd	5
	align	4
_2653:
	dd	3
	dd	0
	dd	0
	align	4
_2614:
	dd	_543
	dd	590
	dd	5
	align	4
_331:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	105,102,32,40
	align	4
_2615:
	dd	_543
	dd	591
	dd	5
	align	4
_2642:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-108
	dd	0
	align	4
_2627:
	dd	_543
	dd	593
	dd	6
	align	4
_335:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_2641:
	dd	3
	dd	0
	dd	0
	align	4
_2631:
	dd	_543
	dd	594
	dd	7
	align	4
_2636:
	dd	_543
	dd	595
	dd	7
	align	4
_2640:
	dd	_543
	dd	596
	dd	7
	align	4
_2643:
	dd	_543
	dd	599
	dd	5
	align	4
_2646:
	dd	_543
	dd	600
	dd	5
	align	4
_2650:
	dd	_543
	dd	601
	dd	5
	align	4
_2668:
	dd	3
	dd	0
	dd	0
	align	4
_2654:
	dd	_543
	dd	603
	dd	5
	align	4
_2658:
	dd	_543
	dd	604
	dd	5
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	125,32,101,108,115,101,32,123,10
	align	4
_2661:
	dd	_543
	dd	605
	dd	5
	align	4
_2665:
	dd	_543
	dd	606
	dd	5
	align	4
_2708:
	dd	3
	dd	0
	dd	0
	align	4
_2669:
	dd	_543
	dd	608
	dd	5
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	119,104,105,108,101,32,40
	align	4
_2670:
	dd	_543
	dd	609
	dd	5
	align	4
_2697:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-112
	dd	0
	align	4
_2682:
	dd	_543
	dd	610
	dd	6
	align	4
_2696:
	dd	3
	dd	0
	dd	0
	align	4
_2686:
	dd	_543
	dd	611
	dd	7
	align	4
_2691:
	dd	_543
	dd	612
	dd	7
	align	4
_2695:
	dd	_543
	dd	613
	dd	7
	align	4
_2698:
	dd	_543
	dd	616
	dd	5
	align	4
_2701:
	dd	_543
	dd	617
	dd	5
	align	4
_2705:
	dd	_543
	dd	618
	dd	5
	align	4
_2748:
	dd	3
	dd	0
	dd	0
	align	4
_2709:
	dd	_543
	dd	620
	dd	5
	align	4
_344:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	100,111,32,123,10
	align	4
_2710:
	dd	_543
	dd	621
	dd	5
	align	4
_2714:
	dd	_543
	dd	622
	dd	5
	align	4
_2717:
	dd	_543
	dd	623
	dd	5
	align	4
_2721:
	dd	_543
	dd	624
	dd	5
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	125,32,119,104,105,108,101,32,40,33,40
	align	4
_2724:
	dd	_543
	dd	625
	dd	5
	align	4
_2747:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-116
	dd	0
	align	4
_2736:
	dd	_543
	dd	626
	dd	6
	align	4
_2746:
	dd	3
	dd	0
	dd	0
	align	4
_2740:
	dd	_543
	dd	627
	dd	7
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	41,41,59
	align	4
_2745:
	dd	_543
	dd	628
	dd	7
	align	4
_2787:
	dd	3
	dd	0
	dd	2
	dd	_451
	dd	_452
	dd	-120
	dd	0
	align	4
_2749:
	dd	_543
	dd	632
	dd	5
	align	4
_2751:
	dd	_543
	dd	633
	dd	5
	align	4
_2786:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-124
	dd	0
	align	4
_2763:
	dd	_543
	dd	634
	dd	6
	align	4
_2773:
	dd	3
	dd	0
	dd	0
	align	4
_2767:
	dd	_543
	dd	635
	dd	7
	align	4
_2772:
	dd	_543
	dd	636
	dd	7
	align	4
_2774:
	dd	_543
	dd	638
	dd	6
	align	4
_2785:
	dd	3
	dd	0
	dd	2
	dd	_1597
	dd	_452
	dd	-128
	dd	0
	align	4
_2778:
	dd	_543
	dd	639
	dd	7
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_2784:
	dd	_543
	dd	641
	dd	7
	align	4
_2826:
	dd	3
	dd	0
	dd	0
	align	4
_2788:
	dd	_543
	dd	646
	dd	5
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,119,105,116,99,104,32,40
	align	4
_2789:
	dd	_543
	dd	647
	dd	5
	align	4
_2793:
	dd	_543
	dd	648
	dd	5
	align	4
_2815:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-132
	dd	0
	align	4
_2805:
	dd	_543
	dd	649
	dd	6
	align	4
_2814:
	dd	3
	dd	0
	dd	0
	align	4
_2809:
	dd	_543
	dd	650
	dd	7
	align	4
_2816:
	dd	_543
	dd	653
	dd	5
	align	4
_2819:
	dd	_543
	dd	654
	dd	5
	align	4
_2823:
	dd	_543
	dd	655
	dd	5
	align	4
_2869:
	dd	3
	dd	0
	dd	0
	align	4
_2827:
	dd	_543
	dd	657
	dd	5
	align	4
_2868:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-136
	dd	0
	align	4
_2839:
	dd	_543
	dd	658
	dd	6
	align	4
_2867:
	dd	3
	dd	0
	dd	0
	align	4
_2847:
	dd	_543
	dd	659
	dd	7
	align	4
_365:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	58,10
	align	4
_364:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,97,115,101,32
	align	4
_2852:
	dd	_543
	dd	660
	dd	7
	align	4
_2856:
	dd	_543
	dd	661
	dd	7
	align	4
_2859:
	dd	_543
	dd	662
	dd	7
	align	4
_366:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	98,114,101,97,107,59,10
	align	4
_2862:
	dd	_543
	dd	663
	dd	7
	align	4
_2866:
	dd	_543
	dd	664
	dd	7
	align	4
_2882:
	dd	3
	dd	0
	dd	0
	align	4
_2870:
	dd	_543
	dd	668
	dd	5
	align	4
_368:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,101,102,97,117,108,116,58,10
	align	4
_2871:
	dd	_543
	dd	669
	dd	5
	align	4
_2875:
	dd	_543
	dd	670
	dd	5
	align	4
_2878:
	dd	_543
	dd	671
	dd	5
	align	4
_2887:
	dd	3
	dd	0
	dd	0
	align	4
_2883:
	dd	_543
	dd	673
	dd	5
	align	4
_2884:
	dd	_543
	dd	674
	dd	5
	align	4
_2889:
	dd	3
	dd	0
	dd	0
	align	4
_2888:
	dd	_543
	dd	676
	dd	5
_3003:
	db	"Variable",0
_3004:
	db	"StepVar",0
_3005:
	db	"ToVar",0
_3006:
	db	"Tok",0
	align	4
_3002:
	dd	3
	dd	0
	dd	2
	dd	_3003
	dd	_452
	dd	-140
	dd	2
	dd	_3004
	dd	_452
	dd	-144
	dd	2
	dd	_3005
	dd	_452
	dd	-148
	dd	2
	dd	_3006
	dd	_452
	dd	-152
	dd	0
	align	4
_2890:
	dd	_543
	dd	678
	dd	5
	align	4
_372:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,111,114,32,40
	align	4
_2891:
	dd	_543
	dd	679
	dd	5
	align	4
_2893:
	dd	_543
	dd	680
	dd	5
	align	4
_2895:
	dd	_543
	dd	681
	dd	5
	align	4
_2897:
	dd	_543
	dd	682
	dd	5
	align	4
_2975:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-156
	dd	0
	align	4
_2909:
	dd	_543
	dd	683
	dd	6
	align	4
_376:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_381:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_382:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_2919:
	dd	3
	dd	0
	dd	0
	align	4
_2918:
	dd	_543
	dd	702
	dd	8
	align	4
_2956:
	dd	3
	dd	0
	dd	0
	align	4
_2920:
	dd	_543
	dd	685
	dd	8
_2955:
	db	"Node3",0
	align	4
_2954:
	dd	3
	dd	0
	dd	2
	dd	_2955
	dd	_682
	dd	-160
	dd	0
	align	4
_2932:
	dd	_543
	dd	686
	dd	9
	align	4
_380:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_2945:
	dd	3
	dd	0
	dd	2
	dd	_1597
	dd	_452
	dd	-164
	dd	0
	align	4
_2936:
	dd	_543
	dd	687
	dd	10
	align	4
_2942:
	dd	_543
	dd	689
	dd	10
	align	4
_2953:
	dd	3
	dd	0
	dd	0
	align	4
_2947:
	dd	_543
	dd	691
	dd	10
	align	4
_2952:
	dd	_543
	dd	692
	dd	10
	align	4
_2962:
	dd	3
	dd	0
	dd	0
	align	4
_2957:
	dd	_543
	dd	696
	dd	8
	align	4
_2968:
	dd	3
	dd	0
	dd	0
	align	4
_2963:
	dd	_543
	dd	698
	dd	8
	align	4
_2974:
	dd	3
	dd	0
	dd	0
	align	4
_2969:
	dd	_543
	dd	700
	dd	8
	align	4
_2976:
	dd	_543
	dd	705
	dd	5
	align	4
_2978:
	dd	_543
	dd	706
	dd	5
	align	4
_2979:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_2982:
	dd	3
	dd	0
	dd	0
	align	4
_2981:
	dd	_543
	dd	707
	dd	6
	align	4
_2985:
	dd	3
	dd	0
	dd	0
	align	4
_2984:
	dd	_543
	dd	709
	dd	6
	align	4
_2986:
	dd	_543
	dd	711
	dd	5
	align	4
_383:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	43,61
	align	4
_2987:
	dd	_543
	dd	712
	dd	5
	align	4
_2991:
	dd	_543
	dd	713
	dd	5
	align	4
_2994:
	dd	_543
	dd	714
	dd	5
	align	4
_2998:
	dd	_543
	dd	715
	dd	5
	align	4
_384:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	125,32,125
	align	4
_3001:
	dd	_543
	dd	716
	dd	5
	align	4
_385:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	123,32
	align	4
_3018:
	dd	3
	dd	0
	dd	0
	align	4
_3007:
	dd	_543
	dd	718
	dd	5
	align	4
_387:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	114,101,116,118,97,108,117,101,61
	align	4
_3012:
	dd	_543
	dd	719
	dd	5
	align	4
_3015:
	dd	_543
	dd	720
	dd	5
	align	4
_388:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	114,101,116,117,114,110,32,114,101,116,118,97,108,117,101
	align	4
_3020:
	dd	3
	dd	0
	dd	0
	align	4
_3019:
	dd	_543
	dd	722
	dd	5
	align	4
_390:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	78,85,76,76
_3101:
	db	"DatatypeReal",0
_3102:
	db	"Caster",0
	align	4
_3100:
	dd	3
	dd	0
	dd	2
	dd	_930
	dd	_452
	dd	-168
	dd	2
	dd	_3101
	dd	_452
	dd	-172
	dd	2
	dd	_3102
	dd	_452
	dd	-176
	dd	0
	align	4
_3021:
	dd	_543
	dd	725
	dd	5
	align	4
_3030:
	dd	_543
	dd	726
	dd	5
	align	4
_3031:
	dd	_543
	dd	727
	dd	5
	align	4
_3038:
	dd	3
	dd	0
	dd	2
	dd	_454
	dd	_454
	dd	-180
	dd	0
	align	4
_3037:
	dd	_543
	dd	728
	dd	6
	align	4
_3039:
	dd	_543
	dd	730
	dd	5
	align	4
_395:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	40,40,47,42,32,99,97,115,116,48,114,32,42,47
	align	4
_3041:
	dd	_543
	dd	731
	dd	5
	align	4
_3048:
	dd	_543
	dd	732
	dd	5
_3071:
	db	"Child",0
	align	4
_3070:
	dd	3
	dd	0
	dd	2
	dd	_3071
	dd	_682
	dd	-184
	dd	0
	align	4
_3060:
	dd	_543
	dd	733
	dd	6
	align	4
_3069:
	dd	3
	dd	0
	dd	0
	align	4
_3064:
	dd	_543
	dd	734
	dd	7
	align	4
_399:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_3072:
	dd	_543
	dd	737
	dd	5
	align	4
_3077:
	dd	3
	dd	0
	dd	0
	align	4
_3076:
	dd	_543
	dd	738
	dd	6
	align	4
_3087:
	dd	3
	dd	0
	dd	0
	align	4
_3079:
	dd	_543
	dd	741
	dd	7
	align	4
_3088:
	dd	_543
	dd	749
	dd	5
	align	4
_3099:
	dd	3
	dd	0
	dd	0
	align	4
_3094:
	dd	_543
	dd	750
	dd	6
	align	4
_401:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	42,41
	align	4
_400:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	42,40,40
	align	4
_3108:
	dd	3
	dd	0
	dd	0
	align	4
_3103:
	dd	_543
	dd	753
	dd	5
_3225:
	db	"WasMe",0
	align	4
_3224:
	dd	3
	dd	0
	dd	2
	dd	_3225
	dd	_466
	dd	-8
	dd	0
	align	4
_3109:
	dd	_543
	dd	755
	dd	5
	align	4
_3111:
	dd	_543
	dd	756
	dd	5
	align	4
_3132:
	dd	3
	dd	0
	dd	0
	align	4
_3115:
	dd	_543
	dd	757
	dd	6
	align	4
_3123:
	dd	_543
	dd	758
	dd	6
	align	4
_3124:
	dd	_543
	dd	759
	dd	6
	align	4
_3128:
	dd	_543
	dd	760
	dd	6
	align	4
_3138:
	dd	3
	dd	0
	dd	0
	align	4
_3134:
	dd	_543
	dd	762
	dd	6
	align	4
_3139:
	dd	_543
	dd	765
	dd	5
	align	4
_3201:
	dd	3
	dd	0
	dd	2
	dd	_681
	dd	_682
	dd	-188
	dd	0
	align	4
_3151:
	dd	_543
	dd	766
	dd	6
	align	4
_3177:
	dd	3
	dd	0
	dd	0
	align	4
_3158:
	dd	_543
	dd	768
	dd	8
	align	4
_3172:
	dd	_543
	dd	769
	dd	8
	align	4
_406:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	45,62,111,98,106,41,45,62
	align	4
_3200:
	dd	3
	dd	0
	dd	0
	align	4
_3178:
	dd	_543
	dd	771
	dd	8
	align	4
_3194:
	dd	3
	dd	0
	dd	0
	align	4
_3182:
	dd	_543
	dd	771
	dd	29
	align	4
_407:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	40,47,42,32,102,114,111,109,114,105,103,104,116,32,42,47
	align	4
_3195:
	dd	_543
	dd	772
	dd	8
	align	4
_3202:
	dd	_543
	dd	775
	dd	5
	align	4
_3223:
	dd	3
	dd	0
	dd	0
	align	4
_3204:
	dd	_543
	dd	776
	dd	6
	align	4
_3207:
	dd	_543
	dd	777
	dd	6
	align	4
_3215:
	dd	_543
	dd	778
	dd	6
	align	4
_3219:
	dd	_543
	dd	779
	dd	6
_3322:
	db	"IsArray",0
_3323:
	db	"Obj",0
_3324:
	db	"RealType",0
	align	4
_3321:
	dd	3
	dd	0
	dd	2
	dd	_3322
	dd	_466
	dd	-12
	dd	2
	dd	_3323
	dd	_452
	dd	-192
	dd	2
	dd	_3324
	dd	_452
	dd	-196
	dd	0
	align	4
_3226:
	dd	_543
	dd	783
	dd	5
	align	4
_3228:
	dd	_543
	dd	784
	dd	5
	align	4
_3252:
	dd	3
	dd	0
	dd	0
	align	4
_3232:
	dd	_543
	dd	785
	dd	6
_3251:
	db	"Dim",0
	align	4
_3250:
	dd	3
	dd	0
	dd	2
	dd	_3251
	dd	_682
	dd	-200
	dd	0
	align	4
_3244:
	dd	_543
	dd	786
	dd	7
	align	4
_412:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_3249:
	dd	3
	dd	0
	dd	0
	align	4
_3248:
	dd	_543
	dd	786
	dd	30
	align	4
_3253:
	dd	_543
	dd	789
	dd	5
	align	4
_3255:
	dd	_543
	dd	790
	dd	5
	align	4
_3259:
	dd	_543
	dd	791
	dd	5
_3309:
	db	"SizeIdent",0
	align	4
_3308:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_454
	dd	-204
	dd	2
	dd	_3309
	dd	_452
	dd	-208
	dd	0
	align	4
_3261:
	dd	_543
	dd	792
	dd	6
	align	4
_3263:
	dd	_543
	dd	793
	dd	6
	align	4
_413:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_3265:
	dd	_543
	dd	794
	dd	6
	align	4
_3272:
	dd	3
	dd	0
	dd	0
	align	4
_3271:
	dd	_543
	dd	794
	dd	47
	align	4
_414:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	115,105,122,101,111,102,40
	align	4
_3273:
	dd	_543
	dd	795
	dd	6
	align	4
_415:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	40,71,67,83,116,97,99,107,78,111,100,101,42,41,97,108
	dw	108,111,99,97,114,114,97,121,95,100,105,109
	align	4
_3274:
	dd	_543
	dd	796
	dd	6
	align	4
_3297:
	dd	3
	dd	0
	dd	2
	dd	_3251
	dd	_682
	dd	-212
	dd	0
	align	4
_3286:
	dd	_543
	dd	797
	dd	7
	align	4
_3296:
	dd	3
	dd	0
	dd	0
	align	4
_3290:
	dd	_543
	dd	798
	dd	8
	align	4
_3291:
	dd	_543
	dd	799
	dd	8
	align	4
_3298:
	dd	_543
	dd	802
	dd	6
	align	4
_3299:
	dd	_543
	dd	803
	dd	6
	align	4
_3307:
	dd	3
	dd	0
	dd	0
	align	4
_3303:
	dd	_543
	dd	803
	dd	28
	align	4
_3312:
	dd	3
	dd	0
	dd	0
	align	4
_3311:
	dd	_543
	dd	806
	dd	6
	align	4
_420:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	41,44,38,116,114,97,99,101
	align	4
_419:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	41,71,67,95,109,97,108,108,111,99,40,115,105,122,101,111
	dw	102,40
	align	4
_3313:
	dd	_543
	dd	808
	dd	5
	align	4
_3320:
	dd	3
	dd	0
	dd	0
	align	4
_3319:
	dd	_543
	dd	809
	dd	6
	align	4
_421:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,119,95
	align	4
_3325:
	dd	_543
	dd	813
	dd	3
_3399:
	db	"datatype",0
_3400:
	db	"Def",0
	align	4
_3398:
	dd	1
	dd	_486
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_693
	dd	_682
	dd	-8
	dd	2
	dd	_451
	dd	_452
	dd	-12
	dd	2
	dd	_3399
	dd	_452
	dd	-16
	dd	2
	dd	_3251
	dd	_454
	dd	-20
	dd	2
	dd	_3400
	dd	_452
	dd	-24
	dd	2
	dd	_3324
	dd	_452
	dd	-28
	dd	0
	align	4
_3327:
	dd	_543
	dd	817
	dd	3
	align	4
_3331:
	dd	_543
	dd	818
	dd	3
_3364:
	db	"Att",0
_3365:
	db	":bah.libxml.TxmlAttribute",0
	align	4
_3363:
	dd	3
	dd	0
	dd	2
	dd	_3364
	dd	_3365
	dd	-32
	dd	0
	align	4
_3343:
	dd	_543
	dd	819
	dd	4
	align	4
_3354:
	dd	3
	dd	0
	dd	0
	align	4
_3351:
	dd	_543
	dd	821
	dd	6
	align	4
_3358:
	dd	3
	dd	0
	dd	0
	align	4
_3355:
	dd	_543
	dd	823
	dd	6
	align	4
_3362:
	dd	3
	dd	0
	dd	0
	align	4
_3359:
	dd	_543
	dd	825
	dd	6
	align	4
_3366:
	dd	_543
	dd	828
	dd	3
	align	4
_3368:
	dd	_543
	dd	829
	dd	3
	align	4
_3372:
	dd	_543
	dd	830
	dd	3
	align	4
_3379:
	dd	3
	dd	0
	dd	0
	align	4
_3378:
	dd	_543
	dd	830
	dd	32
	align	4
_3380:
	dd	_543
	dd	831
	dd	3
	align	4
_3387:
	dd	3
	dd	0
	dd	0
	align	4
_3386:
	dd	_543
	dd	839
	dd	5
	align	4
_428:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,78,85,76,76
	align	4
_3389:
	dd	3
	dd	0
	dd	0
	align	4
_3388:
	dd	_543
	dd	833
	dd	5
	align	4
_425:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,48
	align	4
_3391:
	dd	3
	dd	0
	dd	0
	align	4
_3390:
	dd	_543
	dd	835
	dd	5
	align	4
_426:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	61,48,46,48,102
	align	4
_3396:
	dd	3
	dd	0
	dd	0
	align	4
_3392:
	dd	_543
	dd	837
	dd	5
	align	4
_3395:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	61,110,101,119,83,116,114,105,110,103,40,34,34,41
	align	4
_3397:
	dd	_543
	dd	843
	dd	3
	align	4
_3448:
	dd	1
	dd	_487
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_693
	dd	_682
	dd	-8
	dd	2
	dd	_451
	dd	_452
	dd	-12
	dd	2
	dd	_3399
	dd	_452
	dd	-16
	dd	2
	dd	_3251
	dd	_454
	dd	-20
	dd	0
	align	4
_3401:
	dd	_543
	dd	846
	dd	3
	align	4
_3405:
	dd	_543
	dd	847
	dd	3
	align	4
_3445:
	dd	3
	dd	0
	dd	2
	dd	_3364
	dd	_3365
	dd	-24
	dd	0
	align	4
_3417:
	dd	_543
	dd	848
	dd	4
	align	4
_3428:
	dd	3
	dd	0
	dd	0
	align	4
_3425:
	dd	_543
	dd	850
	dd	6
	align	4
_3434:
	dd	3
	dd	0
	dd	0
	align	4
_3429:
	dd	_543
	dd	852
	dd	6
	align	4
_3444:
	dd	3
	dd	0
	dd	0
	align	4
_3435:
	dd	_543
	dd	854
	dd	6
	align	4
_3438:
	dd	_543
	dd	855
	dd	6
	align	4
_3443:
	dd	3
	dd	0
	dd	2
	dd	_454
	dd	_454
	dd	-28
	dd	0
	align	4
_3442:
	dd	_543
	dd	856
	dd	7
	align	4
_3446:
	dd	_543
	dd	860
	dd	3
	align	4
_3447:
	dd	_543
	dd	861
	dd	3
	align	4
_435:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	95,61,78,85,76,76,59
_3503:
	db	"Typ",0
_3504:
	db	"DimCount",0
	align	4
_3502:
	dd	1
	dd	_488
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_3503
	dd	_452
	dd	-8
	dd	2
	dd	_3504
	dd	_454
	dd	-12
	dd	2
	dd	_1059
	dd	_452
	dd	-16
	dd	0
	align	4
_3449:
	dd	_543
	dd	864
	dd	3
	align	4
_3452:
	dd	3
	dd	0
	dd	0
	align	4
_3451:
	dd	_543
	dd	864
	dd	18
	align	4
_3453:
	dd	_543
	dd	865
	dd	3
	align	4
_3455:
	dd	_543
	dd	866
	dd	3
	align	4
_443:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	117,110,107,110,111,119,110
	align	4
_3476:
	dd	3
	dd	0
	dd	0
	align	4
_3467:
	dd	_543
	dd	886
	dd	5
	align	4
_3472:
	dd	3
	dd	0
	dd	0
	align	4
_3471:
	dd	_543
	dd	887
	dd	6
	align	4
_444:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	115,116,114,117,99,116,32,95
	align	4
_3475:
	dd	3
	dd	0
	dd	0
	align	4
_3474:
	dd	_543
	dd	889
	dd	6
	align	4
_3478:
	dd	3
	dd	0
	dd	0
	align	4
_3477:
	dd	_543
	dd	868
	dd	5
	align	4
_436:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,83,84,82,73,78,71
	align	4
_3480:
	dd	3
	dd	0
	dd	0
	align	4
_3479:
	dd	_543
	dd	870
	dd	5
	align	4
_437:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	67,80,66,95,73,78,84
	align	4
_3482:
	dd	3
	dd	0
	dd	0
	align	4
_3481:
	dd	_543
	dd	872
	dd	5
	align	4
_438:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,70,76,79,65,84
	align	4
_3484:
	dd	3
	dd	0
	dd	0
	align	4
_3483:
	dd	_543
	dd	874
	dd	5
	align	4
_439:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	67,80,66,95,68,79,85,66,76,69
	align	4
_3486:
	dd	3
	dd	0
	dd	0
	align	4
_3485:
	dd	_543
	dd	876
	dd	5
	align	4
_440:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	67,80,66,95,83,72,79,82,84
	align	4
_3488:
	dd	3
	dd	0
	dd	0
	align	4
_3487:
	dd	_543
	dd	878
	dd	5
	align	4
_441:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,76,79,78,71
	align	4
_3490:
	dd	3
	dd	0
	dd	0
	align	4
_3489:
	dd	_543
	dd	880
	dd	5
	align	4
_442:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	67,80,66,95,66,89,84,69
	align	4
_3492:
	dd	3
	dd	0
	dd	0
	align	4
_3491:
	dd	_543
	dd	882
	dd	5
	align	4
_3494:
	dd	3
	dd	0
	dd	0
	align	4
_3493:
	dd	_543
	dd	884
	dd	5
	align	4
_3495:
	dd	_543
	dd	892
	dd	3
	align	4
_3500:
	dd	3
	dd	0
	dd	2
	dd	_454
	dd	_454
	dd	-20
	dd	0
	align	4
_3499:
	dd	_543
	dd	893
	dd	4
	align	4
_3501:
	dd	_543
	dd	895
	dd	3
	align	4
_3514:
	dd	1
	dd	_490
	dd	2
	dd	_562
	dd	_579
	dd	-4
	dd	2
	dd	_3503
	dd	_452
	dd	-8
	dd	0
	align	4
_3505:
	dd	_543
	dd	899
	dd	3
	align	4
_448:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,112,98,95
	align	4
_3506:
	dd	_543
	dd	900
	dd	3
	align	4
_3511:
	dd	3
	dd	0
	dd	0
	align	4
_3510:
	dd	_543
	dd	904
	dd	5
	align	4
_3513:
	dd	3
	dd	0
	dd	0
	align	4
_3512:
	dd	_543
	dd	902
	dd	5
