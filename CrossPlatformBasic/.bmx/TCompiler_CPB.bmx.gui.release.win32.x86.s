	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	_bah_libxml_TxmlDoc
	extrn	_bah_libxml_TxmlNode
	extrn	_bbArrayNew1D
	extrn	_bbArraySlice
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbEnd
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
	extrn	_bbStringClass
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringFind
	extrn	_bbStringFromFloat
	extrn	_bbStringFromInt
	extrn	_bbStringReplace
	extrn	_bbStringSlice
	extrn	_bbStringSplit
	extrn	_bbStringToFloat
	extrn	_bbStringToInt
	extrn	_bbStringToLower
	extrn	_bbStringTrim
	extrn	_bbWriteStdout
	extrn	_bb_AddChild
	extrn	_bb_IsFLoat
	extrn	_bb_IsInt
	extrn	_bb_IsString
	extrn	_bb_IsValidVarName
	extrn	_brl_blitz_DebugStop
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_TList
	extrn	_brl_standardio_Print
	extrn	_brl_stream_SaveString
	public	__bb_TCompiler_Analyser
	public	__bb_TCompiler_Block
	public	__bb_TCompiler_Current
	public	__bb_TCompiler_Delete
	public	__bb_TCompiler_Error
	public	__bb_TCompiler_Expression
	public	__bb_TCompiler_Factor
	public	__bb_TCompiler_Funk
	public	__bb_TCompiler_GetBefore
	public	__bb_TCompiler_GetCurrent
	public	__bb_TCompiler_GetNext
	public	__bb_TCompiler_GetVariable
	public	__bb_TCompiler_GetVariablelist
	public	__bb_TCompiler_InternBlock
	public	__bb_TCompiler_IsToken
	public	__bb_TCompiler_Keyword
	public	__bb_TCompiler_LoadFunction
	public	__bb_TCompiler_LoadHeaders
	public	__bb_TCompiler_Match
	public	__bb_TCompiler_New
	public	__bb_TCompiler_ParseArray
	public	__bb_TCompiler_ParseType
	public	__bb_TCompiler_Parser
	public	__bb_TCompiler_RegisterVariable
	public	__bb_TCompiler_Templates
	public	__bb_TCompiler_Tokenizer
	public	__bb_TCompiler_ValidDatatype
	public	__bb_TCompiler_Variable
	public	__bb_TCompiler_Warning
	public	__bb_TDatatype_Add2Node
	public	__bb_TDatatype_ByteDatatype
	public	__bb_TDatatype_Cast
	public	__bb_TDatatype_CastNode
	public	__bb_TDatatype_Copy
	public	__bb_TDatatype_Create
	public	__bb_TDatatype_CreateByNode
	public	__bb_TDatatype_Delete
	public	__bb_TDatatype_DoubleDatatype
	public	__bb_TDatatype_FloatDatatype
	public	__bb_TDatatype_GetArrayString
	public	__bb_TDatatype_Init
	public	__bb_TDatatype_IntDatatype
	public	__bb_TDatatype_LongDatatype
	public	__bb_TDatatype_New
	public	__bb_TDatatype_NullDatatype
	public	__bb_TDatatype_ShortDatatype
	public	__bb_TDatatype_StringDatatype
	public	__bb_TDatatype_ToString
	public	__bb_TDatatype_UserDefinedDatatypes
	public	__bb_TDatatype_VoidDatatype
	public	__bb_TIdentifierFunction_AddParameter
	public	__bb_TIdentifierFunction_Copy
	public	__bb_TIdentifierFunction_Delete
	public	__bb_TIdentifierFunction_GenName
	public	__bb_TIdentifierFunction_New
	public	__bb_TIdentifierFunction_use
	public	__bb_TIdentifierVariable_Delete
	public	__bb_TIdentifierVariable_New
	public	__bb_TIdentifier_Create
	public	__bb_TIdentifier_Delete
	public	__bb_TIdentifier_New
	public	__bb_TIdentifier_ToNode
	public	__bb_TOperator_AddDatatype
	public	__bb_TOperator_CanMatch
	public	__bb_TOperator_Delete
	public	__bb_TOperator_GetByName
	public	__bb_TOperator_Init
	public	__bb_TOperator_New
	public	__bb_TOperator_NewOperator
	public	__bb_TOperator_ParseDatatype
	public	__bb_TOperator_Priority
	public	__bb_TParameter_Create
	public	__bb_TParameter_Delete
	public	__bb_TParameter_New
	public	__bb_TRecursive_Create
	public	__bb_TRecursive_Delete
	public	__bb_TRecursive_GetDatatype
	public	__bb_TRecursive_GetNode
	public	__bb_TRecursive_New
	public	__bb_TTypeField_Create2
	public	__bb_TTypeField_Delete
	public	__bb_TTypeField_New
	public	__bb_TTypeMethod_Create
	public	__bb_TTypeMethod_Delete
	public	__bb_TTypeMethod_New
	public	__bb_TTypeTemplate_AddField
	public	__bb_TTypeTemplate_AddMethod
	public	__bb_TTypeTemplate_Delete
	public	__bb_TTypeTemplate_GetFields
	public	__bb_TTypeTemplate_GetMethods
	public	__bb_TTypeTemplate_Init
	public	__bb_TTypeTemplate_New
	public	__bb_TTypeTemplate_ObjectTemplate
	public	__bb_TTypeTemplate_ToNode
	public	__bb_main
	public	_bb_TCompiler
	public	_bb_TDatatype
	public	_bb_TIdentifier
	public	_bb_TIdentifierFunction
	public	_bb_TIdentifierVariable
	public	_bb_TOperator
	public	_bb_TParameter
	public	_bb_TRecursive
	public	_bb_TTypeField
	public	_bb_TTypeMethod
	public	_bb_TTypeTemplate
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	cmp	dword [_1033],0
	je	_1034
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_1034:
	mov	dword [_1033],1
	call	___bb_blitz_blitz
	call	___bb_crossplatformbasic_util_cpb
	push	_bb_TIdentifier
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TTypeField
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TTypeMethod
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_1029]
	and	eax,1
	cmp	eax,0
	jne	_1030
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TCompiler_Templates],eax
	or	dword [_1029],1
_1030:
	push	_bb_TCompiler
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_1029]
	and	eax,2
	cmp	eax,0
	jne	_1032
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TDatatype_UserDefinedDatatypes],eax
	or	dword [_1029],2
_1032:
	push	_bb_TDatatype
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_723
_723:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TIdentifier
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,0
	jmp	_726
_726:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_729:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1039
	push	eax
	call	_bbGCFree
	add	esp,4
_1039:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1041
	push	eax
	call	_bbGCFree
	add	esp,4
_1041:
	mov	eax,0
	jmp	_1037
_1037:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,dword [ebp+16]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1045
	push	eax
	call	_bbGCFree
	add	esp,4
_1045:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1049
	push	eax
	call	_bbGCFree
	add	esp,4
_1049:
	mov	dword [esi+12],ebx
	mov	eax,esi
	jmp	_734
_734:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_ToNode:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	eax,dword [eax+20]
	cmp	eax,0
	je	_1050
	cmp	esi,_bbNullObject
	setne	al
	movzx	eax,al
_1050:
	cmp	eax,0
	je	_1052
	mov	byte [ebp-4],0
	push	_bbNullObject
	push	_25
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [ebp-12]
	push	_4
	push	_bbNullObject
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	_4
	push	_bbNullObject
	push	_27
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edx,dword [ebp+8]
	push	dword [edx+12]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	dword [ebp-8],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_28
_30:
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_28
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_28:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	mov	ebx,esi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_31
_33:
	push	_bah_libxml_TxmlNode
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_31
	add	dword [ebp-8],1
	mov	edx,dword [ebp-12]
	push	eax
	push	_4
	push	_bbNullObject
	push	_34
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_31:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-8],eax
	je	_1075
	mov	ebx,_bbNullObject
	jmp	_738
_1075:
	mov	ebx,dword [ebp-12]
	jmp	_738
_1052:
	push	_bbNullObject
	push	_27
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	jmp	_738
_738:
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifier_New
	add	esp,4
	mov	dword [ebx],_bb_TIdentifierFunction
	mov	byte [ebx+16],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	byte [ebx+28],0
	mov	byte [ebx+29],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+40],eax
	mov	eax,0
	jmp	_741
_741:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_744:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1086
	push	eax
	call	_bbGCFree
	add	esp,4
_1086:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1088
	push	eax
	call	_bbGCFree
	add	esp,4
_1088:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1090
	push	eax
	call	_bbGCFree
	add	esp,4
_1090:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1092
	push	eax
	call	_bbGCFree
	add	esp,4
_1092:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1094
	push	eax
	call	_bbGCFree
	add	esp,4
_1094:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1084
_1084:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_use:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	mov	eax,dword [ebp+8]
	mov	byte [eax+29],1
	mov	byte [ebp-4],0
	jmp	_747
_747:
	movzx	eax,byte [ebp-4]
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_AddParameter:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	mov	edi,dword [ebp+16]
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp+20]
	push	edi
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,16
	mov	edx,dword [esi+24]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_753
_753:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_GenName:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	movzx	eax,byte [edi+16]
	mov	eax,eax
	cmp	eax,0
	jne	_1098
	mov	byte [edi+16],1
	mov	ebx,dword [edi+12]
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_1102
	push	eax
	call	_bbGCFree
	add	esp,4
_1102:
	mov	dword [edi+20],ebx
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [edi+40]
	dec	dword [eax+4]
	jnz	_1106
	push	eax
	call	_bbGCFree
	add	esp,4
_1106:
	mov	dword [edi+40],ebx
	mov	eax,dword [edi+24]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_35
_37:
	mov	eax,dword [ebp-8]
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_35
	mov	eax,dword [esi+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [edi+12]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [edi+12]
	dec	dword [eax+4]
	jnz	_1117
	push	eax
	call	_bbGCFree
	add	esp,4
_1117:
	mov	dword [edi+12],ebx
	mov	eax,dword [esi+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [edi+40]
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+40]
	dec	dword [eax+4]
	jnz	_1122
	push	eax
	call	_bbGCFree
	add	esp,4
_1122:
	mov	dword [edi+40],ebx
_35:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_37
_36:
_1098:
	mov	eax,0
	jmp	_756
_756:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Copy:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	push	_bb_TIdentifierFunction
	push	dword [esi+8]
	push	dword [esi+20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [esi+24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,4
	inc	dword [eax+4]
	mov	edi,eax
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1129
	push	eax
	call	_bbGCFree
	add	esp,4
_1129:
	mov	dword [ebx+24],edi
	movzx	eax,byte [esi+28]
	mov	eax,eax
	mov	byte [ebx+28],al
	mov	eax,ebx
	jmp	_759
_759:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifier_New
	add	esp,4
	mov	dword [ebx],_bb_TIdentifierVariable
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,0
	jmp	_762
_762:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_765:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1133
	push	eax
	call	_bbGCFree
	add	esp,4
_1133:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1131
_1131:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	__bb_TIdentifierVariable_New
	add	esp,4
	mov	dword [ebx],_bb_TTypeField
	mov	dword [ebx+20],3
	mov	eax,0
	jmp	_768
_768:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_771:
	mov	dword [eax],_bb_TIdentifierVariable
	push	eax
	call	__bb_TIdentifierVariable_Delete
	add	esp,4
	mov	eax,0
	jmp	_1134
_1134:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_Create2:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,dword [ebp+16]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1138
	push	eax
	call	_bbGCFree
	add	esp,4
_1138:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1142
	push	eax
	call	_bbGCFree
	add	esp,4
_1142:
	mov	dword [esi+12],ebx
	mov	eax,dword [ebp+20]
	mov	dword [esi+20],eax
	mov	eax,esi
	jmp	_777
_777:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TTypeMethod
	mov	dword [ebx+8],3
	mov	byte [ebx+12],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	dword [ebx+28],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	mov	eax,0
	jmp	_780
_780:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_783:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1149
	push	eax
	call	_bbGCFree
	add	esp,4
_1149:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1151
	push	eax
	call	_bbGCFree
	add	esp,4
_1151:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1153
	push	eax
	call	_bbGCFree
	add	esp,4
_1153:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1155
	push	eax
	call	_bbGCFree
	add	esp,4
_1155:
	mov	eax,0
	jmp	_1147
_1147:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	edi,dword [ebp+16]
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp-8],al
	inc	dword [edx+4]
	mov	ebx,edx
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1159
	push	eax
	call	_bbGCFree
	add	esp,4
_1159:
	mov	dword [esi+20],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1163
	push	eax
	call	_bbGCFree
	add	esp,4
_1163:
	mov	dword [esi+24],ebx
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	mov	dword [esi+8],eax
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [esi+12],al
	mov	eax,dword [ebp+28]
	mov	dword [esi+28],eax
	mov	ebx,dword [ebp+32]
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_1167
	push	eax
	call	_bbGCFree
	add	esp,4
_1167:
	mov	dword [esi+32],ebx
	mov	eax,esi
	jmp	_792
_792:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	push	esi
	call	_bbObjectCtor
	add	esp,4
	mov	dword [esi],_bb_TTypeTemplate
	mov	dword [esi+8],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [esi+12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [esi+16],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [esi+20],eax
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [eax+4]
	mov	dword [esi+24],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [esi+28],eax
	mov	dword [esi+32],0
	cmp	dword [esi+24],esi
	jne	_1173
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1177
	push	eax
	call	_bbGCFree
	add	esp,4
_1177:
	mov	dword [esi+24],ebx
_1173:
	mov	eax,0
	jmp	_795
_795:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_798:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1180
	push	eax
	call	_bbGCFree
	add	esp,4
_1180:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1182
	push	eax
	call	_bbGCFree
	add	esp,4
_1182:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1184
	push	eax
	call	_bbGCFree
	add	esp,4
_1184:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1186
	push	eax
	call	_bbGCFree
	add	esp,4
_1186:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1188
	push	eax
	call	_bbGCFree
	add	esp,4
_1188:
	mov	eax,0
	jmp	_1178
_1178:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_Init:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	dec	dword [eax+4]
	jnz	_1192
	push	eax
	call	_bbGCFree
	add	esp,4
_1192:
	mov	dword [__bb_TTypeTemplate_ObjectTemplate],ebx
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_1196
	push	eax
	call	_bbGCFree
	add	esp,4
_1196:
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	dword [eax+20],ebx
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_1200
	push	eax
	call	_bbGCFree
	add	esp,4
_1200:
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	dword [eax+28],ebx
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_1204
	push	eax
	call	_bbGCFree
	add	esp,4
_1204:
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	mov	dword [eax+12],0
	mov	edx,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	push	dword [eax+28]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_800
_800:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_GetFields:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	cmp	edi,0
	jne	_1206
	call	_brl_blitz_DebugStop
_1206:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+12]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_40
_42:
	mov	eax,ebx
	push	_bb_TTypeField
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,eax
	cmp	edx,_bbNullObject
	je	_40
	mov	eax,dword [edx+20]
	cmp	eax,edi
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1214
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1214:
	cmp	eax,0
	je	_1216
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1216:
_40:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],_bbNullObject
	je	_1218
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_43
_45:
	mov	eax,ebx
	push	_bb_TTypeField
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,eax
	cmp	edx,_bbNullObject
	je	_43
	mov	eax,dword [edx+20]
	cmp	eax,2
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1226
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1226:
	cmp	eax,0
	je	_1228
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1228:
_43:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
_1218:
	mov	eax,dword [ebp-4]
	jmp	_804
_804:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_GetMethods:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_46
_48:
	mov	eax,ebx
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,eax
	cmp	edx,_bbNullObject
	je	_46
	mov	eax,dword [edx+8]
	cmp	eax,edi
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1237
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1237:
	cmp	eax,0
	je	_1239
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1239:
_46:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],_bbNullObject
	je	_1241
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_49
_51:
	mov	eax,ebx
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,eax
	cmp	edx,_bbNullObject
	je	_49
	mov	eax,dword [edx+8]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1249
	cmp	edi,1
	sete	al
	movzx	eax,al
_1249:
	cmp	eax,0
	jne	_1251
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1251:
	cmp	eax,0
	je	_1253
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1253:
_49:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
_1241:
	mov	eax,dword [ebp-4]
	jmp	_808
_808:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_AddField:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	mov	edi,dword [ebp+24]
	push	_bb_TTypeField
	call	_bbObjectNew
	add	esp,4
	push	edi
	push	ebx
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,16
	mov	esi,eax
	push	_bb_TIdentifierVariable
	push	esi
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+20]
	inc	dword [eax+4]
	mov	edi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1261
	push	eax
	call	_bbGCFree
	add	esp,4
_1261:
	mov	dword [ebx+16],edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_815
_815:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_AddMethod:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	movzx	eax,byte [ebp+16]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	ebx,dword [esi+16]
	push	_bb_TTypeMethod
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp+24]
	push	dword [esi+32]
	mov	edx,dword [ebp+20]
	and	edx,0xff
	push	edx
	movzx	edx,byte [ebp-4]
	push	edx
	push	esi
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,28
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	add	dword [esi+32],1
	mov	eax,0
	jmp	_822
