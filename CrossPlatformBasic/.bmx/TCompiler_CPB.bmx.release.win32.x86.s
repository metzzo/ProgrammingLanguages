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
	extrn	_brl_map_CreateMap
	extrn	_brl_standardio_Print
	extrn	_brl_stream_SaveString
	public	___bb_crossplatformbasic_tcompiler_cpb
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
___bb_crossplatformbasic_tcompiler_cpb:
	push	ebp
	mov	ebp,esp
	cmp	dword [_1042],0
	je	_1043
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_1043:
	mov	dword [_1042],1
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
	mov	eax,dword [_1038]
	and	eax,1
	cmp	eax,0
	jne	_1039
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TCompiler_Templates],eax
	or	dword [_1038],1
_1039:
	push	_bb_TCompiler
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,dword [_1038]
	and	eax,2
	cmp	eax,0
	jne	_1041
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TDatatype_UserDefinedDatatypes],eax
	or	dword [_1038],2
_1041:
	push	_bb_TDatatype
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectRegisterType
	add	esp,4
	mov	eax,0
	jmp	_731
_731:
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
	jmp	_734
_734:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_737:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1048
	push	eax
	call	_bbGCFree
	add	esp,4
_1048:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1050
	push	eax
	call	_bbGCFree
	add	esp,4
_1050:
	mov	eax,0
	jmp	_1046
_1046:
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
	jnz	_1054
	push	eax
	call	_bbGCFree
	add	esp,4
_1054:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1058
	push	eax
	call	_bbGCFree
	add	esp,4
_1058:
	mov	dword [esi+12],ebx
	mov	eax,esi
	jmp	_742
_742:
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
	je	_1059
	cmp	esi,_bbNullObject
	setne	al
	movzx	eax,al
_1059:
	cmp	eax,0
	je	_1061
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
	je	_1084
	mov	ebx,_bbNullObject
	jmp	_746
_1084:
	mov	ebx,dword [ebp-12]
	jmp	_746
_1061:
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
	jmp	_746
_746:
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
	jmp	_749
_749:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_752:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1095
	push	eax
	call	_bbGCFree
	add	esp,4
_1095:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1097
	push	eax
	call	_bbGCFree
	add	esp,4
_1097:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1099
	push	eax
	call	_bbGCFree
	add	esp,4
_1099:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1101
	push	eax
	call	_bbGCFree
	add	esp,4
_1101:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1103
	push	eax
	call	_bbGCFree
	add	esp,4
_1103:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1093
_1093:
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
	jmp	_755
_755:
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
	jmp	_761
_761:
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
	jne	_1107
	mov	byte [edi+16],1
	mov	ebx,dword [edi+12]
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_1111
	push	eax
	call	_bbGCFree
	add	esp,4
_1111:
	mov	dword [edi+20],ebx
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [edi+40]
	dec	dword [eax+4]
	jnz	_1115
	push	eax
	call	_bbGCFree
	add	esp,4
_1115:
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
	jnz	_1126
	push	eax
	call	_bbGCFree
	add	esp,4
_1126:
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
	jnz	_1131
	push	eax
	call	_bbGCFree
	add	esp,4
_1131:
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
_1107:
	mov	eax,0
	jmp	_764
_764:
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
	jnz	_1138
	push	eax
	call	_bbGCFree
	add	esp,4
_1138:
	mov	dword [ebx+24],edi
	movzx	eax,byte [esi+28]
	mov	eax,eax
	mov	byte [ebx+28],al
	mov	eax,ebx
	jmp	_767
_767:
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
	jmp	_770
_770:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_773:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1142
	push	eax
	call	_bbGCFree
	add	esp,4
_1142:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1140
_1140:
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
	jmp	_776
_776:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_779:
	mov	dword [eax],_bb_TIdentifierVariable
	push	eax
	call	__bb_TIdentifierVariable_Delete
	add	esp,4
	mov	eax,0
	jmp	_1143
_1143:
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
	jnz	_1147
	push	eax
	call	_bbGCFree
	add	esp,4
_1147:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1151
	push	eax
	call	_bbGCFree
	add	esp,4
_1151:
	mov	dword [esi+12],ebx
	mov	eax,dword [ebp+20]
	mov	dword [esi+20],eax
	mov	eax,esi
	jmp	_785
_785:
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
	jmp	_788
_788:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_791:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1158
	push	eax
	call	_bbGCFree
	add	esp,4
_1158:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1160
	push	eax
	call	_bbGCFree
	add	esp,4
_1160:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1162
	push	eax
	call	_bbGCFree
	add	esp,4
_1162:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1164
	push	eax
	call	_bbGCFree
	add	esp,4
_1164:
	mov	eax,0
	jmp	_1156
_1156:
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
	jnz	_1168
	push	eax
	call	_bbGCFree
	add	esp,4
_1168:
	mov	dword [esi+20],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1172
	push	eax
	call	_bbGCFree
	add	esp,4
_1172:
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
	jnz	_1176
	push	eax
	call	_bbGCFree
	add	esp,4
_1176:
	mov	dword [esi+32],ebx
	mov	eax,esi
	jmp	_800
_800:
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
	call	_brl_map_CreateMap
	inc	dword [eax+4]
	mov	dword [esi+36],eax
	cmp	dword [esi+24],esi
	jne	_1183
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1187
	push	eax
	call	_bbGCFree
	add	esp,4
_1187:
	mov	dword [esi+24],ebx
_1183:
	mov	eax,0
	jmp	_803
_803:
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
_806:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1190
	push	eax
	call	_bbGCFree
	add	esp,4
_1190:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1192
	push	eax
	call	_bbGCFree
	add	esp,4
_1192:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1194
	push	eax
	call	_bbGCFree
	add	esp,4
_1194:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1196
	push	eax
	call	_bbGCFree
	add	esp,4
_1196:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1198
	push	eax
	call	_bbGCFree
	add	esp,4
_1198:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1200
	push	eax
	call	_bbGCFree
	add	esp,4
_1200:
	mov	eax,0
	jmp	_1188
_1188:
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
	jnz	_1204
	push	eax
	call	_bbGCFree
	add	esp,4
_1204:
	mov	dword [__bb_TTypeTemplate_ObjectTemplate],ebx
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_1208
	push	eax
	call	_bbGCFree
	add	esp,4
_1208:
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
	jnz	_1212
	push	eax
	call	_bbGCFree
	add	esp,4
_1212:
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	dword [eax+28],ebx
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	mov	eax,dword [eax+28]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_1216
	push	eax
	call	_bbGCFree
	add	esp,4
_1216:
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
	jmp	_808
_808:
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
	jne	_1218
	call	_brl_blitz_DebugStop
_1218:
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
	je	_1230
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
	jne	_1238
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1238:
	cmp	eax,0
	je	_1240
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1240:
_43:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
_1230:
	mov	eax,dword [ebp-4]
	jmp	_812
_812:
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
	jne	_1249
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1249:
	cmp	eax,0
	je	_1251
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1251:
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
	je	_1253
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
	je	_1261
	cmp	edi,1
	sete	al
	movzx	eax,al
_1261:
	cmp	eax,0
	jne	_1263
	cmp	edi,-1
	sete	al
	movzx	eax,al
_1263:
	cmp	eax,0
	je	_1265
	mov	eax,dword [ebp-4]
	push	edx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1265:
_49:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
_1253:
	mov	eax,dword [ebp-4]
	jmp	_816
_816:
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
	jnz	_1273
	push	eax
	call	_bbGCFree
	add	esp,4
_1273:
	mov	dword [ebx+16],edi
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_823
_823:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_AddMethod:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	dword [ebp-8],-1
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	mov	edi,eax
	jmp	_52
_54:
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
	je	_52
	mov	eax,dword [ebp+16]
	push	dword [eax+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1283
	mov	edx,dword [esi+20]
	mov	eax,dword [ebp+16]
	cmp	edx,dword [eax+20]
	sete	al
	movzx	eax,al
_1283:
	cmp	eax,0
	je	_1285
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	_bbStringClass
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1288
	mov	eax,_bbEmptyString
_1288:
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	dword [ebp-8],ebx
	add	ebx,1
	mov	eax,dword [ebp+8]
	mov	edi,dword [eax+36]
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	esi
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+56]
	add	esp,12
	jmp	_53
_1285:
_52:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	cmp	dword [ebp-8],-1
	jne	_1292
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	_190
	push	dword [ebp+16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,12
	mov	dword [ebp-8],0
_1292:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+16]
	push	_bb_TTypeMethod
	call	_bbObjectNew
	add	esp,4
	push	dword [ebp+28]
	push	dword [ebp-8]
	mov	edx,dword [ebp+24]
	and	edx,0xff
	push	edx
	movzx	edx,byte [ebp-4]
	push	edx
	push	dword [ebp+8]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,28
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	eax,0
	jmp	_831
_831:
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
	push	_55
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
	je	_1299
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	mov	edx,dword [eax+20]
_1299:
	mov	eax,dword [ebp-28]
	push	edx
	push	_56
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
	jmp	_57
_59:
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
	je	_57
	mov	eax,dword [ebp-28]
	push	_4
	push	_bbNullObject
	push	_60
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
_57:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_59
_58:
	mov	ebx,dword [ebp-28]
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_61
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
	jmp	_62
_64:
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
	je	_62
	mov	eax,dword [ebp-28]
	push	_4
	push	_bbNullObject
	push	_65
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
	push	_66
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	cmp	dword [esi+16],_bbNullObject
	je	_1325
	mov	edx,dword [ebp-8]
	mov	eax,dword [esi+16]
	push	dword [eax+20]
	push	_67
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
	jmp	_68
_70:
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
	je	_68
	mov	eax,dword [ebp-8]
	push	_4
	push	_bbNullObject
	push	_71
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
_68:
	mov	eax,dword [ebp-4]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_70
_69:
_1325:
	add	dword [ebp-16],1
_62:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_64
_63:
	mov	ebx,dword [ebp-28]
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_72
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-28]
	jmp	_834
_834:
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
	jmp	_837
_837:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_840:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1345
	push	eax
	call	_bbGCFree
	add	esp,4
_1345:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1347
	push	eax
	call	_bbGCFree
	add	esp,4
_1347:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1349
	push	eax
	call	_bbGCFree
	add	esp,4
_1349:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1351
	push	eax
	call	_bbGCFree
	add	esp,4
_1351:
	mov	eax,0
	jmp	_1343
_1343:
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
	jnz	_1355
	push	eax
	call	_bbGCFree
	add	esp,4
_1355:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1359
	push	eax
	call	_bbGCFree
	add	esp,4
_1359:
	mov	dword [esi+12],ebx
	mov	ebx,dword [ebp+20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1363
	push	eax
	call	_bbGCFree
	add	esp,4
_1363:
	mov	dword [esi+16],ebx
	mov	eax,esi
	jmp	_846
_846:
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
	push	_1367
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
	jmp	_849
_849:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_852:
	mov	eax,dword [ebx+64]
	dec	dword [eax+4]
	jnz	_1380
	push	eax
	call	_bbGCFree
	add	esp,4
_1380:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_1382
	push	eax
	call	_bbGCFree
	add	esp,4
_1382:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_1384
	push	eax
	call	_bbGCFree
	add	esp,4
_1384:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1386
	push	eax
	call	_bbGCFree
	add	esp,4
_1386:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_1388
	push	eax
	call	_bbGCFree
	add	esp,4
_1388:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1390
	push	eax
	call	_bbGCFree
	add	esp,4
_1390:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1392
	push	eax
	call	_bbGCFree
	add	esp,4
_1392:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1394
	push	eax
	call	_bbGCFree
	add	esp,4
_1394:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1396
	push	eax
	call	_bbGCFree
	add	esp,4
_1396:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1398
	push	eax
	call	_bbGCFree
	add	esp,4
_1398:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1400
	push	eax
	call	_bbGCFree
	add	esp,4
_1400:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1402
	push	eax
	call	_bbGCFree
	add	esp,4
_1402:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1404
	push	eax
	call	_bbGCFree
	add	esp,4
_1404:
	mov	eax,0
	jmp	_1378
_1378:
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
	jmp	_73
_75:
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
	je	_73
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
	je	_1421
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
	jmp	_76
_78:
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
	je	_76
	mov	esi,_4
	mov	eax,edi
	push	_79
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_1431
	mov	eax,edi
	push	_79
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+188]
	add	esp,8
	mov	esi,eax
_1431:
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
_76:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_78
_77:
_1421:
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
_73:
	mov	eax,dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_75
_74:
	mov	eax,0
	jmp	_856
_856:
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
	jmp	_860
_860:
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
	push	_80
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
	jnz	_1441
	push	eax
	call	_bbGCFree
	add	esp,4
_1441:
	mov	eax,dword [ebp+8]
	mov	dword [eax+8],esi
	push	25
	push	_545
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_81
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_82
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_83
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_84
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_85
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_86
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_87
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_88
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_89
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_90
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	mov	edx,_91
	inc	dword [edx+4]
	mov	dword [eax+64],edx
	mov	edx,_92
	inc	dword [edx+4]
	mov	dword [eax+68],edx
	mov	edx,_93
	inc	dword [edx+4]
	mov	dword [eax+72],edx
	mov	edx,_94
	inc	dword [edx+4]
	mov	dword [eax+76],edx
	mov	edx,_95
	inc	dword [edx+4]
	mov	dword [eax+80],edx
	mov	edx,_96
	inc	dword [edx+4]
	mov	dword [eax+84],edx
	mov	edx,_97
	inc	dword [edx+4]
	mov	dword [eax+88],edx
	mov	edx,_98
	inc	dword [edx+4]
	mov	dword [eax+92],edx
	mov	edx,_99
	inc	dword [edx+4]
	mov	dword [eax+96],edx
	mov	edx,_100
	inc	dword [edx+4]
	mov	dword [eax+100],edx
	mov	edx,_5
	inc	dword [edx+4]
	mov	dword [eax+104],edx
	mov	edx,_101
	inc	dword [edx+4]
	mov	dword [eax+108],edx
	mov	edx,_102
	inc	dword [edx+4]
	mov	dword [eax+112],edx
	mov	edx,_103
	inc	dword [edx+4]
	mov	dword [eax+116],edx
	mov	edx,_104
	inc	dword [edx+4]
	mov	dword [eax+120],edx
	mov	esi,eax
	push	_80
	push	ebx
	call	_bbStringSplit
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+32]
	dec	dword [eax+4]
	jnz	_1472
	push	eax
	call	_bbGCFree
	add	esp,4