_822:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_ToNode:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	push	_bbNullObject
	push	_52
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-28],eax
	mov	edx,dword [ebp-28]
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	push	_26
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	edx,_4
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],_bbNullObject
	je	_1268
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	mov	edx,dword [eax+20]
_1268:
	mov	eax,dword [ebp-28]
	push	edx
	push	_53
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	dword [ebp-16],0
	mov	eax,dword [ebp+8]
	push	-1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_54
_56:
	mov	eax,dword [ebp-12]
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_54
	mov	eax,dword [ebp-28]
	push	_4
	push	_bbNullObject
	push	_57
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	dword [esi+12]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [esi+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	_bah_libxml_TxmlNode
	push	dword [esi+16]
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	add	dword [ebp-16],1
_54:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
	mov	ebx,dword [ebp-28]
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_58
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	dword [ebp-16],0
	mov	eax,dword [ebp+8]
	push	-1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-24],eax
	jmp	_59
_61:
	mov	eax,dword [ebp-24]
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_59
	mov	eax,dword [ebp-28]
	push	_4
	push	_bbNullObject
	push	_62
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-8],eax
	mov	ebx,dword [ebp-8]
	push	_38
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	mov	eax,dword [esi+24]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+20]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	ebx,dword [ebp-8]
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	cmp	dword [esi+16],_bbNullObject
	je	_1294
	mov	edx,dword [ebp-8]
	mov	eax,dword [esi+16]
	push	dword [eax+20]
	push	_64
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+8]
	push	dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [esi+16]
	mov	edi,dword [eax+24]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-4],eax
	jmp	_65
_67:
	mov	eax,dword [ebp-4]
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_65
	mov	eax,dword [ebp-8]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	dword [esi+8]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [esi+12]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
_65:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_67
_66:
_1294:
	add	dword [ebp-16],1
_59:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_61
_60:
	mov	ebx,dword [ebp-28]
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-28]
	jmp	_825
_825:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TParameter
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	eax,0
	jmp	_828
_828:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_831:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1314
	push	eax
	call	_bbGCFree
	add	esp,4
_1314:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1316
	push	eax
	call	_bbGCFree
	add	esp,4
_1316:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1318
	push	eax
	call	_bbGCFree
	add	esp,4
_1318:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1320
	push	eax
	call	_bbGCFree
	add	esp,4
_1320:
	mov	eax,0
	jmp	_1312
_1312:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Create:
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
	jnz	_1324
	push	eax
	call	_bbGCFree
	add	esp,4
_1324:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1328
	push	eax
	call	_bbGCFree
	add	esp,4
_1328:
	mov	dword [esi+12],ebx
	mov	ebx,dword [ebp+20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1332
	push	eax
	call	_bbGCFree
	add	esp,4
_1332:
	mov	dword [esi+16],ebx
	mov	eax,esi
	jmp	_837
_837:
	pop	edi
	pop	esi
	pop	ebx
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
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	push	1
	push	_1336
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [ebx+20],eax
	mov	dword [ebx+24],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	eax,_bbEmptyArray
	inc	dword [eax+4]
	mov	dword [ebx+32],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+36],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+40],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+44],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+48],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+52],eax
	mov	dword [ebx+56],0
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+60],eax
	mov	eax,_bbNullObject
	inc	dword [eax+4]
	mov	dword [ebx+64],eax
	mov	byte [ebx+68],0
	mov	dword [ebx+72],3
	mov	eax,0
	jmp	_840
_840:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_843:
	mov	eax,dword [ebx+64]
	dec	dword [eax+4]
	jnz	_1349
	push	eax
	call	_bbGCFree
	add	esp,4
_1349:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_1351
	push	eax
	call	_bbGCFree
	add	esp,4
_1351:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_1353
	push	eax
	call	_bbGCFree
	add	esp,4
_1353:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1355
	push	eax
	call	_bbGCFree
	add	esp,4
_1355:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_1357
	push	eax
	call	_bbGCFree
	add	esp,4
_1357:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1359
	push	eax
	call	_bbGCFree
	add	esp,4
_1359:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1361
	push	eax
	call	_bbGCFree
	add	esp,4
_1361:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1363
	push	eax
	call	_bbGCFree
	add	esp,4
_1363:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1365
	push	eax
	call	_bbGCFree
	add	esp,4
_1365:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1367
	push	eax
	call	_bbGCFree
	add	esp,4
_1367:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1369
	push	eax
	call	_bbGCFree
	add	esp,4
_1369:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1371
	push	eax
	call	_bbGCFree
	add	esp,4
_1371:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1373
	push	eax
	call	_bbGCFree
	add	esp,4
_1373:
	mov	eax,0
	jmp	_1347
_1347:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_LoadFunction:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+12]
	push	eax
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
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
	mov	dword [ebp-20],eax
	jmp	_70
_72:
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
	je	_70
	mov	eax,esi
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	mov	edi,eax
	push	esi
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	ebx,eax
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	ebx
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	mov	eax,esi
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1390
	mov	eax,esi
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
	mov	dword [ebp-8],eax
	jmp	_73
_75:
	mov	eax,dword [ebp-8]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_73
	mov	esi,_4
	mov	eax,edi
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1400
	mov	eax,edi
	push	_76
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
_1400:
	push	edi
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	edx,edi
	push	esi
	push	eax
	push	_26
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
_73:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_75
_74:
_1390:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_70:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_72
_71:
	mov	eax,0
	jmp	_847
_847:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_LoadHeaders:
	push	ebp
	mov	ebp,esp
	mov	eax,0
	jmp	_851
_851:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Tokenizer:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+12]
	push	ebx
	push	_77
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_1410
	push	eax
	call	_bbGCFree
	add	esp,4
_1410:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	push	25
	push	_539
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_78
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_79
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_80
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_81
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_82
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_83
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_84
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_85
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_86
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_87
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	mov	edx,_88
	inc	dword [edx+4]
	mov	dword [eax+64],edx
	mov	edx,_89
	inc	dword [edx+4]
	mov	dword [eax+68],edx
	mov	edx,_90
	inc	dword [edx+4]
	mov	dword [eax+72],edx
	mov	edx,_91
	inc	dword [edx+4]
	mov	dword [eax+76],edx
	mov	edx,_92
	inc	dword [edx+4]
	mov	dword [eax+80],edx
	mov	edx,_93
	inc	dword [edx+4]
	mov	dword [eax+84],edx
	mov	edx,_94
	inc	dword [edx+4]
	mov	dword [eax+88],edx
	mov	edx,_95
	inc	dword [edx+4]
	mov	dword [eax+92],edx
	mov	edx,_96
	inc	dword [edx+4]
	mov	dword [eax+96],edx
	mov	edx,_97
	inc	dword [edx+4]
	mov	dword [eax+100],edx
	mov	edx,_5
	inc	dword [edx+4]
	mov	dword [eax+104],edx
	mov	edx,_98
	inc	dword [edx+4]
	mov	dword [eax+108],edx
	mov	edx,_99
	inc	dword [edx+4]
	mov	dword [eax+112],edx
	mov	edx,_100
	inc	dword [edx+4]
	mov	dword [eax+116],edx
	mov	edx,_101
	inc	dword [edx+4]
	mov	dword [eax+120],edx
	mov	esi,eax
	push	_77
	push	ebx
	call	_bbStringSplit
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_1441
	push	eax
	call	_bbGCFree
	add	esp,4
_1441:
	mov	eax,dword [ebp+8]
	mov	dword [eax+32],ebx
	mov	byte [ebp-4],0
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-32]
	add	eax,24
	mov	dword [ebp-28],eax
	mov	edx,dword [ebp-28]
	mov	eax,dword [ebp-32]
	add	edx,dword [eax+16]
	mov	dword [ebp-36],edx
	jmp	_102
_104:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax]
	mov	dword [ebp-16],eax
	add	dword [ebp-28],4
	cmp	dword [ebp-16],_bbNullObject
	je	_102
	mov	dword [ebp-20],0
	push	_105
	push	dword [ebp-16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1449
	mov	byte [ebp-4],1
_1449:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_1450
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	_106
	push	dword [ebp-16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1452
	mov	byte [ebp-4],0
_1452:
	jmp	_102
_1450:
	push	_79
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	mov	dword [ebp-12],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+8]
	mov	dword [ebp-24],eax
	jmp	_1454
_109:
	push	_91
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1456
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_91
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-12]
	add	eax,1
	mov	dword [ebp-20],eax
_1456:
	push	_77
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1458
	jmp	_107
_1458:
	push	_110
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1459
	push	_111
	mov	eax,dword [ebp-12]
	add	eax,2
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1459:
	cmp	eax,0
	jne	_1461
	push	_112
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1461:
	cmp	eax,0
	je	_1463
	jmp	_108
_1463:
	push	_1464
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1465
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	push	dword [ebp-12]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-12]
	mov	dword [ebp-20],eax
	add	dword [ebp-12],1
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+8]
	jmp	_1467
_115:
	push	_1464
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1469
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	mov	eax,dword [ebp-12]
	add	eax,1
	push	eax
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-12]
	add	eax,1
	mov	dword [ebp-20],eax
	jmp	_114
_1469:
_113:
	add	dword [ebp-12],1
_1467:
	cmp	dword [ebp-12],ebx
	jle	_115
_114:
_1465:
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	dword [ebp-8],eax
	jmp	_116
_118:
	mov	edi,dword [ebx]
	add	ebx,4
	cmp	edi,_bbNullObject
	je	_116
	push	edi
	mov	eax,dword [ebp-12]
	add	eax,dword [edi+8]
	push	eax
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1476
	push	_78
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1477
	push	_4
	push	dword [ebp-12]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1477:
	cmp	eax,0
	je	_1479
	push	dword [ebp-12]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bb_IsInt
	add	esp,4
	cmp	eax,0
	jne	_1480
	push	dword [ebp-12]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bb_IsFLoat
	add	esp,4
_1480:
	cmp	eax,0
	je	_1482
	jmp	_117
_1482:
_1479:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+8]
	push	dword [ebp-12]
	push	dword [ebp-20]
	push	dword [ebp-16]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_79
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1484
	push	_92
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1484:
	cmp	eax,0
	je	_1486
	push	_100
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1487
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_119
_1487:
	push	_101
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1489
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_120
_1489:
	push	_99
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1491
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_121
_1491:
	push	_122
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1493
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_123
_1493:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1486:
	mov	eax,dword [ebp-12]
	add	eax,dword [edi+8]
	mov	dword [ebp-20],eax
	mov	eax,dword [edi+8]
	sub	eax,1
	add	dword [ebp-12],eax
	jmp	_117
_1476:
_116:
	cmp	ebx,dword [ebp-8]
	jne	_118
_117:
_107:
	add	dword [ebp-12],1
_1454:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-12],eax
	jle	_109
_108:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_102:
	mov	eax,dword [ebp-36]
	cmp	dword [ebp-28],eax
	jne	_104
_103:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	jmp	_124
_126:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1501
	mov	eax,_bbEmptyString
_1501:
	push	_4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1505
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1504
	mov	eax,_bbEmptyString
_1504:
	push	_77
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1505:
	cmp	eax,0
	je	_1507
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
_1507:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
_124:
	cmp	ebx,_bbNullObject
	jne	_126
_125:
	mov	eax,0
	jmp	_855
_855:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Analyser:
	push	ebp
	mov	ebp,esp
	sub	esp,120
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-120],eax
	mov	ebx,dword [ebp+8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1514
	push	eax
	call	_bbGCFree
	add	esp,4
_1514:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	eax,dword [__bb_TCompiler_Templates]
	push	dword [__bb_TTypeTemplate_ObjectTemplate]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,4
	mov	dword [ebp-68],eax
	mov	dword [ebp-64],0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	mov	dword [ebp-92],eax
	jmp	_1519
_129:
	push	_bbStringClass
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1522
	mov	eax,_bbEmptyString
_1522:
	push	_130
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1526
	jmp	_1525
_1526:
	add	dword [ebp-64],1
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	push	_bbStringClass
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1529
	mov	ebx,_bbEmptyString
_1529:
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_1533
	push	eax
	call	_bbGCFree
	add	esp,4
_1533:
	mov	dword [edi+20],ebx
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [edi+28]
	dec	dword [eax+4]
	jnz	_1538
	push	eax
	call	_bbGCFree
	add	esp,4
_1538:
	mov	dword [edi+28],esi
	mov	eax,dword [edi+20]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1542
	push	eax
	call	_bbGCFree
	add	esp,4
_1542:
	mov	dword [ebx+16],esi
	mov	dword [ebx+12],0
	mov	byte [ebx+8],1
	mov	eax,dword [ebx+24]
	push	dword [__bb_TDatatype_NullDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	eax,dword [eax+24]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	_93
	call	dword [_bb_TOperator+68]
	add	esp,4
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	push	_94
	call	dword [_bb_TOperator+68]
	add	esp,4
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_UserDefinedDatatypes]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TCompiler_Templates]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	jmp	_1525
_1525:
_127:
	add	dword [ebp-64],1
_1519:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-64],eax
	jl	_129
_128:
	mov	dword [ebp-20],0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	mov	dword [ebp-116],eax
	jmp	_1550
_133:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1553
	mov	ebx,_bbEmptyString
_1553:
	push	_134
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1557
	push	_130
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1558
	jmp	_1556
_1557:
_137:
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1560
	mov	eax,_bbEmptyString
_1560:
	mov	edi,eax
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1564
	mov	eax,_bbEmptyString
_1564:
	push	_85
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1565
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1567
	mov	eax,_bbEmptyString
_1567:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
_1565:
	add	dword [ebp-20],1
	jmp	_138
_140:
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	add	dword [esi+20],1
_138:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1569
	mov	eax,_bbEmptyString
_1569:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_140
_139:
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	esi
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1574
	mov	eax,_bbEmptyString
_1574:
	push	_98
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1575
	add	dword [ebp-20],1
	mov	eax,dword [ebp-68]
	mov	ebx,dword [eax+20]
	jmp	_1576
_143:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1579
	mov	eax,_bbEmptyString
_1579:
	push	_77
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1582
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1581
	mov	eax,_bbEmptyString
_1581:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1582:
	cmp	eax,0
	je	_1584
	sub	dword [ebp-20],1
	jmp	_142
_1584:
_141:
	add	dword [ebp-20],1
_1576:
	cmp	dword [ebp-20],ebx
	jl	_143
_142:
_1575:
	add	dword [ebp-20],1
_135:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1586
	mov	eax,_bbEmptyString
_1586:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_137
_136:
	jmp	_1556
_1558:
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1588
	mov	eax,_bbEmptyString
_1588:
	mov	dword [ebp-104],eax
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [__bb_TCompiler_Templates]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_144
_146:
	mov	eax,edi
	push	_bb_TTypeTemplate
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_144
	push	dword [ebp-104]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1597
	mov	dword [ebp-100],esi
_1597:
_144:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_146
_145:
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1599
	mov	eax,_bbEmptyString
_1599:
	push	_147
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1600
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1602
	mov	eax,_bbEmptyString
_1602:
	mov	dword [ebp-40],eax
	mov	ebx,dword [__bb_TCompiler_Templates]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_148
_150:
	mov	eax,edi
	push	_bb_TTypeTemplate
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_148
	push	dword [ebp-40]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1610
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_1614
	push	eax
	call	_bbGCFree
	add	esp,4
_1614:
	mov	eax,dword [ebp-100]
	mov	dword [eax+24],ebx
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+28]
	mov	eax,dword [eax+24]
	push	dword [esi+28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [esi+28]
	mov	edx,dword [eax+24]
	mov	eax,dword [ebp-100]
	push	dword [eax+28]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	jmp	_149
_1610:
_148:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_150
_149:
	jmp	_1617
_1600:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_1621
	push	eax
	call	_bbGCFree
	add	esp,4
_1621:
	mov	eax,dword [ebp-100]
	mov	dword [eax+24],ebx
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+28]
	mov	edx,dword [eax+24]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	push	dword [eax+28]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	mov	edx,dword [eax+24]
	mov	eax,dword [ebp-100]
	push	dword [eax+28]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_1617:
	jmp	_151
_153:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1627
	mov	eax,_bbEmptyString
_1627:
	push	_155
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1628
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
	add	dword [ebp-20],1
_1628:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1630
	mov	eax,_bbEmptyString
_1630:
	push	_156
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1631
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	add	dword [ebp-20],1
_1631:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1633
	mov	eax,_bbEmptyString
_1633:
	push	_157
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1634
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
	add	dword [ebp-20],1
_1634:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1636
	mov	eax,_bbEmptyString
_1636:
	push	_158
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1637
	add	dword [ebp-20],1
	mov	byte [ebp-4],0
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1640
	mov	ebx,_bbEmptyString
_1640:
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1643
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1644
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1645
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1646
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1647
	jmp	_1642
_1643:
	mov	byte [ebp-4],2
	add	dword [ebp-20],1
	jmp	_1642
_1644:
	mov	byte [ebp-4],1
	add	dword [ebp-20],1
	jmp	_1642
_1645:
	mov	byte [ebp-4],3
	add	dword [ebp-20],1
	jmp	_1642
_1646:
	mov	byte [ebp-4],4
	add	dword [ebp-20],1
	jmp	_1642
_1647:
	mov	byte [ebp-4],5
	add	dword [ebp-20],1
	jmp	_1642
_1642:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_1649
	mov	esi,_bbEmptyString
_1649:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1652
	mov	eax,_bbEmptyString
_1652:
	push	_166
	push	eax
	push	_165
	push	dword [ebp-104]
	push	_164
	call	_bbStringConcat
	add	esp,8
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
	inc	dword [ebx+4]
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+edx*4+24]
	dec	dword [eax+4]
	jnz	_1656
	push	eax
	call	_bbGCFree
	add	esp,4
_1656:
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	mov	dword [eax+edx*4+24],ebx
	mov	ebx,dword [ebp-100]
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1659
	mov	eax,_bbEmptyString
_1659:
	push	esi
	mov	edx,dword [ebp+8]
	push	dword [edx+72]
	movzx	edx,byte [ebp-4]
	push	edx
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,20
_1637:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1661
	mov	eax,_bbEmptyString
_1661:
	push	_57
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1662
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1664
	mov	eax,_bbEmptyString
_1664:
	mov	dword [ebp-80],eax
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1667
	mov	eax,_bbEmptyString
_1667:
	push	0
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-52],eax
	add	dword [ebp-20],1
	jmp	_167
_169:
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+20]
	add	eax,1
	mov	dword [edx+20],eax
_167:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1670
	mov	eax,_bbEmptyString
_1670:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_169
_168:
	mov	esi,_bbEmptyString
	mov	dword [ebp-36],_bbNullObject
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1674
	mov	eax,_bbEmptyString
_1674:
	push	_98
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1675
	add	dword [ebp-20],1
	jmp	_170
_172:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1679
	mov	eax,_bbEmptyString
_1679:
	push	_79
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	add	dword [ebp-20],1
_170:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1677
	mov	eax,_bbEmptyString
_1677:
	push	_77
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_172
_171:
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp-52]
	push	_82
	push	esi
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,4
	push	eax
	mov	eax,dword [ebp-52]
	push	dword [eax+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [ebx+36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
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
	jmp	_173
_175:
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
	je	_173
	mov	eax,esi
	push	_176
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1693
	mov	eax,esi
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
	jmp	_177
_179:
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
	je	_177
	mov	eax,esi
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1702
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
	mov	dword [ebp-36],eax
	jmp	_178
_1702:
_177:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_179
_178:
	jmp	_174
_1693:
_173:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_175
_174:
	jmp	_1704
_1675:
	mov	eax,dword [ebp-52]
	mov	ebx,dword [eax+16]
	push	_121
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1707
	push	_181
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1707
	push	_182
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1707
	push	_123
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1707
	push	_119
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1708
	push	_185
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1708
	push	_120
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1709
	push	_bbNullObject
	push	_187
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	jmp	_1706
_1707:
	push	_bbNullObject
	push	_121
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_184
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp-36]
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	mov	eax,dword [ebp-52]
	push	dword [eax+16]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-36],eax
	jmp	_1706
_1708:
	push	_bbNullObject
	push	_119
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_186
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	push	dword [ebp-36]
	mov	eax,dword [ebp-52]
	push	dword [eax+20]
	mov	eax,dword [ebp-52]
	push	dword [eax+16]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-36],eax
	jmp	_1706
_1709:
	push	_bbNullObject
	push	_120
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_4
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	jmp	_1706
_1706:
_1704:
	mov	edx,dword [ebp-100]
	mov	eax,dword [ebp+8]
	push	dword [eax+72]
	push	dword [ebp-36]
	push	dword [ebp-52]
	push	dword [ebp-80]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,20
_1662:
	add	dword [ebp-20],1
_151:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1625
	mov	eax,_bbEmptyString
_1625:
	push	_154
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_153
_152:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	jmp	_1556
_1556:
_131:
	add	dword [ebp-20],1
_1550:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-20],eax
	jl	_133
_132:
	mov	dword [ebp-108],_4
	mov	edi,0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	mov	dword [ebp-112],eax
	jmp	_1718
_190:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1721
	mov	ebx,_bbEmptyString
_1721:
	push	_130
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1725
	push	_154
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1726
	push	_155
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1727
	push	_156
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1728
	push	_157
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1729
	push	_158
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1730
	jmp	_1724
_1725:
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1732
	mov	eax,_bbEmptyString
_1732:
	mov	dword [ebp-108],eax
	jmp	_1724
_1726:
	mov	dword [ebp-108],_4
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	jmp	_1724
_1727:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1733
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
_1733:
	jmp	_1724
_1728:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1734
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
_1734:
	jmp	_1724
_1729:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1735
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
_1735:
	jmp	_1724
_1730:
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1737
	mov	ebx,_bbEmptyString
_1737:
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1740
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1740
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1740
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1740
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1740
	jmp	_1739
_1740:
	add	edi,1
	jmp	_1739
_1739:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1742
	mov	eax,_bbEmptyString
_1742:
	mov	dword [ebp-60],eax
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1746
	mov	eax,_bbEmptyString
_1746:
	push	_85
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1747
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1749
	mov	eax,_bbEmptyString
_1749:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
	add	edi,1
_1747:
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-72],eax
	mov	eax,dword [ebp-72]
	push	esi
	push	dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	mov	ebx,0
	jmp	_191
_193:
	add	edi,1
	add	edi,1
	add	ebx,1
_191:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1754
	mov	eax,_bbEmptyString
_1754:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_193
_192:
	add	edi,1
	mov	dword [esi+20],ebx
	mov	dword [ebp-84],_bbNullObject
	push	0
	push	_166
	push	dword [ebp-60]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_1756
	push	3
	push	_165
	push	dword [ebp-60]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-60]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-72]
	push	_4
	push	0
	push	dword [ebp-44]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	_194
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
	mov	esi,dword [__bb_TCompiler_Templates]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-32],eax
	jmp	_195
_197:
	mov	eax,dword [ebp-32]
	push	_bb_TTypeTemplate
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_195
	push	dword [ebp-44]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1765
	mov	dword [ebp-84],ebx
	jmp	_196
_1765:
_195:
	mov	eax,dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_197
_196:
_1756:
	jmp	_198
_200:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1769
	mov	eax,_bbEmptyString
_1769:
	mov	dword [ebp-76],eax
	add	edi,1
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-48],eax
	mov	esi,_bbEmptyString
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1774
	mov	eax,_bbEmptyString
_1774:
	push	_85
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1775
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1777
	mov	eax,_bbEmptyString
_1777:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-48],eax
	add	edi,1
_1775:
	mov	ebx,0
	jmp	_201
_203:
	add	edi,1
	add	edi,1
	add	ebx,1
_201:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1780
	mov	eax,_bbEmptyString
_1780:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_203
_202:
	mov	eax,dword [ebp-48]
	mov	dword [eax+20],ebx
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1782
	mov	eax,_bbEmptyString
_1782:
	push	_98
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1783
	add	edi,1
	mov	eax,dword [ebp-68]
	mov	ebx,dword [eax+20]
	jmp	_1784
_206:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1787
	mov	eax,_bbEmptyString
_1787:
	push	_77
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1790
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1789
	mov	eax,_bbEmptyString
_1789:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1790:
	cmp	eax,0
	je	_1792
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1794
	mov	eax,_bbEmptyString
_1794:
	push	_77
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1795
	mov	eax,dword [esi+8]
	sub	eax,1
	push	eax
	push	0
	push	esi
	call	_bbStringSlice
	add	esp,12
	mov	esi,eax
	sub	edi,1
_1795:
	jmp	_205
_1792:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1798
	mov	eax,_bbEmptyString
_1798:
	push	eax
	push	_79
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
_1796:
_204:
	add	edi,1
_1784:
	cmp	edi,ebx
	jl	_206
_205:
_1783:
	mov	ebx,dword [ebp-72]
	push	esi
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	dword [ebp-48]
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1801
	mov	eax,_bbEmptyString
_1801:
	push	_82
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1802
	jmp	_199
_1802:
	add	edi,1
_198:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1767
	mov	eax,_bbEmptyString
_1767:
	push	_82
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_200
_199:
	mov	eax,dword [ebp-72]
	mov	byte [eax+28],1
	cmp	dword [ebp-84],_bbNullObject
	je	_1803
	mov	edx,dword [ebp-84]
	mov	eax,dword [ebp+8]
	push	dword [eax+72]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+56]
	add	esp,8
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_207
_209:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1807
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1807:
	cmp	eax,0
	je	_1809
	mov	eax,dword [ebp-72]
	push	dword [eax+12]
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	push	dword [eax+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1809:
	cmp	eax,0
	je	_1811
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,dword [ebp-84]
	cmp	dword [eax+24],edx
	jne	_1812
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_1812:
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp-72]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1818
	push	eax
	call	_bbGCFree
	add	esp,4
_1818:
	mov	dword [esi+16],ebx
	mov	ebx,dword [ebp-84]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+36]
	dec	dword [eax+4]
	jnz	_1822
	push	eax
	call	_bbGCFree
	add	esp,4
_1822:
	mov	eax,dword [ebp-72]
	mov	dword [eax+36],ebx
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+12]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1827
	push	eax
	call	_bbGCFree
	add	esp,4
_1827:
	mov	dword [esi+20],ebx
_1811:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-28],eax
_207:
	cmp	dword [ebp-28],_bbNullObject
	jne	_209
_208:
	jmp	_1829
_1803:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_1829:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	jmp	_1724
_1724:
_188:
	add	edi,1
_1718:
	cmp	edi,dword [ebp-112]
	jl	_190
_189:
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-96],eax
	jmp	_210
_212:
	mov	eax,dword [ebp-96]
	push	_bb_TTypeTemplate
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_210
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+24]
	mov	dword [ebp-56],eax
	jmp	_213
_215:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_216
_218:
	mov	eax,dword [ebp-16]
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_216
	cmp	dword [edi+16],_bbNullObject
	je	_1845
	mov	eax,dword [edi+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	mov	esi,eax
	mov	eax,dword [esi+24]
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,dword [eax+12]
	mov	eax,dword [ebp-24]
	push	dword [eax+20]
	call	_bbStringToLower
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1853
	push	eax
	call	_bbGCFree
	add	esp,4
_1853:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+16],eax
	mov	eax,dword [edi+16]
	mov	eax,dword [eax+32]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	_38
	mov	eax,dword [ebp-24]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	mov	eax,dword [edi+24]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+12]
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1858
	push	eax
	call	_bbGCFree
	add	esp,4
_1858:
	mov	dword [esi+12],ebx
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	ebx,dword [ebp-24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_1863
	push	eax
	call	_bbGCFree
	add	esp,4
_1863:
	mov	dword [esi+36],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1845:
_216:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_218
_217:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+24]
	mov	dword [ebp-56],eax
_213:
	cmp	dword [ebp-56],_bbNullObject
	jne	_215
_214:
_210:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_212
_211:
	mov	ebx,dword [ebp-120]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1868
	push	eax
	call	_bbGCFree
	add	esp,4
_1868:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	eax,0
	jmp	_858
_858:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Parser:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp+8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1873
	push	eax
	call	_bbGCFree
	add	esp,4
_1873:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_219
	call	dword [_bah_libxml_TxmlDoc+96]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	dec	dword [eax+4]
	jnz	_1877
	push	eax
	call	_bbGCFree
	add	esp,4
_1877:
	mov	eax,dword [ebp+8]
	mov	dword [eax+36],ebx
	push	_bbNullObject
	push	_220
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-32]
	push	_222
	push	_221
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_1881
	mov	esi,dword [__bb_TCompiler_Templates]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_223
_225:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_223
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	eax
	push	dword [ebp-32]
	call	_bb_AddChild
	add	esp,8
_223:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_225
_224:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_134
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+12]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_226
_228:
	mov	eax,dword [ebp-16]
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_226
	mov	eax,dword [esi+8]
	cmp	dword [eax+20],0
	je	_1898
	mov	eax,dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_229
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	jmp	_1900
_1898:
	mov	eax,dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_230
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
_1900:
	mov	eax,ebx
	push	dword [esi+12]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [esi+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
_226:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_228
_227:
_1881:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_176
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1908
	push	eax
	call	_bbGCFree
	add	esp,4
_1908:
	mov	eax,dword [ebp+8]
	mov	dword [eax+40],ebx
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+40]
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+60]
	dec	dword [eax+4]
	jnz	_1912
	push	eax
	call	_bbGCFree
	add	esp,4
_1912:
	mov	eax,dword [ebp+8]
	mov	dword [eax+60],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	dec	dword [eax+4]
	jnz	_1917
	push	eax
	call	_bbGCFree
	add	esp,4
_1917:
	mov	eax,dword [ebp+8]
	mov	dword [eax+52],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1920
	mov	ebx,_bbEmptyString
_1920:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_1924
	push	eax
	call	_bbGCFree
	add	esp,4
_1924:
	mov	eax,dword [ebp+8]
	mov	dword [eax+48],ebx
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_1926
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_231
_233:
	mov	eax,dword [ebp-28]
	push	_bb_TIdentifierFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_231
	movzx	eax,byte [esi+29]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1933
	movzx	eax,byte [esi+28]
_1933:
	cmp	eax,0
	je	_1935
	jmp	_231
_1935:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_158
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-12],eax
	mov	eax,dword [esi+8]
	push	dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [ebp-12]
	push	dword [esi+12]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-12]
	push	dword [esi+20]
	push	_64
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	ebx,dword [ebp-12]
	movzx	eax,byte [esi+28]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_234
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	edi,dword [esi+24]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_235
_237:
	mov	eax,dword [ebp-8]
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_235
	mov	eax,dword [ebp-12]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	dword [esi+8]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [esi+12]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
_235:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_237
_236:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	push	dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+160]
	add	esp,8
_231:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_233
_232:
_1926:
	push	_238
	call	_brl_filesystem_DeleteFile
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	1
	push	1
	push	_238
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,16
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1957
	push	eax
	call	_bbGCFree
	add	esp,4
_1957:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+68]
	cmp	eax,0
	je	_1958
	push	_239
	call	_bbWriteStdout
	add	esp,4
	call	_bbEnd
_1958:
	mov	eax,0
	jmp	_862
_862:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_InternBlock:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	edx,dword [esi+40]
	mov	dword [ebp-4],edx
	mov	edi,dword [esi+44]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1964
	push	eax
	call	_bbGCFree
	add	esp,4
_1964:
	mov	dword [esi+40],ebx
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_1969
	push	eax
	call	_bbGCFree
	add	esp,4
_1969:
	mov	dword [esi+44],ebx
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1973
	push	eax
	call	_bbGCFree
	add	esp,4
_1973:
	mov	dword [esi+40],ebx
	mov	eax,0
	jmp	_866
_866:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Block:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_553
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1977
	push	eax
	call	_bbGCFree
	add	esp,4
_1977:
	mov	dword [esi+20],ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	edx,dword [esi+20]
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_1981
	push	eax
	call	_bbGCFree
	add	esp,4
_1981:
	mov	edx,dword [esi+20]
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	jmp	_240
_242:
	mov	eax,esi
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2014
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_240
_2014:
	mov	eax,dword [esi+40]
	push	_4
	push	_bbNullObject
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_2020
	push	eax
	call	_bbGCFree
	add	esp,4
_2020:
	mov	dword [esi+44],ebx
	mov	ebx,dword [esi+44]
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,esi
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	dword [esi+44]
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	cmp	dword [esi+52],eax
	je	_2025
	mov	eax,esi
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2025:
	jmp	_254
_256:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_254:
	mov	eax,esi
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2029
	mov	eax,dword [esi+8]
	mov	ebx,dword [esi+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
_2029:
	cmp	eax,0
	jne	_256
_255:
_240:
	mov	eax,dword [esi+8]
	mov	ebx,dword [esi+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1984
	mov	eax,esi
	push	_243
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1984:
	cmp	eax,0
	je	_1987
	mov	eax,esi
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1987:
	cmp	eax,0
	je	_1990
	mov	eax,esi
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1990:
	cmp	eax,0
	je	_1993
	mov	eax,esi
	push	_246
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1993:
	cmp	eax,0
	je	_1996
	mov	eax,esi
	push	_247
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1996:
	cmp	eax,0
	je	_1999
	mov	eax,esi
	push	_248
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1999:
	cmp	eax,0
	je	_2002
	mov	eax,esi
	push	_249
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2002:
	cmp	eax,0
	je	_2005
	mov	eax,esi
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2005:
	cmp	eax,0
	je	_2008
	mov	eax,esi
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2008:
	cmp	eax,0
	je	_2011
	mov	eax,esi
	push	_252
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2011:
	cmp	eax,0
	jne	_242
_241:
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_553
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_2035
	push	eax
	call	_bbGCFree
	add	esp,4
_2035:
	mov	dword [esi+20],ebx
	mov	eax,0
	jmp	_869
_869:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Expression:
	push	ebp
	mov	ebp,esp
	sub	esp,44
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+20]
	cmp	dword [ebp+12],eax
	jl	_2036
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,4
	jmp	_873
_2036:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	add	eax,1
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	mov	dword [ebp-44],eax
	jmp	_257
_259:
	mov	byte [ebp-4],0
	mov	byte [ebp-8],0
	mov	edx,dword [__bb_TOperator_Priority]
	mov	eax,dword [ebp+12]
	mov	eax,dword [edx+eax*4+24]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-36],eax
	jmp	_260