_1472:
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
	jmp	_105
_107:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax]
	mov	dword [ebp-16],eax
	add	dword [ebp-28],4
	cmp	dword [ebp-16],_bbNullObject
	je	_105
	mov	dword [ebp-20],0
	push	_108
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
	jne	_1480
	mov	byte [ebp-4],1
_1480:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_1481
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	push	_109
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
	jne	_1483
	mov	byte [ebp-4],0
_1483:
	jmp	_105
_1481:
	push	_82
	push	dword [ebp-16]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-16],eax
	mov	dword [ebp-12],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+8]
	mov	dword [ebp-24],eax
	jmp	_1485
_112:
	push	_94
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
	jne	_1487
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_94
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp-12]
	add	eax,1
	mov	dword [ebp-20],eax
_1487:
	push	_80
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
	jne	_1489
	jmp	_110
_1489:
	push	_113
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
	jne	_1490
	push	_114
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
_1490:
	cmp	eax,0
	jne	_1492
	push	_115
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
_1492:
	cmp	eax,0
	je	_1494
	jmp	_111
_1494:
	push	_1495
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
	jne	_1496
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
	jmp	_1498
_118:
	push	_1495
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
	jne	_1500
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
	jmp	_117
_1500:
_116:
	add	dword [ebp-12],1
_1498:
	cmp	dword [ebp-12],ebx
	jle	_118
_117:
_1496:
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	dword [ebp-8],eax
	jmp	_119
_121:
	mov	edi,dword [ebx]
	add	ebx,4
	cmp	edi,_bbNullObject
	je	_119
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
	jne	_1507
	push	_81
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1508
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
_1508:
	cmp	eax,0
	je	_1510
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
	jne	_1511
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
_1511:
	cmp	eax,0
	je	_1513
	jmp	_120
_1513:
_1510:
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
	push	_82
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1515
	push	_95
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1515:
	cmp	eax,0
	je	_1517
	push	_103
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1518
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_88
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_122
_1518:
	push	_104
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1520
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_88
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_123
_1520:
	push	_102
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1522
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_88
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_124
_1522:
	push	_125
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1524
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_88
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	edi,_126
_1524:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1517:
	mov	eax,dword [ebp-12]
	add	eax,dword [edi+8]
	mov	dword [ebp-20],eax
	mov	eax,dword [edi+8]
	sub	eax,1
	add	dword [ebp-12],eax
	jmp	_120
_1507:
_119:
	cmp	ebx,dword [ebp-8]
	jne	_121
_120:
_110:
	add	dword [ebp-12],1
_1485:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-12],eax
	jle	_112
_111:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_105:
	mov	eax,dword [ebp-36]
	cmp	dword [ebp-28],eax
	jne	_107
_106:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	jmp	_127
_129:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1532
	mov	eax,_bbEmptyString
_1532:
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
	je	_1536
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1535
	mov	eax,_bbEmptyString
_1535:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_1536:
	cmp	eax,0
	je	_1538
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
_1538:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	ebx,eax
_127:
	cmp	ebx,_bbNullObject
	jne	_129
_128:
	mov	eax,0
	jmp	_864
_864:
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
	jnz	_1545
	push	eax
	call	_bbGCFree
	add	esp,4
_1545:
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
	jmp	_1550
_132:
	push	_bbStringClass
	mov	edx,dword [ebp-64]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1553
	mov	eax,_bbEmptyString
_1553:
	push	_133
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1557
	jmp	_1556
_1557:
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
	jne	_1560
	mov	ebx,_bbEmptyString
_1560:
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_1564
	push	eax
	call	_bbGCFree
	add	esp,4
_1564:
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
	jnz	_1569
	push	eax
	call	_bbGCFree
	add	esp,4
_1569:
	mov	dword [edi+28],esi
	mov	eax,dword [edi+20]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1573
	push	eax
	call	_bbGCFree
	add	esp,4
_1573:
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
	push	_96
	call	dword [_bb_TOperator+68]
	add	esp,4
	push	ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,8
	push	_97
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
	jmp	_1556
_1556:
_130:
	add	dword [ebp-64],1
_1550:
	mov	eax,dword [ebp-92]
	cmp	dword [ebp-64],eax
	jl	_132
_131:
	mov	dword [ebp-20],0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	mov	dword [ebp-116],eax
	jmp	_1581
_136:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1584
	mov	ebx,_bbEmptyString
_1584:
	push	_137
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1588
	push	_133
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1589
	jmp	_1587
_1588:
_140:
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1591
	mov	eax,_bbEmptyString
_1591:
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
	jne	_1595
	mov	eax,_bbEmptyString
_1595:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1596
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1598
	mov	eax,_bbEmptyString
_1598:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
_1596:
	add	dword [ebp-20],1
	jmp	_141
_143:
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	add	dword [esi+20],1
_141:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1600
	mov	eax,_bbEmptyString
_1600:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_143
_142:
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
	jne	_1605
	mov	eax,_bbEmptyString
_1605:
	push	_101
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1606
	add	dword [ebp-20],1
	mov	eax,dword [ebp-68]
	mov	ebx,dword [eax+20]
	jmp	_1607
_146:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1610
	mov	eax,_bbEmptyString
_1610:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1613
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1612
	mov	eax,_bbEmptyString
_1612:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1613:
	cmp	eax,0
	je	_1615
	sub	dword [ebp-20],1
	jmp	_145
_1615:
_144:
	add	dword [ebp-20],1
_1607:
	cmp	dword [ebp-20],ebx
	jl	_146
_145:
_1606:
	add	dword [ebp-20],1
_138:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1617
	mov	eax,_bbEmptyString
_1617:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_140
_139:
	jmp	_1587
_1589:
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1619
	mov	eax,_bbEmptyString
_1619:
	mov	dword [ebp-104],eax
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [__bb_TCompiler_Templates]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_147
_149:
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
	je	_147
	push	dword [ebp-104]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1628
	mov	dword [ebp-100],esi
_1628:
_147:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_149
_148:
	add	dword [ebp-20],1
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
	push	_150
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1631
	add	dword [ebp-20],1
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
	mov	dword [ebp-40],eax
	mov	ebx,dword [__bb_TCompiler_Templates]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_151
_153:
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
	je	_151
	push	dword [ebp-40]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1641
	mov	ebx,esi
	inc	dword [ebx+4]
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_1645
	push	eax
	call	_bbGCFree
	add	esp,4
_1645:
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
	jmp	_152
_1641:
_151:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_153
_152:
	jmp	_1648
_1631:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-100]
	mov	eax,dword [eax+24]
	dec	dword [eax+4]
	jnz	_1652
	push	eax
	call	_bbGCFree
	add	esp,4
_1652:
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
_1648:
	jmp	_154
_156:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1658
	mov	eax,_bbEmptyString
_1658:
	push	_158
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1659
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
	add	dword [ebp-20],1
_1659:
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
	push	_159
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1662
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	add	dword [ebp-20],1
_1662:
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
	push	_160
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1665
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
	add	dword [ebp-20],1
_1665:
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
	push	_161
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1668
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
	jne	_1671
	mov	ebx,_bbEmptyString
_1671:
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1674
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1675
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1676
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1677
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1678
	jmp	_1673
_1674:
	mov	byte [ebp-4],2
	add	dword [ebp-20],1
	jmp	_1673
_1675:
	mov	byte [ebp-4],1
	add	dword [ebp-20],1
	jmp	_1673
_1676:
	mov	byte [ebp-4],3
	add	dword [ebp-20],1
	jmp	_1673
_1677:
	mov	byte [ebp-4],4
	add	dword [ebp-20],1
	jmp	_1673
_1678:
	mov	byte [ebp-4],5
	add	dword [ebp-20],1
	jmp	_1673
_1673:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1680
	mov	eax,_bbEmptyString
_1680:
	mov	edi,eax
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1683
	mov	eax,_bbEmptyString
_1683:
	push	_169
	push	eax
	push	_168
	push	dword [ebp-104]
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
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+edx*4+24]
	dec	dword [eax+4]
	jnz	_1687
	push	eax
	call	_bbGCFree
	add	esp,4
_1687:
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	mov	dword [eax+edx*4+24],ebx
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1689
	mov	eax,_bbEmptyString
_1689:
	push	0
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
	add	dword [ebp-20],1
	jmp	_170
_172:
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	add	dword [esi+20],1
_170:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1692
	mov	eax,_bbEmptyString
_1692:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_172
_171:
	mov	ebx,dword [ebp-100]
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1695
	mov	eax,_bbEmptyString
_1695:
	push	edi
	mov	edx,dword [ebp+8]
	push	dword [edx+72]
	movzx	edx,byte [ebp-4]
	push	edx
	push	esi
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,24
_1668:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1697
	mov	eax,_bbEmptyString
_1697:
	push	_60
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1698
	add	dword [ebp-20],1
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1700
	mov	eax,_bbEmptyString
_1700:
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
	jne	_1703
	mov	eax,_bbEmptyString
_1703:
	push	0
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-52],eax
	add	dword [ebp-20],1
	jmp	_173
_175:
	add	dword [ebp-20],1
	add	dword [ebp-20],1
	mov	edx,dword [ebp-52]
	mov	eax,dword [ebp-52]
	mov	eax,dword [eax+20]
	add	eax,1
	mov	dword [edx+20],eax
_173:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1706
	mov	eax,_bbEmptyString
_1706:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_175
_174:
	mov	esi,_bbEmptyString
	mov	dword [ebp-36],_bbNullObject
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1710
	mov	eax,_bbEmptyString
_1710:
	push	_101
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1711
	add	dword [ebp-20],1
	jmp	_176
_178:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1715
	mov	eax,_bbEmptyString
_1715:
	push	_82
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	add	dword [ebp-20],1
_176:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1713
	mov	eax,_bbEmptyString
_1713:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_178
_177:
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [ebp-52]
	push	_85
	push	esi
	push	_84
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
	jmp	_179
_181:
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
	je	_179
	mov	eax,esi
	push	_182
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1729
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
	jmp	_183
_185:
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
	je	_183
	mov	eax,esi
	push	_186
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1738
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
	jmp	_184
_1738:
_183:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_185
_184:
	jmp	_180
_1729:
_179:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_181
_180:
	jmp	_1740
_1711:
	mov	eax,dword [ebp-52]
	mov	ebx,dword [eax+16]
	push	_124
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1743
	push	_187
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1743
	push	_188
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1743
	push	_126
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1743
	push	_122
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1744
	push	_191
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1744
	push	_123
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1745
	push	_bbNullObject
	push	_193
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	jmp	_1742
_1743:
	push	_bbNullObject
	push	_124
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_190
	push	_189
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
	jmp	_1742
_1744:
	push	_bbNullObject
	push	_122
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_192
	push	_189
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
	jmp	_1742
_1745:
	push	_bbNullObject
	push	_123
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	eax,dword [ebp-36]
	push	_4
	push	_189
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	jmp	_1742
_1742:
_1740:
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
_1698:
	add	dword [ebp-20],1
_154:
	push	_bbStringClass
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-68]
	push	dword [eax+edx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1656
	mov	eax,_bbEmptyString
_1656:
	push	_157
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_156
_155:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	jmp	_1587
_1587:
_134:
	add	dword [ebp-20],1
_1581:
	mov	eax,dword [ebp-116]
	cmp	dword [ebp-20],eax
	jl	_136
_135:
	mov	dword [ebp-108],_4
	mov	edi,0
	mov	eax,dword [ebp-68]
	mov	eax,dword [eax+20]
	mov	dword [ebp-112],eax
	jmp	_1754
_196:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1757
	mov	ebx,_bbEmptyString
_1757:
	push	_133
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1761
	push	_157
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1762
	push	_158
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1763
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1764
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1765
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1766
	jmp	_1760
_1761:
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1768
	mov	eax,_bbEmptyString
_1768:
	mov	dword [ebp-108],eax
	jmp	_1760
_1762:
	mov	dword [ebp-108],_4
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	jmp	_1760
_1763:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1769
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
_1769:
	jmp	_1760
_1764:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1770
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
_1770:
	jmp	_1760
_1765:
	push	_4
	push	dword [ebp-108]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1771
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
_1771:
	jmp	_1760
_1766:
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1773
	mov	ebx,_bbEmptyString
_1773:
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1776
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1776
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1776
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1776
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_1776
	jmp	_1775
_1776:
	add	edi,1
	jmp	_1775
_1775:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1778
	mov	eax,_bbEmptyString
_1778:
	mov	dword [ebp-60],eax
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1782
	mov	eax,_bbEmptyString
_1782:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1783
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1785
	mov	eax,_bbEmptyString
_1785:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	esi,eax
	add	edi,1
_1783:
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
	jmp	_197
_199:
	add	edi,1
	add	edi,1
	add	ebx,1
_197:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1790
	mov	eax,_bbEmptyString
_1790:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_199
_198:
	add	edi,1
	mov	dword [esi+20],ebx
	mov	dword [ebp-84],_bbNullObject
	push	0
	push	_169
	push	dword [ebp-60]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_1792
	push	3
	push	_168
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
	push	_200
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
	jmp	_201
_203:
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
	je	_201
	push	dword [ebp-44]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1801
	mov	dword [ebp-84],ebx
	jmp	_202
_1801:
_201:
	mov	eax,dword [ebp-32]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_203
_202:
_1792:
	jmp	_204
_206:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1805
	mov	eax,_bbEmptyString
_1805:
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
	jne	_1810
	mov	eax,_bbEmptyString
_1810:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1811
	add	edi,1
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1813
	mov	eax,_bbEmptyString
_1813:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-48],eax
	add	edi,1