_262:
	mov	eax,dword [ebp-36]
	push	_bb_TOperator
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_260
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2054
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	add	eax,1
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	mov	esi,_bbNullObject
	mov	edx,dword [__bb_TOperator_Priority]
	mov	eax,dword [ebp+12]
	mov	edi,dword [edx+eax*4+24]
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_263
_265:
	mov	eax,dword [ebp-12]
	push	_bb_TOperator
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_263
	push	dword [ebp-16]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2067
	mov	eax,ebx
	mov	edx,dword [ebp-20]
	push	dword [edx+8]
	mov	edx,dword [ebp-24]
	push	dword [edx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,12
_2067:
	cmp	eax,0
	je	_2071
	cmp	esi,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2069
	mov	eax,dword [esi+16]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebx+16]
	cmp	edx,dword [eax+20]
	setg	al
	movzx	eax,al
_2069:
_2071:
	cmp	eax,0
	je	_2073
	mov	esi,ebx
	mov	byte [ebp-4],1
_2073:
_263:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_265
_264:
	cmp	esi,_bbNullObject
	je	_2074
	cmp	dword [ebp-28],_bbNullObject
	je	_2075
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_2079
	push	eax
	call	_bbGCFree
	add	esp,4
_2079:
	mov	eax,dword [ebp-24]
	mov	dword [eax+12],ebx
_2075:
	push	_bbNullObject
	push	dword [esi+8]
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,esi
	push	dword [ebp-32]
	push	dword [ebp-20]
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,16
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_2086
	push	eax
	call	_bbGCFree
	add	esp,4
_2086:
	mov	eax,dword [ebp-24]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	jmp	_2087
_2074:
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_2088
	mov	ebx,dword [ebp+8]
	push	_269
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_268
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_267
	push	dword [ebp-16]
	push	_266
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_2088:
_2087:
_2054:
_260:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_262
_261:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_2090
	jmp	_258
_2090:
_257:
	mov	eax,1
	cmp	eax,0
	jne	_259
_258:
	cmp	dword [ebp-32],_bbNullObject
	jne	_2091
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	mov	dword [ebp-32],eax
_2091:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-44]
	push	dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_873
_873:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Factor:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	esi,1
	mov	eax,ebx
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2095
	mov	eax,ebx
	push	_270
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2097
	mov	eax,ebx
	push	_271
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2099
	mov	eax,ebx
	push	_272
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2101
	mov	eax,ebx
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2103
	mov	eax,ebx
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2105
	mov	eax,ebx
	push	_187
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	esi,eax
	je	_2107
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsInt
	add	esp,4
	mov	eax,eax
	cmp	esi,eax
	je	_2109
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsFLoat
	add	esp,4
	mov	eax,eax
	cmp	esi,eax
	je	_2111
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsString
	add	esp,4
	mov	eax,eax
	cmp	esi,eax
	je	_2113
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2117
	jmp	_876
_2117:
	mov	eax,ebx
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2119
	jmp	_876
_2119:
	mov	eax,ebx
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2121
	jmp	_876
_2121:
	mov	eax,ebx
	push	_277
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
	call	_bbEnd
	jmp	_2094
_2095:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,ebx
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	jmp	_876
_2097:
	push	_bbNullObject
	push	_121
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	push	_347
	push	_183
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2099:
	push	_bbNullObject
	push	_121
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	push	_184
	push	_183
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2101:
	push	_bbNullObject
	push	_272
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,ebx
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	push	dword [ebx+12]
	push	esi
	call	_bb_AddChild
	add	esp,8
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebx+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2103:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_273
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,esi
	push	_4
	push	_bbNullObject
	push	_274
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-4],eax
	push	_bbNullObject
	push	_121
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	_275
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebx+8]
	push	edi
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-4]
	call	_bb_AddChild
	add	esp,8
	mov	eax,esi
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_276
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebx+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2105:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,ebx
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebx+8]
	push	dword [ebx+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2107:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_187
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_NullDatatype]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2109:
	push	_bbNullObject
	push	_121
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_183
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2111:
	push	_bbNullObject
	push	_119
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringToFloat
	add	esp,4
	sub	esp,4
	fstp	dword [esp]
	call	_bbStringFromFloat
	add	esp,4
	push	eax
	push	_183
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_FloatDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2113:
	push	_bbNullObject
	push	_120
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_183
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_StringDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	esi,eax
	jmp	_876
_2094:
	mov	esi,_bbNullObject
	jmp	_876
_876:
	mov	eax,esi
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Funk:
	push	ebp
	mov	ebp,esp
	sub	esp,88
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	cmp	eax,0
	je	_2176
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	edi,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,0
	jmp	_278
_280:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_278:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_280
_279:
	mov	dword [edi+20],ebx
	mov	eax,dword [ebp+8]
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	dword [ebx+12]
	push	dword [ebx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-24],eax
	mov	esi,_bbNullObject
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2192
	mov	dword [edi+20],0
	mov	eax,dword [ebp+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
	mov	esi,eax
_2192:
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2195
	mov	ebx,dword [ebp+8]
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	esi
	push	_bbNullObject
	push	_bbNullObject
	push	edi
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	edi,dword [eax+8]
	mov	eax,dword [eax+12]
	mov	dword [ebp-24],eax
_2195:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	edi
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_880
_2176:
	mov	dword [ebp-68],0
	mov	byte [ebp-4],1
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+16]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_281
_283:
	mov	eax,edi
	push	_bb_TIdentifierFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_281
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2210
	add	dword [ebp-68],1
	mov	byte [ebp-4],0
_2210:
_281:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_283
_282:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2211
	mov	eax,_bbNullObject
	jmp	_880
_2211:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-52],eax
	mov	edi,_bbEmptyString
	push	0
	push	_166
	push	dword [ebp-52]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	je	_2216
	push	3
	push	_165
	push	dword [ebp-52]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-52]
	call	_bbStringSlice
	add	esp,12
	push	_284
	push	eax
	push	_38
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
_2216:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	byte [ebp-8],1
	mov	esi,0
	mov	eax,dword [ebp+8]
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2222
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2222:
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2226
	mov	eax,dword [ebp+8]
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2226:
	cmp	eax,0
	je	_2228
	jmp	_285
_287:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_2232
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2232:
	mov	byte [ebp-8],0
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2235
	mov	eax,dword [ebp+8]
	push	_288
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2235:
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp-88]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	call	_bbStringConcat
	add	esp,8
	mov	edi,eax
	add	esi,1
_285:
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2230
	movzx	eax,byte [ebp-8]
_2230:
	cmp	eax,0
	jne	_287
_286:
_2228:
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2242
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2242:
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_289
_291:
	mov	eax,ebx
	push	_bb_TIdentifierFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_289
	push	edi
	push	dword [ebp-52]
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp-32]
	push	dword [eax+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2250
	mov	byte [ebp-4],0
	mov	eax,dword [ebp-32]
	mov	esi,dword [eax+24]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_292
_294:
	mov	eax,ebx
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_292
	push	_4
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2257
	jmp	_292
_2257:
_292:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_294
_293:
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+24]
	mov	esi,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	mov	ebx,eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	cmp	ebx,eax
	je	_2260
	mov	eax,dword [ebp-32]
	mov	esi,dword [eax+24]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_295
_297:
	mov	eax,ebx
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_295
	push	_4
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2267
	mov	byte [ebp-4],1
_2267:
_295:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_297
_296:
_2260:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2268
	jmp	_290
_2268:
	mov	eax,dword [ebp-32]
	mov	byte [eax+29],1
	push	_bbNullObject
	push	_298
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-32]
	cmp	dword [eax+36],_bbNullObject
	je	_2270
	mov	eax,dword [ebp-32]
	push	dword [eax+12]
	call	_brl_standardio_Print
	add	esp,4
	push	_299
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+36]
	push	-1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_300
_302:
	mov	eax,edi
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_300
	push	dword [esi+20]
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebp-32]
	push	dword [eax+12]
	push	_38
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+36]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	mov	eax,dword [esi+24]
	push	dword [eax+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+20]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2278
	mov	ebx,dword [ebp-44]
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_303
	call	_brl_standardio_Print
	add	esp,4
	jmp	_301
_2278:
_300:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_302
_301:
_2270:
	mov	edx,dword [ebp-44]
	mov	eax,dword [ebp-32]
	push	dword [eax+12]
	push	_26
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-16],eax
	cmp	dword [ebp+12],_bbNullObject
	je	_2283
	mov	eax,dword [ebp-44]
	push	dword [ebp+12]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_2283:
	mov	ebx,dword [ebp-88]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_304
_306:
	mov	eax,edi
	push	_bb_TRecursive
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_304
	mov	eax,dword [ebp-44]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	dword [esi+12]
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-16],eax
_304:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_306
_305:
	mov	eax,dword [ebp-32]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+8]
	push	dword [eax+20]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-56],eax
	mov	dword [ebp-64],_bbNullObject
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2298
	mov	eax,dword [ebp-56]
	mov	dword [eax+20],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-32]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-32]
	push	dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2303
	mov	eax,dword [ebp-36]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2303:
	cmp	eax,0
	je	_2305
	mov	eax,dword [ebp-36]
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
	jmp	_307
_309:
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
	je	_307
	mov	eax,esi
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2314
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
	mov	eax,dword [eax]
	call	dword [eax+292]
	add	esp,4
	push	dword [ebp-44]
	push	esi
	call	_bb_AddChild
	add	esp,8
_2314:
_307:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_309
_308:
_2305:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-44],eax
_2298:
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2318
	mov	ebx,dword [ebp+8]
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp-64]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-56]
	push	dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	edx,dword [eax+8]
	mov	dword [ebp-56],edx
	mov	eax,dword [eax+12]
	mov	dword [ebp-44],eax
_2318:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-56]
	push	dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_880
_2250:
_289:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_291
_290:
	cmp	dword [ebp-68],1
	jne	_2323
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_310
_312:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	je	_310
	push	dword [ebp-52]
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2330
	mov	eax,dword [ebp-48]
	mov	byte [eax+29],1
	push	_bbNullObject
	push	_298
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	eax,dword [ebp-48]
	cmp	dword [eax+36],_bbNullObject
	je	_2332
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_brl_standardio_Print
	add	esp,4
	push	_299
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+36]
	push	-1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_313
_315:
	mov	eax,edi
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_313
	push	dword [esi+20]
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2340
	mov	ebx,dword [ebp-84]
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_303
	call	_brl_standardio_Print
	add	esp,4
	jmp	_314
_2340:
_313:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
_2332:
	mov	edx,dword [ebp-84]
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	push	_26
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-28],eax
	mov	byte [ebp-12],0
	cmp	dword [ebp+12],_bbNullObject
	je	_2346
	mov	eax,dword [ebp-84]
	push	dword [ebp+12]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_2346:
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	mov	dword [ebp-76],eax
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-80],eax
	jmp	_316
_318:
	mov	eax,dword [ebp-80]
	push	_bb_TParameter
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
	cmp	edi,_bbNullObject
	je	_316
	push	0
	push	_166
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2354
	push	_194
	push	dword [edi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2354:
	cmp	eax,0
	je	_2356
	cmp	dword [ebp-28],_bbNullObject
	je	_2357
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-28],eax
_2357:
	jmp	_316
_2356:
	mov	eax,dword [ebp-28]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2359
	push	_4
	push	dword [edi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2359:
	cmp	eax,0
	je	_2361
	push	0
	push	_166
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_2362
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-48]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-88]
	push	_112
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_321
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	sub	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_320
	push	_79
	push	_165
	push	_79
	push	_164
	push	_4
	push	_166
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
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
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,8
	jmp	_2366
_2362:
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-48]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-88]
	push	_112
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_321
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_320
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
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
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,8
_2366:
_2361:
	mov	esi,_bbNullObject
	cmp	dword [ebp-28],_bbNullObject
	je	_2371
	mov	eax,dword [ebp-28]
	push	_bb_TRecursive
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
_2371:
	push	_4
	push	dword [edi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2373
	mov	eax,dword [ebp-28]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_2373:
	cmp	eax,0
	je	_2375
	mov	byte [ebp-12],0
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [edi+12]
	push	_82
	push	dword [edi+16]
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,4
	push	eax
	mov	eax,dword [edi+12]
	push	dword [eax+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	dword [ebp-20],_bbNullObject
	mov	eax,dword [ebx+36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,4
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
	jmp	_322
_324:
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
	je	_322
	mov	eax,esi
	push	_176
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2390
	mov	eax,esi
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
	jmp	_325
_327:
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
	je	_325
	mov	eax,esi
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2399
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
	mov	dword [ebp-20],eax
	jmp	_326
_2399:
_325:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_327
_326:
	jmp	_323
_2390:
_322:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_324
_323:
	mov	eax,dword [ebp-84]
	push	dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	jmp	_2402
_2375:
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_2403
	mov	eax,dword [ebp+8]
	push	_328
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2403:
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [edi+12]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-28],eax
_2402:
_316:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_318
_317:
	mov	eax,dword [ebp-48]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+8]
	push	dword [eax+20]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-72],eax
	mov	dword [ebp-60],_bbNullObject
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2413
	mov	eax,dword [ebp-72]
	mov	dword [eax+20],0
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-48]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp-48]
	push	dword [ebp-60]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2418
	mov	eax,dword [ebp-40]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2418:
	cmp	eax,0
	je	_2420
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
	jmp	_329
_331:
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
	je	_329
	mov	eax,esi
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2429
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
	mov	eax,dword [eax]
	call	dword [eax+292]
	add	esp,4
	push	dword [ebp-84]
	push	esi
	call	_bb_AddChild
	add	esp,8
_2429:
_329:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_331
_330:
_2420:
	mov	eax,dword [ebp-40]
	mov	dword [ebp-84],eax
_2413:
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2433
	mov	ebx,dword [ebp+8]
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp-60]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-72]
	push	dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	eax,dword [eax+12]
	mov	dword [ebp-84],eax
_2433:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	mov	edx,dword [ebp-48]
	push	dword [edx+8]
	push	dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_880
_2330:
_310:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_312
_311:
	jmp	_2438
_2323:
	mov	ebx,dword [ebp+8]
	push	edi
	push	dword [ebp-52]
	push	_332
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_2438:
_2200:
	mov	eax,_bbNullObject
	jmp	_880
_880:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Keyword:
	push	ebp
	mov	ebp,esp
	sub	esp,100
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_333
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2443
	push	_339
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2444
	push	_340
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2445
	push	_341
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2446
	push	_348
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2447
	push	_350
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2448
	push	_158
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2449
	push	_371
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2450
	push	_373
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2451
	push	_130
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2452
	push	_393
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2453
	jmp	_2442
_2443:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_333
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-80],eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp-80]
	push	_4
	push	_bbNullObject
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_335
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2462
	mov	eax,dword [ebp+8]
	push	_335
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	push	_bbNullObject
	push	_180
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	ebx,dword [ebp-80]
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_180
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	dword [edi+12]
	push	esi
	call	_bb_AddChild
	add	esp,8
	push	esi
	push	dword [ebp-80]
	call	_bb_AddChild
	add	esp,8
	jmp	_2468
_2462:
	mov	eax,dword [ebp+8]
	push	dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2471
	push	_bbNullObject
	push	_180
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-72]
	push	_4
	push	_bbNullObject
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-48],eax
	jmp	_336
_338:
	mov	eax,dword [ebp+8]
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp-48]
	push	_4
	push	_bbNullObject
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_333
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	edi,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2491
	mov	eax,dword [ebp+8]
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_2491:
	cmp	eax,0
	je	_2493
	mov	eax,dword [ebp+8]
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_245
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	edx,dword [ebp+8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_2493:
_336:
	mov	eax,dword [ebp+8]
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_338
_337:
	push	dword [ebp-72]
	push	dword [ebp-80]
	call	_bb_AddChild
	add	esp,8
	jmp	_2501
_2471:
	mov	eax,dword [ebp+8]
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2503
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp-80]
	push	_4
	push	_bbNullObject
	push	_245
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edx,dword [ebp+8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_2503:
_2501:
	mov	eax,dword [ebp+8]
	push	_243
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2468:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2444:
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+24]
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],2
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_339
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,esi
	push	_4
	push	_bbNullObject
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [ebx+12]
	push	dword [ebx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-36]
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_247
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],edi
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2445:
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+24]
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],2
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_340
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_248
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	ebx,eax
	mov	eax,esi
	push	_4
	push	_bbNullObject
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [ebx+12]
	push	dword [ebx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-40]
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],edi
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2446:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	mov	dword [ebp-76],eax
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],2
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_341
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	edi,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,8
	mov	esi,eax
	push	_bb_TIdentifierVariable
	push	dword [esi+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_342
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	dword [esi+12]
	push	_4
	push	_bbNullObject
	push	_343
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp-56]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	_4
	push	_bbNullObject
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_344
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_345
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_345
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_346
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2552
	mov	eax,dword [ebp+8]
	push	_346
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_346
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	jmp	_2557
_2552:
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_346
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	_4
	push	_bbNullObject
	push	_121
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	_347
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
_2557:
	mov	eax,dword [ebp+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	push	dword [ebp-56]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_246
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-76]
	mov	dword [edx+24],eax
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2447:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],2
	je	_2565
	mov	eax,dword [ebp+8]
	push	_349
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2565:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	_348
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2448:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],2
	je	_2569
	mov	eax,dword [ebp+8]
	push	_349
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2569:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	_350
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2449:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2577
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2577
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2577
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2577
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2577
	jmp	_2576