_1811:
	mov	ebx,0
	jmp	_207
_209:
	add	edi,1
	add	edi,1
	add	ebx,1
_207:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1816
	mov	eax,_bbEmptyString
_1816:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_209
_208:
	mov	eax,dword [ebp-48]
	mov	dword [eax+20],ebx
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1818
	mov	eax,_bbEmptyString
_1818:
	push	_101
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1819
	add	edi,1
	mov	eax,dword [ebp-68]
	mov	ebx,dword [eax+20]
	jmp	_1820
_212:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1823
	mov	eax,_bbEmptyString
_1823:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1826
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1825
	mov	eax,_bbEmptyString
_1825:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1826:
	cmp	eax,0
	je	_1828
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1830
	mov	eax,_bbEmptyString
_1830:
	push	_80
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1831
	mov	eax,dword [esi+8]
	sub	eax,1
	push	eax
	push	0
	push	esi
	call	_bbStringSlice
	add	esp,12
	mov	esi,eax
	sub	edi,1
_1831:
	jmp	_211
_1828:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1834
	mov	eax,_bbEmptyString
_1834:
	push	eax
	push	_82
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
_1832:
_210:
	add	edi,1
_1820:
	cmp	edi,ebx
	jl	_212
_211:
_1819:
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
	jne	_1837
	mov	eax,_bbEmptyString
_1837:
	push	_85
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1838
	jmp	_205
_1838:
	add	edi,1
_204:
	push	_bbStringClass
	mov	eax,dword [ebp-68]
	push	dword [eax+edi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1803
	mov	eax,_bbEmptyString
_1803:
	push	_85
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_206
_205:
	mov	eax,dword [ebp-72]
	mov	byte [eax+28],1
	cmp	dword [ebp-84],_bbNullObject
	je	_1839
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
	jmp	_213
_215:
	mov	eax,dword [ebp-28]
	mov	eax,dword [eax+8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1843
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1843:
	cmp	eax,0
	je	_1845
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
_1845:
	cmp	eax,0
	je	_1847
	push	_bb_TTypeMethod
	mov	eax,dword [ebp-28]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	edx,dword [ebp-84]
	cmp	dword [eax+24],edx
	jne	_1848
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_1848:
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
	jnz	_1854
	push	eax
	call	_bbGCFree
	add	esp,4
_1854:
	mov	dword [esi+16],ebx
	mov	ebx,dword [ebp-84]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-72]
	mov	eax,dword [eax+36]
	dec	dword [eax+4]
	jnz	_1858
	push	eax
	call	_bbGCFree
	add	esp,4
_1858:
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
	jnz	_1863
	push	eax
	call	_bbGCFree
	add	esp,4
_1863:
	mov	dword [esi+20],ebx
_1847:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-28],eax
_213:
	cmp	dword [ebp-28],_bbNullObject
	jne	_215
_214:
	jmp	_1865
_1839:
	mov	eax,dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,4
_1865:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	dword [ebp-72]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	jmp	_1760
_1760:
_194:
	add	edi,1
_1754:
	cmp	edi,dword [ebp-112]
	jl	_196
_195:
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-88],eax
	mov	eax,dword [ebp-88]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-96],eax
	jmp	_216
_218:
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
	je	_216
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+24]
	mov	dword [ebp-56],eax
	jmp	_219
_221:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-16],eax
	jmp	_222
_224:
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
	je	_222
	cmp	dword [edi+16],_bbNullObject
	je	_1881
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
	jnz	_1889
	push	eax
	call	_bbGCFree
	add	esp,4
_1889:
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
	jnz	_1894
	push	eax
	call	_bbGCFree
	add	esp,4
_1894:
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
	jnz	_1899
	push	eax
	call	_bbGCFree
	add	esp,4
_1899:
	mov	dword [esi+36],ebx
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	push	esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
_1881:
_222:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_224
_223:
	mov	eax,dword [ebp-56]
	mov	eax,dword [eax+24]
	mov	dword [ebp-56],eax
_219:
	cmp	dword [ebp-56],_bbNullObject
	jne	_221
_220:
_216:
	mov	eax,dword [ebp-96]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_218
_217:
	mov	ebx,dword [ebp-120]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1904
	push	eax
	call	_bbGCFree
	add	esp,4
_1904:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	eax,0
	jmp	_867
_867:
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
	jnz	_1909
	push	eax
	call	_bbGCFree
	add	esp,4
_1909:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_225
	call	dword [_bah_libxml_TxmlDoc+96]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	dec	dword [eax+4]
	jnz	_1913
	push	eax
	call	_bbGCFree
	add	esp,4
_1913:
	mov	eax,dword [ebp+8]
	mov	dword [eax+36],ebx
	push	_bbNullObject
	push	_226
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	eax,dword [ebp-32]
	push	_228
	push	_227
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
	je	_1917
	mov	esi,dword [__bb_TCompiler_Templates]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_229
_231:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	je	_229
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,4
	push	eax
	push	dword [ebp-32]
	call	_bb_AddChild
	add	esp,8
_229:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_231
_230:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_137
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
	jmp	_232
_234:
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
	je	_232
	mov	eax,dword [esi+8]
	cmp	dword [eax+20],0
	je	_1934
	mov	eax,dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_235
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	jmp	_1936
_1934:
	mov	eax,dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_236
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
_1936:
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
_232:
	mov	eax,dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_234
_233:
_1917:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_182
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	dec	dword [eax+4]
	jnz	_1944
	push	eax
	call	_bbGCFree
	add	esp,4
_1944:
	mov	eax,dword [ebp+8]
	mov	dword [eax+40],ebx
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+40]
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+60]
	dec	dword [eax+4]
	jnz	_1948
	push	eax
	call	_bbGCFree
	add	esp,4
_1948:
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
	jnz	_1953
	push	eax
	call	_bbGCFree
	add	esp,4
_1953:
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
	jne	_1956
	mov	ebx,_bbEmptyString
_1956:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_1960
	push	eax
	call	_bbGCFree
	add	esp,4
_1960:
	mov	eax,dword [ebp+8]
	mov	dword [eax+48],ebx
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+72]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_1962
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+16]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-28],eax
	jmp	_237
_239:
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
	je	_237
	movzx	eax,byte [esi+29]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_1969
	movzx	eax,byte [esi+28]
_1969:
	cmp	eax,0
	je	_1971
	jmp	_237
_1971:
	mov	eax,dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_161
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
	push	_67
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
	push	_240
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
	jmp	_241
_243:
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
	je	_241
	mov	eax,dword [ebp-12]
	push	_4
	push	_bbNullObject
	push	_71
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
_241:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_243
_242:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+40]
	push	dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+160]
	add	esp,8
_237:
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_239
_238:
_1962:
	push	_244
	call	_brl_filesystem_DeleteFile
	add	esp,4
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+36]
	push	1
	push	1
	push	_244
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,16
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_1993
	push	eax
	call	_bbGCFree
	add	esp,4
_1993:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+68]
	cmp	eax,0
	je	_1994
	push	_245
	call	_bbWriteStdout
	add	esp,4
	call	_bbEnd
_1994:
	mov	eax,0
	jmp	_871
_871:
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
	jnz	_2000
	push	eax
	call	_bbGCFree
	add	esp,4
_2000:
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
	jnz	_2005
	push	eax
	call	_bbGCFree
	add	esp,4
_2005:
	mov	dword [esi+44],ebx
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_2009
	push	eax
	call	_bbGCFree
	add	esp,4
_2009:
	mov	dword [esi+40],ebx
	mov	eax,0
	jmp	_875
_875:
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
	push	_559
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_2013
	push	eax
	call	_bbGCFree
	add	esp,4
_2013:
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
	jnz	_2017
	push	eax
	call	_bbGCFree
	add	esp,4
_2017:
	mov	edx,dword [esi+20]
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	jmp	_246
_248:
	mov	eax,esi
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2050
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_246
_2050:
	mov	eax,dword [esi+40]
	push	_4
	push	_bbNullObject
	push	_186
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_2056
	push	eax
	call	_bbGCFree
	add	esp,4
_2056:
	mov	dword [esi+44],ebx
	mov	ebx,dword [esi+44]
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_259
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
	je	_2061
	mov	eax,esi
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2061:
	jmp	_260
_262:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_260:
	mov	eax,esi
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2065
	mov	eax,dword [esi+8]
	mov	ebx,dword [esi+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
_2065:
	cmp	eax,0
	jne	_262
_261:
_246:
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
	je	_2020
	mov	eax,esi
	push	_249
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2020:
	cmp	eax,0
	je	_2023
	mov	eax,esi
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2023:
	cmp	eax,0
	je	_2026
	mov	eax,esi
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2026:
	cmp	eax,0
	je	_2029
	mov	eax,esi
	push	_252
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2029:
	cmp	eax,0
	je	_2032
	mov	eax,esi
	push	_253
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2032:
	cmp	eax,0
	je	_2035
	mov	eax,esi
	push	_254
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2035:
	cmp	eax,0
	je	_2038
	mov	eax,esi
	push	_255
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2038:
	cmp	eax,0
	je	_2041
	mov	eax,esi
	push	_256
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2041:
	cmp	eax,0
	je	_2044
	mov	eax,esi
	push	_257
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2044:
	cmp	eax,0
	je	_2047
	mov	eax,esi
	push	_258
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2047:
	cmp	eax,0
	jne	_248
_247:
	mov	eax,dword [esi+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_559
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_2071
	push	eax
	call	_bbGCFree
	add	esp,4
_2071:
	mov	dword [esi+20],ebx
	mov	eax,0
	jmp	_878
_878:
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
	jl	_2072
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+80]
	add	esp,4
	jmp	_882
_2072:
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
	jmp	_263
_265:
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
	jmp	_266
_268:
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
	je	_266
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
	jne	_2090
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
	jmp	_269
_271:
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
	je	_269
	push	dword [ebp-16]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2103
	mov	eax,ebx
	mov	edx,dword [ebp-20]
	push	dword [edx+8]
	mov	edx,dword [ebp-24]
	push	dword [edx+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,12
_2103:
	cmp	eax,0
	je	_2107
	cmp	esi,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2105
	mov	eax,dword [esi+16]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebx+16]
	cmp	edx,dword [eax+20]
	setg	al
	movzx	eax,al
_2105:
_2107:
	cmp	eax,0
	je	_2109
	mov	esi,ebx
	mov	byte [ebp-4],1
_2109:
_269:
	mov	eax,dword [ebp-12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_271
_270:
	cmp	esi,_bbNullObject
	je	_2110
	cmp	dword [ebp-28],_bbNullObject
	je	_2111
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_2115
	push	eax
	call	_bbGCFree
	add	esp,4
_2115:
	mov	eax,dword [ebp-24]
	mov	dword [eax+12],ebx
_2111:
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
	jnz	_2122
	push	eax
	call	_bbGCFree
	add	esp,4
_2122:
	mov	eax,dword [ebp-24]
	mov	dword [eax+8],ebx
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	jmp	_2123
_2110:
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_2124
	mov	ebx,dword [ebp+8]
	push	_275
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_274
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_273
	push	dword [ebp-16]
	push	_272
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_2124:
_2123:
_2090:
_266:
	mov	eax,dword [ebp-36]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_268
_267:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_2126
	jmp	_264
_2126:
_263:
	mov	eax,1
	cmp	eax,0
	jne	_265
_264:
	cmp	dword [ebp-32],_bbNullObject
	jne	_2127
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	mov	dword [ebp-32],eax
_2127:
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
	jmp	_882
_882:
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
	push	_84
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
	je	_2131
	mov	eax,ebx
	push	_276
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
	je	_2133
	mov	eax,ebx
	push	_277
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
	je	_2135
	mov	eax,ebx
	push	_278
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
	je	_2137
	mov	eax,ebx
	push	_90
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
	je	_2139
	mov	eax,ebx
	push	_89
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
	je	_2141
	mov	eax,ebx
	push	_193
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
	je	_2143
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
	je	_2145
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
	je	_2147
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
	je	_2149
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+88]
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2153
	jmp	_885
_2153:
	mov	eax,ebx
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+84]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2155
	jmp	_885
_2155:
	mov	eax,ebx
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+92]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	je	_2157
	jmp	_885
_2157:
	mov	eax,ebx
	push	_283
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
	call	_bbEnd
	jmp	_2130
_2131:
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
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	jmp	_885
_2133:
	push	_bbNullObject
	push	_124
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	push	_353
	push	_189
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
	jmp	_885
_2135:
	push	_bbNullObject
	push	_124
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	push	_190
	push	_189
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
	jmp	_885
_2137:
	push	_bbNullObject
	push	_278
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
	jmp	_885
_2139:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_279
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
	push	_280
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-4],eax
	push	_bbNullObject
	push	_124
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	_281
	push	_189
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
	push	_282
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
	jmp	_885
_2141:
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
	jmp	_885
_2143:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_193
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
	jmp	_885
_2145:
	push	_bbNullObject
	push	_124
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
	push	_189
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
	jmp	_885
_2147:
	push	_bbNullObject
	push	_122
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
	push	_189
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
	jmp	_885
_2149:
	push	_bbNullObject
	push	_123
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
	push	_189
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
	jmp	_885
_2130:
	mov	esi,_bbNullObject
	jmp	_885
_885:
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
	je	_2212
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
	jmp	_284
_286:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_284:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_286
_285:
	mov	dword [edi+20],ebx
	mov	eax,dword [ebp+8]
	push	_84
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
	push	_85
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
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2228
	mov	dword [edi+20],0
	mov	eax,dword [ebp+8]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
	mov	esi,eax
_2228:
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
	jne	_2231
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
_2231:
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
	jmp	_889
_2212:
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
	jmp	_287
_289:
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
	je	_287
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
	jne	_2246
	add	dword [ebp-68],1
	mov	byte [ebp-4],0
_2246:
_287:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_289
_288:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2247
	mov	eax,_bbNullObject
	jmp	_889
_2247:
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
	push	_169
	push	dword [ebp-52]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	je	_2252
	push	3
	push	_168
	push	dword [ebp-52]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-52]
	call	_bbStringSlice
	add	esp,12
	push	_290
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
_2252:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	byte [ebp-8],1
	mov	esi,0
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2258
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2258:
	mov	eax,dword [ebp+8]
	push	_85
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
	je	_2262
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
	setne	al
	movzx	eax,al
_2262:
	cmp	eax,0
	je	_2264
	jmp	_291
_293:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_2268
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2268:
	mov	byte [ebp-8],0
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
	jne	_2271
	mov	eax,dword [ebp+8]
	push	_294
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2271:
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
_291:
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
	jne	_2266
	movzx	eax,byte [ebp-8]
_2266:
	cmp	eax,0
	jne	_293
_292:
_2264:
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2278
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2278:
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_295
_297:
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
	je	_295
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
	jne	_2286
	mov	byte [ebp-4],0
	mov	eax,dword [ebp-32]
	mov	esi,dword [eax+24]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_298
_300:
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
	je	_298
	push	_4
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2293
	jmp	_298
_2293:
_298:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_300
_299:
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
	je	_2296
	mov	eax,dword [ebp-32]
	mov	esi,dword [eax+24]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_301
_303:
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
	je	_301
	push	_4
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2303
	mov	byte [ebp-4],1
_2303:
_301:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_303
_302:
_2296:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2304
	jmp	_296
_2304:
	mov	eax,dword [ebp-32]
	mov	byte [eax+29],1
	push	_bbNullObject
	push	_304
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-44],eax
	mov	eax,dword [ebp-32]
	cmp	dword [eax+36],_bbNullObject
	je	_2306
	mov	eax,dword [ebp-32]
	push	dword [eax+12]
	call	_brl_standardio_Print
	add	esp,4
	push	_305
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
	jmp	_306
_308:
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
	je	_306
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
	jne	_2314
	mov	ebx,dword [ebp-44]
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_66
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_309
	call	_brl_standardio_Print
	add	esp,4
	jmp	_307
_2314:
_306:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_308
_307:
_2306:
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
	je	_2319
	mov	eax,dword [ebp-44]
	push	dword [ebp+12]
	push	_4
	push	_bbNullObject
	push	_71
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_2319:
	mov	ebx,dword [ebp-88]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_310
_312:
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
	je	_310
	mov	eax,dword [ebp-44]
	push	_4
	push	_bbNullObject
	push	_71
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
_310:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_312
_311:
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
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2334
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
	je	_2339
	mov	eax,dword [ebp-36]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2339:
	cmp	eax,0
	je	_2341
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
	jmp	_313
_315:
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
	je	_313
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
	jne	_2350
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
_2350:
_313:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
_2341:
	mov	eax,dword [ebp-36]
	mov	dword [ebp-44],eax
_2334:
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
	jne	_2354
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
_2354:
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
	jmp	_889
_2286:
_295:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_297
_296:
	cmp	dword [ebp-68],1
	jne	_2359
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_316
_318:
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
	je	_316
	push	dword [ebp-52]
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2366
	mov	eax,dword [ebp-48]
	mov	byte [eax+29],1
	push	_bbNullObject
	push	_304
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	eax,dword [ebp-48]
	cmp	dword [eax+36],_bbNullObject
	je	_2368
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_brl_standardio_Print
	add	esp,4
	push	_305
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
	jmp	_319
_321:
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
	je	_319
	push	dword [esi+20]
	call	_brl_standardio_Print
	add	esp,4
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2376
	mov	ebx,dword [ebp-84]
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_66
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_309
	call	_brl_standardio_Print
	add	esp,4
	jmp	_320
_2376:
_319:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_321
_320:
_2368:
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
	je	_2382
	mov	eax,dword [ebp-84]
	push	dword [ebp+12]
	push	_4
	push	_bbNullObject
	push	_71
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
_2382:
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax+24]
	mov	dword [ebp-76],eax
	mov	eax,dword [ebp-76]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-80],eax
	jmp	_322
_324:
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
	je	_322
	push	0
	push	_169
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2390
	push	_200
	push	dword [edi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2390:
	cmp	eax,0
	je	_2392
	cmp	dword [ebp-28],_bbNullObject
	je	_2393
	mov	eax,dword [ebp-28]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-28],eax
_2393:
	jmp	_322
_2392:
	mov	eax,dword [ebp-28]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2395
	push	_4
	push	dword [edi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2395:
	cmp	eax,0
	je	_2397
	push	0
	push	_169
	mov	eax,dword [ebp-48]
	push	dword [eax+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_2398
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-48]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-88]
	push	_115
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_327
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	sub	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_326
	push	_82
	push	_168
	push	_82
	push	_167
	push	_4
	push	_169
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
	push	_325
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_2402
_2398:
	mov	esi,dword [ebp+8]
	mov	eax,dword [ebp-48]
	mov	ebx,dword [eax+24]
	mov	eax,dword [ebp-88]
	push	_115
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_327
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_326
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
	push	_325
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_2402:
_2397:
	mov	esi,_bbNullObject
	cmp	dword [ebp-28],_bbNullObject
	je	_2407
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
_2407:
	push	_4
	push	dword [edi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2409
	mov	eax,dword [ebp-28]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_2409:
	cmp	eax,0
	je	_2411
	mov	byte [ebp-12],0
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	mov	eax,dword [edi+12]
	push	_85
	push	dword [edi+16]
	push	_84
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
	jmp	_328
_330:
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
	je	_328
	mov	eax,esi
	push	_182
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2426
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
	jmp	_331
_333:
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
	je	_331
	mov	eax,esi
	push	_186
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2435
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
	jmp	_332
_2435:
_331:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_333
_332:
	jmp	_329
_2426:
_328:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_330
_329:
	mov	eax,dword [ebp-84]
	push	dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_71
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	jmp	_2438
_2411:
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_2439
	mov	eax,dword [ebp+8]
	push	_334
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2439:
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_71
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
_2438:
_322:
	mov	eax,dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_324
_323:
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
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2449
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
	je	_2454
	mov	eax,dword [ebp-40]
	push	1
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_2454:
	cmp	eax,0
	je	_2456
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
	jmp	_335
_337:
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
	je	_335
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
	jne	_2465
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
_2465:
_335:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_337
_336:
_2456:
	mov	eax,dword [ebp-40]
	mov	dword [ebp-84],eax
_2449:
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
	jne	_2469
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
_2469:
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
	jmp	_889
_2366:
_316:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_318
_317:
	jmp	_2474
_2359:
	mov	ebx,dword [ebp+8]
	push	edi
	push	dword [ebp-52]
	push	_338
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
_2474:
_2236:
	mov	eax,_bbNullObject
	jmp	_889
_889:
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
	push	_339
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2479
	push	_345
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2480
	push	_346
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2481
	push	_347
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2482
	push	_354
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2483
	push	_356
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2484
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2485
	push	_377
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2486
	push	_379
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2487
	push	_133
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2488
	push	_399
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2489
	jmp	_2478
_2479:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_339
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
	push	_340
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
	push	_341
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2498
	mov	eax,dword [ebp+8]
	push	_341
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
	push	_186
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	ebx,dword [ebp-80]
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_186
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
	jmp	_2504
_2498:
	mov	eax,dword [ebp+8]
	push	dword [ebp-80]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2507
	push	_bbNullObject
	push	_186
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-72]
	push	_4
	push	_bbNullObject
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-48],eax
	jmp	_342
_344:
	mov	eax,dword [ebp+8]
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp-48]
	push	_4
	push	_bbNullObject
	push	_186
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
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_339
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
	push	_340
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
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2527
	mov	eax,dword [ebp+8]
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
_2527:
	cmp	eax,0
	je	_2529
	mov	eax,dword [ebp+8]
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_186
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
	push	_259
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
_2529:
_342:
	mov	eax,dword [ebp+8]
	push	_250
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_344
_343:
	push	dword [ebp-72]
	push	dword [ebp-80]
	call	_bb_AddChild
	add	esp,8
	jmp	_2537
_2507:
	mov	eax,dword [ebp+8]
	push	_251
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2539
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp-80]
	push	_4
	push	_bbNullObject
	push	_251
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
_2539:
_2537:
	mov	eax,dword [ebp+8]
	push	_249
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2504:
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
	jmp	_892
_2480:
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
	push	_345
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
	push	_340
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
	push	_253
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
	jmp	_892
_2481:
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
	push	_346
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
	push	_254
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
	push	_340
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
	jmp	_892
_2482:
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
	push	_347
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
	push	_348
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	dword [esi+12]
	push	_4
	push	_bbNullObject
	push	_349
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
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_350
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
	push	_351
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_351
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
	push	_352
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2588
	mov	eax,dword [ebp+8]
	push	_352
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_352
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
	jmp	_2593
_2588:
	mov	eax,edi
	push	_4
	push	_bbNullObject
	push	_352
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	mov	eax,ebx
	push	_4
	push	_bbNullObject
	push	_124
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	_353
	push	_189
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
_2593:
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
	push	_252
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
	jmp	_892
_2483:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],2
	je	_2601
	mov	eax,dword [ebp+8]
	push	_355
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2601:
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
	push	_354
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	jmp	_892
_2484:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+24],2
	je	_2605
	mov	eax,dword [ebp+8]
	push	_355
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2605:
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
	push	_356
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	jmp	_892
_2485:
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
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2613
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2613
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2613
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2613
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2613
	jmp	_2612
_2613:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2612
_2612:
	push	_bbNullObject
	push	_161
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
	push	_88
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
	jmp	_357
_359:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_357:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_359
_358:
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
	jnz	_2631
	push	eax
	call	_bbGCFree
	add	esp,4
_2631:
	mov	eax,dword [ebp+8]
	mov	dword [eax+64],ebx
	mov	eax,dword [ebp+8]
	push	_84
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	mov	dword [ebp-100],eax
	push	1
	push	_2634
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	dec	dword [eax+4]
	jnz	_2638
	push	eax
	call	_bbGCFree
	add	esp,4
_2638:
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
	jnz	_2642
	push	eax
	call	_bbGCFree
	add	esp,4
_2642:
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
	je	_2644
	push	_4
	mov	eax,dword [ebp+8]
	push	dword [eax+28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2644:
	cmp	eax,0
	je	_2646
	push	_290
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
	push	_200
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+104]
	add	esp,12
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_71
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	push	_200
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
_2646:
	jmp	_360
_362:
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
	jne	_2655
	mov	eax,dword [ebp+8]
	push	_363
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2655:
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
	push	_88
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
	push	_71
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	mov	ebx,0
	jmp	_364
_366:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_364:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_366
_365:
	push	_38
	push	ebx
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_367
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
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2675
	mov	eax,dword [ebp+8]
	push	_101
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
_2675:
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2679
	jmp	_2680
_2679:
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2680:
_360:
	mov	eax,dword [ebp+8]
	push	_85
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_362
_361:
	mov	eax,dword [ebp+8]
	push	_85
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
	push	_353
	push	_240
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+168]
	add	esp,12
	mov	eax,dword [ebp-84]
	push	_4
	push	_bbNullObject
	push	_182
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
	jnz	_2692
	push	eax
	call	_bbGCFree
	add	esp,4
_2692:
	mov	eax,dword [ebp+8]
	mov	dword [eax+20],ebx
	mov	eax,dword [ebp+8]
	push	_255
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
	jnz	_2698
	push	eax
	call	_bbGCFree
	add	esp,4
_2698:
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
	jmp	_368
_370:
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
	je	_368
	push	dword [ebp-60]
	push	dword [ebp-88]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2705
	mov	eax,dword [esi+32]
	mov	dword [ebp-64],eax
	mov	eax,dword [ebp-64]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_371
_373:
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
	je	_371
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
	jmp	_374
_376:
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
	je	_374
	mov	eax,esi
	push	_71
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
	je	_2724
	mov	eax,esi
	push	_200
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
_2724:
	cmp	eax,0
	je	_2726
	mov	eax,esi
	mov	edx,dword [ebp-16]
	mov	edx,dword [edx+36]
	push	dword [edx+20]
	push	_133
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+172]
	add	esp,12
_2726:
_374:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_376
_375:
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
_371:
	mov	eax,dword [ebp-68]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_373
_372:
	jmp	_369
_2705:
_368:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_370
_369:
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
	jmp	_892
_2486:
	mov	eax,dword [ebp+8]
	cmp	dword [eax+64],_bbNullObject
	jne	_2731
	mov	eax,dword [ebp+8]
	push	_378
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2731:
	mov	eax,dword [ebp+8]
	push	_377
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	push	_bbNullObject
	push	_377
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
	jmp	_892
_2487:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+24]
	mov	dword [ebp-96],eax
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	push	_bbNullObject
	push	_379
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_340
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
	jmp	_380