_2577:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2576
_2576:
	push	_bbNullObject
	push	_158
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,0
	jmp	_351
_353:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_351:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_353
_352:
	push	ebx
	push	esi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-92],eax
	mov	ebx,dword [ebp-92]
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+64]
	dec	dword [eax+4]
	jnz	_2595
	push	eax
	call	_bbGCFree
	add	esp,4
_2595:
	mov	eax,dword [ebp+8]
	mov	dword [eax+64],ebx
	mov	eax,dword [ebp+8]
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-100],eax
	push	1
	push	_2598
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2602
	push	eax
	call	_bbGCFree
	add	esp,4
_2602:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_2606
	push	eax
	call	_bbGCFree
	add	esp,4
_2606:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [eax+24],ebx
	mov	dword [ebp-60],_bbEmptyString
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	cmp	eax,3
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2608
	push	_4
	mov	eax,dword [ebp+8]
	push	dword [eax+28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2608:
	cmp	eax,0
	je	_2610
	push	_284
	mov	eax,dword [ebp+8]
	push	dword [eax+28]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	push	0
	mov	eax,dword [ebp+8]
	push	dword [eax+28]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	esi
	push	_194
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,12
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	push	_194
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	ebx
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+64]
	add	esp,8
_2610:
	jmp	_354
_356:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsValidVarName
	add	esp,4
	mov	eax,eax
	cmp	eax,0
	jne	_2619
	mov	eax,dword [ebp+8]
	push	_357
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2619:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	edi,eax
	push	edi
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_68
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	mov	ebx,0
	jmp	_358
_360:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_358:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_360
_359:
	push	_38
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_361
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	push	ebx
	push	edi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	ebx
	push	dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,12
	mov	eax,esi
	push	dword [ebp-28]
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	push	esi
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2639
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
_2639:
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2643
	jmp	_2644
_2643:
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2644:
_354:
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_356
_355:
	mov	eax,dword [ebp+8]
	push	_82
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	ebx,dword [ebp-84]
	push	dword [ebp-60]
	push	dword [ebp-88]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-92]
	push	dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	mov	eax,dword [ebp-84]
	push	_347
	push	_234
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_176
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edx,dword [ebp+8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,dword [ebp-100]
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2656
	push	eax
	call	_bbGCFree
	add	esp,4
_2656:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp+8]
	push	_249
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	push	dword [ebp-84]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+160]
	add	esp,8
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+64]
	dec	dword [eax+4]
	jnz	_2662
	push	eax
	call	_bbGCFree
	add	esp,4
_2662:
	mov	eax,dword [ebp+8]
	mov	dword [eax+64],ebx
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+16]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_362
_364:
	mov	eax,edi
	push	_bb_TIdentifierFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_362
	push	dword [ebp-60]
	push	dword [ebp-88]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2669
	mov	eax,dword [esi+32]
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_365
_367:
	mov	eax,dword [ebp-68]
	push	_bb_TIdentifierFunction
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_365
	mov	eax,dword [ebp-84]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+264]
	add	esp,8
	mov	dword [ebp-44],eax
	mov	edx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	push	dword [eax+12]
	push	_26
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+172]
	add	esp,12
	mov	eax,dword [ebp-44]
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
	jmp	_368
_370:
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
	je	_368
	mov	eax,esi
	push	_68
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
	je	_2688
	mov	eax,esi
	push	_194
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2688:
	cmp	eax,0
	je	_2690
	mov	eax,esi
	mov	edx,dword [ebp-16]
	mov	edx,dword [edx+36]
	push	dword [edx+20]
	push	_130
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,12
_2690:
_368:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_370
_369:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	push	dword [ebp-44]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+160]
	add	esp,8
_365:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_367
_366:
	jmp	_363
_2669:
_362:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_364
_363:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2450:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+64],_bbNullObject
	jne	_2695
	mov	eax,dword [ebp+8]
	push	_372
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2695:
	mov	eax,dword [ebp+8]
	push	_371
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	push	_bbNullObject
	push	_371
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edx,dword [ebp+8]
	mov	edx,dword [edx+64]
	push	dword [eax+12]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2451:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_373
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	push	dword [eax+12]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_374
_376:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	byte [ebp-4],0
	push	1
	push	_2715
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
_379:
	mov	byte [ebp-4],0
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_250
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	push	_4
	push	_bbNullObject
	push	_334
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	push	dword [eax+12]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2728
	mov	byte [ebp-4],1
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2728:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-12]
	push	_620
	call	_bbArraySlice
	add	esp,16
	mov	dword [ebp-12],eax
	inc	dword [esi+4]
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax+20]
	sub	edx,1
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+edx*4+24]
	dec	dword [eax+4]
	jnz	_2733
	push	eax
	call	_bbGCFree
	add	esp,4
_2733:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax+20]
	sub	edx,1
	mov	eax,dword [ebp-12]
	mov	dword [eax+edx*4+24],esi
_377:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_379
_378:
	push	_bbNullObject
	push	_380
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_2737
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-24],eax
	jmp	_381
_383:
	mov	eax,dword [ebp-24]
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_381
	mov	eax,dword [ebp-8]
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2746
	mov	esi,dword [ebp-12]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_384
_386:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_384
	push	dword [ebp-8]
	push	eax
	call	_bb_AddChild
	add	esp,8
_384:
	cmp	ebx,edi
	jne	_386
_385:
_2746:
_381:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_383
_382:
_2737:
_374:
	mov	eax,dword [ebp+8]
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_376
_375:
	mov	eax,dword [ebp+8]
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2753
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_180
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_251
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	edx,dword [ebp+8]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_2753:
	mov	eax,dword [ebp+8]
	push	_252
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-96]
	mov	dword [edx+24],eax
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2452:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	esi,eax
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_2769
	push	eax
	call	_bbGCFree
	add	esp,4
_2769:
	mov	eax,dword [ebp+8]
	mov	dword [eax+28],ebx
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_147
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2773
	mov	eax,dword [ebp+8]
	push	_147
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2773:
	mov	eax,dword [ebp+8]
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	jmp	_387
_389:
	mov	eax,dword [ebp+8]
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2779
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_155
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2783
	push	_156
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2784
	push	_157
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2785
	push	_57
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2786
	push	_158
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2787
	jmp	_2782
_2783:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2782
_2784:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2782
_2785:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2782
_2786:
	mov	eax,dword [ebp+8]
	push	_57
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_390
_392:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_390:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_392
_391:
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2803
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
_2803:
	jmp	_2782
_2787:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2810
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2810
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2810
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2810
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2810
	jmp	_2809
_2810:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2809
_2809:
	push	_bbStringClass
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2813
	mov	eax,_bbEmptyString
_2813:
	push	_166
	push	eax
	push	_165
	push	esi
	push	_164
	call	_bbStringConcat
	add	esp,8
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
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_2817
	push	eax
	call	_bbGCFree
	add	esp,4
_2817:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+132]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],3
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+72]
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	dword [eax+24],0
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],ebx
	jmp	_2782
_2782:
_2779:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_387:
	mov	eax,dword [ebp+8]
	push	_154
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_389
_388:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_2825
	push	eax
	call	_bbGCFree
	add	esp,4
_2825:
	mov	eax,dword [ebp+8]
	mov	dword [eax+28],ebx
	mov	eax,dword [ebp+8]
	push	_154
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2453:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_2833
	mov	esi,dword [ebp+8]
	push	_112
	push	ebx
	push	_394
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,8
_2833:
	push	_bbNullObject
	push	_393
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	ebx
	push	_130
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	push	0
	push	ebx
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2839
_397:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+20]
	add	eax,1
	mov	dword [edx+20],eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_2847
	push	eax
	call	_bbGCFree
	add	esp,4
_2847:
	mov	dword [esi+12],ebx
	mov	eax,edi
	push	dword [esi+12]
	push	_4
	push	_bbNullObject
	push	_398
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_395:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_397
_396:
_2839:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-32]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	jmp	_883
_2442:
	mov	eax,_bbNullObject
	jmp	_883
_883:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Variable:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_399
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2855
	push	_134
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2856
	jmp	_2854
_2855:
	push	_bbNullObject
	push	_399
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	ebx,_bbNullObject
_402:
_400:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-16],eax
	push	dword [ebp-16]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_2861
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_2866
	mov	eax,dword [ebp+8]
	push	_403
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2866:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,0
	jmp	_404
_406:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_404:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_406
_405:
	push	ebx
	push	esi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+8]
	push	dword [ebp-8]
	push	dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,12
	push	eax
	push	dword [ebp-32]
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2878
	movzx	eax,byte [ebp-4]
_2878:
	cmp	eax,0
	je	_2880
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	push	_bbNullObject
	push	_407
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	_4
	push	_bbNullObject
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,ebx
	push	_4
	push	_bbNullObject
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edi,eax
	mov	eax,dword [ebp-8]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	call	_bb_AddChild
	add	esp,8
	push	_bbNullObject
	push	_180
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	ebx
	push	esi
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+44]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,8
_2880:
	mov	eax,dword [ebp+8]
	push	dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	mov	ebx,eax
	jmp	_2895
_2861:
	mov	eax,dword [ebp+8]
	push	_408
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2895:
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2898
	jmp	_400
_2898:
	jmp	_401
_401:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	ebx
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_887
_2856:
	push	_bbNullObject
	push	_399
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,_bbNullObject
_411:
_409:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-20],eax
	push	dword [ebp-20]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_2905
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_2910
	mov	eax,dword [ebp+8]
	push	_403
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2910:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,0
	jmp	_412
_414:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_412:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_414
_413:
	push	ebx
	push	esi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2921
	movzx	eax,byte [ebp-4]
_2921:
	cmp	eax,0
	je	_2923
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	push	_bbNullObject
	push	_407
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	push	dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	_4
	push	_bbNullObject
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,ebx
	push	_4
	push	_bbNullObject
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edi,eax
	mov	eax,dword [ebp-12]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	call	_bb_AddChild
	add	esp,8
	push	_bbNullObject
	push	_180
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_253
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	ebx
	push	esi
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+44]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+164]
	add	esp,8
_2923:
	mov	eax,dword [ebp+8]
	push	dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	mov	ebx,eax
	jmp	_2938
_2905:
	mov	eax,dword [ebp+8]
	push	_408
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2938:
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2941
	jmp	_409
_2941:
	jmp	_410
_410:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	_bbNullObject
	push	ebx
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_887
_2854:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_415
_417:
	mov	eax,edi
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_415
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp-24]
	push	dword [eax+12]
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2952
	mov	dword [ebp-36],_bbNullObject
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	edi,_bbNullObject
	jmp	_418
_420:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+100]
	add	esp,8
	mov	edi,eax
_418:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2957
	movzx	eax,byte [ebp-4]
_2957:
	cmp	eax,0
	je	_2959
	cmp	edi,_bbNullObject
	sete	al
	movzx	eax,al
_2959:
	cmp	eax,0
	jne	_420
_419:
	mov	esi,dword [ebp+8]
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	edx,dword [ebp-24]
	push	edi
	push	_bbNullObject
	push	_bbNullObject
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	push	edi
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+96]
	add	esp,12
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	je	_2966
	push	dword [ebx+12]
	push	_bbNullObject
	push	_130
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_2970
	push	eax
	call	_bbGCFree
	add	esp,4
_2970:
	mov	dword [ebx+12],esi
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_2971
	jmp	_887
_2971:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
_2966:
	cmp	edi,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2972
	cmp	ebx,_bbNullObject
	setne	al
	movzx	eax,al
_2972:
	cmp	eax,0
	je	_2974
	mov	eax,dword [ebx+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2974:
	cmp	eax,0
	je	_2976
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
_2976:
	mov	eax,dword [ebp+8]
	push	_98
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2978
	movzx	eax,byte [ebp-4]
_2978:
	cmp	eax,0
	je	_2980
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_2984
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_407
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	jmp	_2986
_2984:
	push	_bbNullObject
	push	_407
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
_2986:
	cmp	ebx,_bbNullObject
	je	_2987
	mov	eax,dword [ebp-36]
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_26
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	jmp	_2989
_2987:
	mov	ebx,dword [ebp-36]
	mov	eax,dword [ebp-24]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	_4
	push	_bbNullObject
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_2989:
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_183
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,dword [ebp-24]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	push	dword [eax+20]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	cmp	edi,_bbNullObject
	je	_2996
	mov	dword [eax+20],0
_2996:
	mov	edx,dword [ebp-28]
	push	dword [edx+12]
	mov	edx,dword [ebp-28]
	push	dword [edx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	ebx
	call	_bb_AddChild
	add	esp,8
	jmp	_2998
_2980:
	cmp	ebx,_bbNullObject
	je	_2999
	cmp	edi,_bbNullObject
	je	_3000
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	mov	esi,edi
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_421
_423:
	mov	eax,ebx
	push	_bah_libxml_TxmlNode
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_421
	mov	edx,dword [ebp-36]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+164]
	add	esp,8
_421:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_423
_422:
	jmp	_3008
_3000:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
_3008:
	jmp	_3009
_2999:
	mov	eax,dword [ebp-24]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
_3009:
_2998:
	mov	eax,dword [ebp-24]
	mov	edx,dword [eax+8]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	push	dword [eax+20]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	cmp	edi,_bbNullObject
	je	_3013
	mov	dword [ebx+20],0
_3013:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	edi
	push	dword [ebp-24]
	push	ebx
	push	dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_887
_2952:
_415:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_417
_416:
	mov	ebx,_bbNullObject
	jmp	_887
_887:
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ParseType:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3016
	push	_bbNullObject
	push	_424
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	edx,dword [ebp-36]
	mov	eax,dword [ebp+12]
	push	dword [eax+12]
	push	_4
	push	_bbNullObject
	push	_274
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [__bb_TCompiler_Templates]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_425
_427:
	mov	eax,edi
	push	_bb_TTypeTemplate
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_425
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3027
	mov	dword [ebp-16],esi
	jmp	_426
_3027:
_425:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_427
_426:
	cmp	dword [ebp-16],_bbNullObject
	jne	_3028
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_428
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	_bbNullObject
	push	_429
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_892
_3028:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	byte [ebp-4],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	mov	eax,dword [eax+20]
	cmp	eax,0
	je	_3042
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3042:
	cmp	eax,0
	je	_3044
	mov	eax,dword [ebp+8]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-24],eax
_3044:
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp+8]
	push	dword [eax+72]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+52]
	add	esp,8
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_430
_432:
	mov	eax,edi
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_430
	push	dword [ebp-12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3053
	mov	byte [ebp-4],1
	mov	dword [ebp-32],esi
	mov	eax,dword [ebp-32]
	push	dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-32]
	mov	eax,dword [eax+8]
	mov	dword [ebp-28],eax
	jmp	_431
_3053:
_430:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_432
_431:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,0
	jne	_3055
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+132]
	add	esp,4
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp+8]
	push	dword [eax+72]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+56]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-8],eax
	jmp	_433
_435:
	mov	eax,dword [ebp-8]
	push	_bb_TTypeMethod
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_433
	mov	eax,dword [eax+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_166
	push	dword [ebp-12]
	push	_165
	mov	eax,dword [ebp-16]
	push	dword [eax+20]
	push	_164
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_3070
	push	eax
	call	_bbGCFree
	add	esp,4
_3070:
	mov	eax,dword [ebp+8]
	mov	dword [eax+48],esi
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	push	dword [eax+12]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+84]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_3073
	mov	eax,dword [esi+12]
	mov	dword [ebp-20],eax
	mov	eax,dword [esi+8]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3075
	mov	ebx,esi
	jmp	_892
_3075:
	jmp	_434
_3073:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_3079
	push	eax
	call	_bbGCFree
	add	esp,4
_3079:
	mov	eax,dword [ebp+8]
	mov	dword [eax+48],ebx
_433:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_435
_434:
_3055:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_3080
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	push	_112
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	_436
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_3080:
	mov	eax,dword [ebp+8]
	push	_78
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3084
	mov	ebx,dword [ebp+8]
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp-24]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-28]
	push	dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	ebx,eax
	cmp	dword [ebx+16],_bbNullObject
	jne	_3088
	push	dword [ebp-36]
	push	dword [ebx+12]
	call	_bb_AddChild
	add	esp,8
	jmp	_892
_3088:
	mov	eax,dword [ebp-36]
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_276
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	esi,dword [ebp-36]
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3094
	push	eax
	call	_bbGCFree
	add	esp,4
_3094:
	mov	dword [ebx+12],esi
	jmp	_892
_3084:
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_276
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	dword [ebp-20]
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp-24]
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_892
_3016:
	mov	ebx,_bbNullObject
	jmp	_892
_892:
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ParseArray:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+8]
	call	_brl_linkedlist_CreateList
	mov	dword [ebp-8],eax
	mov	dword [ebp-4],0