_382:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	byte [ebp-4],0
	push	1
	push	_2751
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-12],eax
_385:
	mov	byte [ebp-4],0
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_186
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
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	push	_4
	push	_bbNullObject
	push	_340
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
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2764
	mov	byte [ebp-4],1
	mov	eax,dword [ebp+8]
	push	_83
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_2764:
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-12]
	push	_628
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
	jnz	_2769
	push	eax
	call	_bbGCFree
	add	esp,4
_2769:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax+20]
	sub	edx,1
	mov	eax,dword [ebp-12]
	mov	dword [eax+edx*4+24],esi
_383:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_385
_384:
	push	_bbNullObject
	push	_386
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
	je	_2773
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
	jmp	_387
_389:
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
	je	_387
	mov	eax,dword [ebp-8]
	push	_186
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2782
	mov	esi,dword [ebp-12]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_390
_392:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_390
	push	dword [ebp-8]
	push	eax
	call	_bb_AddChild
	add	esp,8
_390:
	cmp	ebx,edi
	jne	_392
_391:
_2782:
_387:
	mov	eax,dword [ebp-24]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_389
_388:
_2773:
_380:
	mov	eax,dword [ebp+8]
	push	_256
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_382
_381:
	mov	eax,dword [ebp+8]
	push	_257
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2789
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp-52]
	push	_4
	push	_bbNullObject
	push	_186
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
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4
	push	_bbNullObject
	push	_257
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
_2789:
	mov	eax,dword [ebp+8]
	push	_258
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
	jmp	_892
_2488:
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
	jnz	_2805
	push	eax
	call	_bbGCFree
	add	esp,4
_2805:
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
	push	_150
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2809
	mov	eax,dword [ebp+8]
	push	_150
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_2809:
	mov	eax,dword [ebp+8]
	push	_80
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	jmp	_393
_395:
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
	je	_2815
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_158
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2819
	push	_159
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2820
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2821
	push	_60
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2822
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2823
	jmp	_2818
_2819:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],1
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2818
_2820:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],3
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2818
_2821:
	mov	eax,dword [ebp+8]
	mov	dword [eax+72],2
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2818
_2822:
	mov	eax,dword [ebp+8]
	push	_60
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
	push	_88
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
	jmp	_396
_398:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_396:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_398
_397:
	mov	eax,dword [ebp+8]
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2839
	mov	eax,dword [ebp+8]
	push	_101
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
_2839:
	jmp	_2818
_2823:
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
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2846
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2846
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2846
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2846
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2846
	jmp	_2845
_2846:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	jmp	_2845
_2845:
	push	_bbStringClass
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	push	dword [eax+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2849
	mov	eax,_bbEmptyString
_2849:
	push	_169
	push	eax
	push	_168
	push	esi
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
	call	_bbStringConcat
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+52]
	mov	eax,dword [eax+8]
	dec	dword [eax+4]
	jnz	_2853
	push	eax
	call	_bbGCFree
	add	esp,4
_2853:
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
	jmp	_2818
_2818:
_2815:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_393:
	mov	eax,dword [ebp+8]
	push	_157
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_395
_394:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+28]
	dec	dword [eax+4]
	jnz	_2861
	push	eax
	call	_bbGCFree
	add	esp,4
_2861:
	mov	eax,dword [ebp+8]
	mov	dword [eax+28],ebx
	mov	eax,dword [ebp+8]
	push	_157
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
	jmp	_892
_2489:
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
	jne	_2869
	mov	esi,dword [ebp+8]
	push	_115
	push	ebx
	push	_400
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
_2869:
	push	_bbNullObject
	push	_399
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	edi,eax
	mov	eax,edi
	push	ebx
	push	_133
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
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2875
_403:
	mov	eax,dword [ebp+8]
	push	_86
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
	jnz	_2883
	push	eax
	call	_bbGCFree
	add	esp,4
_2883:
	mov	dword [esi+12],ebx
	mov	eax,edi
	push	dword [esi+12]
	push	_4
	push	_bbNullObject
	push	_404
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
_401:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_403
_402:
_2875:
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
	jmp	_892
_2478:
	mov	eax,_bbNullObject
	jmp	_892
_892:
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
	push	_405
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2891
	push	_137
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2892
	jmp	_2890
_2891:
	push	_bbNullObject
	push	_405
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	mov	ebx,_bbNullObject
_408:
_406:
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
	je	_2897
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_88
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
	jne	_2902
	mov	eax,dword [ebp+8]
	push	_409
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2902:
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
	jmp	_410
_412:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_410:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_412
_411:
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
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2914
	movzx	eax,byte [ebp-4]
_2914:
	cmp	eax,0
	je	_2916
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
	push	_413
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
	push	_189
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
	push	_186
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_259
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
_2916:
	mov	eax,dword [ebp+8]
	push	dword [ebp-16]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	mov	ebx,eax
	jmp	_2931
_2897:
	mov	eax,dword [ebp+8]
	push	_414
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2931:
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
	jne	_2934
	jmp	_406
_2934:
	jmp	_407
_407:
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
	jmp	_896
_2892:
	push	_bbNullObject
	push	_405
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,_bbNullObject
_417:
_415:
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
	je	_2941
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_88
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
	jne	_2946
	mov	eax,dword [ebp+8]
	push	_409
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2946:
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
	jmp	_418
_420:
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	eax,dword [ebp+8]
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	ebx,1
_418:
	mov	eax,dword [ebp+8]
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_420
_419:
	push	ebx
	push	esi
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+8]
	push	_101
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_2957
	movzx	eax,byte [ebp-4]
_2957:
	cmp	eax,0
	je	_2959
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
	push	_413
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
	push	_189
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
	push	_186
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	esi,eax
	mov	eax,dword [ebp+8]
	push	dword [eax+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_259
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
_2959:
	mov	eax,dword [ebp+8]
	push	dword [ebp-20]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+108]
	add	esp,8
	mov	ebx,eax
	jmp	_2974
_2941:
	mov	eax,dword [ebp+8]
	push	_414
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
_2974:
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
	jne	_2977
	jmp	_415
_2977:
	jmp	_416
_416:
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
	jmp	_896
_2890:
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
	jmp	_421
_423:
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
	je	_421
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
	jne	_2988
	mov	dword [ebp-36],_bbNullObject
	mov	eax,dword [ebp+8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
	mov	edi,_bbNullObject
	jmp	_424
_426:
	mov	edx,dword [ebp+8]
	mov	eax,dword [ebp-24]
	push	dword [eax+8]
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+100]
	add	esp,8
	mov	edi,eax
_424:
	mov	eax,dword [ebp+8]
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
	cmp	eax,0
	je	_2993
	movzx	eax,byte [ebp-4]
_2993:
	cmp	eax,0
	je	_2995
	cmp	edi,_bbNullObject
	sete	al
	movzx	eax,al
_2995:
	cmp	eax,0
	jne	_426
_425:
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
	je	_3002
	push	dword [ebx+12]
	push	_bbNullObject
	push	_133
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3006
	push	eax
	call	_bbGCFree
	add	esp,4
_3006:
	mov	dword [ebx+12],esi
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_3007
	jmp	_896
_3007:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
_3002:
	cmp	edi,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3008
	cmp	ebx,_bbNullObject
	setne	al
	movzx	eax,al
_3008:
	cmp	eax,0
	je	_3010
	mov	eax,dword [ebx+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_3010:
	cmp	eax,0
	je	_3012
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	edi,eax
_3012:
	mov	eax,dword [ebp+8]
	push	_101
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
	je	_3014
	movzx	eax,byte [ebp-4]
_3014:
	cmp	eax,0
	je	_3016
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
	je	_3020
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_413
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	jmp	_3022
_3020:
	push	_bbNullObject
	push	_413
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
_3022:
	cmp	ebx,_bbNullObject
	je	_3023
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
	jmp	_3025
_3023:
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
_3025:
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_189
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
	je	_3032
	mov	dword [eax+20],0
_3032:
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
	jmp	_3034
_3016:
	cmp	ebx,_bbNullObject
	je	_3035
	cmp	edi,_bbNullObject
	je	_3036
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	mov	esi,edi
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_427
_429:
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
	je	_427
	mov	edx,dword [ebp-36]
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+164]
	add	esp,8
_427:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_429
_428:
	jmp	_3044
_3036:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
_3044:
	jmp	_3045
_3035:
	mov	eax,dword [ebp-24]
	push	edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
_3045:
_3034:
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
	je	_3049
	mov	dword [ebx+20],0
_3049:
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
	jmp	_896
_2988:
_421:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_423
_422:
	mov	ebx,_bbNullObject
	jmp	_896
_896:
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
	push	_81
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3052
	push	_bbNullObject
	push	_430
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	mov	edx,dword [ebp-36]
	mov	eax,dword [ebp+12]
	push	dword [eax+12]
	push	_4
	push	_bbNullObject
	push	_280
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
	jmp	_431
_433:
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
	je	_431
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3063
	mov	dword [ebp-16],esi
	jmp	_432
_3063:
_431:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_433
_432:
	cmp	dword [ebp-16],_bbNullObject
	jne	_3064
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_434
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
	push	_435
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	jmp	_901
_3064:
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
	je	_3078
	mov	eax,dword [ebp+8]
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
_3078:
	cmp	eax,0
	je	_3080
	mov	eax,dword [ebp+8]
	push	_bbNullObject
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-24],eax
_3080:
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
	jmp	_436
_438:
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
	je	_436
	push	dword [ebp-12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3089
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
	jmp	_437
_3089:
_436:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_438
_437:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,0
	jne	_3091
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
	jmp	_439
_441:
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
	je	_439
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
	push	_169
	push	dword [ebp-12]
	push	_168
	mov	eax,dword [ebp-16]
	push	dword [eax+20]
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
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_3106
	push	eax
	call	_bbGCFree
	add	esp,4
_3106:
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
	je	_3109
	mov	eax,dword [esi+12]
	mov	dword [ebp-20],eax
	mov	eax,dword [esi+8]
	mov	dword [ebp-28],eax
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
	je	_3111
	mov	ebx,esi
	jmp	_901
_3111:
	jmp	_440
_3109:
	inc	dword [ebx+4]
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+48]
	dec	dword [eax+4]
	jnz	_3115
	push	eax
	call	_bbGCFree
	add	esp,4
_3115:
	mov	eax,dword [ebp+8]
	mov	dword [eax+48],ebx
_439:
	mov	eax,dword [ebp-8]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_441
_440:
_3091:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_3116
	mov	ebx,dword [ebp+8]
	mov	eax,dword [ebp+8]
	push	_115
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	_442
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
_3116:
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
	jne	_3120
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
	jne	_3124
	push	dword [ebp-36]
	push	dword [ebx+12]
	call	_bb_AddChild
	add	esp,8
	jmp	_901
_3124:
	mov	eax,dword [ebp-36]
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_282
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
	jnz	_3130
	push	eax
	call	_bbGCFree
	add	esp,4
_3130:
	mov	dword [ebx+12],esi
	jmp	_901
_3120:
	mov	eax,dword [ebp-36]
	push	_4
	push	_bbNullObject
	push	_282
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
	jmp	_901
_3052:
	mov	ebx,_bbNullObject
	jmp	_901
_901:
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
_445:
	mov	eax,edi
	push	_86
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
	jnz	_3145
	push	eax
	call	_bbGCFree
	add	esp,4
_3145:
	mov	dword [esi+12],ebx
	mov	eax,dword [ebp-8]
	push	dword [esi+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+68]
	add	esp,8
	mov	eax,edi
	push	_87
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+124]
	add	esp,8
	add	dword [ebp-4],1
_443:
	mov	eax,edi
	push	_86
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_445
_444:
	mov	eax,dword [ebp+12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3149
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+12]
	cmp	edx,dword [eax+20]
	setne	al
	movzx	eax,al
_3149:
	cmp	eax,0
	je	_3151
	mov	ebx,edi
	push	_115
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_447
	push	dword [ebp-4]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_446
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_3151:
	mov	eax,dword [ebp-8]
	jmp	_905
_905:
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
	jmp	_448
_450:
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
	je	_448
	push	dword [esi+12]
	push	dword [ebp+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3159
	mov	ebx,dword [ebp+8]
	push	dword [esi+12]
	push	_451
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_910
_3159:
_448:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_450
_449:
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
	jne	_3165
	push	_bbNullObject
	push	_236
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
	jmp	_3166
_3165:
	push	_bbNullObject
	push	_235
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	ebx,eax
_3166:
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
	jmp	_910
_910:
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
	jmp	_452
_454:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_452
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_455
_457:
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
	je	_455
	push	dword [ebp+12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3180
	mov	eax,esi
	jmp	_914
_3180:
_455:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_457
_456:
_452:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_454
_453:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+12]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_458
_460:
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
	je	_458
	push	dword [ebp+12]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3187
	mov	eax,esi
	jmp	_914
_3187:
_458:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_460
_459:
	mov	eax,_bbNullObject
	jmp	_914
_914:
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
	jmp	_461
_463:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_461
	mov	esi,eax
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_464
_466:
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
	je	_464
	mov	edx,edi
	push	eax
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+68]
	add	esp,8
_464:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_466
_465:
_461:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_463
_462:
	mov	eax,edi
	jmp	_917
_917:
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
	jmp	_921
_921:
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
	push	_124
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3203
	push	_123
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3203:
	cmp	eax,0
	jne	_3205
	push	_122
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3205:
	cmp	eax,0
	jne	_3207
	push	_126
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3207:
	cmp	eax,0
	jne	_3209
	push	_188
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3209:
	cmp	eax,0
	jne	_3211
	push	_187
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3211:
	cmp	eax,0
	jne	_3213
	push	_191
	push	edi
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3213:
	cmp	eax,0
	je	_3215
	mov	byte [ebp-4],1
	jmp	_925
_3215:
	mov	esi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_467
_469:
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
	je	_467
	push	edi
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3222
	mov	byte [ebp-4],1
	jmp	_925
_3222:
_467:
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_469
_468:
	mov	byte [ebp-4],0
	jmp	_925
_925:
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
	jne	_3223
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+128]
	add	esp,4
	jmp	_929
_3223:
	push	_471
	push	_80
	push	ebx
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_470
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+140]
	add	esp,8
_3225:
	mov	eax,_bbEmptyString
	jmp	_929
_929:
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
	je	_3227
	mov	eax,dword [ebx+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+52]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_3232
	push	eax
	call	_bbGCFree
	add	esp,4
_3232:
	mov	dword [ebx+52],esi
	jmp	_3233
_3227:
	call	_bbEnd
_3233:
	cmp	dword [ebx+52],_bbNullObject
	jne	_3234
	push	_472
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	jmp	_3236
_3234:
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
	jne	_3239
	mov	eax,_bbEmptyString
_3239:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3243
	push	eax
	call	_bbGCFree
	add	esp,4
_3243:
	mov	dword [ebx+48],esi
	push	_80
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3244
	add	dword [ebx+56],1
_3244:
_3236:
	mov	eax,dword [ebx+48]
	jmp	_932
_932:
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
	je	_3245
	mov	eax,dword [ebx+52]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_3250
	push	eax
	call	_bbGCFree
	add	esp,4
_3250:
	mov	dword [ebx+52],esi
	jmp	_3251
_3245:
	call	_bbEnd
_3251:
	cmp	dword [ebx+52],_bbNullObject
	jne	_3252
	push	_473
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	jmp	_3254
_3252:
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
	jne	_3257
	mov	eax,_bbEmptyString
_3257:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3261
	push	eax
	call	_bbGCFree
	add	esp,4
_3261:
	mov	dword [ebx+48],esi
	push	_80
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3262
	sub	dword [ebx+56],1
_3262:
_3254:
	mov	eax,dword [ebx+48]
	jmp	_935
_935:
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
	jmp	_938
_938:
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
	push	_477
	push	_471
	push	_80
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_476
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_475
	push	ebx
	push	_474
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	push	_80
	push	_82
	push	_95
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
	push	_478
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
	push	_479
	push	ebx
	call	_brl_stream_SaveString
	add	esp,8
	push	ebx
	call	_bbWriteStdout
	add	esp,4
	mov	byte [esi+68],1
	jmp	_480
_482:
	mov	eax,esi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+128]
	add	esp,4
_480:
	mov	eax,esi
	push	_80
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
	je	_3265
	mov	eax,dword [esi+52]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_3265:
	cmp	eax,0
	jne	_482
_481:
	mov	eax,0
	jmp	_942
_942:
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
	push	_477
	push	_471
	push	_80
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_476
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_475
	push	ebx
	push	_483
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	push	_80
	push	_82
	push	_95
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
	push	_478
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
	push	_479
	push	ebx
	call	_brl_stream_SaveString
	add	esp,8
	push	ebx
	call	_bbWriteStdout
	add	esp,4
	call	_bbEnd
	mov	eax,0
	jmp	_946
_946:
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
	jmp	_949
_949:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_952:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_3275
	push	eax
	call	_bbGCFree
	add	esp,4
_3275:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3277
	push	eax
	call	_bbGCFree
	add	esp,4
_3277:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3279
	push	eax
	call	_bbGCFree
	add	esp,4
_3279:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3281
	push	eax
	call	_bbGCFree
	add	esp,4
_3281:
	mov	eax,0
	jmp	_3273
_3273:
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
	jnz	_3285
	push	eax
	call	_bbGCFree
	add	esp,4
_3285:
	mov	dword [esi+8],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3289
	push	eax
	call	_bbGCFree
	add	esp,4
_3289:
	mov	dword [esi+16],ebx
	mov	ebx,dword [ebp+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_3293
	push	eax
	call	_bbGCFree
	add	esp,4
_3293:
	mov	dword [esi+12],ebx
	mov	ebx,dword [ebp+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_3297
	push	eax
	call	_bbGCFree
	add	esp,4
_3297:
	mov	dword [esi+20],ebx
	mov	eax,esi
	jmp	_959
_959:
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
	jmp	_962
_962:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_GetNode:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+12]
	jmp	_965
_965:
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
	jmp	_968
_968:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_971:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_3302
	push	eax
	call	_bbGCFree
	add	esp,4
_3302:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3304
	push	eax
	call	_bbGCFree
	add	esp,4
_3304:
	mov	eax,0
	jmp	_3300
_3300:
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
	jnz	_3308
	push	eax
	call	_bbGCFree
	add	esp,4
_3308:
	mov	dword [__bb_TDatatype_IntDatatype],ebx
	mov	ebx,_124
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3312
	push	eax
	call	_bbGCFree
	add	esp,4
_3312:
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
	jnz	_3316
	push	eax
	call	_bbGCFree
	add	esp,4
_3316:
	mov	dword [__bb_TDatatype_FloatDatatype],ebx
	mov	ebx,_122
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3320
	push	eax
	call	_bbGCFree
	add	esp,4
_3320:
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
	jnz	_3324
	push	eax
	call	_bbGCFree
	add	esp,4
_3324:
	mov	dword [__bb_TDatatype_StringDatatype],ebx
	mov	ebx,_123
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3328
	push	eax
	call	_bbGCFree
	add	esp,4
_3328:
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
	jnz	_3332
	push	eax
	call	_bbGCFree
	add	esp,4
_3332:
	mov	dword [__bb_TDatatype_ByteDatatype],ebx
	mov	ebx,_126
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3336
	push	eax
	call	_bbGCFree
	add	esp,4
_3336:
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
	jnz	_3340
	push	eax
	call	_bbGCFree
	add	esp,4
_3340:
	mov	dword [__bb_TDatatype_LongDatatype],ebx
	mov	ebx,_188
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3344
	push	eax
	call	_bbGCFree
	add	esp,4
_3344:
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
	jnz	_3348
	push	eax
	call	_bbGCFree
	add	esp,4
_3348:
	mov	dword [__bb_TDatatype_DoubleDatatype],ebx
	mov	ebx,_191
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3352
	push	eax
	call	_bbGCFree
	add	esp,4
_3352:
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
	jnz	_3356
	push	eax
	call	_bbGCFree
	add	esp,4
_3356:
	mov	dword [__bb_TDatatype_ShortDatatype],ebx
	mov	ebx,_187
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3360
	push	eax
	call	_bbGCFree
	add	esp,4
_3360:
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
	jnz	_3364
	push	eax
	call	_bbGCFree
	add	esp,4
_3364:
	mov	dword [__bb_TDatatype_VoidDatatype],ebx
	mov	ebx,_484
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3368
	push	eax
	call	_bbGCFree
	add	esp,4
_3368:
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
	jnz	_3372
	push	eax
	call	_bbGCFree
	add	esp,4
_3372:
	mov	dword [__bb_TDatatype_NullDatatype],ebx
	mov	ebx,_193
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	mov	eax,dword [eax+16]
	dec	dword [eax+4]
	jnz	_3376
	push	eax
	call	_bbGCFree
	add	esp,4
_3376:
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
	jmp	_973
_973:
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
	je	_3423
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3424
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3425
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3426
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3427
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3428
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3429
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	push	dword [eax+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3430
	mov	ebx,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_485
_487:
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
	je	_485
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
	jne	_3437
	mov	eax,esi
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3437:
_485:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_487
_486:
	cmp	dword [__bb_TCompiler_Current],_bbNullObject
	jne	_3439
	push	_488
	call	_brl_blitz_RuntimeError
	add	esp,4
_3439:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_115
	push	dword [ebp+8]
	push	_489
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
	jmp	_3422
_3423:
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3424:
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3425:
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3426:
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3427:
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3428:
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3429:
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3430:
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	push	dword [ebp+12]
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+60]
	add	esp,8
	jmp	_977
_3422:
	mov	eax,_bbNullObject
	jmp	_977
_977:
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
	push	_133
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
	jnz	_3457
	push	eax
	call	_bbGCFree
	add	esp,4
_3457:
	mov	dword [ebx+16],esi
	mov	eax,ebx
	jmp	_980
_980:
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
	jnz	_3462
	push	eax
	call	_bbGCFree
	add	esp,4
_3462:
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
	jnz	_3466
	push	eax
	call	_bbGCFree
	add	esp,4
_3466:
	mov	dword [ebx+24],edi
	movzx	eax,byte [esi+8]
	mov	eax,eax
	mov	byte [ebx+8],al
	mov	eax,ebx
	jmp	_984
_984:
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
	push	_133
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
	jmp	_988
_988:
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
	push	_193
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3469
	push	_193
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3469:
	cmp	eax,0
	je	_3471
	mov	eax,dword [ebp+12]
	movzx	eax,byte [eax+8]
	cmp	eax,0
	jne	_3472
	mov	eax,dword [ebp+8]
	movzx	eax,byte [eax+8]
_3472:
	cmp	eax,0
	je	_3474
	mov	eax,_bbNullObject
	jmp	_992
_3474:
_3471:
	mov	eax,dword [ebp+8]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebp+12]
	cmp	edx,dword [eax+20]
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3475
	push	_193
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3475:
	cmp	eax,0
	je	_3477
	push	_193
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_3477:
	cmp	eax,0
	je	_3479
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_115
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_274
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
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
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
_3479:
	push	_bbNullObject
	push	_491
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-4],eax
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	_351
	push	edx
	mov	eax,dword [edx]
	call	dword [eax+168]
	add	esp,12
	mov	edx,dword [ebp-4]
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	_492
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
	jne	_3484
	mov	eax,_bbNullObject
	jmp	_992
_3484:
	mov	eax,dword [ebp+8]
	mov	ebx,dword [eax+24]
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_493
_495:
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
	je	_493
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3491
	movzx	eax,byte [esi+8]
	cmp	eax,0
	jne	_3492
	mov	eax,dword [ebp+12]
	movzx	eax,byte [eax+8]
_3492:
	cmp	eax,0
	je	_3494
	mov	eax,dword [ebp-4]
	jmp	_992
_3494:
	mov	eax,dword [ebp-4]
	jmp	_992
_3491:
_493:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_495
_494:
	mov	eax,dword [ebp+8]
	mov	eax,dword [eax+20]
	cmp	eax,0
	je	_3496
	push	_193
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3496:
	cmp	eax,0
	jne	_3500
	push	_193
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3498
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+20]
_3498:
_3500:
	cmp	eax,0
	je	_3502
	mov	eax,_bbNullObject
	jmp	_992