_439:
	mov	eax,edi
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	0
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [esi+12]
	push	dword [esi+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_3109
	push	eax
	call	_bbGCFree
	add	esp,4
_3109:
	mov	dword [esi+12],ebx
	mov	eax,dword [ebp-8]
	push	dword [esi+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,edi
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	dword [ebp-4],1
_437:
	mov	eax,edi
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_439
_438:
	mov	eax,dword [ebp+12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3113
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+12]
	cmp	edx,dword [eax+20]
	setne	al
	movzx	eax,al
_3113:
	cmp	eax,0
	je	_3115
	mov	ebx,edi
	push	_112
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_441
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_440
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_3115:
	mov	eax,dword [ebp-8]
	jmp	_896
_896:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RegisterVariable:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	ebx,dword [edx+eax*4+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_442
_444:
	mov	eax,edi
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_442
	push	dword [esi+12]
	push	dword [ebp+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3123
	mov	ebx,dword [ebp+8]
	push	dword [esi+12]
	push	_445
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_901
_3123:
_442:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_444
_443:
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp+16]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,12
	mov	edx,dword [ebp+8]
	mov	ecx,dword [edx+20]
	mov	edx,dword [ebp+8]
	mov	edx,dword [edx+20]
	mov	edx,dword [edx+20]
	sub	edx,1
	mov	edx,dword [ecx+edx*4+24]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+16]
	cmp	dword [eax+20],0
	jne	_3129
	push	_bbNullObject
	push	_230
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	jmp	_3130
_3129:
	push	_bbNullObject
	push	_229
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
_3130:
	push	dword [ebp+12]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp+16]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	jmp	_901
_901:
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetVariable:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	add	eax,24
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	add	edx,dword [eax+16]
	mov	dword [ebp-12],edx
	jmp	_446
_448:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_446
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_449
_451:
	mov	eax,edi
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_449
	push	dword [ebp+12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3144
	mov	eax,esi
	jmp	_905
_3144:
_449:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_451
_450:
_446:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_448
_447:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_452
_454:
	mov	eax,edi
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_452
	push	dword [ebp+12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3151
	mov	eax,esi
	jmp	_905
_3151:
_452:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_454
_453:
	mov	eax,_bbNullObject
	jmp	_905
_905:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetVariablelist:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebx+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,4
	mov	edi,eax
	mov	eax,dword [ebx+20]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	add	eax,24
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	add	edx,dword [eax+16]
	mov	dword [ebp-12],edx
	jmp	_455
_457:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_455
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_458
_460:
	mov	eax,ebx
	push	_bb_TIdentifierVariable
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_458
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_458:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_460
_459:
_455:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_457
_456:
	mov	eax,edi
	jmp	_908
_908:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_IsToken:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-4],al
	jmp	_912
_912:
	movzx	eax,byte [ebp-4]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ValidDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+12]
	push	_121
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3167
	push	_120
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3167:
	cmp	eax,0
	jne	_3169
	push	_119
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3169:
	cmp	eax,0
	jne	_3171
	push	_123
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3171:
	cmp	eax,0
	jne	_3173
	push	_182
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3173:
	cmp	eax,0
	jne	_3175
	push	_181
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3175:
	cmp	eax,0
	jne	_3177
	push	_185
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3177:
	cmp	eax,0
	je	_3179
	mov	byte [ebp-4],1
	jmp	_916
_3179:
	mov	esi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_461
_463:
	mov	eax,ebx
	push	_bb_TDatatype
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_461
	push	edi
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3186
	mov	byte [ebp-4],1
	jmp	_916
_3186:
_461:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_463
_462:
	mov	byte [ebp-4],0
	jmp	_916
_916:
	movzx	eax,byte [ebp-4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Match:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	ebx
	push	dword [esi+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3187
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+128]
	add	esp,4
	jmp	_920
_3187:
	push	_465
	push	_77
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_464
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,8
_3189:
	mov	eax,_bbEmptyString
	jmp	_920
_920:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetNext:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	cmp	dword [ebx+52],_bbNullObject
	je	_3191
	mov	eax,dword [ebx+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_3196
	push	eax
	call	_bbGCFree
	add	esp,4
_3196:
	mov	dword [ebx+52],esi
	jmp	_3197
_3191:
	call	_bbEnd
_3197:
	cmp	dword [ebx+52],_bbNullObject
	jne	_3198
	push	_466
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	jmp	_3200
_3198:
	mov	eax,dword [ebx+52]
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3203
	mov	eax,_bbEmptyString
_3203:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3207
	push	eax
	call	_bbGCFree
	add	esp,4
_3207:
	mov	dword [ebx+48],esi
	push	_77
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3208
	add	dword [ebx+56],1
_3208:
_3200:
	mov	eax,dword [ebx+48]
	jmp	_923
_923:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetBefore:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	ebx,dword [ebp+8]
	cmp	dword [ebx+52],_bbNullObject
	je	_3209
	mov	eax,dword [ebx+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_3214
	push	eax
	call	_bbGCFree
	add	esp,4
_3214:
	mov	dword [ebx+52],esi
	jmp	_3215
_3209:
	call	_bbEnd
_3215:
	cmp	dword [ebx+52],_bbNullObject
	jne	_3216
	push	_467
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	jmp	_3218
_3216:
	mov	eax,dword [ebx+52]
	push	_bbStringClass
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3221
	mov	eax,_bbEmptyString
_3221:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3225
	push	eax
	call	_bbGCFree
	add	esp,4
_3225:
	mov	dword [ebx+48],esi
	push	_77
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3226
	sub	dword [ebx+56],1
_3226:
_3218:
	mov	eax,dword [ebx+48]
	jmp	_926
_926:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetCurrent:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	jmp	_929
_929:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Error:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	_471
	push	_465
	push	_77
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_470
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_469
	push	ebx
	push	_468
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	push	_77
	push	_79
	push	_92
	mov	edx,dword [esi+32]
	mov	eax,dword [esi+56]
	add	eax,1
	push	dword [edx+eax*4+24]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	_472
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	push	_473
	push	ebx
	call	_brl_stream_SaveString
	add	esp,8
	push	ebx
	call	_bbWriteStdout
	add	esp,4
	mov	byte [esi+68],1
	jmp	_474
_476:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_474:
	mov	eax,esi
	push	_77
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3229
	mov	eax,dword [esi+52]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_3229:
	cmp	eax,0
	jne	_476
_475:
	mov	eax,0
	jmp	_933
_933:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Warning:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	_471
	push	_465
	push	_77
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_470
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_469
	push	ebx
	push	_477
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	push	_77
	push	_79
	push	_92
	mov	edx,dword [esi+32]
	mov	eax,dword [esi+56]
	add	eax,1
	push	dword [edx+eax*4+24]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	_472
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	push	_473
	push	ebx
	call	_brl_stream_SaveString
	add	esp,8
	push	ebx
	call	_bbWriteStdout
	add	esp,4
	call	_bbEnd
	mov	eax,0
	jmp	_937
_937:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TRecursive
	mov	eax,_bbNullObject
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
	mov	eax,0
	jmp	_940
_940:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_943:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_3239
	push	eax
	call	_bbGCFree
	add	esp,4
_3239:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3241
	push	eax
	call	_bbGCFree
	add	esp,4
_3241:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3243
	push	eax
	call	_bbGCFree
	add	esp,4
_3243:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3245
	push	eax
	call	_bbGCFree
	add	esp,4
_3245:
	mov	eax,0
	jmp	_3237
_3237:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp+16]
	mov	edi,dword [ebp+20]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_3249
	push	eax
	call	_bbGCFree
	add	esp,4
_3249:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3253
	push	eax
	call	_bbGCFree
	add	esp,4
_3253:
	mov	dword [esi+16],ebx
	mov	ebx,dword [ebp+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_3257
	push	eax
	call	_bbGCFree
	add	esp,4
_3257:
	mov	dword [esi+12],ebx
	mov	ebx,dword [ebp+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_3261
	push	eax
	call	_bbGCFree
	add	esp,4
_3261:
	mov	dword [esi+20],ebx
	mov	eax,esi
	jmp	_950
_950:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_GetDatatype:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	jmp	_953
_953:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_GetNode:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	jmp	_956
_956:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TDatatype
	mov	byte [ebx+8],0
	mov	dword [ebx+12],0
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	dword [ebx+20],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	eax,0
	jmp	_959
_959:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_962:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_3266
	push	eax
	call	_bbGCFree
	add	esp,4
_3266:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3268
	push	eax
	call	_bbGCFree
	add	esp,4
_3268:
	mov	eax,0
	jmp	_3264
_3264:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Init:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	dec	dword [eax+4]
	jnz	_3272
	push	eax
	call	_bbGCFree
	add	esp,4
_3272:
	mov	dword [__bb_TDatatype_IntDatatype],ebx
	mov	ebx,_121
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3276
	push	eax
	call	_bbGCFree
	add	esp,4
_3276:
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	dword [eax+12],3
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	dec	dword [eax+4]
	jnz	_3280
	push	eax
	call	_bbGCFree
	add	esp,4
_3280:
	mov	dword [__bb_TDatatype_FloatDatatype],ebx
	mov	ebx,_119
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3284
	push	eax
	call	_bbGCFree
	add	esp,4
_3284:
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	dword [eax+12],4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	dec	dword [eax+4]
	jnz	_3288
	push	eax
	call	_bbGCFree
	add	esp,4
_3288:
	mov	dword [__bb_TDatatype_StringDatatype],ebx
	mov	ebx,_120
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3292
	push	eax
	call	_bbGCFree
	add	esp,4
_3292:
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	dword [eax+12],7
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	dec	dword [eax+4]
	jnz	_3296
	push	eax
	call	_bbGCFree
	add	esp,4
_3296:
	mov	dword [__bb_TDatatype_ByteDatatype],ebx
	mov	ebx,_123
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3300
	push	eax
	call	_bbGCFree
	add	esp,4
_3300:
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	dword [eax+12],1
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	dec	dword [eax+4]
	jnz	_3304
	push	eax
	call	_bbGCFree
	add	esp,4
_3304:
	mov	dword [__bb_TDatatype_LongDatatype],ebx
	mov	ebx,_182
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3308
	push	eax
	call	_bbGCFree
	add	esp,4
_3308:
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	dword [eax+12],5
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	dec	dword [eax+4]
	jnz	_3312
	push	eax
	call	_bbGCFree
	add	esp,4
_3312:
	mov	dword [__bb_TDatatype_DoubleDatatype],ebx
	mov	ebx,_185
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3316
	push	eax
	call	_bbGCFree
	add	esp,4
_3316:
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	dword [eax+12],6
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	dec	dword [eax+4]
	jnz	_3320
	push	eax
	call	_bbGCFree
	add	esp,4
_3320:
	mov	dword [__bb_TDatatype_ShortDatatype],ebx
	mov	ebx,_181
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3324
	push	eax
	call	_bbGCFree
	add	esp,4
_3324:
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	dword [eax+12],2
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	dec	dword [eax+4]
	jnz	_3328
	push	eax
	call	_bbGCFree
	add	esp,4
_3328:
	mov	dword [__bb_TDatatype_VoidDatatype],ebx
	mov	ebx,_478
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3332
	push	eax
	call	_bbGCFree
	add	esp,4
_3332:
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [eax+12],-1
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	dec	dword [eax+4]
	jnz	_3336
	push	eax
	call	_bbGCFree
	add	esp,4
_3336:
	mov	dword [__bb_TDatatype_NullDatatype],ebx
	mov	ebx,_187
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3340
	push	eax
	call	_bbGCFree
	add	esp,4
_3340:
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	dword [eax+16],ebx
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	dword [eax+12],10
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_NullDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ShortDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_FloatDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_StringDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_ByteDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_LongDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	eax,dword [eax+24]
	push	dword [__bb_TDatatype_IntDatatype]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_964
_964:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Create:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	push	dword [ebp+8]
	call	_bbStringToLower
	add	esp,4
	mov	dword [ebp+8],eax
	mov	ebx,dword [ebp+8]
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3387
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3388
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3389
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3390
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3391
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3392
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3393
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3394
	mov	ebx,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_479
_481:
	mov	eax,edi
	push	_bb_TDatatype
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_479
	push	dword [ebp+8]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3401
	mov	eax,esi
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3401:
_479:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_481
_480:
	cmp	dword [__bb_TCompiler_Current],_bbNullObject
	jne	_3403
	push	_482
	call	_brl_blitz_RuntimeError
	add	esp,4
_3403:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_112
	push	dword [ebp+8]
	push	_483
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	_bbEnd
	jmp	_3386
_3387:
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3388:
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3389:
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3390:
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3391:
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3392:
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3393:
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3394:
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_968
_3386:
	mov	eax,_bbNullObject
	jmp	_968
_968:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_CreateByNode:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	ebx,dword [ebp+8]
	push	_130
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	edi,eax
	push	0
	push	esi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	ebx,eax
	mov	dword [ebx+20],edi
	inc	dword [esi+4]
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3421
	push	eax
	call	_bbGCFree
	add	esp,4
_3421:
	mov	dword [ebx+16],esi
	mov	eax,ebx
	jmp	_971
_971:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Copy:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [esi+16]
	inc	dword [eax+4]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3426
	push	eax
	call	_bbGCFree
	add	esp,4
_3426:
	mov	eax,dword [ebp-4]
	mov	dword [ebx+16],eax
	mov	dword [ebx+20],edi
	mov	eax,dword [esi+12]
	mov	dword [ebx+12],eax
	mov	eax,dword [esi+24]
	inc	dword [eax+4]
	mov	edi,eax
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_3430
	push	eax
	call	_bbGCFree
	add	esp,4
_3430:
	mov	dword [ebx+24],edi
	movzx	eax,byte [esi+8]
	mov	eax,eax
	mov	byte [ebx+8],al
	mov	eax,ebx
	jmp	_975
_975:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Add2Node:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	esi,dword [ebp+8]
	mov	ebx,dword [ebp+12]
	push	dword [esi+16]
	push	_130
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,0
	jmp	_979
_979:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Cast:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	push	_187
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3433
	push	_187
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3433:
	cmp	eax,0
	je	_3435
	mov	eax,dword [ebp+12]
	movzx	eax,byte [eax+8]
	cmp	eax,0
	jne	_3436
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+8]
_3436:
	cmp	eax,0
	je	_3438
	mov	eax,_bbNullObject
	jmp	_983
_3438:
_3435:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebp+12]
	cmp	edx,dword [eax+20]
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3439
	push	_187
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3439:
	cmp	eax,0
	je	_3441
	push	_187
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3441:
	cmp	eax,0
	je	_3443
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_112
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_268
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_484
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_3443:
	push	_bbNullObject
	push	_485
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	_345
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	_486
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3448
	mov	eax,_bbNullObject
	jmp	_983
_3448:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_487
_489:
	mov	eax,edi
	push	_bb_TDatatype
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_487
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3455
	movzx	eax,byte [esi+8]
	cmp	eax,0
	jne	_3456
	mov	eax,dword [ebp+12]
	movzx	eax,byte [eax+8]
_3456:
	cmp	eax,0
	je	_3458
	mov	eax,dword [ebp-4]
	jmp	_983
_3458:
	mov	eax,dword [ebp-4]
	jmp	_983
_3455:
_487:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_489
_488:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	cmp	eax,0
	je	_3460
	push	_187
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3460:
	cmp	eax,0
	jne	_3464
	push	_187
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3462
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+20]
_3462:
_3464:
	cmp	eax,0
	je	_3466
	mov	eax,_bbNullObject
	jmp	_983
_3466:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_493
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_491
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	_492
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_491
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	_490
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	mov	eax,_bbNullObject
	jmp	_983
_983:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_CastNode:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	edx,dword [ebp+12]
	mov	ebx,dword [ebp+16]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_3470
	push	ebx
	push	esi
	call	_bb_AddChild
	add	esp,8
	mov	eax,esi
	jmp	_988
_3470:
	mov	eax,ebx
	jmp	_988
_988:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_ToString:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	_38
	push	dword [ebx+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_361
	push	dword [ebx+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_991
_991:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_GetArrayString:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	edx,dword [ebp+8]
	mov	eax,_bbEmptyString
	mov	esi,1
	mov	ebx,dword [edx+20]
	jmp	_3474
_496:
	push	_497
	push	eax
	call	_bbStringConcat
	add	esp,8
_494:
	add	esi,1
_3474:
	cmp	esi,ebx
	jle	_496
_495:
	jmp	_994
_994:
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_New:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
	push	ebx
	call	_bbObjectCtor
	add	esp,4
	mov	dword [ebx],_bb_TOperator
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+8],eax
	mov	eax,_bbEmptyString
	inc	dword [eax+4]
	mov	dword [ebx+12],eax
	mov	eax,_bbEmptyArray
	inc	dword [eax+4]
	mov	dword [ebx+16],eax
	mov	eax,0
	jmp	_997
_997:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_1000:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3481
	push	eax
	call	_bbGCFree
	add	esp,4
_3481:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3483
	push	eax
	call	_bbGCFree
	add	esp,4
_3483:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3485
	push	eax
	call	_bbGCFree
	add	esp,4
_3485:
	mov	eax,0
	jmp	_3479
_3479:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_AddDatatype:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+8]
	mov	edi,dword [ebp+12]
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+16]
	push	_537
	call	_bbArraySlice
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3489
	push	eax
	call	_bbGCFree
	add	esp,4
_3489:
	mov	dword [esi+16],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	edx,dword [esi+16]
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_3493
	push	eax
	call	_bbGCFree
	add	esp,4
_3493:
	mov	edx,dword [esi+16]
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	mov	eax,0
	jmp	_1004
_1004:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_CanMatch:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	edi,dword [ebp+16]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp-16]
	add	eax,24
	mov	dword [ebp-12],eax
	mov	edx,dword [ebp-12]
	mov	eax,dword [ebp-16]
	add	edx,dword [eax+16]
	mov	dword [ebp-20],edx
	jmp	_498
_500:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	add	dword [ebp-12],4
	cmp	edx,_bbNullObject
	je	_498
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3499
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	dword [ebp-8],eax
	jmp	_501
_503:
	mov	edx,dword [ebx]
	add	ebx,4
	cmp	edx,_bbNullObject
	je	_501
	cmp	edx,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3505
	cmp	edi,_bbNullObject
	setne	al
	movzx	eax,al
_3505:
	cmp	eax,0
	je	_3507
	push	dword [edi+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3507:
	cmp	eax,0
	je	_3509
	mov	byte [ebp-4],1
	jmp	_1009
_3509:
_501:
	cmp	ebx,dword [ebp-8]
	jne	_503
_502:
_3499:
_498:
	mov	eax,dword [ebp-20]
	cmp	dword [ebp-12],eax
	jne	_500
_499:
	mov	byte [ebp-4],0
	jmp	_1009
_1009:
	movzx	eax,byte [ebp-4]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_ParseDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	add	eax,24
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	add	edx,dword [eax+16]
	mov	dword [ebp-12],edx
	jmp	_504
_506:
	mov	eax,dword [ebp-4]
	mov	edx,dword [eax]
	add	dword [ebp-4],4
	cmp	edx,_bbNullObject
	je	_504
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3515
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_507
_509:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_507
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx+8]
	push	dword [edx+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3521
	mov	eax,dword [ebp+20]
	push	_4
	push	_bbNullObject
	push	_274
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	mov	eax,dword [ebp+20]
	push	_4
	push	_bbNullObject
	push	_276
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	edi,eax
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx+8]
	mov	edx,dword [edx+12]
	cmp	dword [eax+12],edx
	jle	_3527
	mov	ebx,dword [ebp+12]
	jmp	_3528
_3527:
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx+8]
	mov	edx,dword [edx+12]
	cmp	dword [eax+12],edx
	jge	_3529
	mov	ebx,dword [ebp+16]
	jmp	_3530
_3529:
	mov	ebx,dword [ebp+12]
_3530:
_3528:
	mov	eax,dword [ebx+8]
	mov	edx,dword [ebp+12]
	push	dword [edx+12]
	mov	edx,dword [ebp+12]
	push	dword [edx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	esi
	call	_bb_AddChild
	add	esp,8
	mov	edx,dword [ebx+8]
	mov	eax,dword [ebp+16]
	push	dword [eax+12]
	mov	eax,dword [ebp+16]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	edi
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebx+8]
	jmp	_1015
_3521:
_507:
	cmp	ebx,edi
	jne	_509
_508:
_3515:
_504:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_506
_505:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_269
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_268
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_511
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	push	_510
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	mov	eax,_bbNullObject
	jmp	_1015
_1015:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_Init:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	push	5
	push	_3534
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TOperator_Priority]
	dec	dword [eax+4]
	jnz	_3538
	push	eax
	call	_bbGCFree
	add	esp,4
_3538:
	mov	dword [__bb_TOperator_Priority],ebx
	mov	esi,0
	mov	eax,dword [__bb_TOperator_Priority]
	mov	edi,dword [eax+20]
	jmp	_3540
_514:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+esi*4+24]
	dec	dword [eax+4]
	jnz	_3545
	push	eax
	call	_bbGCFree
	add	esp,4
_3545:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	dword [eax+esi*4+24],ebx
_512:
	add	esi,1
_3540:
	cmp	esi,edi
	jl	_514
_513:
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_515
	push	_515
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_516
	push	_516
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_97
	push	_517
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_5
	push	_518
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_95
	push	_519
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_96
	push	_520
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,dword [__bb_TDatatype_NullDatatype]
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	push	eax
	push	_93
	push	_521
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,dword [__bb_TDatatype_NullDatatype]
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	push	eax
	push	_94
	push	_522
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_86
	push	_523
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,dword [__bb_TDatatype_StringDatatype]
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	push	eax
	push	_86
	push	_524
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_87
	push	_525
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_88
	push	_273
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_89
	push	_526
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_537
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,dword [__bb_TDatatype_IntDatatype]
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,dword [__bb_TDatatype_FloatDatatype]
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,dword [__bb_TDatatype_LongDatatype]
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,dword [__bb_TDatatype_ShortDatatype]
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,dword [__bb_TDatatype_ByteDatatype]
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,dword [__bb_TDatatype_DoubleDatatype]
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	push	eax
	push	_90
	push	_527
	push	4
	call	dword [_bb_TOperator+64]
	add	esp,16
	mov	eax,0
	jmp	_1017
_1017:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_NewOperator:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	push	edi
	mov	esi,dword [ebp+12]
	mov	edi,dword [ebp+16]
	push	_bb_TOperator
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,esi
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3651
	push	eax
	call	_bbGCFree
	add	esp,4
_3651:
	mov	dword [ebx+8],esi
	mov	esi,edi
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3655
	push	eax
	call	_bbGCFree
	add	esp,4
_3655:
	mov	dword [ebx+12],esi
	mov	esi,dword [ebp+20]
	inc	dword [esi+4]
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3659
	push	eax
	call	_bbGCFree
	add	esp,4
_3659:
	mov	dword [ebx+16],esi
	mov	edx,dword [__bb_TOperator_Priority]
	mov	eax,dword [ebp+8]
	mov	eax,dword [edx+eax*4+24]
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_1023
_1023:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_GetByName:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [__bb_TOperator_Priority]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp-8]
	add	eax,24
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp-8]
	add	edx,dword [eax+16]
	mov	dword [ebp-12],edx
	jmp	_528
_530:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_528
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_531
_533:
	mov	eax,edi
	push	_bb_TOperator
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_531
	push	dword [ebp+8]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3672
	mov	eax,esi
	jmp	_1026
_3672:
_531:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_533
_532:
_528:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_530
_529:
	mov	eax,_bbNullObject
	jmp	_1026
_1026:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_1033:
	dd	0
_535:
	db	"TIdentifier",0
_536:
	db	"Datatype",0
_537:
	db	":TDatatype",0
_538:
	db	"Name",0
_539:
	db	"$",0
_540:
	db	"New",0
_541:
	db	"()i",0
_542:
	db	"Delete",0
_543:
	db	"Create",0
_544:
	db	"($,:TDatatype):TIdentifier",0
_545:
	db	"ToNode",0
_546:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_534:
	dd	2
	dd	_535
	dd	3
	dd	_536
	dd	_537
	dd	8
	dd	3
	dd	_538
	dd	_539
	dd	12
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_543
	dd	_544
	dd	48
	dd	6
	dd	_545
	dd	_546
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_534
	dd	16
	dd	__bb_TIdentifier_New
	dd	__bb_TIdentifier_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
_548:
	db	"TIdentifierFunction",0
_549:
	db	"Gen",0
_550:
	db	"b",0
_551:
	db	"RealName",0
_552:
	db	"ParamList",0
_553:
	db	":brl.linkedlist.TList",0
_554:
	db	"UserFunc",0
_555:
	db	"Used",0
_556:
	db	"Childs",0
_557:
	db	"OWner",0
_558:
	db	":TTypeTemplate",0
_559:
	db	"Datatypes",0
_560:
	db	"use",0
_561:
	db	"()b",0
_562:
	db	"AddParameter",0
_563:
	db	"($,:TDatatype,$)i",0
_564:
	db	"GenName",0
_565:
	db	"Copy",0
_566:
	db	"():TIdentifierFunction",0
	align	4
_547:
	dd	2
	dd	_548
	dd	3
	dd	_549
	dd	_550
	dd	16
	dd	3
	dd	_551
	dd	_539
	dd	20
	dd	3
	dd	_552
	dd	_553
	dd	24
	dd	3
	dd	_554
	dd	_550
	dd	28
	dd	3
	dd	_555
	dd	_550
	dd	29
	dd	3
	dd	_556
	dd	_553
	dd	32
	dd	3
	dd	_557
	dd	_558
	dd	36
	dd	3
	dd	_559
	dd	_539
	dd	40
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_560
	dd	_561
	dd	56
	dd	6
	dd	_562
	dd	_563
	dd	60
	dd	6
	dd	_564
	dd	_541
	dd	64
	dd	6
	dd	_565
	dd	_566
	dd	68
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_547
	dd	44
	dd	__bb_TIdentifierFunction_New
	dd	__bb_TIdentifierFunction_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
	dd	__bb_TIdentifierFunction_use
	dd	__bb_TIdentifierFunction_AddParameter
	dd	__bb_TIdentifierFunction_GenName
	dd	__bb_TIdentifierFunction_Copy
_568:
	db	"TIdentifierVariable",0
_569:
	db	"Info",0
_570:
	db	":Object",0
	align	4
_567:
	dd	2
	dd	_568
	dd	3
	dd	_569
	dd	_570
	dd	16
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_567
	dd	20
	dd	__bb_TIdentifierVariable_New
	dd	__bb_TIdentifierVariable_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
_572:
	db	"TTypeField",0
_573:
	db	"ISPRIVATE",0
	align	4
_574:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_575:
	db	"ISPROTECTED",0
	align	4
_576:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	50
_577:
	db	"ISPUBLIC",0
	align	4
_578:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	51
_579:
	db	"Mode",0
_580:
	db	"i",0
_581:
	db	"Create2",0
_582:
	db	"($,:TDatatype,i):TIdentifier",0
	align	4
_571:
	dd	2
	dd	_572
	dd	1
	dd	_573
	dd	_550
	dd	_574
	dd	1
	dd	_575
	dd	_550
	dd	_576
	dd	1
	dd	_577
	dd	_550
	dd	_578
	dd	3
	dd	_579
	dd	_580
	dd	20
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_581
	dd	_582
	dd	56
	dd	0
	align	4
_bb_TTypeField:
	dd	_bb_TIdentifierVariable
	dd	_bbObjectFree
	dd	_571
	dd	24
	dd	__bb_TTypeField_New
	dd	__bb_TTypeField_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
	dd	__bb_TTypeField_Create2
_584:
	db	"TTypeMethod",0
_585:
	db	"ISNORMAL",0
	align	4
_586:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_587:
	db	"ISOVERRIDE",0
_588:
	db	"ISVIRTUAL",0
_589:
	db	"ISABSTRACT",0
_590:
	db	"ISFINAL",0
	align	4
_591:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	52
_592:
	db	"ISSTATIC",0
	align	4
_593:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	53
_594:
	db	"State",0
_595:
	db	"Func",0
_596:
	db	":TIdentifierFunction",0
_597:
	db	"From",0
_598:
	db	"VirtualID",0
_599:
	db	"OldName",0
_600:
	db	"($,:TTypeTemplate,b,b,i,$):TTypeMethod",0
	align	4
_583:
	dd	2
	dd	_584
	dd	1
	dd	_585
	dd	_550
	dd	_586
	dd	1
	dd	_587
	dd	_550
	dd	_574
	dd	1
	dd	_588
	dd	_550
	dd	_576
	dd	1
	dd	_589
	dd	_550
	dd	_578
	dd	1
	dd	_590
	dd	_550
	dd	_591
	dd	1
	dd	_592
	dd	_550
	dd	_593
	dd	1
	dd	_573
	dd	_550
	dd	_574
	dd	1
	dd	_575
	dd	_550
	dd	_576
	dd	1
	dd	_577
	dd	_550
	dd	_578
	dd	3
	dd	_579
	dd	_580
	dd	8
	dd	3
	dd	_594
	dd	_550
	dd	12
	dd	3
	dd	_595
	dd	_596
	dd	16
	dd	3
	dd	_538
	dd	_539
	dd	20
	dd	3
	dd	_597
	dd	_558
	dd	24
	dd	3
	dd	_598
	dd	_580
	dd	28
	dd	3
	dd	_599
	dd	_539
	dd	32
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_543
	dd	_600
	dd	48
	dd	0
	align	4
_bb_TTypeMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_583
	dd	36
	dd	__bb_TTypeMethod_New
	dd	__bb_TTypeMethod_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TTypeMethod_Create
	align	4
__bb_TTypeTemplate_ObjectTemplate:
	dd	_bbNullObject
_602:
	db	"TTypeTemplate",0
_603:
	db	"Fields",0
_604:
	db	"Methods",0
_605:
	db	"SuperType",0
_606:
	db	"LastID",0
_607:
	db	"Init",0
_608:
	db	"GetFields",0
_609:
	db	"(i):brl.linkedlist.TList",0
_610:
	db	"GetMethods",0
_611:
	db	"AddField",0
_612:
	db	"($,:TDatatype,:bah.libxml.TxmlNode,i)i",0
_613:
	db	"AddMethod",0
_614:
	db	"($,b,i,$)i",0
_615:
	db	"():bah.libxml.TxmlNode",0
	align	4
_601:
	dd	2
	dd	_602
	dd	3
	dd	_579
	dd	_580
	dd	8
	dd	3
	dd	_603
	dd	_553
	dd	12
	dd	3
	dd	_604
	dd	_553
	dd	16
	dd	3
	dd	_538
	dd	_539
	dd	20
	dd	3
	dd	_605
	dd	_558
	dd	24
	dd	3
	dd	_536
	dd	_537
	dd	28
	dd	3
	dd	_606
	dd	_580
	dd	32
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	7
	dd	_607
	dd	_541
	dd	48
	dd	6
	dd	_608
	dd	_609
	dd	52
	dd	6
	dd	_610
	dd	_609
	dd	56
	dd	6
	dd	_611
	dd	_612
	dd	60
	dd	6
	dd	_613
	dd	_614
	dd	64
	dd	6
	dd	_545
	dd	_615
	dd	68
	dd	0
	align	4
_bb_TTypeTemplate:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_601
	dd	36
	dd	__bb_TTypeTemplate_New
	dd	__bb_TTypeTemplate_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TTypeTemplate_Init
	dd	__bb_TTypeTemplate_GetFields
	dd	__bb_TTypeTemplate_GetMethods
	dd	__bb_TTypeTemplate_AddField
	dd	__bb_TTypeTemplate_AddMethod
	dd	__bb_TTypeTemplate_ToNode
_617:
	db	"TParameter",0
_618:
	db	"Pre",0
_619:
	db	"Node",0
_620:
	db	":bah.libxml.TxmlNode",0
_621:
	db	"($,:TDatatype,$):TParameter",0
	align	4
_616:
	dd	2
	dd	_617
	dd	3
	dd	_538
	dd	_539
	dd	8
	dd	3
	dd	_536
	dd	_537
	dd	12
	dd	3
	dd	_618
	dd	_539
	dd	16
	dd	3
	dd	_619
	dd	_620
	dd	20
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_543
	dd	_621
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_616
	dd	24
	dd	__bb_TParameter_New
	dd	__bb_TParameter_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TParameter_Create
	align	4
__bb_TCompiler_Current:
	dd	_bbNullObject
	align	4
_1029:
	dd	0
	align	4
__bb_TCompiler_Templates:
	dd	_bbNullObject
_623:
	db	"TCompiler",0
_624:
	db	"Token",0
_625:
	db	"GlobalVarIdentifier",0
_626:
	db	"FunctionIdentifier",0
_627:
	db	"LocalVarIdentifier",0
_628:
	db	"[]:brl.linkedlist.TList",0
_629:
	db	"CurrentMode",0
_630:
	db	"CurrentType",0
_631:
	db	"Lines",0
_632:
	db	"[]$",0
_633:
	db	"XMLFile",0
_634:
	db	":bah.libxml.TxmlDoc",0
_635:
	db	"CurrentRoot",0
_636:
	db	"CurrentLineNode",0
_637:
	db	"CurrentToken",0
_638:
	db	"CurrentLink",0
_639:
	db	":brl.linkedlist.TLink",0
_640:
	db	"CurrentLine",0
_641:
	db	"LastFunc",0
_642:
	db	"FUnctionDatatype",0
_643:
	db	"AnyError",0
_644:
	db	"ScopeMode",0
_645:
	db	"LoadFunction",0
_646:
	db	"($)i",0
_647:
	db	"LoadHeaders",0
_648:
	db	"Tokenizer",0
_649:
	db	"Analyser",0
_650:
	db	"Parser",0
_651:
	db	"(b)i",0
_652:
	db	"InternBlock",0
_653:
	db	"(:bah.libxml.TxmlNode)i",0
_654:
	db	"Block",0
_655:
	db	"Expression",0
_656:
	db	"(i):TRecursive",0
_657:
	db	"Factor",0
_658:
	db	"():TRecursive",0
_659:
	db	"Funk",0
_660:
	db	"(:bah.libxml.TxmlNode):TRecursive",0
_661:
	db	"Keyword",0
_662:
	db	"Variable",0
_663:
	db	"(b):TRecursive",0
_664:
	db	"ParseType",0
_665:
	db	"(:TRecursive,:brl.linkedlist.TList):TRecursive",0