_3502:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_499
	mov	eax,dword [ebp+12]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_497
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	_498
	mov	eax,dword [ebp+8]
	push	dword [eax+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_497
	mov	eax,dword [ebp+8]
	push	dword [eax+16]
	push	_496
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_992
_992:
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
	je	_3506
	push	ebx
	push	esi
	call	_bb_AddChild
	add	esp,8
	mov	eax,esi
	jmp	_997
_3506:
	mov	eax,ebx
	jmp	_997
_997:
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
	push	_367
	push	dword [ebx+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	jmp	_1000
_1000:
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
	jmp	_3510
_502:
	push	_503
	push	eax
	call	_bbStringConcat
	add	esp,8
_500:
	add	esi,1
_3510:
	cmp	esi,ebx
	jle	_502
_501:
	jmp	_1003
_1003:
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
	jmp	_1006
_1006:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_1009:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3517
	push	eax
	call	_bbGCFree
	add	esp,4
_3517:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3519
	push	eax
	call	_bbGCFree
	add	esp,4
_3519:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_3521
	push	eax
	call	_bbGCFree
	add	esp,4
_3521:
	mov	eax,0
	jmp	_3515
_3515:
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
	push	_543
	call	_bbArraySlice
	add	esp,16
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3525
	push	eax
	call	_bbGCFree
	add	esp,4
_3525:
	mov	dword [esi+16],ebx
	mov	ebx,edi
	inc	dword [ebx+4]
	mov	edx,dword [esi+16]
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	eax,dword [edx+eax*4+24]
	dec	dword [eax+4]
	jnz	_3529
	push	eax
	call	_bbGCFree
	add	esp,4
_3529:
	mov	edx,dword [esi+16]
	mov	eax,dword [esi+16]
	mov	eax,dword [eax+20]
	sub	eax,1
	mov	dword [edx+eax*4+24],ebx
	mov	eax,0
	jmp	_1013
_1013:
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
	jmp	_504
_506:
	mov	eax,dword [ebp-12]
	mov	edx,dword [eax]
	add	dword [ebp-12],4
	cmp	edx,_bbNullObject
	je	_504
	mov	eax,dword [ebp+12]
	push	dword [eax+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3535
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	dword [ebp-8],eax
	jmp	_507
_509:
	mov	edx,dword [ebx]
	add	ebx,4
	cmp	edx,_bbNullObject
	je	_507
	cmp	edx,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3541
	cmp	edi,_bbNullObject
	setne	al
	movzx	eax,al
_3541:
	cmp	eax,0
	je	_3543
	push	dword [edi+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3543:
	cmp	eax,0
	je	_3545
	mov	byte [ebp-4],1
	jmp	_1018
_3545:
_507:
	cmp	ebx,dword [ebp-8]
	jne	_509
_508:
_3535:
_504:
	mov	eax,dword [ebp-20]
	cmp	dword [ebp-12],eax
	jne	_506
_505:
	mov	byte [ebp-4],0
	jmp	_1018
_1018:
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
	jmp	_510
_512:
	mov	eax,dword [ebp-4]
	mov	edx,dword [eax]
	add	dword [ebp-4],4
	cmp	edx,_bbNullObject
	je	_510
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	dword [edx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3551
	mov	eax,dword [ebp+8]
	mov	esi,dword [eax+16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_513
_515:
	mov	eax,dword [ebx]
	add	ebx,4
	cmp	eax,_bbNullObject
	je	_513
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx+8]
	push	dword [edx+16]
	push	dword [eax+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3557
	mov	eax,dword [ebp+20]
	push	_4
	push	_bbNullObject
	push	_280
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	mov	eax,dword [ebp+20]
	push	_4
	push	_bbNullObject
	push	_282
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
	jle	_3563
	mov	ebx,dword [ebp+12]
	jmp	_3564
_3563:
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	mov	edx,dword [ebp+16]
	mov	edx,dword [edx+8]
	mov	edx,dword [edx+12]
	cmp	dword [eax+12],edx
	jge	_3565
	mov	ebx,dword [ebp+16]
	jmp	_3566
_3565:
	mov	ebx,dword [ebp+12]
_3566:
_3564:
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
	jmp	_1024
_3557:
_513:
	cmp	ebx,edi
	jne	_515
_514:
_3551:
_510:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_512
_511:
	mov	ebx,dword [__bb_TCompiler_Current]
	push	_275
	mov	eax,dword [ebp+16]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_274
	mov	eax,dword [ebp+12]
	mov	eax,dword [eax+8]
	push	dword [eax+16]
	push	_517
	mov	eax,dword [ebp+8]
	push	dword [eax+12]
	push	_516
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_1024
_1024:
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
	push	_3570
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TOperator_Priority]
	dec	dword [eax+4]
	jnz	_3574
	push	eax
	call	_bbGCFree
	add	esp,4
_3574:
	mov	dword [__bb_TOperator_Priority],ebx
	mov	esi,0
	mov	eax,dword [__bb_TOperator_Priority]
	mov	edi,dword [eax+20]
	jmp	_3576
_520:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+esi*4+24]
	dec	dword [eax+4]
	jnz	_3581
	push	eax
	call	_bbGCFree
	add	esp,4
_3581:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	dword [eax+esi*4+24],ebx
_518:
	add	esi,1
_3576:
	cmp	esi,edi
	jl	_520
_519:
	push	6
	push	_543
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
	push	_521
	push	_521
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_522
	push	_522
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_100
	push	_523
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_524
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_98
	push	_525
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_99
	push	_526
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_543
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
	push	_96
	push	_527
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_543
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
	push	_97
	push	_528
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_529
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	7
	push	_543
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
	push	_89
	push	_530
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_531
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_91
	push	_279
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_92
	push	_532
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	6
	push	_543
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
	push	_93
	push	_533
	push	4
	call	dword [_bb_TOperator+64]
	add	esp,16
	mov	eax,0
	jmp	_1026
_1026:
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
	jnz	_3687
	push	eax
	call	_bbGCFree
	add	esp,4
_3687:
	mov	dword [ebx+8],esi
	mov	esi,edi
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_3691
	push	eax
	call	_bbGCFree
	add	esp,4
_3691:
	mov	dword [ebx+12],esi
	mov	esi,dword [ebp+20]
	inc	dword [esi+4]
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_3695
	push	eax
	call	_bbGCFree
	add	esp,4
_3695:
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
	jmp	_1032
_1032:
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
	jmp	_534
_536:
	mov	eax,dword [ebp-4]
	mov	eax,dword [eax]
	add	dword [ebp-4],4
	cmp	eax,_bbNullObject
	je	_534
	mov	ebx,eax
	mov	eax,ebx
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_537
_539:
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
	je	_537
	push	dword [ebp+8]
	push	dword [esi+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3708
	mov	eax,esi
	jmp	_1035
_3708:
_537:
	mov	eax,edi
	push	eax
	mov	eax,dword [eax]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_539
_538:
_534:
	mov	eax,dword [ebp-12]
	cmp	dword [ebp-4],eax
	jne	_536
_535:
	mov	eax,_bbNullObject
	jmp	_1035
_1035:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_1042:
	dd	0
_541:
	db	"TIdentifier",0
_542:
	db	"Datatype",0
_543:
	db	":TDatatype",0
_544:
	db	"Name",0
_545:
	db	"$",0
_546:
	db	"New",0
_547:
	db	"()i",0
_548:
	db	"Delete",0
_549:
	db	"Create",0
_550:
	db	"($,:TDatatype):TIdentifier",0
_551:
	db	"ToNode",0
_552:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_540:
	dd	2
	dd	_541
	dd	3
	dd	_542
	dd	_543
	dd	8
	dd	3
	dd	_544
	dd	_545
	dd	12
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_549
	dd	_550
	dd	48
	dd	6
	dd	_551
	dd	_552
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_540
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
_554:
	db	"TIdentifierFunction",0
_555:
	db	"Gen",0
_556:
	db	"b",0
_557:
	db	"RealName",0
_558:
	db	"ParamList",0
_559:
	db	":brl.linkedlist.TList",0
_560:
	db	"UserFunc",0
_561:
	db	"Used",0
_562:
	db	"Childs",0
_563:
	db	"OWner",0
_564:
	db	":TTypeTemplate",0
_565:
	db	"Datatypes",0
_566:
	db	"use",0
_567:
	db	"()b",0
_568:
	db	"AddParameter",0
_569:
	db	"($,:TDatatype,$)i",0
_570:
	db	"GenName",0
_571:
	db	"Copy",0
_572:
	db	"():TIdentifierFunction",0
	align	4
_553:
	dd	2
	dd	_554
	dd	3
	dd	_555
	dd	_556
	dd	16
	dd	3
	dd	_557
	dd	_545
	dd	20
	dd	3
	dd	_558
	dd	_559
	dd	24
	dd	3
	dd	_560
	dd	_556
	dd	28
	dd	3
	dd	_561
	dd	_556
	dd	29
	dd	3
	dd	_562
	dd	_559
	dd	32
	dd	3
	dd	_563
	dd	_564
	dd	36
	dd	3
	dd	_565
	dd	_545
	dd	40
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_566
	dd	_567
	dd	56
	dd	6
	dd	_568
	dd	_569
	dd	60
	dd	6
	dd	_570
	dd	_547
	dd	64
	dd	6
	dd	_571
	dd	_572
	dd	68
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_553
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
_574:
	db	"TIdentifierVariable",0
_575:
	db	"Info",0
_576:
	db	":Object",0
	align	4
_573:
	dd	2
	dd	_574
	dd	3
	dd	_575
	dd	_576
	dd	16
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_573
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
_578:
	db	"TTypeField",0
_579:
	db	"ISPRIVATE",0
	align	4
_580:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_581:
	db	"ISPROTECTED",0
	align	4
_582:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	50
_583:
	db	"ISPUBLIC",0
	align	4
_584:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	51
_585:
	db	"Mode",0
_586:
	db	"i",0
_587:
	db	"Create2",0
_588:
	db	"($,:TDatatype,i):TIdentifier",0
	align	4
_577:
	dd	2
	dd	_578
	dd	1
	dd	_579
	dd	_556
	dd	_580
	dd	1
	dd	_581
	dd	_556
	dd	_582
	dd	1
	dd	_583
	dd	_556
	dd	_584
	dd	3
	dd	_585
	dd	_586
	dd	20
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_587
	dd	_588
	dd	56
	dd	0
	align	4
_bb_TTypeField:
	dd	_bb_TIdentifierVariable
	dd	_bbObjectFree
	dd	_577
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
_590:
	db	"TTypeMethod",0
_591:
	db	"ISNORMAL",0
	align	4
_592:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_593:
	db	"ISOVERRIDE",0
_594:
	db	"ISVIRTUAL",0
_595:
	db	"ISABSTRACT",0
_596:
	db	"ISFINAL",0
	align	4
_597:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	52
_598:
	db	"ISSTATIC",0
	align	4
_599:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	53
_600:
	db	"State",0
_601:
	db	"Func",0
_602:
	db	":TIdentifierFunction",0
_603:
	db	"From",0
_604:
	db	"VirtualID",0
_605:
	db	"OldName",0
_606:
	db	"($,:TTypeTemplate,b,b,i,$):TTypeMethod",0
	align	4
_589:
	dd	2
	dd	_590
	dd	1
	dd	_591
	dd	_556
	dd	_592
	dd	1
	dd	_593
	dd	_556
	dd	_580
	dd	1
	dd	_594
	dd	_556
	dd	_582
	dd	1
	dd	_595
	dd	_556
	dd	_584
	dd	1
	dd	_596
	dd	_556
	dd	_597
	dd	1
	dd	_598
	dd	_556
	dd	_599
	dd	1
	dd	_579
	dd	_556
	dd	_580
	dd	1
	dd	_581
	dd	_556
	dd	_582
	dd	1
	dd	_583
	dd	_556
	dd	_584
	dd	3
	dd	_585
	dd	_586
	dd	8
	dd	3
	dd	_600
	dd	_556
	dd	12
	dd	3
	dd	_601
	dd	_602
	dd	16
	dd	3
	dd	_544
	dd	_545
	dd	20
	dd	3
	dd	_603
	dd	_564
	dd	24
	dd	3
	dd	_604
	dd	_586
	dd	28
	dd	3
	dd	_605
	dd	_545
	dd	32
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_549
	dd	_606
	dd	48
	dd	0
	align	4
_bb_TTypeMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_589
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
_608:
	db	"TTypeTemplate",0
_609:
	db	"Fields",0
_610:
	db	"Methods",0
_611:
	db	"SuperType",0
_612:
	db	"LastID",0
_613:
	db	"VIDMap",0
_614:
	db	":brl.map.TMap",0
_615:
	db	"Init",0
_616:
	db	"GetFields",0
_617:
	db	"(i):brl.linkedlist.TList",0
_618:
	db	"GetMethods",0
_619:
	db	"AddField",0
_620:
	db	"($,:TDatatype,:bah.libxml.TxmlNode,i)i",0
_621:
	db	"AddMethod",0
_622:
	db	"($,:TDatatype,b,i,$)i",0
_623:
	db	"():bah.libxml.TxmlNode",0
	align	4
_607:
	dd	2
	dd	_608
	dd	3
	dd	_585
	dd	_586
	dd	8
	dd	3
	dd	_609
	dd	_559
	dd	12
	dd	3
	dd	_610
	dd	_559
	dd	16
	dd	3
	dd	_544
	dd	_545
	dd	20
	dd	3
	dd	_611
	dd	_564
	dd	24
	dd	3
	dd	_542
	dd	_543
	dd	28
	dd	3
	dd	_612
	dd	_586
	dd	32
	dd	3
	dd	_613
	dd	_614
	dd	36
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	7
	dd	_615
	dd	_547
	dd	48
	dd	6
	dd	_616
	dd	_617
	dd	52
	dd	6
	dd	_618
	dd	_617
	dd	56
	dd	6
	dd	_619
	dd	_620
	dd	60
	dd	6
	dd	_621
	dd	_622
	dd	64
	dd	6
	dd	_551
	dd	_623
	dd	68
	dd	0
	align	4
_bb_TTypeTemplate:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_607
	dd	40
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
_625:
	db	"TParameter",0
_626:
	db	"Pre",0
_627:
	db	"Node",0
_628:
	db	":bah.libxml.TxmlNode",0
_629:
	db	"($,:TDatatype,$):TParameter",0
	align	4
_624:
	dd	2
	dd	_625
	dd	3
	dd	_544
	dd	_545
	dd	8
	dd	3
	dd	_542
	dd	_543
	dd	12
	dd	3
	dd	_626
	dd	_545
	dd	16
	dd	3
	dd	_627
	dd	_628
	dd	20
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_549
	dd	_629
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_624
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
_1038:
	dd	0
	align	4
__bb_TCompiler_Templates:
	dd	_bbNullObject
_631:
	db	"TCompiler",0
_632:
	db	"Token",0
_633:
	db	"GlobalVarIdentifier",0
_634:
	db	"FunctionIdentifier",0
_635:
	db	"LocalVarIdentifier",0
_636:
	db	"[]:brl.linkedlist.TList",0
_637:
	db	"CurrentMode",0
_638:
	db	"CurrentType",0
_639:
	db	"Lines",0
_640:
	db	"[]$",0
_641:
	db	"XMLFile",0
_642:
	db	":bah.libxml.TxmlDoc",0
_643:
	db	"CurrentRoot",0
_644:
	db	"CurrentLineNode",0
_645:
	db	"CurrentToken",0
_646:
	db	"CurrentLink",0
_647:
	db	":brl.linkedlist.TLink",0
_648:
	db	"CurrentLine",0
_649:
	db	"LastFunc",0
_650:
	db	"FUnctionDatatype",0
_651:
	db	"AnyError",0
_652:
	db	"ScopeMode",0
_653:
	db	"LoadFunction",0
_654:
	db	"($)i",0
_655:
	db	"LoadHeaders",0
_656:
	db	"Tokenizer",0
_657:
	db	"Analyser",0
_658:
	db	"Parser",0
_659:
	db	"(b)i",0
_660:
	db	"InternBlock",0
_661:
	db	"(:bah.libxml.TxmlNode)i",0
_662:
	db	"Block",0
_663:
	db	"Expression",0
_664:
	db	"(i):TRecursive",0
_665:
	db	"Factor",0
_666:
	db	"():TRecursive",0
_667:
	db	"Funk",0
_668:
	db	"(:bah.libxml.TxmlNode):TRecursive",0
_669:
	db	"Keyword",0
_670:
	db	"Variable",0
_671:
	db	"(b):TRecursive",0
_672:
	db	"ParseType",0
_673:
	db	"(:TRecursive,:brl.linkedlist.TList):TRecursive",0
_674:
	db	"ParseArray",0
_675:
	db	"(:TDatatype):brl.linkedlist.TList",0
_676:
	db	"RegisterVariable",0
_677:
	db	"($,:TDatatype):bah.libxml.TxmlNode",0
_678:
	db	"GetVariable",0
_679:
	db	"($):TIdentifierVariable",0
_680:
	db	"GetVariablelist",0
_681:
	db	"():brl.linkedlist.TList",0
_682:
	db	"IsToken",0
_683:
	db	"($)b",0
_684:
	db	"ValidDatatype",0
_685:
	db	"Match",0
_686:
	db	"($)$",0
_687:
	db	"GetNext",0
_688:
	db	"()$",0
_689:
	db	"GetBefore",0
_690:
	db	"GetCurrent",0
_691:
	db	"Error",0
_692:
	db	"Warning",0
	align	4
_630:
	dd	2
	dd	_631
	dd	3
	dd	_632
	dd	_559
	dd	8
	dd	3
	dd	_633
	dd	_559
	dd	12
	dd	3
	dd	_634
	dd	_559
	dd	16
	dd	3
	dd	_635
	dd	_636
	dd	20
	dd	3
	dd	_637
	dd	_586
	dd	24
	dd	3
	dd	_638
	dd	_545
	dd	28
	dd	3
	dd	_639
	dd	_640
	dd	32
	dd	3
	dd	_641
	dd	_642
	dd	36
	dd	3
	dd	_643
	dd	_628
	dd	40
	dd	3
	dd	_644
	dd	_628
	dd	44
	dd	3
	dd	_645
	dd	_545
	dd	48
	dd	3
	dd	_646
	dd	_647
	dd	52
	dd	3
	dd	_648
	dd	_586
	dd	56
	dd	3
	dd	_649
	dd	_628
	dd	60
	dd	3
	dd	_650
	dd	_543
	dd	64
	dd	3
	dd	_651
	dd	_556
	dd	68
	dd	3
	dd	_652
	dd	_586
	dd	72
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_653
	dd	_654
	dd	48
	dd	6
	dd	_655
	dd	_654
	dd	52
	dd	6
	dd	_656
	dd	_654
	dd	56
	dd	6
	dd	_657
	dd	_547
	dd	60
	dd	6
	dd	_658
	dd	_659
	dd	64
	dd	6
	dd	_660
	dd	_661
	dd	68
	dd	6
	dd	_662
	dd	_547
	dd	72
	dd	6
	dd	_663
	dd	_664
	dd	76
	dd	6
	dd	_665
	dd	_666
	dd	80
	dd	6
	dd	_667
	dd	_668
	dd	84
	dd	6
	dd	_669
	dd	_666
	dd	88
	dd	6
	dd	_670
	dd	_671
	dd	92
	dd	6
	dd	_672
	dd	_673
	dd	96
	dd	6
	dd	_674
	dd	_675
	dd	100
	dd	6
	dd	_676
	dd	_677
	dd	104
	dd	6
	dd	_678
	dd	_679
	dd	108
	dd	6
	dd	_680
	dd	_681
	dd	112
	dd	6
	dd	_682
	dd	_683
	dd	116
	dd	6
	dd	_684
	dd	_683
	dd	120
	dd	6
	dd	_685
	dd	_686
	dd	124
	dd	6
	dd	_687
	dd	_688
	dd	128
	dd	6
	dd	_689
	dd	_688
	dd	132
	dd	6
	dd	_690
	dd	_688
	dd	136
	dd	6
	dd	_691
	dd	_654
	dd	140
	dd	6
	dd	_692
	dd	_654
	dd	144
	dd	0
	align	4
_bb_TCompiler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_630
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
_694:
	db	"TRecursive",0
_695:
	db	"Positions",0
_696:
	db	"(:bah.libxml.TxmlNode,:TDatatype,:Object,:brl.linkedlist.TList):TRecursive",0
_697:
	db	"GetDatatype",0
_698:
	db	"():TDatatype",0
_699:
	db	"GetNode",0
	align	4
_693:
	dd	2
	dd	_694
	dd	3
	dd	_542
	dd	_543
	dd	8
	dd	3
	dd	_627
	dd	_628
	dd	12
	dd	3
	dd	_575
	dd	_576
	dd	16
	dd	3
	dd	_695
	dd	_576
	dd	20
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_549
	dd	_696
	dd	48
	dd	6
	dd	_697
	dd	_698
	dd	52
	dd	6
	dd	_699
	dd	_623
	dd	56
	dd	0
	align	4
_bb_TRecursive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_693
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
_701:
	db	"TDatatype",0
_702:
	db	"IsNotPrimitive",0
_703:
	db	"Prio",0
_704:
	db	"IsArray",0
_705:
	db	"CanCastTo",0
_706:
	db	"($,i):TDatatype",0
_707:
	db	"CreateByNode",0
_708:
	db	"(:bah.libxml.TxmlNode):TDatatype",0
_709:
	db	"(i):TDatatype",0
_710:
	db	"Add2Node",0
_711:
	db	"Cast",0
_712:
	db	"(:TDatatype):bah.libxml.TxmlNode",0
_713:
	db	"CastNode",0
_714:
	db	"(:TDatatype,:bah.libxml.TxmlNode):bah.libxml.TxmlNode",0
_715:
	db	"ToString",0
_716:
	db	"GetArrayString",0
	align	4
_700:
	dd	2
	dd	_701
	dd	3
	dd	_702
	dd	_556
	dd	8
	dd	3
	dd	_703
	dd	_586
	dd	12
	dd	3
	dd	_544
	dd	_545
	dd	16
	dd	3
	dd	_704
	dd	_586
	dd	20
	dd	3
	dd	_705
	dd	_559
	dd	24
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	7
	dd	_615
	dd	_547
	dd	48
	dd	7
	dd	_549
	dd	_706
	dd	52
	dd	7
	dd	_707
	dd	_708
	dd	56
	dd	6
	dd	_571
	dd	_709
	dd	60
	dd	6
	dd	_710
	dd	_661
	dd	64
	dd	6
	dd	_711
	dd	_712
	dd	68
	dd	6
	dd	_713
	dd	_714
	dd	72
	dd	6
	dd	_715
	dd	_688
	dd	24
	dd	6
	dd	_716
	dd	_688
	dd	76
	dd	0
	align	4
_bb_TDatatype:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_700
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
_718:
	db	"TOperator",0
_719:
	db	"Operator",0
_720:
	db	"[]:TDatatype",0
_721:
	db	"AddDatatype",0
_722:
	db	"(:TDatatype)i",0
_723:
	db	"CanMatch",0
_724:
	db	"(:TDatatype,:TDatatype)b",0
_725:
	db	"ParseDatatype",0
_726:
	db	"(:TRecursive,:TRecursive,:bah.libxml.TxmlNode):TDatatype",0
_727:
	db	"NewOperator",0
_728:
	db	"(i,$,$,[]:TDatatype)i",0
_729:
	db	"GetByName",0
_730:
	db	"($):TOperator",0
	align	4
_717:
	dd	2
	dd	_718
	dd	3
	dd	_544
	dd	_545
	dd	8
	dd	3
	dd	_719
	dd	_545
	dd	12
	dd	3
	dd	_542
	dd	_720
	dd	16
	dd	6
	dd	_546
	dd	_547
	dd	16
	dd	6
	dd	_548
	dd	_547
	dd	20
	dd	6
	dd	_721
	dd	_722
	dd	48
	dd	6
	dd	_723
	dd	_724
	dd	52
	dd	6
	dd	_725
	dd	_726
	dd	56
	dd	7
	dd	_615
	dd	_547
	dd	60
	dd	7
	dd	_727
	dd	_728
	dd	64
	dd	7
	dd	_729
	dd	_730
	dd	68
	dd	0
	align	4
_bb_TOperator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_717
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
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_61:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	102,105,101,108,100,99,111,117,110,116
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_67:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_72:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	109,101,116,104,111,100,99,111,117,110,116
_1367:
	db	":brl.linkedlist.TList",0
	align	4
_79:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,114,101
	align	4
_80:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	9
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_100:
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
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	37
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	35
	align	4
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	36
	align	4
_108:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	114,101,109
	align	4
_109:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,110,100,114,101,109
	align	4
_113:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_114:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	47,47
	align	4
_115:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	39
	align	4
_1495:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_122:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,111,97,116
	align	4
_123:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
_124:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	33
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	98,121,116,101
	align	4
_133:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_137:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_150:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,120,116,101,110,100,115
	align	4
_158:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	112,114,105,118,97,116,101
	align	4
_159:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,117,98,108,105,99
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	112,114,111,116,101,99,116,101,100
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,105,114,116,117,97,108
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	111,118,101,114,114,105,100,101
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,98,115,116,114,97,99,116
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,110,97,108
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,97,116,105,99
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,95
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,95,95
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,48
	align	4
_157:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,110,100,116,121,112,101
	align	4
_200:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_225:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,46,48
	align	4
_226:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	67,80,66
	align	4
_228:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,50
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,101,114,115,105,111,110
	align	4
_235:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_236:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_244:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	69,114,114,111,114,33
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,117,109,98,101,114
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,110,100,105,102
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,108,115,101,105,102
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,120,116
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	119,101,110,100
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	117,110,116,105,108
	align	4
_255:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	101,110,100,102,117,110,99,116,105,111,110
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,110,100,115,101,108,101,99,116
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,93
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	39,44,32,39
	align	4
_273:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	39,32,119,105,116,104,32,100,97,116,97,116,121,112,101,115
	dw	32,91,39
	align	4
_272:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,79,112,101,114
	dw	97,116,111,114,32,39
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,114,117,101
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,97,108,115,101
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,111,116
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	85,110,107,110,111,119,110,32,84,111,107,101,110
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_290:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,95,100,105,109,95,48,95
	align	4
_294:
	dd	_bbStringClass
	dd	2147483647
	dd	54
	dw	77,121,70,117,110,99,116,105,111,110,40,44,44,41,32,100
	dw	111,101,115,32,110,111,116,32,119,111,114,107,44,32,97,110
	dw	100,32,105,115,32,110,111,116,32,103,111,105,110,103,32,116
	dw	111,32,119,111,114,107
	align	4
_304:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_305:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	45,45,45,45,45,45,45
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,105,110,100
	align	4
_327:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	39,32,103,105,118,101,110,58,32,39
	align	4
_326:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,32,101,120,112,101,99,116,101,100,58,32,39
	align	4
_325:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	80,97,114,97,109,101,116,101,114,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,97,116,32,70,117,110,99
	dw	116,105,111,110,58,32,39
	align	4
_334:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,44,39
	align	4
_338:
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
_339:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_345:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_346:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_347:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_377:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_379:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_399:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,101,110
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,117,115,116,32,98,101,32,105,110,32,97,32,108,111,111
	dw	112
_2634:
	db	":brl.linkedlist.TList",0
	align	4
_363:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,118,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	95,95,100,105,109,95
	align	4
_378:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	82,101,116,117,114,110,32,109,117,115,116,32,98,101,32,105
	dw	110,32,97,32,70,117,110,99,116,105,111,110
_2751:
	db	":bah.libxml.TxmlNode",0
	align	4
_386:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	116,109,112
	align	4
_400:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,107,110,111,119,110,32,84,121,112,101,32,39
	align	4
_404:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_405:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
	align	4
_409:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	85,110,107,110,111,119,110,32,68,97,116,97,116,121,112,101
	align	4
_413:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_414:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,86,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_430:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_434:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	84,121,112,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116,58,32
	align	4
_435:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	117,110,107,110,111,119,110
	align	4
_442:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,111,117,108,100,110,39,116,32,102,105,110,100,32,109,101
	dw	109,98,101,114,32,39
	align	4
_447:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	39,44,32,101,120,112,101,99,116,105,110,103,32,39
	align	4
_446:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	85,110,97,108,108,111,119,101,100,32,100,105,109,101,110,115
	dw	105,111,110,32,99,111,117,110,116,32,39
	align	4
_451:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	86,97,114,105,97,98,108,101,32,97,108,114,101,97,100,121
	dw	32,100,101,102,105,110,101,100,58,32
	align	4
_471:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_470:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	85,110,101,120,112,101,99,116,101,100,32,84,111,107,101,110
	dw	44,32,101,120,112,101,99,116,105,110,103,58,32
	align	4
_472:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	85,110,101,120,112,101,99,116,101,100,32,69,110,100,32,111
	dw	102,32,70,105,108,101
	align	4
_473:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	85,110,101,120,112,101,99,116,101,100,32,66,101,103,105,110
	dw	32,111,102,32,70,105,108,101
	align	4
_477:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	39,32,45,45,45,10
	align	4
_476:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,44,32,97,116,32,84,111,107,101,110,32,39
	align	4
_475:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,105,110,32,108,105,110,101,32,39
	align	4
_474:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,45,45,32,69,114,114,111,114,58,32
	align	4
_478:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	9,32,108,105,110,101,58,32,32
	align	4
_479:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_483:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	45,45,45,32,87,97,114,110,105,110,103,58,32
	align	4
_484:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_488:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	73,110,116,101,114,110,97,108,32,101,114,114,111,114
	align	4
_489:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,68,97,116,97
	dw	116,121,112,101,32,39
	align	4
_490:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	68,105,109,101,110,115,105,111,110,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,39
	align	4
_491:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_492:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_499:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,41
	align	4
_497:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	39,32,40,100,105,109,101,110,115,105,111,110,115,58,32,39
	align	4
_498:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	39,41,32,116,111,32,39
	align	4
_496:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,110,110,111,116,32,99,97,115,116,32,39
	align	4
_503:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
	align	4
_517:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	39,32,100,97,116,97,116,121,112,101,115,32,109,105,115,109
	dw	97,116,99,104,32,91,39
	align	4
_516:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,112,101,114,97,116,111,114,32,39
_3570:
	db	":brl.linkedlist.TList",0
	align	4
_521:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_522:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_523:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_524:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_525:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_526:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_527:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_528:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_529:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_530:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_531:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_532:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_533:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,111,119