_666:
	db	"ParseArray",0
_667:
	db	"(:TDatatype):brl.linkedlist.TList",0
_668:
	db	"RegisterVariable",0
_669:
	db	"($,:TDatatype):bah.libxml.TxmlNode",0
_670:
	db	"GetVariable",0
_671:
	db	"($):TIdentifierVariable",0
_672:
	db	"GetVariablelist",0
_673:
	db	"():brl.linkedlist.TList",0
_674:
	db	"IsToken",0
_675:
	db	"($)b",0
_676:
	db	"ValidDatatype",0
_677:
	db	"Match",0
_678:
	db	"($)$",0
_679:
	db	"GetNext",0
_680:
	db	"()$",0
_681:
	db	"GetBefore",0
_682:
	db	"GetCurrent",0
_683:
	db	"Error",0
_684:
	db	"Warning",0
	align	4
_622:
	dd	2
	dd	_623
	dd	3
	dd	_624
	dd	_553
	dd	8
	dd	3
	dd	_625
	dd	_553
	dd	12
	dd	3
	dd	_626
	dd	_553
	dd	16
	dd	3
	dd	_627
	dd	_628
	dd	20
	dd	3
	dd	_629
	dd	_580
	dd	24
	dd	3
	dd	_630
	dd	_539
	dd	28
	dd	3
	dd	_631
	dd	_632
	dd	32
	dd	3
	dd	_633
	dd	_634
	dd	36
	dd	3
	dd	_635
	dd	_620
	dd	40
	dd	3
	dd	_636
	dd	_620
	dd	44
	dd	3
	dd	_637
	dd	_539
	dd	48
	dd	3
	dd	_638
	dd	_639
	dd	52
	dd	3
	dd	_640
	dd	_580
	dd	56
	dd	3
	dd	_641
	dd	_620
	dd	60
	dd	3
	dd	_642
	dd	_537
	dd	64
	dd	3
	dd	_643
	dd	_550
	dd	68
	dd	3
	dd	_644
	dd	_580
	dd	72
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_645
	dd	_646
	dd	48
	dd	6
	dd	_647
	dd	_646
	dd	52
	dd	6
	dd	_648
	dd	_646
	dd	56
	dd	6
	dd	_649
	dd	_541
	dd	60
	dd	6
	dd	_650
	dd	_651
	dd	64
	dd	6
	dd	_652
	dd	_653
	dd	68
	dd	6
	dd	_654
	dd	_541
	dd	72
	dd	6
	dd	_655
	dd	_656
	dd	76
	dd	6
	dd	_657
	dd	_658
	dd	80
	dd	6
	dd	_659
	dd	_660
	dd	84
	dd	6
	dd	_661
	dd	_658
	dd	88
	dd	6
	dd	_662
	dd	_663
	dd	92
	dd	6
	dd	_664
	dd	_665
	dd	96
	dd	6
	dd	_666
	dd	_667
	dd	100
	dd	6
	dd	_668
	dd	_669
	dd	104
	dd	6
	dd	_670
	dd	_671
	dd	108
	dd	6
	dd	_672
	dd	_673
	dd	112
	dd	6
	dd	_674
	dd	_675
	dd	116
	dd	6
	dd	_676
	dd	_675
	dd	120
	dd	6
	dd	_677
	dd	_678
	dd	124
	dd	6
	dd	_679
	dd	_680
	dd	128
	dd	6
	dd	_681
	dd	_680
	dd	132
	dd	6
	dd	_682
	dd	_680
	dd	136
	dd	6
	dd	_683
	dd	_646
	dd	140
	dd	6
	dd	_684
	dd	_646
	dd	144
	dd	0
	align	4
_bb_TCompiler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_622
	dd	76
	dd	__bb_TCompiler_New
	dd	__bb_TCompiler_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TCompiler_LoadFunction
	dd	__bb_TCompiler_LoadHeaders
	dd	__bb_TCompiler_Tokenizer
	dd	__bb_TCompiler_Analyser
	dd	__bb_TCompiler_Parser
	dd	__bb_TCompiler_InternBlock
	dd	__bb_TCompiler_Block
	dd	__bb_TCompiler_Expression
	dd	__bb_TCompiler_Factor
	dd	__bb_TCompiler_Funk
	dd	__bb_TCompiler_Keyword
	dd	__bb_TCompiler_Variable
	dd	__bb_TCompiler_ParseType
	dd	__bb_TCompiler_ParseArray
	dd	__bb_TCompiler_RegisterVariable
	dd	__bb_TCompiler_GetVariable
	dd	__bb_TCompiler_GetVariablelist
	dd	__bb_TCompiler_IsToken
	dd	__bb_TCompiler_ValidDatatype
	dd	__bb_TCompiler_Match
	dd	__bb_TCompiler_GetNext
	dd	__bb_TCompiler_GetBefore
	dd	__bb_TCompiler_GetCurrent
	dd	__bb_TCompiler_Error
	dd	__bb_TCompiler_Warning
_686:
	db	"TRecursive",0
_687:
	db	"Positions",0
_688:
	db	"(:bah.libxml.TxmlNode,:TDatatype,:Object,:brl.linkedlist.TList):TRecursive",0
_689:
	db	"GetDatatype",0
_690:
	db	"():TDatatype",0
_691:
	db	"GetNode",0
	align	4
_685:
	dd	2
	dd	_686
	dd	3
	dd	_536
	dd	_537
	dd	8
	dd	3
	dd	_619
	dd	_620
	dd	12
	dd	3
	dd	_569
	dd	_570
	dd	16
	dd	3
	dd	_687
	dd	_570
	dd	20
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_543
	dd	_688
	dd	48
	dd	6
	dd	_689
	dd	_690
	dd	52
	dd	6
	dd	_691
	dd	_615
	dd	56
	dd	0
	align	4
_bb_TRecursive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_685
	dd	24
	dd	__bb_TRecursive_New
	dd	__bb_TRecursive_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TRecursive_Create
	dd	__bb_TRecursive_GetDatatype
	dd	__bb_TRecursive_GetNode
	align	4
__bb_TDatatype_IntDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_FloatDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_StringDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_ByteDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_LongDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_DoubleDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_ShortDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_VoidDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_NullDatatype:
	dd	_bbNullObject
	align	4
__bb_TDatatype_UserDefinedDatatypes:
	dd	_bbNullObject
_693:
	db	"TDatatype",0
_694:
	db	"IsNotPrimitive",0
_695:
	db	"Prio",0
_696:
	db	"IsArray",0
_697:
	db	"CanCastTo",0
_698:
	db	"($,i):TDatatype",0
_699:
	db	"CreateByNode",0
_700:
	db	"(:bah.libxml.TxmlNode):TDatatype",0
_701:
	db	"(i):TDatatype",0
_702:
	db	"Add2Node",0
_703:
	db	"Cast",0
_704:
	db	"(:TDatatype):bah.libxml.TxmlNode",0
_705:
	db	"CastNode",0
_706:
	db	"(:TDatatype,:bah.libxml.TxmlNode):bah.libxml.TxmlNode",0
_707:
	db	"ToString",0
_708:
	db	"GetArrayString",0
	align	4
_692:
	dd	2
	dd	_693
	dd	3
	dd	_694
	dd	_550
	dd	8
	dd	3
	dd	_695
	dd	_580
	dd	12
	dd	3
	dd	_538
	dd	_539
	dd	16
	dd	3
	dd	_696
	dd	_580
	dd	20
	dd	3
	dd	_697
	dd	_553
	dd	24
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	7
	dd	_607
	dd	_541
	dd	48
	dd	7
	dd	_543
	dd	_698
	dd	52
	dd	7
	dd	_699
	dd	_700
	dd	56
	dd	6
	dd	_565
	dd	_701
	dd	60
	dd	6
	dd	_702
	dd	_653
	dd	64
	dd	6
	dd	_703
	dd	_704
	dd	68
	dd	6
	dd	_705
	dd	_706
	dd	72
	dd	6
	dd	_707
	dd	_680
	dd	24
	dd	6
	dd	_708
	dd	_680
	dd	76
	dd	0
	align	4
_bb_TDatatype:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_692
	dd	28
	dd	__bb_TDatatype_New
	dd	__bb_TDatatype_Delete
	dd	__bb_TDatatype_ToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TDatatype_Init
	dd	__bb_TDatatype_Create
	dd	__bb_TDatatype_CreateByNode
	dd	__bb_TDatatype_Copy
	dd	__bb_TDatatype_Add2Node
	dd	__bb_TDatatype_Cast
	dd	__bb_TDatatype_CastNode
	dd	__bb_TDatatype_GetArrayString
	align	4
__bb_TOperator_Priority:
	dd	_bbEmptyArray
_710:
	db	"TOperator",0
_711:
	db	"Operator",0
_712:
	db	"[]:TDatatype",0
_713:
	db	"AddDatatype",0
_714:
	db	"(:TDatatype)i",0
_715:
	db	"CanMatch",0
_716:
	db	"(:TDatatype,:TDatatype)b",0
_717:
	db	"ParseDatatype",0
_718:
	db	"(:TRecursive,:TRecursive,:bah.libxml.TxmlNode):TDatatype",0
_719:
	db	"NewOperator",0
_720:
	db	"(i,$,$,[]:TDatatype)i",0
_721:
	db	"GetByName",0
_722:
	db	"($):TOperator",0
	align	4
_709:
	dd	2
	dd	_710
	dd	3
	dd	_538
	dd	_539
	dd	8
	dd	3
	dd	_711
	dd	_539
	dd	12
	dd	3
	dd	_536
	dd	_712
	dd	16
	dd	6
	dd	_540
	dd	_541
	dd	16
	dd	6
	dd	_542
	dd	_541
	dd	20
	dd	6
	dd	_713
	dd	_714
	dd	48
	dd	6
	dd	_715
	dd	_716
	dd	52
	dd	6
	dd	_717
	dd	_718
	dd	56
	dd	7
	dd	_607
	dd	_541
	dd	60
	dd	7
	dd	_719
	dd	_720
	dd	64
	dd	7
	dd	_721
	dd	_722
	dd	68
	dd	0
	align	4
_bb_TOperator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_709
	dd	20
	dd	__bb_TOperator_New
	dd	__bb_TOperator_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TOperator_AddDatatype
	dd	__bb_TOperator_CanMatch
	dd	__bb_TOperator_ParseDatatype
	dd	__bb_TOperator_Init
	dd	__bb_TOperator_NewOperator
	dd	__bb_TOperator_GetByName
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	102,105,101,108,100,99,111,117,110,116
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	109,101,116,104,111,100,99,111,117,110,116
_1336:
	db	":brl.linkedlist.TList",0
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,114,101
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_78:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_79:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	9
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	60
	align	4
_5:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	62
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	37
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	35
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	36
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	114,101,109
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,110,100,114,101,109
	align	4
_110:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	47,47
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	39
	align	4
_1464:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_119:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,111,97,116
	align	4
_120:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
_121:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	33
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	98,121,116,101
	align	4
_130:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_134:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_147:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,120,116,101,110,100,115
	align	4
_155:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	112,114,105,118,97,116,101
	align	4
_156:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,117,98,108,105,99
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	112,114,111,116,101,99,116,101,100
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,105,114,116,117,97,108
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	111,118,101,114,114,105,100,101
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,98,115,116,114,97,99,116
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,110,97,108
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,97,116,105,99
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,95
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,95,95
	align	4
_176:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_180:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,48
	align	4
_154:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,110,100,116,121,112,101
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_219:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,46,48
	align	4
_220:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	67,80,66
	align	4
_222:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,50
	align	4
_221:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,101,114,115,105,111,110
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_234:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_238:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_239:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	69,114,114,111,114,33
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,117,109,98,101,114
	align	4
_243:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,110,100,105,102
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,108,115,101,105,102
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,120,116
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	119,101,110,100
	align	4
_248:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	117,110,116,105,108
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	101,110,100,102,117,110,99,116,105,111,110
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,110,100,115,101,108,101,99,116
	align	4
_269:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,93
	align	4
_268:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	39,44,32,39
	align	4
_267:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	39,32,119,105,116,104,32,100,97,116,97,116,121,112,101,115
	dw	32,91,39
	align	4
_266:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,79,112,101,114
	dw	97,116,111,114,32,39
	align	4
_270:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,114,117,101
	align	4
_271:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,97,108,115,101
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,111,116
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	85,110,107,110,111,119,110,32,84,111,107,101,110
	align	4
_347:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,95,100,105,109,95,48,95
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	54
	dw	77,121,70,117,110,99,116,105,111,110,40,44,44,41,32,100
	dw	111,101,115,32,110,111,116,32,119,111,114,107,44,32,97,110
	dw	100,32,105,115,32,110,111,116,32,103,111,105,110,103,32,116
	dw	111,32,119,111,114,107
	align	4
_298:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_299:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	45,45,45,45,45,45,45
	align	4
_303:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,105,110,100
	align	4
_321:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	39,32,103,105,118,101,110,58,32,39
	align	4
_320:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,32,101,120,112,101,99,116,101,100,58,32,39
	align	4
_319:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	80,97,114,97,109,101,116,101,114,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,97,116,32,70,117,110,99
	dw	116,105,111,110,58,32,39
	align	4
_328:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,44,39
	align	4
_332:
	dd	_bbStringClass
	dd	2147483647
	dd	97
	dw	67,97,110,110,111,116,32,102,105,110,100,32,101,120,112,108
	dw	105,99,105,116,32,102,117,110,99,116,105,111,110,44,32,119
	dw	105,116,104,32,116,104,105,115,32,83,105,103,110,97,116,117
	dw	114,101,32,97,110,100,32,116,104,101,114,101,114,32,97,114
	dw	101,32,109,111,114,101,32,116,104,97,110,32,111,110,101,32
	dw	105,109,112,108,101,109,101,110,116,97,116,105,111,110,115,58
	dw	32
	align	4
_333:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_371:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_373:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_393:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_334:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_335:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,101,110
	align	4
_342:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_344:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_346:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,117,115,116,32,98,101,32,105,110,32,97,32,108,111,111
	dw	112
_2598:
	db	":brl.linkedlist.TList",0
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,118,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_361:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	95,95,100,105,109,95
	align	4
_372:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	82,101,116,117,114,110,32,109,117,115,116,32,98,101,32,105
	dw	110,32,97,32,70,117,110,99,116,105,111,110
_2715:
	db	":bah.libxml.TxmlNode",0
	align	4
_380:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	116,109,112
	align	4
_394:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,107,110,111,119,110,32,84,121,112,101,32,39
	align	4
_398:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_399:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_403:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	85,110,107,110,111,119,110,32,68,97,116,97,116,121,112,101
	align	4
_407:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,86,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_424:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_428:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	84,121,112,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116,58,32
	align	4
_429:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	117,110,107,110,111,119,110
	align	4
_436:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,111,117,108,100,110,39,116,32,102,105,110,100,32,109,101
	dw	109,98,101,114,32,39
	align	4
_441:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	39,44,32,101,120,112,101,99,116,105,110,103,32,39
	align	4
_440:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	85,110,97,108,108,111,119,101,100,32,100,105,109,101,110,115
	dw	105,111,110,32,99,111,117,110,116,32,39
	align	4
_445:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	86,97,114,105,97,98,108,101,32,97,108,114,101,97,100,121
	dw	32,100,101,102,105,110,101,100,58,32
	align	4
_465:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_464:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	85,110,101,120,112,101,99,116,101,100,32,84,111,107,101,110
	dw	44,32,101,120,112,101,99,116,105,110,103,58,32
	align	4
_466:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	85,110,101,120,112,101,99,116,101,100,32,69,110,100,32,111
	dw	102,32,70,105,108,101
	align	4
_467:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	85,110,101,120,112,101,99,116,101,100,32,66,101,103,105,110
	dw	32,111,102,32,70,105,108,101
	align	4
_471:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	39,32,45,45,45,10
	align	4
_470:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,44,32,97,116,32,84,111,107,101,110,32,39
	align	4
_469:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,105,110,32,108,105,110,101,32,39
	align	4
_468:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,45,45,32,69,114,114,111,114,58,32
	align	4
_472:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	9,32,108,105,110,101,58,32,32
	align	4
_473:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_477:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	45,45,45,32,87,97,114,110,105,110,103,58,32
	align	4
_478:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_482:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	73,110,116,101,114,110,97,108,32,101,114,114,111,114
	align	4
_483:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,68,97,116,97
	dw	116,121,112,101,32,39
	align	4
_484:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	68,105,109,101,110,115,105,111,110,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,39
	align	4
_485:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_486:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_493:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,41
	align	4
_491:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	39,32,40,100,105,109,101,110,115,105,111,110,115,58,32,39
	align	4
_492:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	39,41,32,116,111,32,39
	align	4
_490:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,110,110,111,116,32,99,97,115,116,32,39
	align	4
_497:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
	align	4
_511:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	39,32,100,97,116,97,116,121,112,101,115,32,109,105,115,109
	dw	97,116,99,104,32,91,39
	align	4
_510:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,112,101,114,97,116,111,114,32,39
_3534:
	db	":brl.linkedlist.TList",0
	align	4
_515:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_516:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_517:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_518:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_519:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_520:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_521:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_522:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_523:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_524:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_525:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_526:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_527:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,111,119
