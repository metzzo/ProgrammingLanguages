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
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_DebugStop
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_DeleteFile
	extrn	_brl_linkedlist_CreateList
	extrn	_brl_linkedlist_TList
	extrn	_brl_map_CreateMap
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
	push	ebx
	cmp	dword [_1063],0
	je	_1064
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_1064:
	mov	dword [_1063],1
	push	ebp
	push	_1061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	push	_1040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectRegisterType
	add	esp,4
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_1046]
	and	eax,1
	cmp	eax,0
	jne	_1047
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TCompiler_Templates],eax
	or	dword [_1046],1
_1047:
	push	_bb_TCompiler
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectRegisterType
	add	esp,4
	push	_1048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_1046]
	and	eax,2
	cmp	eax,0
	jne	_1059
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TDatatype_UserDefinedDatatypes],eax
	or	dword [_1046],2
_1059:
	push	_bb_TDatatype
	call	_bbObjectRegisterType
	add	esp,4
	push	_1060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_735
_735:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1068
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifier
	mov	edx,dword [__bb_TDatatype_VoidDatatype]
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	push	ebp
	push	_1067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_738
_738:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_741:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1073
	push	eax
	call	_bbGCFree
	add	esp,4
_1073:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1075
	push	eax
	call	_bbGCFree
	add	esp,4
_1075:
	mov	eax,0
	jmp	_1071
_1071:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	push	ebp
	push	_1093
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1078
	call	_brl_blitz_NullObjectError
_1078:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1083
	push	eax
	call	_bbGCFree
	add	esp,4
_1083:
	mov	dword [esi+8],ebx
	push	_1084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1086
	call	_brl_blitz_NullObjectError
_1086:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1091
	push	eax
	call	_bbGCFree
	add	esp,4
_1091:
	mov	dword [esi+12],ebx
	push	_1092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_746
_746:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifier_ToNode:
	push	ebp
	mov	ebp,esp
	sub	esp,36
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	byte [ebp-4],0
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],0
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1098
	call	_brl_blitz_NullObjectError
_1098:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1100
	call	_brl_blitz_NullObjectError
_1100:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_1101
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1101:
	cmp	eax,0
	je	_1103
	mov	eax,ebp
	push	eax
	push	_1165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_25
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_1108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1112
	call	_brl_blitz_NullObjectError
_1112:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	push	_4
	push	_bbNullObject
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	push	_4
	push	_bbNullObject
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1121
	call	_brl_blitz_NullObjectError
_1121:
	push	dword [esi+12]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_1126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1130
	call	_brl_blitz_NullObjectError
_1130:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_28
_30:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1135
	call	_brl_blitz_NullObjectError
_1135:
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
	je	_28
	mov	eax,ebp
	push	eax
	push	_1139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1138
	call	_brl_blitz_NullObjectError
_1138:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_28:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1133
	call	_brl_blitz_NullObjectError
_1133:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	push	_1141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1145
	call	_brl_blitz_NullObjectError
_1145:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_31
_33:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1150
	call	_brl_blitz_NullObjectError
_1150:
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
	je	_31
	mov	eax,ebp
	push	eax
	push	_1155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_1152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1154
	call	_brl_blitz_NullObjectError
_1154:
	push	dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_31:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1148
	call	_brl_blitz_NullObjectError
_1148:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	push	_1156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1158
	call	_brl_blitz_NullObjectError
_1158:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1160
	call	_brl_blitz_NullObjectError
_1160:
	mov	eax,dword [ebx+20]
	cmp	dword [ebp-20],eax
	je	_1161
	mov	eax,ebp
	push	eax
	push	_1163
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_750
_1161:
	push	_1164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_750
_1103:
	mov	eax,ebp
	push	eax
	push	_1178
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_27
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_1172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_1174
	call	_brl_blitz_NullObjectError
_1174:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1176
	call	_brl_blitz_NullObjectError
_1176:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_750
_750:
	call	dword [_bbOnDebugLeaveScope]
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
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1187
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierFunction
	mov	eax,dword [ebp-4]
	mov	byte [eax+16],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	mov	eax,dword [ebp-4]
	mov	byte [eax+28],0
	mov	eax,dword [ebp-4]
	mov	byte [eax+29],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+32],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	push	ebp
	push	_1186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_753
_753:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_756:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1190
	push	eax
	call	_bbGCFree
	add	esp,4
_1190:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1192
	push	eax
	call	_bbGCFree
	add	esp,4
_1192:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1194
	push	eax
	call	_bbGCFree
	add	esp,4
_1194:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1196
	push	eax
	call	_bbGCFree
	add	esp,4
_1196:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1198
	push	eax
	call	_bbGCFree
	add	esp,4
_1198:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1188
_1188:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_use:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1201
	call	_brl_blitz_NullObjectError
_1201:
	mov	byte [ebx+29],1
	mov	byte [ebp-8],0
	jmp	_759
_759:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_AddParameter:
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
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	push	ebp
	push	_1213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1206
	call	_brl_blitz_NullObjectError
_1206:
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_1208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1210
	call	_brl_blitz_NullObjectError
_1210:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1212
	call	_brl_blitz_NullObjectError
_1212:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_765
_765:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_GenName:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1219
	call	_brl_blitz_NullObjectError
_1219:
	movzx	eax,byte [ebx+16]
	mov	eax,eax
	cmp	eax,0
	jne	_1220
	mov	eax,ebp
	push	eax
	push	_1281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1223
	call	_brl_blitz_NullObjectError
_1223:
	mov	byte [ebx+16],1
	push	_1225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1227
	call	_brl_blitz_NullObjectError
_1227:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1230
	call	_brl_blitz_NullObjectError
_1230:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1234
	push	eax
	call	_bbGCFree
	add	esp,4
_1234:
	mov	dword [esi+20],ebx
	push	_1235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1237
	call	_brl_blitz_NullObjectError
_1237:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1242
	push	eax
	call	_bbGCFree
	add	esp,4
_1242:
	mov	dword [esi+40],ebx
	push	_1243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1246
	call	_brl_blitz_NullObjectError
_1246:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-12],eax
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1249
	call	_brl_blitz_NullObjectError
_1249:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_35
_37:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1254
	call	_brl_blitz_NullObjectError
_1254:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	cmp	dword [ebp-8],_bbNullObject
	je	_35
	mov	eax,ebp
	push	eax
	push	_1279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1257
	call	_brl_blitz_NullObjectError
_1257:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1260
	call	_brl_blitz_NullObjectError
_1260:
	mov	esi,dword [esi+12]
	cmp	esi,_bbNullObject
	jne	_1262
	call	_brl_blitz_NullObjectError
_1262:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
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
	jnz	_1266
	push	eax
	call	_bbGCFree
	add	esp,4
_1266:
	mov	dword [ebx+12],esi
	push	_1267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1269
	call	_brl_blitz_NullObjectError
_1269:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1272
	call	_brl_blitz_NullObjectError
_1272:
	mov	esi,dword [esi+12]
	cmp	esi,_bbNullObject
	jne	_1274
	call	_brl_blitz_NullObjectError
_1274:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+40]
	call	_bbStringConcat
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1278
	push	eax
	call	_bbGCFree
	add	esp,4
_1278:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
_35:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1252
	call	_brl_blitz_NullObjectError
_1252:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_37
_36:
	call	dword [_bbOnDebugLeaveScope]
_1220:
	mov	ebx,0
	jmp	_768
_768:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_Copy:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1287
	call	_brl_blitz_NullObjectError
_1287:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1289
	call	_brl_blitz_NullObjectError
_1289:
	push	_bb_TIdentifierFunction
	push	dword [ebx+8]
	push	dword [esi+20]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,12
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1293
	call	_brl_blitz_NullObjectError
_1293:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1296
	call	_brl_blitz_NullObjectError
_1296:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1298
	call	_brl_blitz_NullObjectError
_1298:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1302
	push	eax
	call	_bbGCFree
	add	esp,4
_1302:
	mov	dword [esi+24],ebx
	push	_1303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1305
	call	_brl_blitz_NullObjectError
_1305:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1308
	call	_brl_blitz_NullObjectError
_1308:
	movzx	eax,byte [esi+28]
	mov	eax,eax
	mov	byte [ebx+28],al
	push	_1309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_771
_771:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierVariable
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	ebp
	push	_1313
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_774
_774:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_777:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1318
	push	eax
	call	_bbGCFree
	add	esp,4
_1318:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1320
	push	eax
	call	_bbGCFree
	add	esp,4
_1320:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1316
_1316:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1322
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifierVariable_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TTypeField
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],3
	push	ebp
	push	_1321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_780
_780:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_783:
	mov	dword [eax],_bb_TIdentifierVariable
	push	eax
	call	__bb_TIdentifierVariable_Delete
	add	esp,4
	mov	eax,0
	jmp	_1324
_1324:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeField_Create2:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	push	ebp
	push	_1346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1327
	call	_brl_blitz_NullObjectError
_1327:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1332
	push	eax
	call	_bbGCFree
	add	esp,4
_1332:
	mov	dword [esi+8],ebx
	push	_1333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1335
	call	_brl_blitz_NullObjectError
_1335:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1340
	push	eax
	call	_bbGCFree
	add	esp,4
_1340:
	mov	dword [esi+12],ebx
	push	_1341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1343
	call	_brl_blitz_NullObjectError
_1343:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+24],eax
	push	_1345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_789
_789:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TTypeMethod
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],3
	mov	eax,dword [ebp-4]
	mov	byte [eax+12],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	push	ebp
	push	_1350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_792
_792:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_795:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1355
	push	eax
	call	_bbGCFree
	add	esp,4
_1355:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1357
	push	eax
	call	_bbGCFree
	add	esp,4
_1357:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1359
	push	eax
	call	_bbGCFree
	add	esp,4
_1359:
	mov	eax,0
	jmp	_1353
_1353:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeMethod_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-20],eax
	movzx	eax,byte [ebp+20]
	mov	eax,eax
	mov	byte [ebp-4],al
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp-8],al
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	push	ebp
	push	_1389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1362
	call	_brl_blitz_NullObjectError
_1362:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1367
	push	eax
	call	_bbGCFree
	add	esp,4
_1367:
	mov	dword [esi+20],ebx
	push	_1368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1370
	call	_brl_blitz_NullObjectError
_1370:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1375
	push	eax
	call	_bbGCFree
	add	esp,4
_1375:
	mov	dword [esi+24],ebx
	push	_1376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1378
	call	_brl_blitz_NullObjectError
_1378:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	mov	dword [ebx+8],eax
	push	_1380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1382
	call	_brl_blitz_NullObjectError
_1382:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebx+12],al
	push	_1384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1386
	call	_brl_blitz_NullObjectError
_1386:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+28],eax
	push	_1388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_803
_803:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1411
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TTypeTemplate
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],0
	call	_brl_map_CreateMap
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+36],eax
	push	ebp
	push	_1410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1399
	call	_brl_blitz_NullObjectError
_1399:
	mov	eax,dword [ebp-4]
	cmp	dword [ebx+24],eax
	jne	_1400
	push	ebp
	push	_1409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1403
	call	_brl_blitz_NullObjectError
_1403:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1408
	push	eax
	call	_bbGCFree
	add	esp,4
_1408:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1400:
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_806
_806:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
_809:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1414
	push	eax
	call	_bbGCFree
	add	esp,4
_1414:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1416
	push	eax
	call	_bbGCFree
	add	esp,4
_1416:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1418
	push	eax
	call	_bbGCFree
	add	esp,4
_1418:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1420
	push	eax
	call	_bbGCFree
	add	esp,4
_1420:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1422
	push	eax
	call	_bbGCFree
	add	esp,4
_1422:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1424
	push	eax
	call	_bbGCFree
	add	esp,4
_1424:
	mov	eax,0
	jmp	_1412
_1412:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_Init:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	eax,ebp
	push	eax
	push	_1467
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	dec	dword [eax+4]
	jnz	_1429
	push	eax
	call	_bbGCFree
	add	esp,4
_1429:
	mov	dword [__bb_TTypeTemplate_ObjectTemplate],ebx
	push	_1430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	esi,_bbNullObject
	jne	_1432
	call	_brl_blitz_NullObjectError
_1432:
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1437
	push	eax
	call	_bbGCFree
	add	esp,4
_1437:
	mov	dword [esi+20],ebx
	push	_1438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	esi,_bbNullObject
	jne	_1440
	call	_brl_blitz_NullObjectError
_1440:
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1445
	push	eax
	call	_bbGCFree
	add	esp,4
_1445:
	mov	dword [esi+28],ebx
	push	_1446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1448
	call	_brl_blitz_NullObjectError
_1448:
	mov	esi,dword [ebx+28]
	cmp	esi,_bbNullObject
	jne	_1450
	call	_brl_blitz_NullObjectError
_1450:
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1455
	push	eax
	call	_bbGCFree
	add	esp,4
_1455:
	mov	dword [esi+16],ebx
	push	_1456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1458
	call	_brl_blitz_NullObjectError
_1458:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1460
	call	_brl_blitz_NullObjectError
_1460:
	mov	dword [ebx+12],0
	push	_1462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_UserDefinedDatatypes]
	cmp	esi,_bbNullObject
	jne	_1464
	call	_brl_blitz_NullObjectError
_1464:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1466
	call	_brl_blitz_NullObjectError
_1466:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_811
_811:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_GetFields:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	jne	_1469
	mov	eax,ebp
	push	eax
	push	_1471
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_1469:
	push	_1472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1477
	call	_brl_blitz_NullObjectError
_1477:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_40
_42:
	cmp	ebx,_bbNullObject
	jne	_1485
	call	_brl_blitz_NullObjectError
_1485:
	push	_bb_TTypeField
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_40
	mov	eax,ebp
	push	eax
	push	_1496
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1488
	call	_brl_blitz_NullObjectError
_1488:
	mov	eax,dword [esi+24]
	cmp	eax,dword [ebp-8]
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1489
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1489:
	cmp	eax,0
	je	_1491
	mov	eax,ebp
	push	eax
	push	_1495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1494
	call	_brl_blitz_NullObjectError
_1494:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1491:
	call	dword [_bbOnDebugLeaveScope]
_40:
	cmp	ebx,_bbNullObject
	jne	_1483
	call	_brl_blitz_NullObjectError
_1483:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	push	_1497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1499
	call	_brl_blitz_NullObjectError
_1499:
	cmp	dword [ebx+24],_bbNullObject
	je	_1500
	mov	eax,ebp
	push	eax
	push	_1526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1504
	call	_brl_blitz_NullObjectError
_1504:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1506
	call	_brl_blitz_NullObjectError
_1506:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1509
	call	_brl_blitz_NullObjectError
_1509:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_43
_45:
	cmp	ebx,_bbNullObject
	jne	_1514
	call	_brl_blitz_NullObjectError
_1514:
	push	_bb_TTypeField
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_43
	mov	eax,ebp
	push	eax
	push	_1525
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_1517
	call	_brl_blitz_NullObjectError
_1517:
	mov	eax,dword [esi+24]
	cmp	eax,2
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1518
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1518:
	cmp	eax,0
	je	_1520
	mov	eax,ebp
	push	eax
	push	_1524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1523
	call	_brl_blitz_NullObjectError
_1523:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1520:
	call	dword [_bbOnDebugLeaveScope]
_43:
	cmp	ebx,_bbNullObject
	jne	_1512
	call	_brl_blitz_NullObjectError
_1512:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_1500:
	push	_1527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_815
_815:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_GetMethods:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1530
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1535
	call	_brl_blitz_NullObjectError
_1535:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1538
	call	_brl_blitz_NullObjectError
_1538:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_46
_48:
	cmp	ebx,_bbNullObject
	jne	_1543
	call	_brl_blitz_NullObjectError
_1543:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_46
	mov	eax,ebp
	push	eax
	push	_1554
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1546
	call	_brl_blitz_NullObjectError
_1546:
	mov	eax,dword [esi+8]
	cmp	eax,dword [ebp-8]
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1547
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1547:
	cmp	eax,0
	je	_1549
	mov	eax,ebp
	push	eax
	push	_1553
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1552
	call	_brl_blitz_NullObjectError
_1552:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1549:
	call	dword [_bbOnDebugLeaveScope]
_46:
	cmp	ebx,_bbNullObject
	jne	_1541
	call	_brl_blitz_NullObjectError
_1541:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	push	_1555
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1557
	call	_brl_blitz_NullObjectError
_1557:
	mov	eax,dword [ebx+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1558
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_1558:
	cmp	eax,0
	je	_1560
	mov	eax,ebp
	push	eax
	push	_1588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1564
	call	_brl_blitz_NullObjectError
_1564:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1566
	call	_brl_blitz_NullObjectError
_1566:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1569
	call	_brl_blitz_NullObjectError
_1569:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_49
_51:
	cmp	ebx,_bbNullObject
	jne	_1574
	call	_brl_blitz_NullObjectError
_1574:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_49
	mov	eax,ebp
	push	eax
	push	_1587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_1577
	call	_brl_blitz_NullObjectError
_1577:
	mov	eax,dword [esi+8]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1578
	mov	eax,dword [ebp-8]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1578:
	cmp	eax,0
	jne	_1580
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1580:
	cmp	eax,0
	je	_1582
	mov	eax,ebp
	push	eax
	push	_1586
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1585
	call	_brl_blitz_NullObjectError
_1585:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1582:
	call	dword [_bbOnDebugLeaveScope]
_49:
	cmp	ebx,_bbNullObject
	jne	_1572
	call	_brl_blitz_NullObjectError
_1572:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	call	dword [_bbOnDebugLeaveScope]
_1560:
	push	_1589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_819
_819:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_AddField:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbNullObject
	push	ebp
	push	_1616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeField
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1593
	call	_brl_blitz_NullObjectError
_1593:
	push	dword [ebp-20]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_1595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	push	dword [ebp-24]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_1597
	call	_brl_blitz_NullObjectError
_1597:
	mov	ebx,dword [ebp-4]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1602
	push	eax
	call	_bbGCFree
	add	esp,4
_1602:
	mov	dword [esi+20],ebx
	push	_1603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	push	dword [ebp-24]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_1605
	call	_brl_blitz_NullObjectError
_1605:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1610
	push	eax
	call	_bbGCFree
	add	esp,4
_1610:
	mov	dword [esi+16],ebx
	push	_1611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1613
	call	_brl_blitz_NullObjectError
_1613:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1615
	call	_brl_blitz_NullObjectError
_1615:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_826
_826:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_AddMethod:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-20],eax
	movzx	eax,byte [ebp+24]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	eax,dword [ebp+28]
	mov	dword [ebp-24],eax
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-28],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-32],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1751
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1621
	call	_brl_blitz_NullObjectError
_1621:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1624
	call	_brl_blitz_NullObjectError
_1624:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_52
_54:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1629
	call	_brl_blitz_NullObjectError
_1629:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_52
	mov	eax,ebp
	push	eax
	push	_1664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1632
	call	_brl_blitz_NullObjectError
_1632:
	push	dword [ebp-16]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1635
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1634
	call	_brl_blitz_NullObjectError
_1634:
	mov	eax,dword [ebx+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1635:
	cmp	eax,0
	je	_1645
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1638
	call	_brl_blitz_NullObjectError
_1638:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1640
	call	_brl_blitz_NullObjectError
_1640:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_1642
	call	_brl_blitz_NullObjectError
_1642:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1644
	call	_brl_blitz_NullObjectError
_1644:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1645:
	cmp	eax,0
	je	_1655
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1648
	call	_brl_blitz_NullObjectError
_1648:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1650
	call	_brl_blitz_NullObjectError
_1650:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_1652
	call	_brl_blitz_NullObjectError
_1652:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1654
	call	_brl_blitz_NullObjectError
_1654:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1655:
	cmp	eax,0
	je	_1657
	mov	eax,ebp
	push	eax
	push	_1663
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1660
	call	_brl_blitz_NullObjectError
_1660:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1662
	call	_brl_blitz_NullObjectError
_1662:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1657:
	call	dword [_bbOnDebugLeaveScope]
_52:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1627
	call	_brl_blitz_NullObjectError
_1627:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	push	_1666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],-1
	push	_1668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1671
	call	_brl_blitz_NullObjectError
_1671:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1673
	call	_brl_blitz_NullObjectError
_1673:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1676
	call	_brl_blitz_NullObjectError
_1676:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_55
_57:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1681
	call	_brl_blitz_NullObjectError
_1681:
	push	_bb_TDatatype
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_55
	mov	eax,ebp
	push	eax
	push	_1723
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1682
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1684
	call	_brl_blitz_NullObjectError
_1684:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1686
	call	_brl_blitz_NullObjectError
_1686:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1691
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1688
	call	_brl_blitz_NullObjectError
_1688:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1690
	call	_brl_blitz_NullObjectError
_1690:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1691:
	cmp	eax,0
	je	_1699
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1694
	call	_brl_blitz_NullObjectError
_1694:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1696
	call	_brl_blitz_NullObjectError
_1696:
	push	_bbStringClass
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1698
	mov	eax,_bbEmptyString
_1698:
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,dword [ebp-28]
	setg	al
	movzx	eax,al
_1699:
	cmp	eax,0
	je	_1701
	mov	eax,ebp
	push	eax
	push	_1721
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1704
	call	_brl_blitz_NullObjectError
_1704:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1706
	call	_brl_blitz_NullObjectError
_1706:
	push	_bbStringClass
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_1708
	mov	eax,_bbEmptyString
_1708:
	push	eax
	call	_bbStringToInt
	add	esp,4
	add	eax,1
	mov	dword [ebp-44],eax
	push	_1710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1712
	call	_brl_blitz_NullObjectError
_1712:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1714
	call	_brl_blitz_NullObjectError
_1714:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp-28],eax
	push	_1716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1718
	call	_brl_blitz_NullObjectError
_1718:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1720
	call	_brl_blitz_NullObjectError
_1720:
	push	dword [ebp-44]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_1701:
	call	dword [_bbOnDebugLeaveScope]
_55:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1679
	call	_brl_blitz_NullObjectError
_1679:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_57
_56:
	push	_1724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],-1
	jne	_1725
	mov	eax,ebp
	push	eax
	push	_1732
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1728
	call	_brl_blitz_NullObjectError
_1728:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1730
	call	_brl_blitz_NullObjectError
_1730:
	push	_192
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	call	dword [_bbOnDebugLeaveScope]
_1725:
	push	_1733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeMethod
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1735
	call	_brl_blitz_NullObjectError
_1735:
	push	dword [ebp-28]
	mov	eax,dword [ebp-24]
	and	eax,0xff
	push	eax
	movzx	eax,byte [ebp-4]
	push	eax
	push	dword [ebp-8]
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,24
	mov	dword [ebp-32],eax
	push	_1737
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_1739
	call	_brl_blitz_NullObjectError
_1739:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1744
	push	eax
	call	_bbGCFree
	add	esp,4
_1744:
	mov	dword [esi+16],ebx
	push	_1745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1747
	call	_brl_blitz_NullObjectError
_1747:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1749
	call	_brl_blitz_NullObjectError
_1749:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	jmp	_834
_834:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TTypeTemplate_ToNode:
	push	ebp
	mov	ebp,esp
	sub	esp,60
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_1901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_58
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1757
	call	_brl_blitz_NullObjectError
_1757:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1759
	call	_brl_blitz_NullObjectError
_1759:
	push	dword [ebx+20]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_4
	push	_1762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1764
	call	_brl_blitz_NullObjectError
_1764:
	cmp	dword [ebx+24],_bbNullObject
	je	_1765
	mov	eax,ebp
	push	eax
	push	_1771
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1768
	call	_brl_blitz_NullObjectError
_1768:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1770
	call	_brl_blitz_NullObjectError
_1770:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_1765:
	push	_1772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1774
	call	_brl_blitz_NullObjectError
_1774:
	push	dword [ebp-12]
	push	_59
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1780
	call	_brl_blitz_NullObjectError
_1780:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1783
	call	_brl_blitz_NullObjectError
_1783:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1788
	call	_brl_blitz_NullObjectError
_1788:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_60
	mov	eax,ebp
	push	eax
	push	_1807
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1791
	call	_brl_blitz_NullObjectError
_1791:
	push	_4
	push	_bbNullObject
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_1793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1795
	call	_brl_blitz_NullObjectError
_1795:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1797
	call	_brl_blitz_NullObjectError
_1797:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1800
	call	_brl_blitz_NullObjectError
_1800:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1802
	call	_brl_blitz_NullObjectError
_1802:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1805
	call	_brl_blitz_NullObjectError
_1805:
	push	_bah_libxml_TxmlNode
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bb_AddChild
	add	esp,8
	push	_1806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_60:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1786
	call	_brl_blitz_NullObjectError
_1786:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	push	_1808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1810
	call	_brl_blitz_NullObjectError
_1810:
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1815
	call	_brl_blitz_NullObjectError
_1815:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1818
	call	_brl_blitz_NullObjectError
_1818:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-60],eax
	jmp	_65
_67:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1823
	call	_brl_blitz_NullObjectError
_1823:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_65
	mov	eax,ebp
	push	eax
	push	_1895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	push	_4
	push	_bbNullObject
	push	_68
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	push	_1828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_1830
	call	_brl_blitz_NullObjectError
_1830:
	mov	eax,dword [ebp-28]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_1832
	call	_brl_blitz_NullObjectError
_1832:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1834
	call	_brl_blitz_NullObjectError
_1834:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_1836
	call	_brl_blitz_NullObjectError
_1836:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1838
	call	_brl_blitz_NullObjectError
_1838:
	push	_38
	push	dword [ebx+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	push	dword [esi+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp-48]
	push	dword [eax+20]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_26
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+168]
	add	esp,12
	push	_1839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1841
	call	_brl_blitz_NullObjectError
_1841:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_1843
	call	_brl_blitz_NullObjectError
_1843:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1846
	call	_brl_blitz_NullObjectError
_1846:
	cmp	dword [ebx+16],_bbNullObject
	je	_1847
	mov	eax,ebp
	push	eax
	push	_1893
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1850
	call	_brl_blitz_NullObjectError
_1850:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_1852
	call	_brl_blitz_NullObjectError
_1852:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_1854
	call	_brl_blitz_NullObjectError
_1854:
	push	dword [esi+20]
	push	_70
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1857
	call	_brl_blitz_NullObjectError
_1857:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1859
	call	_brl_blitz_NullObjectError
_1859:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1861
	call	_brl_blitz_NullObjectError
_1861:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1865
	call	_brl_blitz_NullObjectError
_1865:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1867
	call	_brl_blitz_NullObjectError
_1867:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1870
	call	_brl_blitz_NullObjectError
_1870:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_71
_73:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1875
	call	_brl_blitz_NullObjectError
_1875:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_71
	mov	eax,ebp
	push	eax
	push	_1890
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_1880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1882
	call	_brl_blitz_NullObjectError
_1882:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1884
	call	_brl_blitz_NullObjectError
_1884:
	push	dword [ebx+8]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1887
	call	_brl_blitz_NullObjectError
_1887:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1889
	call	_brl_blitz_NullObjectError
_1889:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_71:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1873
	call	_brl_blitz_NullObjectError
_1873:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_73
_72:
	call	dword [_bbOnDebugLeaveScope]
_1847:
	push	_1894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_65:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1821
	call	_brl_blitz_NullObjectError
_1821:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_67
_66:
	push	_1897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1899
	call	_brl_blitz_NullObjectError
_1899:
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_75
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_837
_837:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1908
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TParameter
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,dword [__bb_TDatatype_VoidDatatype]
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	ebp
	push	_1907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_840
_840:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_843:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1911
	push	eax
	call	_bbGCFree
	add	esp,4
_1911:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1913
	push	eax
	call	_bbGCFree
	add	esp,4
_1913:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1915
	push	eax
	call	_bbGCFree
	add	esp,4
_1915:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1917
	push	eax
	call	_bbGCFree
	add	esp,4
_1917:
	mov	eax,0
	jmp	_1909
_1909:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,ebp
	push	eax
	push	_1943
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1920
	call	_brl_blitz_NullObjectError
_1920:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1925
	push	eax
	call	_bbGCFree
	add	esp,4
_1925:
	mov	dword [esi+8],ebx
	push	_1926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1928
	call	_brl_blitz_NullObjectError
_1928:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1933
	push	eax
	call	_bbGCFree
	add	esp,4
_1933:
	mov	dword [esi+12],ebx
	push	_1934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1936
	call	_brl_blitz_NullObjectError
_1936:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1941
	push	eax
	call	_bbGCFree
	add	esp,4
_1941:
	mov	dword [esi+16],ebx
	push	_1942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_849
_849:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_1959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TCompiler
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	1
	push	_1947
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+20],eax
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],edx
	mov	edx,_bbEmptyArray
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+32],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+36],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+40],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+44],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+48],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+52],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+56],0
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+60],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+64],edx
	mov	eax,dword [ebp-4]
	mov	byte [eax+68],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+72],3
	push	ebp
	push	_1958
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_852
_852:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_855:
	mov	eax,dword [ebx+64]
	dec	dword [eax+4]
	jnz	_1963
	push	eax
	call	_bbGCFree
	add	esp,4
_1963:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_1965
	push	eax
	call	_bbGCFree
	add	esp,4
_1965:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_1967
	push	eax
	call	_bbGCFree
	add	esp,4
_1967:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1969
	push	eax
	call	_bbGCFree
	add	esp,4
_1969:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_1971
	push	eax
	call	_bbGCFree
	add	esp,4
_1971:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1973
	push	eax
	call	_bbGCFree
	add	esp,4
_1973:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1975
	push	eax
	call	_bbGCFree
	add	esp,4
_1975:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1977
	push	eax
	call	_bbGCFree
	add	esp,4
_1977:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1979
	push	eax
	call	_bbGCFree
	add	esp,4
_1979:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1981
	push	eax
	call	_bbGCFree
	add	esp,4
_1981:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1983
	push	eax
	call	_bbGCFree
	add	esp,4
_1983:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1985
	push	eax
	call	_bbGCFree
	add	esp,4
_1985:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1987
	push	eax
	call	_bbGCFree
	add	esp,4
_1987:
	mov	eax,0
	jmp	_1961
_1961:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_LoadFunction:
	push	ebp
	mov	ebp,esp
	sub	esp,56
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbEmptyString
	mov	dword [ebp-44],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2063
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1992
	call	_brl_blitz_NullObjectError
_1992:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_1994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1997
	call	_brl_blitz_NullObjectError
_1997:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_2000
	call	_brl_blitz_NullObjectError
_2000:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_76
_78:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2005
	call	_brl_blitz_NullObjectError
_2005:
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
	je	_76
	mov	eax,ebp
	push	eax
	push	_2062
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2008
	call	_brl_blitz_NullObjectError
_2008:
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	mov	dword [ebp-24],eax
	push	_2010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2016
	call	_brl_blitz_NullObjectError
_2016:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_2017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2019
	call	_brl_blitz_NullObjectError
_2019:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_2020
	mov	eax,ebp
	push	eax
	push	_2053
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2027
	call	_brl_blitz_NullObjectError
_2027:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_79
_81:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2032
	call	_brl_blitz_NullObjectError
_2032:
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
	je	_79
	mov	eax,ebp
	push	eax
	push	_2050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_4
	push	_2035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2037
	call	_brl_blitz_NullObjectError
_2037:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_2038
	mov	eax,ebp
	push	eax
	push	_2042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2041
	call	_brl_blitz_NullObjectError
_2041:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-40],eax
	call	dword [_bbOnDebugLeaveScope]
_2038:
	push	_2043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_2045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2047
	call	_brl_blitz_NullObjectError
_2047:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2049
	call	_brl_blitz_NullObjectError
_2049:
	push	dword [ebp-40]
	push	dword [ebp-44]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_79:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2030
	call	_brl_blitz_NullObjectError
_2030:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_81
_80:
	call	dword [_bbOnDebugLeaveScope]
_2020:
	push	_2054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2056
	call	_brl_blitz_NullObjectError
_2056:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_2057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2059
	call	_brl_blitz_NullObjectError
_2059:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2061
	call	_brl_blitz_NullObjectError
_2061:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_76:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2003
	call	_brl_blitz_NullObjectError
_2003:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_78
_77:
	mov	ebx,0
	jmp	_859
_859:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_LoadHeaders:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_2067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
	jmp	_863
_863:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Tokenizer:
	push	ebp
	mov	ebp,esp
	sub	esp,52
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbEmptyArray
	mov	byte [ebp-4],0
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],0
	mov	dword [ebp-32],0
	mov	dword [ebp-36],_bbEmptyString
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_2305
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	_83
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2072
	call	_brl_blitz_NullObjectError
_2072:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_2077
	push	eax
	call	_bbGCFree
	add	esp,4
_2077:
	mov	dword [esi+8],ebx
	push	_2078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	25
	push	_549
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_84
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_85
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_86
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	edx,_87
	inc	dword [edx+4]
	mov	dword [eax+36],edx
	mov	edx,_88
	inc	dword [edx+4]
	mov	dword [eax+40],edx
	mov	edx,_89
	inc	dword [edx+4]
	mov	dword [eax+44],edx
	mov	edx,_90
	inc	dword [edx+4]
	mov	dword [eax+48],edx
	mov	edx,_91
	inc	dword [edx+4]
	mov	dword [eax+52],edx
	mov	edx,_92
	inc	dword [edx+4]
	mov	dword [eax+56],edx
	mov	edx,_93
	inc	dword [edx+4]
	mov	dword [eax+60],edx
	mov	edx,_94
	inc	dword [edx+4]
	mov	dword [eax+64],edx
	mov	edx,_95
	inc	dword [edx+4]
	mov	dword [eax+68],edx
	mov	edx,_96
	inc	dword [edx+4]
	mov	dword [eax+72],edx
	mov	edx,_97
	inc	dword [edx+4]
	mov	dword [eax+76],edx
	mov	edx,_98
	inc	dword [edx+4]
	mov	dword [eax+80],edx
	mov	edx,_99
	inc	dword [edx+4]
	mov	dword [eax+84],edx
	mov	edx,_100
	inc	dword [edx+4]
	mov	dword [eax+88],edx
	mov	edx,_101
	inc	dword [edx+4]
	mov	dword [eax+92],edx
	mov	edx,_102
	inc	dword [edx+4]
	mov	dword [eax+96],edx
	mov	edx,_103
	inc	dword [edx+4]
	mov	dword [eax+100],edx
	mov	edx,_5
	inc	dword [edx+4]
	mov	dword [eax+104],edx
	mov	edx,_104
	inc	dword [edx+4]
	mov	dword [eax+108],edx
	mov	edx,_105
	inc	dword [edx+4]
	mov	dword [eax+112],edx
	mov	edx,_106
	inc	dword [edx+4]
	mov	dword [eax+116],edx
	mov	edx,_107
	inc	dword [edx+4]
	mov	dword [eax+120],edx
	mov	dword [ebp-16],eax
	push	_2106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2108
	call	_brl_blitz_NullObjectError
_2108:
	push	_83
	push	dword [ebp-12]
	call	_bbStringSplit
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_2113
	push	eax
	call	_bbGCFree
	add	esp,4
_2113:
	mov	dword [esi+32],ebx
	push	_2114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2119
	call	_brl_blitz_NullObjectError
_2119:
	mov	eax,dword [ebx+32]
	mov	dword [ebp-48],eax
	mov	eax,dword [ebp-48]
	add	eax,24
	mov	dword [ebp-44],eax
	mov	edx,dword [ebp-44]
	mov	eax,dword [ebp-48]
	add	edx,dword [eax+16]
	mov	dword [ebp-52],edx
	jmp	_108
_110:
	mov	eax,dword [ebp-44]
	mov	eax,dword [eax]
	mov	dword [ebp-24],eax
	add	dword [ebp-44],4
	cmp	dword [ebp-24],_bbNullObject
	je	_108
	mov	eax,ebp
	push	eax
	push	_2275
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_2126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_111
	push	dword [ebp-24]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2127
	mov	eax,ebp
	push	eax
	push	_2129
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_2127:
	push	_2130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2131
	mov	eax,ebp
	push	eax
	push	_2142
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2134
	call	_brl_blitz_NullObjectError
_2134:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2136
	call	_brl_blitz_NullObjectError
_2136:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_112
	push	dword [ebp-24]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2138
	mov	eax,ebp
	push	eax
	push	_2140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	call	dword [_bbOnDebugLeaveScope]
_2138:
	push	_2141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_2131:
	push	_2143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_85
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],0
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	mov	dword [ebp-40],eax
	jmp	_2146
_115:
	mov	eax,ebp
	push	eax
	push	_2269
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_97
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2149
	mov	eax,ebp
	push	eax
	push	_2156
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2152
	call	_brl_blitz_NullObjectError
_2152:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2154
	call	_brl_blitz_NullObjectError
_2154:
	push	_97
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_2149:
	push	_2157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_83
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2158
	mov	eax,ebp
	push	eax
	push	_2160
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_113
_2158:
	push	_2161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_116
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
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
	jne	_2162
	push	_117
	mov	eax,dword [ebp-32]
	add	eax,2
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2162:
	cmp	eax,0
	jne	_2164
	push	_118
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2164:
	cmp	eax,0
	je	_2166
	mov	eax,ebp
	push	eax
	push	_2168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_114
_2166:
	push	_2169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2170
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2171
	mov	eax,ebp
	push	eax
	push	_2192
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2174
	call	_brl_blitz_NullObjectError
_2174:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2176
	call	_brl_blitz_NullObjectError
_2176:
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-24]
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
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	push	_2178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+8]
	jmp	_2179
_121:
	mov	eax,ebp
	push	eax
	push	_2191
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2170
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2182
	mov	eax,ebp
	push	eax
	push	_2190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2185
	call	_brl_blitz_NullObjectError
_2185:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2187
	call	_brl_blitz_NullObjectError
_2187:
	mov	eax,dword [ebp-32]
	add	eax,1
	push	eax
	push	dword [ebp-28]
	push	dword [ebp-24]
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
	push	_2188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	mov	dword [ebp-28],eax
	push	_2189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_120
_2182:
	call	dword [_bbOnDebugLeaveScope]
_119:
	add	dword [ebp-32],1
_2179:
	cmp	dword [ebp-32],ebx
	jle	_121
_120:
	call	dword [_bbOnDebugLeaveScope]
_2171:
	push	_2193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbEmptyString
	mov	esi,dword [ebp-16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_122
_124:
	mov	eax,dword [ebx]
	mov	dword [ebp-36],eax
	add	ebx,4
	cmp	dword [ebp-36],_bbNullObject
	je	_122
	mov	eax,ebp
	push	eax
	push	_2267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp-36]
	add	edx,dword [eax+8]
	push	edx
	push	dword [ebp-32]
	push	dword [ebp-24]
	call	_bbStringSlice
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2200
	mov	eax,ebp
	push	eax
	push	_2266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_84
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_2202
	push	_4
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-24]
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
_2202:
	cmp	eax,0
	je	_2204
	mov	eax,ebp
	push	eax
	push	_2211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-24]
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
	jne	_2206
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-24]
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
_2206:
	cmp	eax,0
	je	_2208
	mov	eax,ebp
	push	eax
	push	_2210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_123
_2208:
	call	dword [_bbOnDebugLeaveScope]
_2204:
	push	_2212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2214
	call	_brl_blitz_NullObjectError
_2214:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2216
	call	_brl_blitz_NullObjectError
_2216:
	push	dword [ebp-32]
	push	dword [ebp-28]
	push	dword [ebp-24]
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
	push	_2217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_85
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_2218
	push	_98
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2218:
	cmp	eax,0
	je	_2220
	mov	eax,ebp
	push	eax
	push	_2262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2222
	mov	eax,ebp
	push	eax
	push	_2229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2225
	call	_brl_blitz_NullObjectError
_2225:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2227
	call	_brl_blitz_NullObjectError
_2227:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_125
	call	dword [_bbOnDebugLeaveScope]
_2222:
	push	_2230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_107
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2231
	mov	eax,ebp
	push	eax
	push	_2238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2234
	call	_brl_blitz_NullObjectError
_2234:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2236
	call	_brl_blitz_NullObjectError
_2236:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_126
	call	dword [_bbOnDebugLeaveScope]
_2231:
	push	_2239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_105
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2240
	mov	eax,ebp
	push	eax
	push	_2247
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2243
	call	_brl_blitz_NullObjectError
_2243:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2245
	call	_brl_blitz_NullObjectError
_2245:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_127
	call	dword [_bbOnDebugLeaveScope]
_2240:
	push	_2248
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_128
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2249
	mov	eax,ebp
	push	eax
	push	_2256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2252
	call	_brl_blitz_NullObjectError
_2252:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2254
	call	_brl_blitz_NullObjectError
_2254:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_129
	call	dword [_bbOnDebugLeaveScope]
_2249:
	push	_2257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2259
	call	_brl_blitz_NullObjectError
_2259:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2261
	call	_brl_blitz_NullObjectError
_2261:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2220:
	push	_2263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp-36]
	add	edx,dword [eax+8]
	mov	dword [ebp-28],edx
	push	_2264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+8]
	sub	eax,1
	add	dword [ebp-32],eax
	push	_2265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_123
_2200:
	call	dword [_bbOnDebugLeaveScope]
_122:
	cmp	ebx,edi
	jne	_124
_123:
	call	dword [_bbOnDebugLeaveScope]
_113:
	add	dword [ebp-32],1
_2146:
	mov	eax,dword [ebp-40]
	cmp	dword [ebp-32],eax
	jle	_115
_114:
	push	_2270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2272
	call	_brl_blitz_NullObjectError
_2272:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2274
	call	_brl_blitz_NullObjectError
_2274:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_108:
	mov	eax,dword [ebp-52]
	cmp	dword [ebp-44],eax
	jne	_110
_109:
	push	_2278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2280
	call	_brl_blitz_NullObjectError
_2280:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2282
	call	_brl_blitz_NullObjectError
_2282:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_130
_132:
	mov	eax,ebp
	push	eax
	push	_2304
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2287
	call	_brl_blitz_NullObjectError
_2287:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2289
	mov	eax,_bbEmptyString
_2289:
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
	je	_2294
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2291
	call	_brl_blitz_NullObjectError
_2291:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2293
	mov	eax,_bbEmptyString
_2293:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2294:
	cmp	eax,0
	je	_2296
	mov	eax,ebp
	push	eax
	push	_2300
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2299
	call	_brl_blitz_NullObjectError
_2299:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2296:
	push	_2301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2303
	call	_brl_blitz_NullObjectError
_2303:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_130:
	cmp	dword [ebp-20],_bbNullObject
	jne	_132
_131:
	mov	ebx,0
	jmp	_867
_867:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Analyser:
	push	ebp
	mov	ebp,esp
	sub	esp,216
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbEmptyArray
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbEmptyString
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],0
	mov	dword [ebp-48],_bbEmptyString
	mov	dword [ebp-52],_bbEmptyString
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbEmptyString
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbEmptyString
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbEmptyString
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-112],0
	mov	dword [ebp-116],_bbEmptyString
	mov	dword [ebp-120],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-124],_bbEmptyString
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],0
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbEmptyString
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-156],_bbEmptyString
	mov	dword [ebp-160],0
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3347
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-12],eax
	push	_2312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_2316
	push	eax
	call	_bbGCFree
	add	esp,4
_2316:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_2317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Templates]
	cmp	ebx,_bbNullObject
	jne	_2319
	call	_brl_blitz_NullObjectError
_2319:
	push	dword [__bb_TTypeTemplate_ObjectTemplate]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2322
	call	_brl_blitz_NullObjectError
_2322:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2324
	call	_brl_blitz_NullObjectError
_2324:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_2326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	mov	eax,dword [ebp-16]
	mov	edi,dword [eax+20]
	jmp	_2328
_135:
	mov	eax,ebp
	push	eax
	push	_2407
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2332
	call	_brl_blitz_ArrayBoundsError
_2332:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2334
	mov	eax,_bbEmptyString
_2334:
	mov	dword [ebp-32],eax
	push	_2336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	push	_136
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2339
	jmp	_2338
_2339:
	mov	eax,ebp
	push	eax
	push	_2405
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	push	_2341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2345
	call	_brl_blitz_NullObjectError
_2345:
	mov	esi,dword [ebp-28]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2348
	call	_brl_blitz_ArrayBoundsError
_2348:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2350
	mov	eax,_bbEmptyString
_2350:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_2354
	push	eax
	call	_bbGCFree
	add	esp,4
_2354:
	mov	dword [ebx+20],esi
	push	_2355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2359
	call	_brl_blitz_NullObjectError
_2359:
	mov	esi,ebx
	mov	eax,dword [ebp-40]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_2364
	push	eax
	call	_bbGCFree
	add	esp,4
_2364:
	mov	dword [esi+28],ebx
	push	_2365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2367
	call	_brl_blitz_NullObjectError
_2367:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2370
	call	_brl_blitz_NullObjectError
_2370:
	mov	eax,dword [esi+20]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_2374
	push	eax
	call	_bbGCFree
	add	esp,4
_2374:
	mov	dword [ebx+16],esi
	push	_2375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2377
	call	_brl_blitz_NullObjectError
_2377:
	mov	dword [ebx+12],0
	push	_2379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2381
	call	_brl_blitz_NullObjectError
_2381:
	mov	byte [ebx+8],1
	push	_2383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2385
	call	_brl_blitz_NullObjectError
_2385:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_2387
	call	_brl_blitz_NullObjectError
_2387:
	push	dword [__bb_TDatatype_NullDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_2390
	call	_brl_blitz_NullObjectError
_2390:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_2392
	call	_brl_blitz_NullObjectError
_2392:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_99
	call	dword [_bb_TOperator+68]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2395
	call	_brl_blitz_NullObjectError
_2395:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_2396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	call	dword [_bb_TOperator+68]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2398
	call	_brl_blitz_NullObjectError
_2398:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_2399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_UserDefinedDatatypes]
	cmp	ebx,_bbNullObject
	jne	_2401
	call	_brl_blitz_NullObjectError
_2401:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Templates]
	cmp	ebx,_bbNullObject
	jne	_2404
	call	_brl_blitz_NullObjectError
_2404:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2338
_2338:
	call	dword [_bbOnDebugLeaveScope]
_133:
	add	dword [ebp-28],1
_2328:
	cmp	dword [ebp-28],edi
	jl	_135
_134:
	push	_2408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	mov	dword [ebp-216],eax
	jmp	_2410
_139:
	mov	eax,ebp
	push	eax
	push	_2860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2414
	call	_brl_blitz_ArrayBoundsError
_2414:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2416
	mov	eax,_bbEmptyString
_2416:
	mov	dword [ebp-48],eax
	push	_2418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2421
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2422
	jmp	_2420
_2421:
	mov	eax,ebp
	push	eax
	push	_2504
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_143:
	mov	eax,ebp
	push	eax
	push	_2497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2427
	call	_brl_blitz_ArrayBoundsError
_2427:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2429
	mov	eax,_bbEmptyString
_2429:
	mov	dword [ebp-52],eax
	push	_2431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-56],eax
	push	_2433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2436
	call	_brl_blitz_ArrayBoundsError
_2436:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2438
	mov	eax,_bbEmptyString
_2438:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2439
	mov	eax,ebp
	push	eax
	push	_2446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2443
	call	_brl_blitz_ArrayBoundsError
_2443:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2445
	mov	eax,_bbEmptyString
_2445:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-56],eax
	call	dword [_bbOnDebugLeaveScope]
_2439:
	push	_2447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_144
_146:
	mov	eax,ebp
	push	eax
	push	_2459
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2457
	call	_brl_blitz_NullObjectError
_2457:
	add	dword [ebx+20],1
	call	dword [_bbOnDebugLeaveScope]
_144:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2450
	call	_brl_blitz_ArrayBoundsError
_2450:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2452
	mov	eax,_bbEmptyString
_2452:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_146
_145:
	push	_2460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-60],eax
	push	_2462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2464
	call	_brl_blitz_NullObjectError
_2464:
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_2465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2467
	call	_brl_blitz_NullObjectError
_2467:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2469
	call	_brl_blitz_NullObjectError
_2469:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2472
	call	_brl_blitz_ArrayBoundsError
_2472:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2474
	mov	eax,_bbEmptyString
_2474:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2475
	mov	eax,ebp
	push	eax
	push	_2495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+20]
	jmp	_2477
_149:
	mov	eax,ebp
	push	eax
	push	_2494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2481
	call	_brl_blitz_ArrayBoundsError
_2481:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2483
	mov	eax,_bbEmptyString
_2483:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2488
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2485
	call	_brl_blitz_ArrayBoundsError
_2485:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2487
	mov	eax,_bbEmptyString
_2487:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2488:
	cmp	eax,0
	je	_2490
	mov	eax,ebp
	push	eax
	push	_2493
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-44],1
	push	_2492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_148
_2490:
	call	dword [_bbOnDebugLeaveScope]
_147:
	add	dword [ebp-44],1
_2477:
	cmp	dword [ebp-44],ebx
	jl	_149
_148:
	call	dword [_bbOnDebugLeaveScope]
_2475:
	push	_2496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_141:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2501
	call	_brl_blitz_ArrayBoundsError
_2501:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2503
	mov	eax,_bbEmptyString
_2503:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_143
_142:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2420
_2422:
	mov	eax,ebp
	push	eax
	push	_2859
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2508
	call	_brl_blitz_ArrayBoundsError
_2508:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2510
	mov	eax,_bbEmptyString
_2510:
	mov	dword [ebp-64],eax
	push	_2512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	push	_2514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2518
	call	_brl_blitz_NullObjectError
_2518:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_150
_152:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2523
	call	_brl_blitz_NullObjectError
_2523:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-72],eax
	cmp	dword [ebp-72],_bbNullObject
	je	_150
	mov	eax,ebp
	push	eax
	push	_2530
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2524
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2526
	call	_brl_blitz_NullObjectError
_2526:
	push	dword [ebp-64]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2527
	mov	eax,ebp
	push	eax
	push	_2529
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	dword [ebp-68],eax
	call	dword [_bbOnDebugLeaveScope]
_2527:
	call	dword [_bbOnDebugLeaveScope]
_150:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2521
	call	_brl_blitz_NullObjectError
_2521:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_152
_151:
	push	_2532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2535
	call	_brl_blitz_ArrayBoundsError
_2535:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2537
	mov	eax,_bbEmptyString
_2537:
	push	_153
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2538
	mov	eax,ebp
	push	eax
	push	_2589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2542
	call	_brl_blitz_ArrayBoundsError
_2542:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2544
	mov	eax,_bbEmptyString
_2544:
	mov	dword [ebp-76],eax
	push	_2546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2550
	call	_brl_blitz_NullObjectError
_2550:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_154
_156:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2555
	call	_brl_blitz_NullObjectError
_2555:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	je	_154
	mov	eax,ebp
	push	eax
	push	_2588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2558
	call	_brl_blitz_NullObjectError
_2558:
	push	dword [ebp-76]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2559
	mov	eax,ebp
	push	eax
	push	_2587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2562
	call	_brl_blitz_NullObjectError
_2562:
	mov	ebx,dword [ebp-80]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2567
	push	eax
	call	_bbGCFree
	add	esp,4
_2567:
	mov	dword [esi+24],ebx
	push	_2568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2570
	call	_brl_blitz_NullObjectError
_2570:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2572
	call	_brl_blitz_NullObjectError
_2572:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2574
	call	_brl_blitz_NullObjectError
_2574:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2576
	call	_brl_blitz_NullObjectError
_2576:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2579
	call	_brl_blitz_NullObjectError
_2579:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2581
	call	_brl_blitz_NullObjectError
_2581:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2583
	call	_brl_blitz_NullObjectError
_2583:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2585
	call	_brl_blitz_NullObjectError
_2585:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_155
_2559:
	call	dword [_bbOnDebugLeaveScope]
_154:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2553
	call	_brl_blitz_NullObjectError
_2553:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_156
_155:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2591
_2538:
	mov	eax,ebp
	push	eax
	push	_2618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2594
	call	_brl_blitz_NullObjectError
_2594:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2599
	push	eax
	call	_bbGCFree
	add	esp,4
_2599:
	mov	dword [esi+24],ebx
	push	_2600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2602
	call	_brl_blitz_NullObjectError
_2602:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2604
	call	_brl_blitz_NullObjectError
_2604:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2606
	call	_brl_blitz_NullObjectError
_2606:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_2608
	call	_brl_blitz_NullObjectError
_2608:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_2611
	call	_brl_blitz_NullObjectError
_2611:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2613
	call	_brl_blitz_NullObjectError
_2613:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2615
	call	_brl_blitz_NullObjectError
_2615:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2617
	call	_brl_blitz_NullObjectError
_2617:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2591:
	push	_2619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_157
_159:
	mov	eax,ebp
	push	eax
	push	_2854
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2626
	call	_brl_blitz_ArrayBoundsError
_2626:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2628
	mov	eax,_bbEmptyString
_2628:
	push	_161
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2629
	mov	eax,ebp
	push	eax
	push	_2635
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2632
	call	_brl_blitz_NullObjectError
_2632:
	mov	dword [ebx+72],1
	push	_2634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2629:
	push	_2636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2638
	call	_brl_blitz_ArrayBoundsError
_2638:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2640
	mov	eax,_bbEmptyString
_2640:
	push	_162
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2641
	mov	eax,ebp
	push	eax
	push	_2647
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2644
	call	_brl_blitz_NullObjectError
_2644:
	mov	dword [ebx+72],3
	push	_2646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2641:
	push	_2648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2650
	call	_brl_blitz_ArrayBoundsError
_2650:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2652
	mov	eax,_bbEmptyString
_2652:
	push	_163
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2653
	mov	eax,ebp
	push	eax
	push	_2659
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2656
	call	_brl_blitz_NullObjectError
_2656:
	mov	dword [ebx+72],2
	push	_2658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2653:
	push	_2660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2662
	call	_brl_blitz_ArrayBoundsError
_2662:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2664
	mov	eax,_bbEmptyString
_2664:
	push	_164
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2665
	mov	eax,ebp
	push	eax
	push	_2689
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2669
	call	_brl_blitz_ArrayBoundsError
_2669:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2671
	mov	ebx,_bbEmptyString
_2671:
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_167
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_168
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_169
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	push	_171
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2674
	jmp	_2673
_2674:
	mov	eax,ebp
	push	eax
	push	_2676
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2675
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2673
_2673:
	push	_2677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2679
	call	_brl_blitz_ArrayBoundsError
_2679:
	mov	ebx,dword [ebp-16]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2682
	call	_brl_blitz_ArrayBoundsError
_2682:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2684
	mov	eax,_bbEmptyString
_2684:
	push	_174
	push	eax
	push	_173
	push	dword [ebp-64]
	push	_172
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_2688
	push	eax
	call	_bbGCFree
	add	esp,4
_2688:
	mov	dword [ebx+24],esi
	call	dword [_bbOnDebugLeaveScope]
_2665:
	push	_2690
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2692
	call	_brl_blitz_ArrayBoundsError
_2692:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2694
	mov	eax,_bbEmptyString
_2694:
	push	_63
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2695
	mov	eax,ebp
	push	eax
	push	_2851
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2699
	call	_brl_blitz_ArrayBoundsError
_2699:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2701
	mov	eax,_bbEmptyString
_2701:
	mov	dword [ebp-84],eax
	push	_2703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2707
	call	_brl_blitz_ArrayBoundsError
_2707:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2709
	mov	eax,_bbEmptyString
_2709:
	push	0
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2712
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_175
_177:
	mov	eax,ebp
	push	eax
	push	_2723
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2721
	call	_brl_blitz_NullObjectError
_2721:
	add	dword [ebx+20],1
	call	dword [_bbOnDebugLeaveScope]
_175:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2714
	call	_brl_blitz_ArrayBoundsError
_2714:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2716
	mov	eax,_bbEmptyString
_2716:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_177
_176:
	push	_2724
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbEmptyString
	mov	dword [ebp-96],_bbNullObject
	push	_2727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2729
	call	_brl_blitz_ArrayBoundsError
_2729:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2731
	mov	eax,_bbEmptyString
_2731:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2732
	mov	eax,ebp
	push	eax
	push	_2803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_178
_180:
	mov	eax,ebp
	push	eax
	push	_2745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2741
	call	_brl_blitz_ArrayBoundsError
_2741:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2743
	mov	eax,_bbEmptyString
_2743:
	push	_85
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	push	_2744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_178:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2736
	call	_brl_blitz_ArrayBoundsError
_2736:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2738
	mov	eax,_bbEmptyString
_2738:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_180
_179:
	push	_2746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-100],eax
	push	_2748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-100]
	cmp	edi,_bbNullObject
	jne	_2750
	call	_brl_blitz_NullObjectError
_2750:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2752
	call	_brl_blitz_NullObjectError
_2752:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2754
	call	_brl_blitz_NullObjectError
_2754:
	push	_88
	push	dword [ebp-92]
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,4
	push	eax
	push	dword [esi+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+56]
	add	esp,8
	push	_2755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2757
	call	_brl_blitz_NullObjectError
_2757:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_2758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2761
	call	_brl_blitz_NullObjectError
_2761:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_2763
	call	_brl_blitz_NullObjectError
_2763:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2765
	call	_brl_blitz_NullObjectError
_2765:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2768
	call	_brl_blitz_NullObjectError
_2768:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_181
_183:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2773
	call	_brl_blitz_NullObjectError
_2773:
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
	je	_181
	mov	eax,ebp
	push	eax
	push	_2802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2776
	call	_brl_blitz_NullObjectError
_2776:
	push	_184
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
	push	_2801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2778
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2781
	call	_brl_blitz_NullObjectError
_2781:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2784
	call	_brl_blitz_NullObjectError
_2784:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_185
_187:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2789
	call	_brl_blitz_NullObjectError
_2789:
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
	je	_185
	mov	eax,ebp
	push	eax
	push	_2799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2792
	call	_brl_blitz_NullObjectError
_2792:
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2793
	mov	eax,ebp
	push	eax
	push	_2798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2796
	call	_brl_blitz_NullObjectError
_2796:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_186
_2793:
	call	dword [_bbOnDebugLeaveScope]
_185:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2787
	call	_brl_blitz_NullObjectError
_2787:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_187
_186:
	push	_2800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_182
_2777:
	call	dword [_bbOnDebugLeaveScope]
_181:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2771
	call	_brl_blitz_NullObjectError
_2771:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_183
_182:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2805
_2732:
	mov	eax,ebp
	push	eax
	push	_2845
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2808
	call	_brl_blitz_NullObjectError
_2808:
	mov	ebx,dword [ebx+16]
	push	_127
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2811
	push	_189
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2811
	push	_190
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2811
	push	_129
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2811
	push	_125
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2812
	push	_193
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2812
	push	_126
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2813
	mov	eax,ebp
	push	eax
	push	_2815
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_195
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2810
_2811:
	mov	eax,ebp
	push	eax
	push	_2827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2816
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2819
	call	_brl_blitz_NullObjectError
_2819:
	push	_192
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_2820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_2822
	call	_brl_blitz_NullObjectError
_2822:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2824
	call	_brl_blitz_NullObjectError
_2824:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2826
	call	_brl_blitz_NullObjectError
_2826:
	push	dword [ebp-96]
	push	dword [ebx+20]
	push	dword [esi+16]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2810
_2812:
	mov	eax,ebp
	push	eax
	push	_2839
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_125
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2831
	call	_brl_blitz_NullObjectError
_2831:
	push	_194
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_2832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_FloatDatatype]
	cmp	edi,_bbNullObject
	jne	_2834
	call	_brl_blitz_NullObjectError
_2834:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2836
	call	_brl_blitz_NullObjectError
_2836:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2838
	call	_brl_blitz_NullObjectError
_2838:
	push	dword [ebp-96]
	push	dword [ebx+20]
	push	dword [esi+16]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2810
_2813:
	mov	eax,ebp
	push	eax
	push	_2844
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_126
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2843
	call	_brl_blitz_NullObjectError
_2843:
	push	_4
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2810
_2810:
	call	dword [_bbOnDebugLeaveScope]
_2805:
	push	_2846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2848
	call	_brl_blitz_NullObjectError
_2848:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2850
	call	_brl_blitz_NullObjectError
_2850:
	push	dword [ebx+72]
	push	dword [ebp-96]
	push	dword [ebp-88]
	push	dword [ebp-84]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_2695:
	push	_2853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_157:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2621
	call	_brl_blitz_ArrayBoundsError
_2621:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2623
	mov	eax,_bbEmptyString
_2623:
	push	_160
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_159
_158:
	push	_2855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2857
	call	_brl_blitz_NullObjectError
_2857:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2420
_2420:
	call	dword [_bbOnDebugLeaveScope]
_137:
	add	dword [ebp-44],1
_2410:
	mov	eax,dword [ebp-216]
	cmp	dword [ebp-44],eax
	jl	_139
_138:
	push	_2861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_4
	push	_2863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	mov	dword [ebp-112],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	mov	dword [ebp-212],eax
	jmp	_2867
_198:
	mov	eax,ebp
	push	eax
	push	_3240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2871
	call	_brl_blitz_ArrayBoundsError
_2871:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2873
	mov	eax,_bbEmptyString
_2873:
	mov	dword [ebp-116],eax
	push	_2875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2878
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2879
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2880
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2881
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2882
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2883
	jmp	_2877
_2878:
	mov	eax,ebp
	push	eax
	push	_2908
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2887
	call	_brl_blitz_ArrayBoundsError
_2887:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2889
	mov	eax,_bbEmptyString
_2889:
	mov	dword [ebp-20],eax
	push	_2890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2894
	call	_brl_blitz_NullObjectError
_2894:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_199
_201:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2899
	call	_brl_blitz_NullObjectError
_2899:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-120],eax
	cmp	dword [ebp-120],_bbNullObject
	je	_199
	mov	eax,ebp
	push	eax
	push	_2907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2902
	call	_brl_blitz_NullObjectError
_2902:
	push	dword [ebp-20]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	dword [ebx+20]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2903
	mov	eax,ebp
	push	eax
	push	_2906
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-24],eax
	push	_2905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_200
_2903:
	call	dword [_bbOnDebugLeaveScope]
_199:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2897
	call	_brl_blitz_NullObjectError
_2897:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_201
_200:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2879:
	mov	eax,ebp
	push	eax
	push	_2915
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_4
	push	_2910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2913
	call	_brl_blitz_NullObjectError
_2913:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2880:
	mov	eax,ebp
	push	eax
	push	_2923
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2917
	mov	eax,ebp
	push	eax
	push	_2922
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2920
	call	_brl_blitz_NullObjectError
_2920:
	mov	dword [ebx+72],1
	call	dword [_bbOnDebugLeaveScope]
_2917:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2881:
	mov	eax,ebp
	push	eax
	push	_2931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2925
	mov	eax,ebp
	push	eax
	push	_2930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2928
	call	_brl_blitz_NullObjectError
_2928:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
_2925:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2882:
	mov	eax,ebp
	push	eax
	push	_2939
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2933
	mov	eax,ebp
	push	eax
	push	_2938
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2934
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2936
	call	_brl_blitz_NullObjectError
_2936:
	mov	dword [ebx+72],2
	call	dword [_bbOnDebugLeaveScope]
_2933:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2883:
	mov	eax,ebp
	push	eax
	push	_3237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2945
	call	_brl_blitz_ArrayBoundsError
_2945:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2947
	mov	ebx,_bbEmptyString
_2947:
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2950
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2951
	push	_167
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2952
	push	_169
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2953
	push	_168
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2954
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2955
	push	_171
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2956
	jmp	_2949
_2950:
	mov	eax,ebp
	push	eax
	push	_2959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2957
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],2
	push	_2958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2951:
	mov	eax,ebp
	push	eax
	push	_2962
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2952:
	mov	eax,ebp
	push	eax
	push	_2965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],3
	push	_2964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2953:
	mov	eax,ebp
	push	eax
	push	_2968
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],4
	push	_2967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2954:
	mov	eax,ebp
	push	eax
	push	_2971
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],5
	push	_2970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2955:
	mov	eax,ebp
	push	eax
	push	_2972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2956:
	mov	eax,ebp
	push	eax
	push	_2973
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2949
_2949:
	push	_2974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2976
	call	_brl_blitz_ArrayBoundsError
_2976:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2978
	mov	eax,_bbEmptyString
_2978:
	mov	dword [ebp-124],eax
	push	_2980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-128],eax
	push	_2982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2985
	call	_brl_blitz_ArrayBoundsError
_2985:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2987
	mov	eax,_bbEmptyString
_2987:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2988
	mov	eax,ebp
	push	eax
	push	_2996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2992
	call	_brl_blitz_ArrayBoundsError
_2992:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2994
	mov	eax,_bbEmptyString
_2994:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-128],eax
	push	_2995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_2988:
	push	_2997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-132],eax
	push	_2999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],_bbNullObject
	push	_3001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3003
	call	_brl_blitz_NullObjectError
_3003:
	push	dword [ebp-128]
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_3004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3005
	mov	eax,ebp
	push	eax
	push	_3011
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3008
	call	_brl_blitz_NullObjectError
_3008:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3010
	call	_brl_blitz_NullObjectError
_3010:
	push	dword [esi+72]
	movzx	eax,byte [ebp-4]
	push	eax
	push	dword [ebp-128]
	push	dword [ebp-124]
	push	dword [ebp-132]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,24
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_3005:
	push	_3012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],0
	push	_3014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_202
_204:
	mov	eax,ebp
	push	eax
	push	_3022
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-140],1
	call	dword [_bbOnDebugLeaveScope]
_202:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3016
	call	_brl_blitz_ArrayBoundsError
_3016:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3018
	mov	eax,_bbEmptyString
_3018:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_204
_203:
	push	_3023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_3026
	call	_brl_blitz_NullObjectError
_3026:
	mov	eax,dword [ebp-140]
	mov	dword [ebx+20],eax
	push	_3028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-24]
	mov	dword [ebp-144],eax
	push	_3030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-144],_bbNullObject
	je	_3031
	mov	eax,ebp
	push	eax
	push	_3037
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_3034
	call	_brl_blitz_NullObjectError
_3034:
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_3036
	call	_brl_blitz_NullObjectError
_3036:
	push	_4
	push	dword [ebx+28]
	push	_205
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,16
	call	dword [_bbOnDebugLeaveScope]
_3031:
	push	_3038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_206
_208:
	mov	eax,ebp
	push	eax
	push	_3135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3045
	call	_brl_blitz_ArrayBoundsError
_3045:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3047
	mov	eax,_bbEmptyString
_3047:
	mov	dword [ebp-148],eax
	push	_3049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-152],eax
	mov	dword [ebp-156],_bbEmptyString
	push	_3053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3055
	call	_brl_blitz_ArrayBoundsError
_3055:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3057
	mov	eax,_bbEmptyString
_3057:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3058
	mov	eax,ebp
	push	eax
	push	_3066
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3062
	call	_brl_blitz_ArrayBoundsError
_3062:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3064
	mov	eax,_bbEmptyString
_3064:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-152],eax
	push	_3065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_3058:
	push	_3067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],0
	push	_3069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_209
_211:
	mov	eax,ebp
	push	eax
	push	_3077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-160],1
	call	dword [_bbOnDebugLeaveScope]
_209:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3071
	call	_brl_blitz_ArrayBoundsError
_3071:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3073
	mov	eax,_bbEmptyString
_3073:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_211
_210:
	push	_3078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-152]
	cmp	ebx,_bbNullObject
	jne	_3080
	call	_brl_blitz_NullObjectError
_3080:
	mov	eax,dword [ebp-160]
	mov	dword [ebx+20],eax
	push	_3082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3084
	call	_brl_blitz_ArrayBoundsError
_3084:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3086
	mov	eax,_bbEmptyString
_3086:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3087
	mov	eax,ebp
	push	eax
	push	_3122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+20]
	jmp	_3089
_214:
	mov	eax,ebp
	push	eax
	push	_3121
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3093
	call	_brl_blitz_ArrayBoundsError
_3093:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3095
	mov	eax,_bbEmptyString
_3095:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3100
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3097
	call	_brl_blitz_ArrayBoundsError
_3097:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3099
	mov	eax,_bbEmptyString
_3099:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3100:
	cmp	eax,0
	je	_3102
	mov	eax,ebp
	push	eax
	push	_3113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3105
	call	_brl_blitz_ArrayBoundsError
_3105:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3107
	mov	eax,_bbEmptyString
_3107:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3108
	mov	eax,ebp
	push	eax
	push	_3111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-156]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-156]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-156],eax
	push	_3110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_3108:
	push	_3112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_213
_3102:
	mov	eax,ebp
	push	eax
	push	_3120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3117
	call	_brl_blitz_ArrayBoundsError
_3117:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3119
	mov	eax,_bbEmptyString
_3119:
	push	eax
	push	_85
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-156]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-156],eax
	call	dword [_bbOnDebugLeaveScope]
_3114:
	call	dword [_bbOnDebugLeaveScope]
_212:
	add	dword [ebp-112],1
_3089:
	cmp	dword [ebp-112],ebx
	jl	_214
_213:
	call	dword [_bbOnDebugLeaveScope]
_3087:
	push	_3123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3125
	call	_brl_blitz_NullObjectError
_3125:
	push	dword [ebp-156]
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	dword [ebp-152]
	push	dword [ebp-148]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
	push	_3126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3128
	call	_brl_blitz_ArrayBoundsError
_3128:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3130
	mov	eax,_bbEmptyString
_3130:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3131
	mov	eax,ebp
	push	eax
	push	_3133
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_207
_3131:
	push	_3134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_206:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3040
	call	_brl_blitz_ArrayBoundsError
_3040:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3042
	mov	eax,_bbEmptyString
_3042:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_208
_207:
	push	_3136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-136],_bbNullObject
	je	_3137
	mov	eax,ebp
	push	eax
	push	_3148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_3140
	call	_brl_blitz_NullObjectError
_3140:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3143
	call	_brl_blitz_NullObjectError
_3143:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_3147
	push	eax
	call	_bbGCFree
	add	esp,4
_3147:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_3137:
	push	_3149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3151
	call	_brl_blitz_NullObjectError
_3151:
	mov	byte [ebx+28],1
	push	_3153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-144],_bbNullObject
	je	_3154
	mov	eax,ebp
	push	eax
	push	_3225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-144]
	cmp	esi,_bbNullObject
	jne	_3157
	call	_brl_blitz_NullObjectError
_3157:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3159
	call	_brl_blitz_NullObjectError
_3159:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3161
	call	_brl_blitz_NullObjectError
_3161:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-164],eax
	push	_3163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_215
_217:
	mov	eax,ebp
	push	eax
	push	_3224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3166
	call	_brl_blitz_NullObjectError
_3166:
	mov	eax,dword [ebx+8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3169
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3168
	call	_brl_blitz_NullObjectError
_3168:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_3169:
	cmp	eax,0
	je	_3177
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3172
	call	_brl_blitz_NullObjectError
_3172:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3174
	call	_brl_blitz_NullObjectError
_3174:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_3176
	call	_brl_blitz_NullObjectError
_3176:
	push	dword [esi+12]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3177:
	cmp	eax,0
	je	_3179
	mov	eax,ebp
	push	eax
	push	_3220
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3182
	call	_brl_blitz_NullObjectError
_3182:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3184
	call	_brl_blitz_NullObjectError
_3184:
	mov	eax,dword [ebp-144]
	cmp	dword [ebx+24],eax
	jne	_3185
	mov	eax,ebp
	push	eax
	push	_3189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3188
	call	_brl_blitz_NullObjectError
_3188:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_3185:
	push	_3190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3192
	call	_brl_blitz_NullObjectError
_3192:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3194
	call	_brl_blitz_NullObjectError
_3194:
	mov	ebx,dword [ebp-132]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3199
	push	eax
	call	_bbGCFree
	add	esp,4
_3199:
	mov	dword [esi+16],ebx
	push	_3200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_3202
	call	_brl_blitz_NullObjectError
_3202:
	mov	ebx,dword [ebp-144]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3207
	push	eax
	call	_bbGCFree
	add	esp,4
_3207:
	mov	dword [esi+36],ebx
	push	_3208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3210
	call	_brl_blitz_NullObjectError
_3210:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3212
	call	_brl_blitz_NullObjectError
_3212:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3215
	call	_brl_blitz_NullObjectError
_3215:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_3219
	push	eax
	call	_bbGCFree
	add	esp,4
_3219:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_3179:
	push	_3221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_3223
	call	_brl_blitz_NullObjectError
_3223:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-164],eax
	call	dword [_bbOnDebugLeaveScope]
_215:
	cmp	dword [ebp-164],_bbNullObject
	jne	_217
_216:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3227
_3154:
	mov	eax,ebp
	push	eax
	push	_3231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3230
	call	_brl_blitz_NullObjectError
_3230:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_3227:
	push	_3232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3234
	call	_brl_blitz_NullObjectError
_3234:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3236
	call	_brl_blitz_NullObjectError
_3236:
	push	dword [ebp-132]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2877
_2877:
	call	dword [_bbOnDebugLeaveScope]
_196:
	add	dword [ebp-112],1
_2867:
	mov	eax,dword [ebp-212]
	cmp	dword [ebp-112],eax
	jl	_198
_197:
	push	_3241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-204],eax
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_3245
	call	_brl_blitz_NullObjectError
_3245:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-208],eax
	jmp	_218
_220:
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_3250
	call	_brl_blitz_NullObjectError
_3250:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-168],eax
	cmp	dword [ebp-168],_bbNullObject
	je	_218
	mov	eax,ebp
	push	eax
	push	_3341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3253
	call	_brl_blitz_NullObjectError
_3253:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-172],eax
	push	_3255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_221
_223:
	mov	eax,ebp
	push	eax
	push	_3340
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],_bbNullObject
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_3259
	call	_brl_blitz_NullObjectError
_3259:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-196],eax
	mov	ebx,dword [ebp-196]
	cmp	ebx,_bbNullObject
	jne	_3262
	call	_brl_blitz_NullObjectError
_3262:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-200],eax
	jmp	_224
_226:
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_3267
	call	_brl_blitz_NullObjectError
_3267:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-176],eax
	cmp	dword [ebp-176],_bbNullObject
	je	_224
	mov	eax,ebp
	push	eax
	push	_3336
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3270
	call	_brl_blitz_NullObjectError
_3270:
	cmp	dword [ebx+16],_bbNullObject
	je	_3271
	mov	eax,ebp
	push	eax
	push	_3335
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3274
	call	_brl_blitz_NullObjectError
_3274:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3276
	call	_brl_blitz_NullObjectError
_3276:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	mov	dword [ebp-180],eax
	push	_3278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3280
	call	_brl_blitz_NullObjectError
_3280:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3282
	call	_brl_blitz_NullObjectError
_3282:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_3284
	call	_brl_blitz_NullObjectError
_3284:
	push	dword [ebp-180]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_3285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3287
	call	_brl_blitz_NullObjectError
_3287:
	mov	dword [ebp-192],ebx
	mov	edi,dword [ebp-180]
	cmp	edi,_bbNullObject
	jne	_3290
	call	_brl_blitz_NullObjectError
_3290:
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3292
	call	_brl_blitz_NullObjectError
_3292:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_3294
	call	_brl_blitz_NullObjectError
_3294:
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3296
	call	_brl_blitz_NullObjectError
_3296:
	push	_38
	push	dword [ebx+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	push	dword [esi+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [edi+12]
	call	_bbStringReplace
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-192]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_3300
	push	eax
	call	_bbGCFree
	add	esp,4
_3300:
	mov	eax,dword [ebp-192]
	mov	dword [eax+12],ebx
	push	_3301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3303
	call	_brl_blitz_NullObjectError
_3303:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_3304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-180]
	cmp	esi,_bbNullObject
	jne	_3306
	call	_brl_blitz_NullObjectError
_3306:
	mov	ebx,dword [ebp-168]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3311
	push	eax
	call	_bbGCFree
	add	esp,4
_3311:
	mov	dword [esi+36],ebx
	push	_3312
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3314
	call	_brl_blitz_NullObjectError
_3314:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3316
	call	_brl_blitz_NullObjectError
_3316:
	push	dword [ebp-180]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_3317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-168]
	mov	dword [ebp-184],eax
	cmp	dword [ebp-184],_bbNullObject
	jne	_3319
	call	_brl_blitz_NullObjectError
_3319:
	mov	eax,dword [ebp-180]
	mov	dword [ebp-188],eax
	cmp	dword [ebp-188],_bbNullObject
	jne	_3321
	call	_brl_blitz_NullObjectError
_3321:
	mov	edi,dword [ebp-180]
	cmp	edi,_bbNullObject
	jne	_3323
	call	_brl_blitz_NullObjectError
_3323:
	mov	esi,dword [ebp-176]
	cmp	esi,_bbNullObject
	jne	_3325
	call	_brl_blitz_NullObjectError
_3325:
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3327
	call	_brl_blitz_NullObjectError
_3327:
	push	dword [ebx+8]
	movzx	eax,byte [esi+12]
	push	eax
	push	dword [edi+8]
	mov	eax,dword [ebp-188]
	push	dword [eax+12]
	push	dword [ebp-180]
	push	dword [ebp-184]
	mov	eax,dword [ebp-184]
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,24
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3329
	call	_brl_blitz_NullObjectError
_3329:
	mov	ebx,dword [ebp-180]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3334
	push	eax
	call	_bbGCFree
	add	esp,4
_3334:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_3271:
	call	dword [_bbOnDebugLeaveScope]
_224:
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_3265
	call	_brl_blitz_NullObjectError
_3265:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_226
_225:
	push	_3337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_3339
	call	_brl_blitz_NullObjectError
_3339:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-172],eax
	call	dword [_bbOnDebugLeaveScope]
_221:
	cmp	dword [ebp-172],_bbNullObject
	jne	_223
_222:
	call	dword [_bbOnDebugLeaveScope]
_218:
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_3248
	call	_brl_blitz_NullObjectError
_3248:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_220
_219:
	push	_3342
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3346
	push	eax
	call	_bbGCFree
	add	esp,4
_3346:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	ebx,0
	jmp	_870
_870:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Parser:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3589
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-12],eax
	push	_3353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3357
	push	eax
	call	_bbGCFree
	add	esp,4
_3357:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_3358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3360
	call	_brl_blitz_NullObjectError
_3360:
	push	_227
	call	dword [_bah_libxml_TxmlDoc+96]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3365
	push	eax
	call	_bbGCFree
	add	esp,4
_3365:
	mov	dword [esi+36],ebx
	push	_3366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_228
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_3368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3370
	call	_brl_blitz_NullObjectError
_3370:
	push	_230
	push	_229
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3373
	call	_brl_blitz_NullObjectError
_3373:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_3375
	call	_brl_blitz_NullObjectError
_3375:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_3376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_3377
	mov	eax,ebp
	push	eax
	push	_3437
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3382
	call	_brl_blitz_NullObjectError
_3382:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_231
_233:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3387
	call	_brl_blitz_NullObjectError
_3387:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_231
	mov	eax,ebp
	push	eax
	push	_3391
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3390
	call	_brl_blitz_NullObjectError
_3390:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	eax
	push	dword [ebp-16]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_231:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3385
	call	_brl_blitz_NullObjectError
_3385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_233
_232:
	push	_3392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3394
	call	_brl_blitz_NullObjectError
_3394:
	push	_4
	push	_bbNullObject
	push	_140
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_3396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3399
	call	_brl_blitz_NullObjectError
_3399:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_3402
	call	_brl_blitz_NullObjectError
_3402:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_234
_236:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3407
	call	_brl_blitz_NullObjectError
_3407:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	je	_234
	mov	eax,ebp
	push	eax
	push	_3435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_3410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3412
	call	_brl_blitz_NullObjectError
_3412:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3414
	call	_brl_blitz_NullObjectError
_3414:
	cmp	dword [ebx+20],0
	je	_3415
	mov	eax,ebp
	push	eax
	push	_3419
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3418
	call	_brl_blitz_NullObjectError
_3418:
	push	_4
	push	_bbNullObject
	push	_237
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3420
_3415:
	mov	eax,ebp
	push	eax
	push	_3424
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3423
	call	_brl_blitz_NullObjectError
_3423:
	push	_4
	push	_bbNullObject
	push	_238
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
_3420:
	push	_3425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3427
	call	_brl_blitz_NullObjectError
_3427:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3429
	call	_brl_blitz_NullObjectError
_3429:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3432
	call	_brl_blitz_NullObjectError
_3432:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3434
	call	_brl_blitz_NullObjectError
_3434:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_234:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3405
	call	_brl_blitz_NullObjectError
_3405:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_236
_235:
	call	dword [_bbOnDebugLeaveScope]
_3377:
	push	_3439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3441
	call	_brl_blitz_NullObjectError
_3441:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3444
	call	_brl_blitz_NullObjectError
_3444:
	push	_4
	push	_bbNullObject
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3448
	push	eax
	call	_bbGCFree
	add	esp,4
_3448:
	mov	dword [esi+40],ebx
	push	_3449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3451
	call	_brl_blitz_NullObjectError
_3451:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3454
	call	_brl_blitz_NullObjectError
_3454:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+60]
	dec	dword [eax+4]
	jnz	_3458
	push	eax
	call	_bbGCFree
	add	esp,4
_3458:
	mov	dword [esi+60],ebx
	push	_3459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3461
	call	_brl_blitz_NullObjectError
_3461:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3464
	call	_brl_blitz_NullObjectError
_3464:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3466
	call	_brl_blitz_NullObjectError
_3466:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3470
	push	eax
	call	_bbGCFree
	add	esp,4
_3470:
	mov	dword [esi+52],ebx
	push	_3471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3473
	call	_brl_blitz_NullObjectError
_3473:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3476
	call	_brl_blitz_NullObjectError
_3476:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_3478
	call	_brl_blitz_NullObjectError
_3478:
	push	_bbStringClass
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3480
	mov	esi,_bbEmptyString
_3480:
	inc	dword [esi+4]
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3484
	push	eax
	call	_bbGCFree
	add	esp,4
_3484:
	mov	dword [ebx+48],esi
	push	_3485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3487
	call	_brl_blitz_NullObjectError
_3487:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	_3488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_3489
	mov	eax,ebp
	push	eax
	push	_3570
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3493
	call	_brl_blitz_NullObjectError
_3493:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_3496
	call	_brl_blitz_NullObjectError
_3496:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_239
_241:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3501
	call	_brl_blitz_NullObjectError
_3501:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-36],eax
	cmp	dword [ebp-36],_bbNullObject
	je	_239
	mov	eax,ebp
	push	eax
	push	_3568
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3504
	call	_brl_blitz_NullObjectError
_3504:
	movzx	eax,byte [ebx+29]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3507
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3506
	call	_brl_blitz_NullObjectError
_3506:
	movzx	eax,byte [ebx+28]
_3507:
	cmp	eax,0
	je	_3509
	mov	eax,ebp
	push	eax
	push	_3511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_239
_3509:
	push	_3512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3514
	call	_brl_blitz_NullObjectError
_3514:
	push	_4
	push	_bbNullObject
	push	_164
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_3516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3518
	call	_brl_blitz_NullObjectError
_3518:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3520
	call	_brl_blitz_NullObjectError
_3520:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_3521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_3523
	call	_brl_blitz_NullObjectError
_3523:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3525
	call	_brl_blitz_NullObjectError
_3525:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_3528
	call	_brl_blitz_NullObjectError
_3528:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3530
	call	_brl_blitz_NullObjectError
_3530:
	push	dword [ebx+20]
	push	_70
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3533
	call	_brl_blitz_NullObjectError
_3533:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_3535
	call	_brl_blitz_NullObjectError
_3535:
	movzx	eax,byte [esi+28]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_242
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3539
	call	_brl_blitz_NullObjectError
_3539:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3542
	call	_brl_blitz_NullObjectError
_3542:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_243
_245:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3547
	call	_brl_blitz_NullObjectError
_3547:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-44],eax
	cmp	dword [ebp-44],_bbNullObject
	je	_243
	mov	eax,ebp
	push	eax
	push	_3562
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3550
	call	_brl_blitz_NullObjectError
_3550:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-48],eax
	push	_3552
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_3554
	call	_brl_blitz_NullObjectError
_3554:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3556
	call	_brl_blitz_NullObjectError
_3556:
	push	dword [ebx+8]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3557
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3559
	call	_brl_blitz_NullObjectError
_3559:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_3561
	call	_brl_blitz_NullObjectError
_3561:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_243:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3545
	call	_brl_blitz_NullObjectError
_3545:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_245
_244:
	push	_3563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3565
	call	_brl_blitz_NullObjectError
_3565:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_3567
	call	_brl_blitz_NullObjectError
_3567:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_239:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3499
	call	_brl_blitz_NullObjectError
_3499:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_241
_240:
	call	dword [_bbOnDebugLeaveScope]
_3489:
	push	_3571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_246
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	_3572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3574
	call	_brl_blitz_NullObjectError
_3574:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_3576
	call	_brl_blitz_NullObjectError
_3576:
	push	1
	push	1
	push	_246
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,16
	push	_3577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3581
	push	eax
	call	_bbGCFree
	add	esp,4
_3581:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_3582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3584
	call	_brl_blitz_NullObjectError
_3584:
	movzx	eax,byte [ebx+68]
	cmp	eax,0
	je	_3585
	mov	eax,ebp
	push	eax
	push	_3588
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_247
	call	_bbWriteStdout
	add	esp,4
	push	_3587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_3585:
	mov	ebx,0
	jmp	_874
_874:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_InternBlock:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3594
	call	_brl_blitz_NullObjectError
_3594:
	mov	eax,dword [ebx+40]
	mov	dword [ebp-12],eax
	push	_3596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3598
	call	_brl_blitz_NullObjectError
_3598:
	mov	eax,dword [ebx+44]
	mov	dword [ebp-16],eax
	push	_3600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3602
	call	_brl_blitz_NullObjectError
_3602:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3607
	push	eax
	call	_bbGCFree
	add	esp,4
_3607:
	mov	dword [esi+40],ebx
	push	_3608
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3610
	call	_brl_blitz_NullObjectError
_3610:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	_3611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3613
	call	_brl_blitz_NullObjectError
_3613:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_3618
	push	eax
	call	_bbGCFree
	add	esp,4
_3618:
	mov	dword [esi+44],ebx
	push	_3619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3621
	call	_brl_blitz_NullObjectError
_3621:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3626
	push	eax
	call	_bbGCFree
	add	esp,4
_3626:
	mov	dword [esi+40],ebx
	mov	ebx,0
	jmp	_878
_878:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Block:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,ebp
	push	eax
	push	_3776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3629
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3631
	call	_brl_blitz_NullObjectError
_3631:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3634
	call	_brl_blitz_NullObjectError
_3634:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3636
	call	_brl_blitz_NullObjectError
_3636:
	mov	eax,dword [ebx+20]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_563
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_3640
	push	eax
	call	_bbGCFree
	add	esp,4
_3640:
	mov	dword [edi+20],ebx
	push	_3641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3643
	call	_brl_blitz_NullObjectError
_3643:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3646
	call	_brl_blitz_NullObjectError
_3646:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_3648
	call	_brl_blitz_ArrayBoundsError
_3648:
	shl	ebx,2
	add	esi,ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_3653
	push	eax
	call	_bbGCFree
	add	esp,4
_3653:
	mov	dword [esi+24],ebx
	push	_3654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_248
_250:
	mov	eax,ebp
	push	eax
	push	_3763
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3703
	call	_brl_blitz_NullObjectError
_3703:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_3704
	mov	eax,ebp
	push	eax
	push	_3709
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3707
	call	_brl_blitz_NullObjectError
_3707:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_3708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_248
_3704:
	push	_3710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3712
	call	_brl_blitz_NullObjectError
_3712:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3715
	call	_brl_blitz_NullObjectError
_3715:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_3717
	call	_brl_blitz_NullObjectError
_3717:
	push	_4
	push	_bbNullObject
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_3721
	push	eax
	call	_bbGCFree
	add	esp,4
_3721:
	mov	dword [esi+44],ebx
	push	_3722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3724
	call	_brl_blitz_NullObjectError
_3724:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_3726
	call	_brl_blitz_NullObjectError
_3726:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3728
	call	_brl_blitz_NullObjectError
_3728:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3731
	call	_brl_blitz_NullObjectError
_3731:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3733
	call	_brl_blitz_NullObjectError
_3733:
	push	0
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3735
	call	_brl_blitz_NullObjectError
_3735:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	dword [ebx+44]
	call	_bb_AddChild
	add	esp,8
	push	_3736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3738
	call	_brl_blitz_NullObjectError
_3738:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3740
	call	_brl_blitz_NullObjectError
_3740:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3742
	call	_brl_blitz_NullObjectError
_3742:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	dword [ebx+52],eax
	je	_3743
	mov	eax,ebp
	push	eax
	push	_3747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3746
	call	_brl_blitz_NullObjectError
_3746:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_3743:
	push	_3748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_262
_264:
	mov	eax,ebp
	push	eax
	push	_3762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3761
	call	_brl_blitz_NullObjectError
_3761:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_262:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3750
	call	_brl_blitz_NullObjectError
_3750:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_3757
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3752
	call	_brl_blitz_NullObjectError
_3752:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3754
	call	_brl_blitz_NullObjectError
_3754:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3756
	call	_brl_blitz_NullObjectError
_3756:
	mov	ebx,dword [ebx+52]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
_3757:
	cmp	eax,0
	jne	_264
_263:
	call	dword [_bbOnDebugLeaveScope]
_248:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3656
	call	_brl_blitz_NullObjectError
_3656:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3658
	call	_brl_blitz_NullObjectError
_3658:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3660
	call	_brl_blitz_NullObjectError
_3660:
	mov	ebx,dword [ebx+52]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3663
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3662
	call	_brl_blitz_NullObjectError
_3662:
	push	_251
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3663:
	cmp	eax,0
	je	_3667
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3666
	call	_brl_blitz_NullObjectError
_3666:
	push	_252
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3667:
	cmp	eax,0
	je	_3671
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3670
	call	_brl_blitz_NullObjectError
_3670:
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3671:
	cmp	eax,0
	je	_3675
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3674
	call	_brl_blitz_NullObjectError
_3674:
	push	_254
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3675:
	cmp	eax,0
	je	_3679
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3678
	call	_brl_blitz_NullObjectError
_3678:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3679:
	cmp	eax,0
	je	_3683
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3682
	call	_brl_blitz_NullObjectError
_3682:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3683:
	cmp	eax,0
	je	_3687
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3686
	call	_brl_blitz_NullObjectError
_3686:
	push	_257
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3687:
	cmp	eax,0
	je	_3691
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3690
	call	_brl_blitz_NullObjectError
_3690:
	push	_258
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3691:
	cmp	eax,0
	je	_3695
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3694
	call	_brl_blitz_NullObjectError
_3694:
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3695:
	cmp	eax,0
	je	_3699
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3698
	call	_brl_blitz_NullObjectError
_3698:
	push	_260
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3699:
	cmp	eax,0
	jne	_250
_249:
	push	_3764
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3766
	call	_brl_blitz_NullObjectError
_3766:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3769
	call	_brl_blitz_NullObjectError
_3769:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3771
	call	_brl_blitz_NullObjectError
_3771:
	mov	eax,dword [ebx+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_563
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_3775
	push	eax
	call	_bbGCFree
	add	esp,4
_3775:
	mov	dword [edi+20],ebx
	mov	ebx,0
	jmp	_881
_881:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Expression:
	push	ebp
	mov	ebp,esp
	sub	esp,76
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	byte [ebp-4],0
	mov	byte [ebp-8],0
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3947
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-16],eax
	jl	_3778
	mov	eax,ebp
	push	eax
	push	_3782
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3781
	call	_brl_blitz_NullObjectError
_3781:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+80]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_885
_3778:
	mov	eax,ebp
	push	eax
	push	_3940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3786
	call	_brl_blitz_NullObjectError
_3786:
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_3788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_3790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	push	_3793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3795
	call	_brl_blitz_NullObjectError
_3795:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-36],eax
	push	_3797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_265
_267:
	mov	eax,ebp
	push	eax
	push	_3928
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_3800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_3802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_3805
	call	_brl_blitz_ArrayBoundsError
_3805:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_3808
	call	_brl_blitz_NullObjectError
_3808:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_268
_270:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_3813
	call	_brl_blitz_NullObjectError
_3813:
	push	_bb_TOperator
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_268
	mov	eax,ebp
	push	eax
	push	_3923
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3816
	call	_brl_blitz_NullObjectError
_3816:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_3818
	call	_brl_blitz_NullObjectError
_3818:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3819
	mov	eax,ebp
	push	eax
	push	_3920
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3822
	call	_brl_blitz_NullObjectError
_3822:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_3824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3826
	call	_brl_blitz_NullObjectError
_3826:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_3827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3829
	call	_brl_blitz_NullObjectError
_3829:
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3830
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	push	_3832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_3835
	call	_brl_blitz_ArrayBoundsError
_3835:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_3838
	call	_brl_blitz_NullObjectError
_3838:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_271
_273:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3843
	call	_brl_blitz_NullObjectError
_3843:
	push	_bb_TOperator
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	je	_271
	mov	eax,ebp
	push	eax
	push	_3867
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3846
	call	_brl_blitz_NullObjectError
_3846:
	push	dword [ebp-44]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3853
	mov	edi,dword [ebp-52]
	cmp	edi,_bbNullObject
	jne	_3848
	call	_brl_blitz_NullObjectError
_3848:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3850
	call	_brl_blitz_NullObjectError
_3850:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3852
	call	_brl_blitz_NullObjectError
_3852:
	push	dword [ebx+8]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+52]
	add	esp,12
_3853:
	cmp	eax,0
	je	_3861
	mov	eax,dword [ebp-48]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3859
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_3856
	call	_brl_blitz_NullObjectError
_3856:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3858
	call	_brl_blitz_NullObjectError
_3858:
	mov	eax,dword [esi+16]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebx+16]
	cmp	edx,dword [eax+20]
	setg	al
	movzx	eax,al
_3859:
_3861:
	cmp	eax,0
	je	_3863
	mov	eax,ebp
	push	eax
	push	_3866
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	dword [ebp-48],eax
	push	_3865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_3863:
	call	dword [_bbOnDebugLeaveScope]
_271:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3841
	call	_brl_blitz_NullObjectError
_3841:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_273
_272:
	push	_3870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],_bbNullObject
	je	_3871
	mov	eax,ebp
	push	eax
	push	_3901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],_bbNullObject
	je	_3873
	mov	eax,ebp
	push	eax
	push	_3882
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3876
	call	_brl_blitz_NullObjectError
_3876:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_3881
	push	eax
	call	_bbGCFree
	add	esp,4
_3881:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_3873:
	push	_3883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_3885
	call	_brl_blitz_NullObjectError
_3885:
	push	_bbNullObject
	push	dword [ebx+8]
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_3886
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	push	_3889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_3891
	call	_brl_blitz_NullObjectError
_3891:
	push	dword [ebp-32]
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,16
	mov	dword [ebp-36],eax
	push	_3892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3894
	call	_brl_blitz_NullObjectError
_3894:
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_3899
	push	eax
	call	_bbGCFree
	add	esp,4
_3899:
	mov	dword [esi+8],ebx
	push	_3900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3904
_3871:
	mov	eax,ebp
	push	eax
	push	_3919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3905
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_3906
	mov	eax,ebp
	push	eax
	push	_3918
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_3909
	call	_brl_blitz_NullObjectError
_3909:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3911
	call	_brl_blitz_NullObjectError
_3911:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3913
	call	_brl_blitz_NullObjectError
_3913:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_3915
	call	_brl_blitz_NullObjectError
_3915:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3917
	call	_brl_blitz_NullObjectError
_3917:
	push	_277
	push	dword [esi+16]
	push	_276
	push	dword [ebx+16]
	push	_275
	push	dword [ebp-44]
	push	_274
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_3906:
	call	dword [_bbOnDebugLeaveScope]
_3904:
	call	dword [_bbOnDebugLeaveScope]
_3819:
	call	dword [_bbOnDebugLeaveScope]
_268:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_3811
	call	_brl_blitz_NullObjectError
_3811:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_270
_269:
	push	_3924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_3925
	mov	eax,ebp
	push	eax
	push	_3927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_266
_3925:
	call	dword [_bbOnDebugLeaveScope]
_265:
	mov	eax,1
	cmp	eax,0
	jne	_267
_266:
	push	_3931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],_bbNullObject
	jne	_3932
	mov	eax,ebp
	push	eax
	push	_3936
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3935
	call	_brl_blitz_NullObjectError
_3935:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
_3932:
	push	_3937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3939
	call	_brl_blitz_NullObjectError
_3939:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-36]
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_885
_885:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Factor:
	push	ebp
	mov	ebp,esp
	sub	esp,64
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
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
	mov	eax,ebp
	push	eax
	push	_4167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3953
	call	_brl_blitz_NullObjectError
_3953:
	push	_87
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3951
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3956
	call	_brl_blitz_NullObjectError
_3956:
	push	_278
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3954
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3959
	call	_brl_blitz_NullObjectError
_3959:
	push	_279
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3957
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3962
	call	_brl_blitz_NullObjectError
_3962:
	push	_280
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3960
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3965
	call	_brl_blitz_NullObjectError
_3965:
	push	_93
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3963
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3968
	call	_brl_blitz_NullObjectError
_3968:
	push	_92
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3966
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3971
	call	_brl_blitz_NullObjectError
_3971:
	push	_195
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	ebx,eax
	je	_3969
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3974
	call	_brl_blitz_NullObjectError
_3974:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsInt
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3972
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3977
	call	_brl_blitz_NullObjectError
_3977:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsFLoat
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3975
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3980
	call	_brl_blitz_NullObjectError
_3980:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsString
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3978
	mov	eax,ebp
	push	eax
	push	_4008
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_3983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3985
	call	_brl_blitz_NullObjectError
_3985:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_3986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_3987
	mov	eax,ebp
	push	eax
	push	_3989
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3987:
	push	_3990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3992
	call	_brl_blitz_NullObjectError
_3992:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_3993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_3994
	mov	eax,ebp
	push	eax
	push	_3996
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3994:
	push	_3997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3999
	call	_brl_blitz_NullObjectError
_3999:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_4000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_4001
	mov	eax,ebp
	push	eax
	push	_4003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_4001:
	push	_4004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4006
	call	_brl_blitz_NullObjectError
_4006:
	push	_285
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_4007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3950
_3951:
	mov	eax,ebp
	push	eax
	push	_4021
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4012
	call	_brl_blitz_NullObjectError
_4012:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4015
	call	_brl_blitz_NullObjectError
_4015:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_4017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4019
	call	_brl_blitz_NullObjectError
_4019:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3954:
	mov	eax,ebp
	push	eax
	push	_4033
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_4024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4026
	call	_brl_blitz_NullObjectError
_4026:
	push	_353
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4029
	call	_brl_blitz_NullObjectError
_4029:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4032
	call	_brl_blitz_NullObjectError
_4032:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3957:
	mov	eax,ebp
	push	eax
	push	_4045
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_4036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_4038
	call	_brl_blitz_NullObjectError
_4038:
	push	_192
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4041
	call	_brl_blitz_NullObjectError
_4041:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4044
	call	_brl_blitz_NullObjectError
_4044:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3960:
	mov	eax,ebp
	push	eax
	push	_4063
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_280
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_4048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4050
	call	_brl_blitz_NullObjectError
_4050:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4053
	call	_brl_blitz_NullObjectError
_4053:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_4055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_4057
	call	_brl_blitz_NullObjectError
_4057:
	push	dword [ebx+12]
	push	dword [ebp-24]
	call	_bb_AddChild
	add	esp,8
	push	_4058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4060
	call	_brl_blitz_NullObjectError
_4060:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_4062
	call	_brl_blitz_NullObjectError
_4062:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [esi+8]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3963:
	mov	eax,ebp
	push	eax
	push	_4097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4066
	call	_brl_blitz_NullObjectError
_4066:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_281
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_4069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4071
	call	_brl_blitz_NullObjectError
_4071:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_4073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_4075
	call	_brl_blitz_NullObjectError
_4075:
	push	_4
	push	_bbNullObject
	push	_282
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_4077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_4079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4081
	call	_brl_blitz_NullObjectError
_4081:
	push	_283
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_4084
	call	_brl_blitz_NullObjectError
_4084:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4086
	call	_brl_blitz_NullObjectError
_4086:
	push	dword [ebp-44]
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-40]
	call	_bb_AddChild
	add	esp,8
	push	_4087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_4089
	call	_brl_blitz_NullObjectError
_4089:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_4091
	call	_brl_blitz_NullObjectError
_4091:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_284
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_4092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4094
	call	_brl_blitz_NullObjectError
_4094:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_4096
	call	_brl_blitz_NullObjectError
_4096:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [esi+8]
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3966:
	mov	eax,ebp
	push	eax
	push	_4113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4101
	call	_brl_blitz_NullObjectError
_4101:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4104
	call	_brl_blitz_NullObjectError
_4104:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_4106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_4108
	call	_brl_blitz_NullObjectError
_4108:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_4110
	call	_brl_blitz_NullObjectError
_4110:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_4112
	call	_brl_blitz_NullObjectError
_4112:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebx+8]
	push	dword [esi+12]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3969:
	mov	eax,ebp
	push	eax
	push	_4122
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4116
	call	_brl_blitz_NullObjectError
_4116:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_195
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	push	_4119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4121
	call	_brl_blitz_NullObjectError
_4121:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_NullDatatype]
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3972:
	mov	eax,ebp
	push	eax
	push	_4136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-56],eax
	push	_4125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_4127
	call	_brl_blitz_NullObjectError
_4127:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4129
	call	_brl_blitz_NullObjectError
_4129:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringToInt
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4132
	call	_brl_blitz_NullObjectError
_4132:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4135
	call	_brl_blitz_NullObjectError
_4135:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3975:
	mov	eax,ebp
	push	eax
	push	_4150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_125
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_4139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_4141
	call	_brl_blitz_NullObjectError
_4141:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4143
	call	_brl_blitz_NullObjectError
_4143:
	push	esi
	mov	eax,dword [esi]
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
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4146
	call	_brl_blitz_NullObjectError
_4146:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4149
	call	_brl_blitz_NullObjectError
_4149:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_FloatDatatype]
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3978:
	mov	eax,ebp
	push	eax
	push	_4166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_126
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_4153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-64]
	cmp	edi,_bbNullObject
	jne	_4155
	call	_brl_blitz_NullObjectError
_4155:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4157
	call	_brl_blitz_NullObjectError
_4157:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4159
	call	_brl_blitz_NullObjectError
_4159:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	1
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringSlice
	add	esp,12
	push	eax
	push	_191
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+168]
	add	esp,12
	push	_4160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4162
	call	_brl_blitz_NullObjectError
_4162:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4165
	call	_brl_blitz_NullObjectError
_4165:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_StringDatatype]
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_888
_3950:
	mov	ebx,_bbNullObject
	jmp	_888
_888:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Funk:
	push	ebp
	mov	ebp,esp
	sub	esp,232
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-20],eax
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],0
	mov	byte [ebp-4],0
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbEmptyString
	mov	dword [ebp-60],_bbEmptyString
	mov	dword [ebp-72],_bbEmptyString
	mov	byte [ebp-8],0
	mov	dword [ebp-64],0
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-128],_bbNullObject
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-140],_bbNullObject
	mov	byte [ebp-12],0
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbNullObject
	mov	dword [ebp-164],_bbNullObject
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	dword [ebp-144],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-184],_bbNullObject
	mov	dword [ebp-188],_bbNullObject
	mov	dword [ebp-192],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_4950
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4170
	call	_brl_blitz_NullObjectError
_4170:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4172
	call	_brl_blitz_NullObjectError
_4172:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	cmp	eax,0
	je	_4173
	mov	eax,ebp
	push	eax
	push	_4250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4176
	call	_brl_blitz_NullObjectError
_4176:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_4178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4180
	call	_brl_blitz_NullObjectError
_4180:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_4183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_286
_288:
	mov	eax,ebp
	push	eax
	push	_4193
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4188
	call	_brl_blitz_NullObjectError
_4188:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4191
	call	_brl_blitz_NullObjectError
_4191:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_286:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4185
	call	_brl_blitz_NullObjectError
_4185:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_288
_287:
	push	_4194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_4196
	call	_brl_blitz_NullObjectError
_4196:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+20],eax
	push	_4198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4200
	call	_brl_blitz_NullObjectError
_4200:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4203
	call	_brl_blitz_NullObjectError
_4203:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_4205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4207
	call	_brl_blitz_NullObjectError
_4207:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_4210
	call	_brl_blitz_NullObjectError
_4210:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_4212
	call	_brl_blitz_NullObjectError
_4212:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_4214
	call	_brl_blitz_NullObjectError
_4214:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-36],eax
	push	_4216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_4218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4220
	call	_brl_blitz_NullObjectError
_4220:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4221
	mov	eax,ebp
	push	eax
	push	_4229
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_4224
	call	_brl_blitz_NullObjectError
_4224:
	mov	dword [ebx+20],0
	push	_4226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4228
	call	_brl_blitz_NullObjectError
_4228:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-40],eax
	call	dword [_bbOnDebugLeaveScope]
_4221:
	push	_4230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4232
	call	_brl_blitz_NullObjectError
_4232:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4233
	mov	eax,ebp
	push	eax
	push	_4246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4234
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4236
	call	_brl_blitz_NullObjectError
_4236:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4238
	call	_brl_blitz_NullObjectError
_4238:
	push	dword [ebp-40]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-24]
	push	dword [ebp-36]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	dword [ebp-44],eax
	push	_4240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4242
	call	_brl_blitz_NullObjectError
_4242:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-24],eax
	push	_4243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4245
	call	_brl_blitz_NullObjectError
_4245:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
_4233:
	push	_4247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4249
	call	_brl_blitz_NullObjectError
_4249:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-24]
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_892
_4173:
	mov	eax,ebp
	push	eax
	push	_4943
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_4254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_4256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4259
	call	_brl_blitz_NullObjectError
_4259:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-216],eax
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_4262
	call	_brl_blitz_NullObjectError
_4262:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_289
_291:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4267
	call	_brl_blitz_NullObjectError
_4267:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-68],eax
	cmp	dword [ebp-68],_bbNullObject
	je	_289
	mov	eax,ebp
	push	eax
	push	_4277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_4270
	call	_brl_blitz_NullObjectError
_4270:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4272
	call	_brl_blitz_NullObjectError
_4272:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4273
	mov	eax,ebp
	push	eax
	push	_4276
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-48],1
	push	_4275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	call	dword [_bbOnDebugLeaveScope]
_4273:
	call	dword [_bbOnDebugLeaveScope]
_289:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4265
	call	_brl_blitz_NullObjectError
_4265:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_291
_290:
	push	_4278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_4279
	mov	eax,ebp
	push	eax
	push	_4281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_892
_4279:
	push	_4282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-52],eax
	push	_4284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4286
	call	_brl_blitz_NullObjectError
_4286:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-56],eax
	push	_4288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbEmptyString
	push	_4290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_174
	push	dword [ebp-56]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	je	_4291
	mov	eax,ebp
	push	eax
	push	_4295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	_173
	push	dword [ebp-56]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-56]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-72],eax
	push	_4294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_292
	push	dword [ebp-72]
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
	call	dword [_bbOnDebugLeaveScope]
_4291:
	push	_4296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4298
	call	_brl_blitz_NullObjectError
_4298:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	push	_4301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	push	_4303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4305
	call	_brl_blitz_NullObjectError
_4305:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4306
	mov	eax,ebp
	push	eax
	push	_4310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4309
	call	_brl_blitz_NullObjectError
_4309:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4306:
	push	_4311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4313
	call	_brl_blitz_NullObjectError
_4313:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4316
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4315
	call	_brl_blitz_NullObjectError
_4315:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_4316:
	cmp	eax,0
	je	_4318
	mov	eax,ebp
	push	eax
	push	_4353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_293
_295:
	mov	eax,ebp
	push	eax
	push	_4352
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_4325
	mov	eax,ebp
	push	eax
	push	_4329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4328
	call	_brl_blitz_NullObjectError
_4328:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4325:
	push	_4330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_4331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4333
	call	_brl_blitz_NullObjectError
_4333:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4334
	mov	eax,ebp
	push	eax
	push	_4338
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4337
	call	_brl_blitz_NullObjectError
_4337:
	push	_296
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4334:
	push	_4339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4341
	call	_brl_blitz_NullObjectError
_4341:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_4343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4345
	call	_brl_blitz_NullObjectError
_4345:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_4346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_4348
	call	_brl_blitz_NullObjectError
_4348:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4350
	call	_brl_blitz_NullObjectError
_4350:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+24]
	add	esp,4
	push	eax
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-60]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-60],eax
	push	_4351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-64],1
	call	dword [_bbOnDebugLeaveScope]
_293:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4321
	call	_brl_blitz_NullObjectError
_4321:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_4322
	movzx	eax,byte [ebp-8]
_4322:
	cmp	eax,0
	jne	_295
_294:
	call	dword [_bbOnDebugLeaveScope]
_4318:
	push	_4354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4356
	call	_brl_blitz_NullObjectError
_4356:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4357
	mov	eax,ebp
	push	eax
	push	_4361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4360
	call	_brl_blitz_NullObjectError
_4360:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4357:
	push	_4362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4365
	call	_brl_blitz_NullObjectError
_4365:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4368
	call	_brl_blitz_NullObjectError
_4368:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_297
_299:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4373
	call	_brl_blitz_NullObjectError
_4373:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-80],eax
	cmp	dword [ebp-80],_bbNullObject
	je	_297
	mov	eax,ebp
	push	eax
	push	_4601
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4374
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4376
	call	_brl_blitz_NullObjectError
_4376:
	push	dword [ebp-60]
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4377
	mov	eax,ebp
	push	eax
	push	_4599
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_4379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4382
	call	_brl_blitz_NullObjectError
_4382:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4385
	call	_brl_blitz_NullObjectError
_4385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_300
_302:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4390
	call	_brl_blitz_NullObjectError
_4390:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	cmp	dword [ebp-100],_bbNullObject
	je	_300
	mov	eax,ebp
	push	eax
	push	_4397
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_4393
	call	_brl_blitz_NullObjectError
_4393:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4394
	mov	eax,ebp
	push	eax
	push	_4396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_300
_4394:
	call	dword [_bbOnDebugLeaveScope]
_300:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4388
	call	_brl_blitz_NullObjectError
_4388:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_302
_301:
	push	_4398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4400
	call	_brl_blitz_NullObjectError
_4400:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_4402
	call	_brl_blitz_NullObjectError
_4402:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_4404
	call	_brl_blitz_NullObjectError
_4404:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	ebx,eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	cmp	ebx,eax
	je	_4405
	mov	eax,ebp
	push	eax
	push	_4425
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4409
	call	_brl_blitz_NullObjectError
_4409:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4412
	call	_brl_blitz_NullObjectError
_4412:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_303
_305:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4417
	call	_brl_blitz_NullObjectError
_4417:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-104],eax
	cmp	dword [ebp-104],_bbNullObject
	je	_303
	mov	eax,ebp
	push	eax
	push	_4424
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_4420
	call	_brl_blitz_NullObjectError
_4420:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4421
	mov	eax,ebp
	push	eax
	push	_4423
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4422
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_4421:
	call	dword [_bbOnDebugLeaveScope]
_303:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4415
	call	_brl_blitz_NullObjectError
_4415:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_305
_304:
	call	dword [_bbOnDebugLeaveScope]
_4405:
	push	_4426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_4427
	mov	eax,ebp
	push	eax
	push	_4429
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_298
_4427:
	push	_4430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4432
	call	_brl_blitz_NullObjectError
_4432:
	mov	byte [ebx+29],1
	push	_4434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_306
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_4436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4438
	call	_brl_blitz_NullObjectError
_4438:
	cmp	dword [ebx+36],_bbNullObject
	je	_4439
	mov	eax,ebp
	push	eax
	push	_4476
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4443
	call	_brl_blitz_NullObjectError
_4443:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4445
	call	_brl_blitz_NullObjectError
_4445:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-224],eax
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_4448
	call	_brl_blitz_NullObjectError
_4448:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-220],eax
	jmp	_307
_309:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_4453
	call	_brl_blitz_NullObjectError
_4453:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-108],eax
	cmp	dword [ebp-108],_bbNullObject
	je	_307
	mov	eax,ebp
	push	eax
	push	_4475
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	mov	dword [ebp-208],eax
	cmp	dword [ebp-208],_bbNullObject
	jne	_4456
	call	_brl_blitz_NullObjectError
_4456:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_4458
	call	_brl_blitz_NullObjectError
_4458:
	mov	edi,dword [ebx+24]
	cmp	edi,_bbNullObject
	jne	_4460
	call	_brl_blitz_NullObjectError
_4460:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4462
	call	_brl_blitz_NullObjectError
_4462:
	mov	esi,dword [ebx+36]
	cmp	esi,_bbNullObject
	jne	_4464
	call	_brl_blitz_NullObjectError
_4464:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4466
	call	_brl_blitz_NullObjectError
_4466:
	push	dword [ebx+12]
	push	_38
	push	dword [esi+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_38
	push	dword [edi+20]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	mov	eax,dword [ebp-208]
	push	dword [eax+20]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4467
	mov	eax,ebp
	push	eax
	push	_4474
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_4470
	call	_brl_blitz_NullObjectError
_4470:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_4472
	call	_brl_blitz_NullObjectError
_4472:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_308
_4467:
	call	dword [_bbOnDebugLeaveScope]
_307:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_4451
	call	_brl_blitz_NullObjectError
_4451:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_309
_308:
	call	dword [_bbOnDebugLeaveScope]
_4439:
	push	_4477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_4479
	call	_brl_blitz_NullObjectError
_4479:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4481
	call	_brl_blitz_NullObjectError
_4481:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_4482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4484
	call	_brl_blitz_NullObjectError
_4484:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_4486
	call	_brl_blitz_NullObjectError
_4486:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-88],eax
	push	_4488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	je	_4489
	mov	eax,ebp
	push	eax
	push	_4493
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_4492
	call	_brl_blitz_NullObjectError
_4492:
	push	dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4489:
	push	_4494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	edi,dword [ebp-52]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4498
	call	_brl_blitz_NullObjectError
_4498:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_310
_312:
	cmp	ebx,_bbNullObject
	jne	_4503
	call	_brl_blitz_NullObjectError
_4503:
	push	_bb_TRecursive
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-112],eax
	cmp	dword [ebp-112],_bbNullObject
	je	_310
	mov	eax,ebp
	push	eax
	push	_4514
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_4506
	call	_brl_blitz_NullObjectError
_4506:
	push	_4
	push	_bbNullObject
	push	_74
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_4508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_4510
	call	_brl_blitz_NullObjectError
_4510:
	push	dword [esi+12]
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	push	_4511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_4513
	call	_brl_blitz_NullObjectError
_4513:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-88],eax
	call	dword [_bbOnDebugLeaveScope]
_310:
	cmp	ebx,_bbNullObject
	jne	_4501
	call	_brl_blitz_NullObjectError
_4501:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_312
_311:
	push	_4516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4518
	call	_brl_blitz_NullObjectError
_4518:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4520
	call	_brl_blitz_NullObjectError
_4520:
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_4522
	call	_brl_blitz_NullObjectError
_4522:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_4524
	call	_brl_blitz_NullObjectError
_4524:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-92],eax
	push	_4526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_4528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4530
	call	_brl_blitz_NullObjectError
_4530:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4531
	mov	eax,ebp
	push	eax
	push	_4577
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4532
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_4534
	call	_brl_blitz_NullObjectError
_4534:
	mov	dword [ebx+20],0
	push	_4536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4538
	call	_brl_blitz_NullObjectError
_4538:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4540
	call	_brl_blitz_NullObjectError
_4540:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_4541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4543
	call	_brl_blitz_NullObjectError
_4543:
	push	dword [ebp-96]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_4545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4548
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_4547
	call	_brl_blitz_NullObjectError
_4547:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_4548:
	cmp	eax,0
	je	_4550
	mov	eax,ebp
	push	eax
	push	_4575
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_4554
	call	_brl_blitz_NullObjectError
_4554:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4557
	call	_brl_blitz_NullObjectError
_4557:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_313
_315:
	cmp	ebx,_bbNullObject
	jne	_4562
	call	_brl_blitz_NullObjectError
_4562:
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
	je	_313
	mov	eax,ebp
	push	eax
	push	_4574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_4565
	call	_brl_blitz_NullObjectError
_4565:
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4566
	mov	eax,ebp
	push	eax
	push	_4573
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_4569
	call	_brl_blitz_NullObjectError
_4569:
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
	jne	_4571
	call	_brl_blitz_NullObjectError
_4571:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+292]
	add	esp,4
	push	_4572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	push	dword [ebp-124]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4566:
	call	dword [_bbOnDebugLeaveScope]
_313:
	cmp	ebx,_bbNullObject
	jne	_4560
	call	_brl_blitz_NullObjectError
_4560:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
	call	dword [_bbOnDebugLeaveScope]
_4550:
	push	_4576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-84],eax
	call	dword [_bbOnDebugLeaveScope]
_4531:
	push	_4579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4581
	call	_brl_blitz_NullObjectError
_4581:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4582
	mov	eax,ebp
	push	eax
	push	_4595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4585
	call	_brl_blitz_NullObjectError
_4585:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4587
	call	_brl_blitz_NullObjectError
_4587:
	push	dword [ebp-96]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-92]
	push	dword [ebp-84]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	dword [ebp-128],eax
	push	_4589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_4591
	call	_brl_blitz_NullObjectError
_4591:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-92],eax
	push	_4592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_4594
	call	_brl_blitz_NullObjectError
_4594:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-84],eax
	call	dword [_bbOnDebugLeaveScope]
_4582:
	push	_4596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4598
	call	_brl_blitz_NullObjectError
_4598:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-92]
	push	dword [ebp-84]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_892
_4377:
	call	dword [_bbOnDebugLeaveScope]
_297:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4371
	call	_brl_blitz_NullObjectError
_4371:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_299
_298:
	push	_4602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],1
	jne	_4603
	mov	eax,ebp
	push	eax
	push	_4937
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4607
	call	_brl_blitz_NullObjectError
_4607:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4610
	call	_brl_blitz_NullObjectError
_4610:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_316
_318:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4615
	call	_brl_blitz_NullObjectError
_4615:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-132],eax
	cmp	dword [ebp-132],_bbNullObject
	je	_316
	mov	eax,ebp
	push	eax
	push	_4936
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4618
	call	_brl_blitz_NullObjectError
_4618:
	push	dword [ebp-56]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4619
	mov	eax,ebp
	push	eax
	push	_4934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4622
	call	_brl_blitz_NullObjectError
_4622:
	mov	byte [ebx+29],1
	push	_4624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_306
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-136],eax
	push	_4626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4628
	call	_brl_blitz_NullObjectError
_4628:
	cmp	dword [ebx+36],_bbNullObject
	je	_4629
	mov	eax,ebp
	push	eax
	push	_4658
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4633
	call	_brl_blitz_NullObjectError
_4633:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4635
	call	_brl_blitz_NullObjectError
_4635:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-212],eax
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_4638
	call	_brl_blitz_NullObjectError
_4638:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_319
_321:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4643
	call	_brl_blitz_NullObjectError
_4643:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-152],eax
	cmp	dword [ebp-152],_bbNullObject
	je	_319
	mov	eax,ebp
	push	eax
	push	_4657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4644
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_4646
	call	_brl_blitz_NullObjectError
_4646:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4648
	call	_brl_blitz_NullObjectError
_4648:
	push	dword [ebx+12]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4649
	mov	eax,ebp
	push	eax
	push	_4656
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4652
	call	_brl_blitz_NullObjectError
_4652:
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_4654
	call	_brl_blitz_NullObjectError
_4654:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_320
_4649:
	call	dword [_bbOnDebugLeaveScope]
_319:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4641
	call	_brl_blitz_NullObjectError
_4641:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_321
_320:
	call	dword [_bbOnDebugLeaveScope]
_4629:
	push	_4659
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_4661
	call	_brl_blitz_NullObjectError
_4661:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4663
	call	_brl_blitz_NullObjectError
_4663:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_4664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4666
	call	_brl_blitz_NullObjectError
_4666:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-140],eax
	push	_4668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_4670
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	je	_4671
	mov	eax,ebp
	push	eax
	push	_4675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4674
	call	_brl_blitz_NullObjectError
_4674:
	push	dword [ebp-20]
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4671:
	push	_4676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4679
	call	_brl_blitz_NullObjectError
_4679:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-228],eax
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_4682
	call	_brl_blitz_NullObjectError
_4682:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_322
_324:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_4687
	call	_brl_blitz_NullObjectError
_4687:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-156],eax
	cmp	dword [ebp-156],_bbNullObject
	je	_322
	mov	eax,ebp
	push	eax
	push	_4849
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4690
	call	_brl_blitz_NullObjectError
_4690:
	push	0
	push	_174
	push	dword [ebx+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4693
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4692
	call	_brl_blitz_NullObjectError
_4692:
	push	_205
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_4693:
	cmp	eax,0
	je	_4695
	mov	eax,ebp
	push	eax
	push	_4703
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-140],_bbNullObject
	je	_4697
	mov	eax,ebp
	push	eax
	push	_4701
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4700
	call	_brl_blitz_NullObjectError
_4700:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-140],eax
	call	dword [_bbOnDebugLeaveScope]
_4697:
	push	_4702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_322
_4695:
	push	_4704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-140]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4707
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4706
	call	_brl_blitz_NullObjectError
_4706:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_4707:
	cmp	eax,0
	je	_4709
	mov	eax,ebp
	push	eax
	push	_4739
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4712
	call	_brl_blitz_NullObjectError
_4712:
	push	0
	push	_174
	push	dword [ebx+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_4713
	mov	eax,ebp
	push	eax
	push	_4725
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_4716
	call	_brl_blitz_NullObjectError
_4716:
	mov	eax,dword [ebp-132]
	mov	dword [ebp-200],eax
	cmp	dword [ebp-200],_bbNullObject
	jne	_4718
	call	_brl_blitz_NullObjectError
_4718:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4720
	call	_brl_blitz_NullObjectError
_4720:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_4722
	call	_brl_blitz_NullObjectError
_4722:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4724
	call	_brl_blitz_NullObjectError
_4724:
	push	_118
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_327
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	sub	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_326
	push	_85
	push	_173
	push	_85
	push	_172
	push	_4
	push	_174
	mov	eax,dword [ebp-200]
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
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4726
_4713:
	mov	eax,ebp
	push	eax
	push	_4738
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_4729
	call	_brl_blitz_NullObjectError
_4729:
	mov	eax,dword [ebp-132]
	mov	dword [ebp-196],eax
	cmp	dword [ebp-196],_bbNullObject
	jne	_4731
	call	_brl_blitz_NullObjectError
_4731:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4733
	call	_brl_blitz_NullObjectError
_4733:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_4735
	call	_brl_blitz_NullObjectError
_4735:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4737
	call	_brl_blitz_NullObjectError
_4737:
	push	_118
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_327
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_326
	mov	eax,dword [ebp-196]
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
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4726:
	call	dword [_bbOnDebugLeaveScope]
_4709:
	push	_4740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	push	_4742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-140],_bbNullObject
	je	_4743
	mov	eax,ebp
	push	eax
	push	_4747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4746
	call	_brl_blitz_NullObjectError
_4746:
	push	_bb_TRecursive
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-160],eax
	call	dword [_bbOnDebugLeaveScope]
_4743:
	push	_4748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4750
	call	_brl_blitz_NullObjectError
_4750:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4751
	mov	eax,dword [ebp-140]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_4751:
	cmp	eax,0
	je	_4753
	mov	eax,ebp
	push	eax
	push	_4823
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_4755
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-164],eax
	push	_4757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-164]
	mov	dword [ebp-204],eax
	cmp	dword [ebp-204],_bbNullObject
	jne	_4759
	call	_brl_blitz_NullObjectError
_4759:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4761
	call	_brl_blitz_NullObjectError
_4761:
	mov	edi,dword [ebx+12]
	cmp	edi,_bbNullObject
	jne	_4763
	call	_brl_blitz_NullObjectError
_4763:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4765
	call	_brl_blitz_NullObjectError
_4765:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_4767
	call	_brl_blitz_NullObjectError
_4767:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4769
	call	_brl_blitz_NullObjectError
_4769:
	push	_88
	push	dword [ebx+16]
	push	_87
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+76]
	add	esp,4
	push	eax
	push	dword [edi+16]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-204]
	mov	eax,dword [ebp-204]
	mov	eax,dword [eax]
	call	dword [eax+56]
	add	esp,8
	push	_4770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_4772
	call	_brl_blitz_NullObjectError
_4772:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_4773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	push	_4775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbNullObject
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_4778
	call	_brl_blitz_NullObjectError
_4778:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4780
	call	_brl_blitz_NullObjectError
_4780:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4782
	call	_brl_blitz_NullObjectError
_4782:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4785
	call	_brl_blitz_NullObjectError
_4785:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_328
_330:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4790
	call	_brl_blitz_NullObjectError
_4790:
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
	je	_328
	mov	eax,ebp
	push	eax
	push	_4819
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_4793
	call	_brl_blitz_NullObjectError
_4793:
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4794
	mov	eax,ebp
	push	eax
	push	_4818
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],_bbNullObject
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_4798
	call	_brl_blitz_NullObjectError
_4798:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4801
	call	_brl_blitz_NullObjectError
_4801:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_331
_333:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4806
	call	_brl_blitz_NullObjectError
_4806:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-176],eax
	cmp	dword [ebp-176],_bbNullObject
	je	_331
	mov	eax,ebp
	push	eax
	push	_4816
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_4809
	call	_brl_blitz_NullObjectError
_4809:
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4810
	mov	eax,ebp
	push	eax
	push	_4815
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_4813
	call	_brl_blitz_NullObjectError
_4813:
	push	_bah_libxml_TxmlNode
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-168],eax
	push	_4814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_332
_4810:
	call	dword [_bbOnDebugLeaveScope]
_331:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4804
	call	_brl_blitz_NullObjectError
_4804:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_333
_332:
	push	_4817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_329
_4794:
	call	dword [_bbOnDebugLeaveScope]
_328:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4788
	call	_brl_blitz_NullObjectError
_4788:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_330
_329:
	push	_4820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4822
	call	_brl_blitz_NullObjectError
_4822:
	push	dword [ebp-168]
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4825
_4753:
	mov	eax,ebp
	push	eax
	push	_4848
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_4827
	mov	eax,ebp
	push	eax
	push	_4831
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4830
	call	_brl_blitz_NullObjectError
_4830:
	push	_334
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4827:
	push	_4832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4834
	call	_brl_blitz_NullObjectError
_4834:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-180],eax
	push	_4836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4838
	call	_brl_blitz_NullObjectError
_4838:
	mov	edi,dword [ebx+12]
	cmp	edi,_bbNullObject
	jne	_4840
	call	_brl_blitz_NullObjectError
_4840:
	mov	esi,dword [ebp-160]
	cmp	esi,_bbNullObject
	jne	_4842
	call	_brl_blitz_NullObjectError
_4842:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_4844
	call	_brl_blitz_NullObjectError
_4844:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-180]
	call	_bb_AddChild
	add	esp,8
	push	_4845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4847
	call	_brl_blitz_NullObjectError
_4847:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-140],eax
	call	dword [_bbOnDebugLeaveScope]
_4825:
	call	dword [_bbOnDebugLeaveScope]
_322:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_4685
	call	_brl_blitz_NullObjectError
_4685:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_324
_323:
	push	_4850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4852
	call	_brl_blitz_NullObjectError
_4852:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4854
	call	_brl_blitz_NullObjectError
_4854:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_4856
	call	_brl_blitz_NullObjectError
_4856:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_4858
	call	_brl_blitz_NullObjectError
_4858:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-144],eax
	push	_4860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	push	_4862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4864
	call	_brl_blitz_NullObjectError
_4864:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4865
	mov	eax,ebp
	push	eax
	push	_4911
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4866
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_4868
	call	_brl_blitz_NullObjectError
_4868:
	mov	dword [ebx+20],0
	push	_4870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4872
	call	_brl_blitz_NullObjectError
_4872:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4874
	call	_brl_blitz_NullObjectError
_4874:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-148],eax
	push	_4875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4877
	call	_brl_blitz_NullObjectError
_4877:
	push	dword [ebp-148]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-184],eax
	push	_4879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-184]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4882
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_4881
	call	_brl_blitz_NullObjectError
_4881:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_4882:
	cmp	eax,0
	je	_4884
	mov	eax,ebp
	push	eax
	push	_4909
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_4888
	call	_brl_blitz_NullObjectError
_4888:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4891
	call	_brl_blitz_NullObjectError
_4891:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_335
_337:
	cmp	ebx,_bbNullObject
	jne	_4896
	call	_brl_blitz_NullObjectError
_4896:
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
	je	_335
	mov	eax,ebp
	push	eax
	push	_4908
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_4899
	call	_brl_blitz_NullObjectError
_4899:
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4900
	mov	eax,ebp
	push	eax
	push	_4907
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_4903
	call	_brl_blitz_NullObjectError
_4903:
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
	jne	_4905
	call	_brl_blitz_NullObjectError
_4905:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+292]
	add	esp,4
	push	_4906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	push	dword [ebp-188]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4900:
	call	dword [_bbOnDebugLeaveScope]
_335:
	cmp	ebx,_bbNullObject
	jne	_4894
	call	_brl_blitz_NullObjectError
_4894:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_337
_336:
	call	dword [_bbOnDebugLeaveScope]
_4884:
	push	_4910
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-184]
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_4865:
	push	_4912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4914
	call	_brl_blitz_NullObjectError
_4914:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4915
	mov	eax,ebp
	push	eax
	push	_4928
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4918
	call	_brl_blitz_NullObjectError
_4918:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4920
	call	_brl_blitz_NullObjectError
_4920:
	push	dword [ebp-148]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-144]
	push	dword [ebp-136]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	dword [ebp-192],eax
	push	_4922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_4924
	call	_brl_blitz_NullObjectError
_4924:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-144],eax
	push	_4925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_4927
	call	_brl_blitz_NullObjectError
_4927:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_4915:
	push	_4929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4931
	call	_brl_blitz_NullObjectError
_4931:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_4933
	call	_brl_blitz_NullObjectError
_4933:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [esi+8]
	push	dword [ebp-136]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_892
_4619:
	call	dword [_bbOnDebugLeaveScope]
_316:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4613
	call	_brl_blitz_NullObjectError
_4613:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_318
_317:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4938
_4603:
	mov	eax,ebp
	push	eax
	push	_4942
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4941
	call	_brl_blitz_NullObjectError
_4941:
	push	dword [ebp-60]
	push	dword [ebp-56]
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
	call	dword [_bbOnDebugLeaveScope]
_4938:
	call	dword [_bbOnDebugLeaveScope]
_4251:
	mov	ebx,_bbNullObject
	jmp	_892
_892:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Keyword:
	push	ebp
	mov	ebp,esp
	sub	esp,316
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
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
	mov	dword [ebp-68],0
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],0
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],0
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbEmptyString
	mov	dword [ebp-128],_bbEmptyString
	mov	dword [ebp-132],0
	mov	dword [ebp-136],_bbNullObject
	mov	dword [ebp-140],_bbEmptyArray
	mov	dword [ebp-144],_bbEmptyString
	mov	dword [ebp-152],_bbNullObject
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbEmptyString
	mov	dword [ebp-164],_bbEmptyString
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],0
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	dword [ebp-184],_bbNullObject
	mov	dword [ebp-188],_bbNullObject
	mov	dword [ebp-192],_bbNullObject
	mov	dword [ebp-196],_bbNullObject
	mov	dword [ebp-200],_bbNullObject
	mov	dword [ebp-204],0
	mov	dword [ebp-208],_bbNullObject
	mov	dword [ebp-212],_bbNullObject
	mov	dword [ebp-216],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-220],_bbEmptyArray
	mov	dword [ebp-228],_bbNullObject
	mov	dword [ebp-232],_bbNullObject
	mov	dword [ebp-236],_bbNullObject
	mov	dword [ebp-240],_bbNullObject
	mov	dword [ebp-224],_bbNullObject
	mov	dword [ebp-244],_bbNullObject
	mov	dword [ebp-248],_bbNullObject
	mov	dword [ebp-252],_bbNullObject
	mov	dword [ebp-256],_bbNullObject
	mov	dword [ebp-260],_bbEmptyString
	mov	dword [ebp-264],_bbNullObject
	mov	dword [ebp-268],_bbEmptyString
	mov	dword [ebp-272],_bbNullObject
	mov	dword [ebp-276],0
	mov	dword [ebp-280],_bbEmptyString
	mov	dword [ebp-284],_bbNullObject
	mov	dword [ebp-288],_bbNullObject
	mov	dword [ebp-292],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_6154
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4954
	call	_brl_blitz_NullObjectError
_4954:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_339
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4957
	push	_345
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4958
	push	_346
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4959
	push	_347
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4960
	push	_354
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4961
	push	_356
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4962
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4963
	push	_377
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4964
	push	_379
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4965
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4966
	push	_399
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4967
	jmp	_4956
_4957:
	mov	eax,ebp
	push	eax
	push	_5127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4970
	call	_brl_blitz_NullObjectError
_4970:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_339
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_4973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4975
	call	_brl_blitz_NullObjectError
_4975:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_4977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_4979
	call	_brl_blitz_NullObjectError
_4979:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_4981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_4983
	call	_brl_blitz_NullObjectError
_4983:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4985
	call	_brl_blitz_NullObjectError
_4985:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4987
	call	_brl_blitz_NullObjectError
_4987:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-20]
	call	_bb_AddChild
	add	esp,8
	push	_4988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4990
	call	_brl_blitz_NullObjectError
_4990:
	push	_341
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_4991
	mov	eax,ebp
	push	eax
	push	_5010
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4994
	call	_brl_blitz_NullObjectError
_4994:
	push	_341
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4997
	call	_brl_blitz_NullObjectError
_4997:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_4999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_5001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_5003
	call	_brl_blitz_NullObjectError
_5003:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5005
	call	_brl_blitz_NullObjectError
_5005:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_5008
	call	_brl_blitz_NullObjectError
_5008:
	push	dword [ebx+12]
	push	dword [ebp-28]
	call	_bb_AddChild
	add	esp,8
	push	_5009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-12]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5011
_4991:
	mov	eax,ebp
	push	eax
	push	_5123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5014
	call	_brl_blitz_NullObjectError
_5014:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5017
	call	_brl_blitz_NullObjectError
_5017:
	push	_252
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5018
	mov	eax,ebp
	push	eax
	push	_5101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_5021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_5023
	call	_brl_blitz_NullObjectError
_5023:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5025
	call	_brl_blitz_NullObjectError
_5025:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_5028
	call	_brl_blitz_NullObjectError
_5028:
	push	_4
	push	_bbNullObject
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	push	_5030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_342
_344:
	mov	eax,ebp
	push	eax
	push	_5097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5035
	call	_brl_blitz_NullObjectError
_5035:
	push	_252
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_5038
	call	_brl_blitz_NullObjectError
_5038:
	push	_4
	push	_bbNullObject
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_5040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_5042
	call	_brl_blitz_NullObjectError
_5042:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5044
	call	_brl_blitz_NullObjectError
_5044:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_5047
	call	_brl_blitz_NullObjectError
_5047:
	push	_4
	push	_bbNullObject
	push	_339
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_5049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5051
	call	_brl_blitz_NullObjectError
_5051:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_5053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_5055
	call	_brl_blitz_NullObjectError
_5055:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_5057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5059
	call	_brl_blitz_NullObjectError
_5059:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_5061
	call	_brl_blitz_NullObjectError
_5061:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_5063
	call	_brl_blitz_NullObjectError
_5063:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-52]
	call	_bb_AddChild
	add	esp,8
	push	_5064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5066
	call	_brl_blitz_NullObjectError
_5066:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5069
	call	_brl_blitz_NullObjectError
_5069:
	push	_252
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_5072
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5071
	call	_brl_blitz_NullObjectError
_5071:
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_5072:
	cmp	eax,0
	je	_5074
	mov	eax,ebp
	push	eax
	push	_5094
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5077
	call	_brl_blitz_NullObjectError
_5077:
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_5080
	call	_brl_blitz_NullObjectError
_5080:
	push	_4
	push	_bbNullObject
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-56],eax
	push	_5082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_5084
	call	_brl_blitz_NullObjectError
_5084:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5086
	call	_brl_blitz_NullObjectError
_5086:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5087
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_5089
	call	_brl_blitz_NullObjectError
_5089:
	push	_4
	push	_bbNullObject
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-60],eax
	push	_5091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5093
	call	_brl_blitz_NullObjectError
_5093:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5074:
	call	dword [_bbOnDebugLeaveScope]
_342:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5032
	call	_brl_blitz_NullObjectError
_5032:
	push	_252
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_344
_343:
	push	_5100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-12]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5102
_5018:
	mov	eax,ebp
	push	eax
	push	_5119
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5105
	call	_brl_blitz_NullObjectError
_5105:
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5106
	mov	eax,ebp
	push	eax
	push	_5117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5109
	call	_brl_blitz_NullObjectError
_5109:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_5112
	call	_brl_blitz_NullObjectError
_5112:
	push	_4
	push	_bbNullObject
	push	_253
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_5114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5116
	call	_brl_blitz_NullObjectError
_5116:
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5106:
	call	dword [_bbOnDebugLeaveScope]
_5102:
	push	_5120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5122
	call	_brl_blitz_NullObjectError
_5122:
	push	_251
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5011:
	push	_5124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5126
	call	_brl_blitz_NullObjectError
_5126:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4958:
	mov	eax,ebp
	push	eax
	push	_5169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5130
	call	_brl_blitz_NullObjectError
_5130:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-68],eax
	push	_5132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5134
	call	_brl_blitz_NullObjectError
_5134:
	mov	dword [ebx+24],2
	push	_5136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5138
	call	_brl_blitz_NullObjectError
_5138:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_345
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-72],eax
	push	_5141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5143
	call	_brl_blitz_NullObjectError
_5143:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_5145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_5147
	call	_brl_blitz_NullObjectError
_5147:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-80],eax
	push	_5149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5151
	call	_brl_blitz_NullObjectError
_5151:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_5153
	call	_brl_blitz_NullObjectError
_5153:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_5155
	call	_brl_blitz_NullObjectError
_5155:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-80]
	call	_bb_AddChild
	add	esp,8
	push	_5156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5158
	call	_brl_blitz_NullObjectError
_5158:
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5161
	call	_brl_blitz_NullObjectError
_5161:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5164
	call	_brl_blitz_NullObjectError
_5164:
	mov	eax,dword [ebp-68]
	mov	dword [ebx+24],eax
	push	_5166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5168
	call	_brl_blitz_NullObjectError
_5168:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4959:
	mov	eax,ebp
	push	eax
	push	_5211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5172
	call	_brl_blitz_NullObjectError
_5172:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-84],eax
	push	_5174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5176
	call	_brl_blitz_NullObjectError
_5176:
	mov	dword [ebx+24],2
	push	_5178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5180
	call	_brl_blitz_NullObjectError
_5180:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_346
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_5183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5185
	call	_brl_blitz_NullObjectError
_5185:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5188
	call	_brl_blitz_NullObjectError
_5188:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5191
	call	_brl_blitz_NullObjectError
_5191:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-92],eax
	push	_5193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_5195
	call	_brl_blitz_NullObjectError
_5195:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-96],eax
	push	_5197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5199
	call	_brl_blitz_NullObjectError
_5199:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_5201
	call	_brl_blitz_NullObjectError
_5201:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_5203
	call	_brl_blitz_NullObjectError
_5203:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-96]
	call	_bb_AddChild
	add	esp,8
	push	_5204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5206
	call	_brl_blitz_NullObjectError
_5206:
	mov	eax,dword [ebp-84]
	mov	dword [ebx+24],eax
	push	_5208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5210
	call	_brl_blitz_NullObjectError
_5210:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4960:
	mov	eax,ebp
	push	eax
	push	_5333
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5214
	call	_brl_blitz_NullObjectError
_5214:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-100],eax
	push	_5216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5218
	call	_brl_blitz_NullObjectError
_5218:
	mov	dword [ebx+24],2
	push	_5220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5222
	call	_brl_blitz_NullObjectError
_5222:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_347
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-104],eax
	push	_5225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5227
	call	_brl_blitz_NullObjectError
_5227:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5231
	call	_brl_blitz_NullObjectError
_5231:
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-112],eax
	push	_5233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5235
	call	_brl_blitz_NullObjectError
_5235:
	push	_4
	push	_bbNullObject
	push	_348
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_5239
	call	_brl_blitz_NullObjectError
_5239:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5241
	call	_brl_blitz_NullObjectError
_5241:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_349
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_5242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_5244
	call	_brl_blitz_NullObjectError
_5244:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_5246
	call	_brl_blitz_NullObjectError
_5246:
	push	_bbNullObject
	push	esi
	mov	eax,dword [esi]
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
	push	_5247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5249
	call	_brl_blitz_NullObjectError
_5249:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5252
	call	_brl_blitz_NullObjectError
_5252:
	push	_4
	push	_bbNullObject
	push	_350
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5255
	call	_brl_blitz_NullObjectError
_5255:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5258
	call	_brl_blitz_NullObjectError
_5258:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5260
	call	_brl_blitz_NullObjectError
_5260:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5262
	call	_brl_blitz_NullObjectError
_5262:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	push	_5263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5265
	call	_brl_blitz_NullObjectError
_5265:
	push	_351
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5268
	call	_brl_blitz_NullObjectError
_5268:
	push	_4
	push	_bbNullObject
	push	_351
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5271
	call	_brl_blitz_NullObjectError
_5271:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5274
	call	_brl_blitz_NullObjectError
_5274:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5276
	call	_brl_blitz_NullObjectError
_5276:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5278
	call	_brl_blitz_NullObjectError
_5278:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	push	_5279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5281
	call	_brl_blitz_NullObjectError
_5281:
	push	_352
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5282
	mov	eax,ebp
	push	eax
	push	_5299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5285
	call	_brl_blitz_NullObjectError
_5285:
	push	_352
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5288
	call	_brl_blitz_NullObjectError
_5288:
	push	_4
	push	_bbNullObject
	push	_352
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5291
	call	_brl_blitz_NullObjectError
_5291:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5294
	call	_brl_blitz_NullObjectError
_5294:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5296
	call	_brl_blitz_NullObjectError
_5296:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5298
	call	_brl_blitz_NullObjectError
_5298:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5300
_5282:
	mov	eax,ebp
	push	eax
	push	_5309
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5303
	call	_brl_blitz_NullObjectError
_5303:
	push	_4
	push	_bbNullObject
	push	_352
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_5306
	call	_brl_blitz_NullObjectError
_5306:
	push	_4
	push	_bbNullObject
	push	_127
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5308
	call	_brl_blitz_NullObjectError
_5308:
	push	_353
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_5300:
	push	_5310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5312
	call	_brl_blitz_NullObjectError
_5312:
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5315
	call	_brl_blitz_NullObjectError
_5315:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5318
	call	_brl_blitz_NullObjectError
_5318:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_5320
	call	_brl_blitz_ArrayBoundsError
_5320:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5322
	call	_brl_blitz_NullObjectError
_5322:
	push	dword [ebp-112]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_5323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5325
	call	_brl_blitz_NullObjectError
_5325:
	push	_254
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5326
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5328
	call	_brl_blitz_NullObjectError
_5328:
	mov	eax,dword [ebp-100]
	mov	dword [ebx+24],eax
	push	_5330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5332
	call	_brl_blitz_NullObjectError
_5332:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4961:
	mov	eax,ebp
	push	eax
	push	_5350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5338
	call	_brl_blitz_NullObjectError
_5338:
	cmp	dword [ebx+24],2
	je	_5339
	mov	eax,ebp
	push	eax
	push	_5343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5342
	call	_brl_blitz_NullObjectError
_5342:
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5339:
	push	_5344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5346
	call	_brl_blitz_NullObjectError
_5346:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5349
	call	_brl_blitz_NullObjectError
_5349:
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
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4962:
	mov	eax,ebp
	push	eax
	push	_5365
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5353
	call	_brl_blitz_NullObjectError
_5353:
	cmp	dword [ebx+24],2
	je	_5354
	mov	eax,ebp
	push	eax
	push	_5358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5357
	call	_brl_blitz_NullObjectError
_5357:
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5354:
	push	_5359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5361
	call	_brl_blitz_NullObjectError
_5361:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5364
	call	_brl_blitz_NullObjectError
_5364:
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
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4963:
	mov	eax,ebp
	push	eax
	push	_5684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5366
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5368
	call	_brl_blitz_NullObjectError
_5368:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5371
	call	_brl_blitz_NullObjectError
_5371:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_167
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_168
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_169
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	push	_171
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5374
	jmp	_5373
_5374:
	mov	eax,ebp
	push	eax
	push	_5378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5377
	call	_brl_blitz_NullObjectError
_5377:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5373
_5373:
	push	_5379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_164
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_5381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5383
	call	_brl_blitz_NullObjectError
_5383:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-124],eax
	push	_5385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5387
	call	_brl_blitz_NullObjectError
_5387:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5390
	call	_brl_blitz_NullObjectError
_5390:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5393
	call	_brl_blitz_NullObjectError
_5393:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-128],eax
	push	_5395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5397
	call	_brl_blitz_NullObjectError
_5397:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],0
	push	_5400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_357
_359:
	mov	eax,ebp
	push	eax
	push	_5410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5405
	call	_brl_blitz_NullObjectError
_5405:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5408
	call	_brl_blitz_NullObjectError
_5408:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-132],1
	call	dword [_bbOnDebugLeaveScope]
_357:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5402
	call	_brl_blitz_NullObjectError
_5402:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_359
_358:
	push	_5411
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	push	dword [ebp-128]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-136],eax
	push	_5413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5415
	call	_brl_blitz_NullObjectError
_5415:
	mov	ebx,dword [ebp-136]
	inc	dword [ebx+4]
	mov	eax,dword [esi+64]
	dec	dword [eax+4]
	jnz	_5420
	push	eax
	call	_bbGCFree
	add	esp,4
_5420:
	mov	dword [esi+64],ebx
	push	_5421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5423
	call	_brl_blitz_NullObjectError
_5423:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5426
	call	_brl_blitz_NullObjectError
_5426:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-140],eax
	push	_5428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5430
	call	_brl_blitz_NullObjectError
_5430:
	push	1
	push	_5432
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_5436
	push	eax
	call	_bbGCFree
	add	esp,4
_5436:
	mov	dword [esi+20],ebx
	push	_5437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5439
	call	_brl_blitz_NullObjectError
_5439:
	mov	esi,dword [ebx+20]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_5442
	call	_brl_blitz_ArrayBoundsError
_5442:
	shl	ebx,2
	add	esi,ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_5447
	push	eax
	call	_bbGCFree
	add	esp,4
_5447:
	mov	dword [esi+24],ebx
	push	_5448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbEmptyString
	push	_5450
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5452
	call	_brl_blitz_NullObjectError
_5452:
	mov	eax,dword [ebx+24]
	cmp	eax,3
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_5455
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5454
	call	_brl_blitz_NullObjectError
_5454:
	push	_4
	push	dword [ebx+28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_5455:
	cmp	eax,0
	je	_5457
	mov	eax,ebp
	push	eax
	push	_5478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5460
	call	_brl_blitz_NullObjectError
_5460:
	push	_292
	push	dword [ebx+28]
	push	_38
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
	push	_5461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5463
	call	_brl_blitz_NullObjectError
_5463:
	push	0
	push	dword [ebx+28]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-152],eax
	push	_5465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5467
	call	_brl_blitz_NullObjectError
_5467:
	push	dword [ebp-152]
	push	_205
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	push	_5468
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5470
	call	_brl_blitz_NullObjectError
_5470:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-156],eax
	push	_5472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_5474
	call	_brl_blitz_NullObjectError
_5474:
	push	_205
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-152]
	cmp	ebx,_bbNullObject
	jne	_5477
	call	_brl_blitz_NullObjectError
_5477:
	push	dword [ebp-156]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5457:
	push	_5479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_360
_362:
	mov	eax,ebp
	push	eax
	push	_5558
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5484
	call	_brl_blitz_NullObjectError
_5484:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsValidVarName
	add	esp,4
	mov	eax,eax
	cmp	eax,0
	jne	_5485
	mov	eax,ebp
	push	eax
	push	_5489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5488
	call	_brl_blitz_NullObjectError
_5488:
	push	_363
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5485:
	push	_5490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5492
	call	_brl_blitz_NullObjectError
_5492:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-160],eax
	push	_5494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5496
	call	_brl_blitz_NullObjectError
_5496:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5499
	call	_brl_blitz_NullObjectError
_5499:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5502
	call	_brl_blitz_NullObjectError
_5502:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-164],eax
	push	_5504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-164]
	push	_38
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_5505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5507
	call	_brl_blitz_NullObjectError
_5507:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5510
	call	_brl_blitz_NullObjectError
_5510:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-168],eax
	push	_5512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	push	_5514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_364
_366:
	mov	eax,ebp
	push	eax
	push	_5524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5519
	call	_brl_blitz_NullObjectError
_5519:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5522
	call	_brl_blitz_NullObjectError
_5522:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-172],1
	call	dword [_bbOnDebugLeaveScope]
_364:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5516
	call	_brl_blitz_NullObjectError
_5516:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_366
_365:
	push	_5525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	push	dword [ebp-172]
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
	push	dword [ebp-144]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-144],eax
	push	_5526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	push	dword [ebp-164]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-176],eax
	push	_5528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5530
	call	_brl_blitz_NullObjectError
_5530:
	push	dword [ebp-176]
	push	dword [ebp-160]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	push	_5531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_5533
	call	_brl_blitz_NullObjectError
_5533:
	push	dword [ebp-160]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_5536
	call	_brl_blitz_NullObjectError
_5536:
	push	dword [ebp-168]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_5537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5539
	call	_brl_blitz_NullObjectError
_5539:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5540
	mov	eax,ebp
	push	eax
	push	_5547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5543
	call	_brl_blitz_NullObjectError
_5543:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5546
	call	_brl_blitz_NullObjectError
_5546:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5540:
	push	_5548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5550
	call	_brl_blitz_NullObjectError
_5550:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5551
	mov	eax,ebp
	push	eax
	push	_5552
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5553
_5551:
	mov	eax,ebp
	push	eax
	push	_5557
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5556
	call	_brl_blitz_NullObjectError
_5556:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5553:
	call	dword [_bbOnDebugLeaveScope]
_360:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5481
	call	_brl_blitz_NullObjectError
_5481:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_362
_361:
	push	_5560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5562
	call	_brl_blitz_NullObjectError
_5562:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5565
	call	_brl_blitz_NullObjectError
_5565:
	push	dword [ebp-144]
	push	dword [ebp-124]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_5568
	call	_brl_blitz_NullObjectError
_5568:
	push	dword [ebp-120]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_5569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5571
	call	_brl_blitz_NullObjectError
_5571:
	push	_353
	push	_242
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5572
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5574
	call	_brl_blitz_NullObjectError
_5574:
	push	_4
	push	_bbNullObject
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-148],eax
	push	_5576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5578
	call	_brl_blitz_NullObjectError
_5578:
	push	dword [ebp-148]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5581
	call	_brl_blitz_NullObjectError
_5581:
	mov	ebx,dword [ebp-140]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_5586
	push	eax
	call	_bbGCFree
	add	esp,4
_5586:
	mov	dword [esi+20],ebx
	push	_5587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5589
	call	_brl_blitz_NullObjectError
_5589:
	push	_257
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5592
	call	_brl_blitz_NullObjectError
_5592:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_5594
	call	_brl_blitz_NullObjectError
_5594:
	push	dword [ebp-120]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	push	_5595
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5597
	call	_brl_blitz_NullObjectError
_5597:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+64]
	dec	dword [eax+4]
	jnz	_5602
	push	eax
	call	_bbGCFree
	add	esp,4
_5602:
	mov	dword [esi+64],ebx
	push	_5603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5606
	call	_brl_blitz_NullObjectError
_5606:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5609
	call	_brl_blitz_NullObjectError
_5609:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_368
_370:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_5614
	call	_brl_blitz_NullObjectError
_5614:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-180],eax
	cmp	dword [ebp-180],_bbNullObject
	je	_368
	mov	eax,ebp
	push	eax
	push	_5680
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5615
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_5617
	call	_brl_blitz_NullObjectError
_5617:
	push	dword [ebp-144]
	push	dword [ebp-124]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5618
	mov	eax,ebp
	push	eax
	push	_5679
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],_bbNullObject
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_5622
	call	_brl_blitz_NullObjectError
_5622:
	mov	eax,dword [ebx+32]
	mov	dword [ebp-312],eax
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_5625
	call	_brl_blitz_NullObjectError
_5625:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-316],eax
	jmp	_371
_373:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_5630
	call	_brl_blitz_NullObjectError
_5630:
	push	_bb_TIdentifierFunction
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-184],eax
	cmp	dword [ebp-184],_bbNullObject
	je	_371
	mov	eax,ebp
	push	eax
	push	_5677
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5633
	call	_brl_blitz_NullObjectError
_5633:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+264]
	add	esp,8
	mov	dword [ebp-188],eax
	push	_5635
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_5637
	call	_brl_blitz_NullObjectError
_5637:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_5639
	call	_brl_blitz_NullObjectError
_5639:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+172]
	add	esp,12
	push	_5640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_bbNullObject
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_5643
	call	_brl_blitz_NullObjectError
_5643:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-304],eax
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_5646
	call	_brl_blitz_NullObjectError
_5646:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_374
_376:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5651
	call	_brl_blitz_NullObjectError
_5651:
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
	je	_374
	mov	eax,ebp
	push	eax
	push	_5668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5654
	call	_brl_blitz_NullObjectError
_5654:
	push	_74
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
	je	_5657
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5656
	call	_brl_blitz_NullObjectError
_5656:
	push	_205
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_5657:
	cmp	eax,0
	je	_5659
	mov	eax,ebp
	push	eax
	push	_5667
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5662
	call	_brl_blitz_NullObjectError
_5662:
	mov	esi,dword [ebp-184]
	cmp	esi,_bbNullObject
	jne	_5664
	call	_brl_blitz_NullObjectError
_5664:
	mov	esi,dword [esi+36]
	cmp	esi,_bbNullObject
	jne	_5666
	call	_brl_blitz_NullObjectError
_5666:
	push	dword [esi+20]
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_5659:
	call	dword [_bbOnDebugLeaveScope]
_374:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5649
	call	_brl_blitz_NullObjectError
_5649:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_376
_375:
	push	_5669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_5671
	call	_brl_blitz_NullObjectError
_5671:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_5672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5674
	call	_brl_blitz_NullObjectError
_5674:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_5676
	call	_brl_blitz_NullObjectError
_5676:
	push	dword [ebp-188]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_371:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_5628
	call	_brl_blitz_NullObjectError
_5628:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_373
_372:
	push	_5678
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_369
_5618:
	call	dword [_bbOnDebugLeaveScope]
_368:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_5612
	call	_brl_blitz_NullObjectError
_5612:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_370
_369:
	push	_5681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5683
	call	_brl_blitz_NullObjectError
_5683:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4964:
	mov	eax,ebp
	push	eax
	push	_5717
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5690
	call	_brl_blitz_NullObjectError
_5690:
	cmp	dword [ebx+64],_bbNullObject
	jne	_5691
	mov	eax,ebp
	push	eax
	push	_5695
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5694
	call	_brl_blitz_NullObjectError
_5694:
	push	_378
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5691:
	push	_5696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5698
	call	_brl_blitz_NullObjectError
_5698:
	push	_377
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_377
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-196],eax
	push	_5701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5703
	call	_brl_blitz_NullObjectError
_5703:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-200],eax
	push	_5705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5707
	call	_brl_blitz_NullObjectError
_5707:
	mov	edi,dword [ebx+64]
	cmp	edi,_bbNullObject
	jne	_5709
	call	_brl_blitz_NullObjectError
_5709:
	mov	esi,dword [ebp-200]
	cmp	esi,_bbNullObject
	jne	_5711
	call	_brl_blitz_NullObjectError
_5711:
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_5713
	call	_brl_blitz_NullObjectError
_5713:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-196]
	call	_bb_AddChild
	add	esp,8
	push	_5714
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5716
	call	_brl_blitz_NullObjectError
_5716:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-196]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4965:
	mov	eax,ebp
	push	eax
	push	_5883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5720
	call	_brl_blitz_NullObjectError
_5720:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-204],eax
	push	_5722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5724
	call	_brl_blitz_NullObjectError
_5724:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_379
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-208],eax
	push	_5727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5729
	call	_brl_blitz_NullObjectError
_5729:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-212],eax
	push	_5731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5733
	call	_brl_blitz_NullObjectError
_5733:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-216],eax
	push	_5735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5737
	call	_brl_blitz_NullObjectError
_5737:
	mov	esi,dword [ebp-216]
	cmp	esi,_bbNullObject
	jne	_5739
	call	_brl_blitz_NullObjectError
_5739:
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_5741
	call	_brl_blitz_NullObjectError
_5741:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-212]
	call	_bb_AddChild
	add	esp,8
	push	_5742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5744
	call	_brl_blitz_NullObjectError
_5744:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5745
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_380
_382:
	mov	eax,ebp
	push	eax
	push	_5844
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5750
	call	_brl_blitz_NullObjectError
_5750:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_5753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_5754
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-220],eax
	push	_5756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_385:
	mov	eax,ebp
	push	eax
	push	_5804
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_5758
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5760
	call	_brl_blitz_NullObjectError
_5760:
	push	_4
	push	_bbNullObject
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-228],eax
	push	_5762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_5764
	call	_brl_blitz_NullObjectError
_5764:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5766
	call	_brl_blitz_NullObjectError
_5766:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5767
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_5769
	call	_brl_blitz_NullObjectError
_5769:
	push	_4
	push	_bbNullObject
	push	_258
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-232],eax
	push	_5771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_5773
	call	_brl_blitz_NullObjectError
_5773:
	push	_4
	push	_bbNullObject
	push	_340
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-236],eax
	push	_5775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5777
	call	_brl_blitz_NullObjectError
_5777:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-240],eax
	push	_5779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5781
	call	_brl_blitz_NullObjectError
_5781:
	mov	esi,dword [ebp-240]
	cmp	esi,_bbNullObject
	jne	_5783
	call	_brl_blitz_NullObjectError
_5783:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_5785
	call	_brl_blitz_NullObjectError
_5785:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-236]
	call	_bb_AddChild
	add	esp,8
	push	_5786
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5788
	call	_brl_blitz_NullObjectError
_5788:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5789
	mov	eax,ebp
	push	eax
	push	_5794
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_5791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5793
	call	_brl_blitz_NullObjectError
_5793:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5789:
	push	_5795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-220]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-220]
	push	_632
	call	_bbArraySlice
	add	esp,16
	mov	dword [ebp-220],eax
	push	_5796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-220]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [ebp-220]
	cmp	ebx,dword [eax+20]
	jb	_5798
	call	_brl_blitz_ArrayBoundsError
_5798:
	mov	esi,dword [ebp-220]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-232]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_5803
	push	eax
	call	_bbGCFree
	add	esp,4
_5803:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_383:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_385
_384:
	push	_5806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_386
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-224],eax
	push	_5808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5810
	call	_brl_blitz_NullObjectError
_5810:
	push	dword [ebp-224]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_5813
	call	_brl_blitz_NullObjectError
_5813:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_5814
	mov	eax,ebp
	push	eax
	push	_5843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-244],_bbNullObject
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_5818
	call	_brl_blitz_NullObjectError
_5818:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-300],eax
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_5821
	call	_brl_blitz_NullObjectError
_5821:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-296],eax
	jmp	_387
_389:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_5826
	call	_brl_blitz_NullObjectError
_5826:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-244],eax
	cmp	dword [ebp-244],_bbNullObject
	je	_387
	mov	eax,ebp
	push	eax
	push	_5841
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_5829
	call	_brl_blitz_NullObjectError
_5829:
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5830
	mov	eax,ebp
	push	eax
	push	_5840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-248],_bbNullObject
	mov	esi,dword [ebp-220]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_390
_392:
	mov	eax,dword [ebx]
	mov	dword [ebp-248],eax
	add	ebx,4
	cmp	dword [ebp-248],_bbNullObject
	je	_390
	mov	eax,ebp
	push	eax
	push	_5838
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	push	dword [ebp-248]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_390:
	cmp	ebx,edi
	jne	_392
_391:
	call	dword [_bbOnDebugLeaveScope]
_5830:
	call	dword [_bbOnDebugLeaveScope]
_387:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_5824
	call	_brl_blitz_NullObjectError
_5824:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_389
_388:
	call	dword [_bbOnDebugLeaveScope]
_5814:
	call	dword [_bbOnDebugLeaveScope]
_380:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5747
	call	_brl_blitz_NullObjectError
_5747:
	push	_258
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_382
_381:
	push	_5848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5850
	call	_brl_blitz_NullObjectError
_5850:
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5851
	mov	eax,ebp
	push	eax
	push	_5871
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5854
	call	_brl_blitz_NullObjectError
_5854:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5855
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5857
	call	_brl_blitz_NullObjectError
_5857:
	push	_4
	push	_bbNullObject
	push	_188
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-252],eax
	push	_5859
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_5861
	call	_brl_blitz_NullObjectError
_5861:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5863
	call	_brl_blitz_NullObjectError
_5863:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_5866
	call	_brl_blitz_NullObjectError
_5866:
	push	_4
	push	_bbNullObject
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-256],eax
	push	_5868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5870
	call	_brl_blitz_NullObjectError
_5870:
	push	dword [ebp-256]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5851:
	push	_5873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5875
	call	_brl_blitz_NullObjectError
_5875:
	push	_260
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5878
	call	_brl_blitz_NullObjectError
_5878:
	mov	eax,dword [ebp-204]
	mov	dword [ebx+24],eax
	push	_5880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5882
	call	_brl_blitz_NullObjectError
_5882:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-208]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4966:
	mov	eax,ebp
	push	eax
	push	_6082
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5886
	call	_brl_blitz_NullObjectError
_5886:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5889
	call	_brl_blitz_NullObjectError
_5889:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-260],eax
	push	_5891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5893
	call	_brl_blitz_NullObjectError
_5893:
	mov	ebx,dword [ebp-260]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_5898
	push	eax
	call	_bbGCFree
	add	esp,4
_5898:
	mov	dword [esi+28],ebx
	push	_5899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-264],eax
	push	_5901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5903
	call	_brl_blitz_NullObjectError
_5903:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5906
	call	_brl_blitz_NullObjectError
_5906:
	push	_153
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5907
	mov	eax,ebp
	push	eax
	push	_5914
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5910
	call	_brl_blitz_NullObjectError
_5910:
	push	_153
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5913
	call	_brl_blitz_NullObjectError
_5913:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5907:
	push	_5915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5917
	call	_brl_blitz_NullObjectError
_5917:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_393
_395:
	mov	eax,ebp
	push	eax
	push	_6063
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5923
	call	_brl_blitz_NullObjectError
_5923:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5924
	mov	eax,ebp
	push	eax
	push	_6059
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5925
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5927
	call	_brl_blitz_NullObjectError
_5927:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5930
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5931
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5932
	push	_63
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5933
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5934
	jmp	_5929
_5930:
	mov	eax,ebp
	push	eax
	push	_5942
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5937
	call	_brl_blitz_NullObjectError
_5937:
	mov	dword [ebx+72],1
	push	_5939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5941
	call	_brl_blitz_NullObjectError
_5941:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5929
_5931:
	mov	eax,ebp
	push	eax
	push	_5950
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5945
	call	_brl_blitz_NullObjectError
_5945:
	mov	dword [ebx+72],3
	push	_5947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5949
	call	_brl_blitz_NullObjectError
_5949:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5929
_5932:
	mov	eax,ebp
	push	eax
	push	_5958
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5951
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5953
	call	_brl_blitz_NullObjectError
_5953:
	mov	dword [ebx+72],2
	push	_5955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5957
	call	_brl_blitz_NullObjectError
_5957:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5929
_5933:
	mov	eax,ebp
	push	eax
	push	_6000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5959
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5961
	call	_brl_blitz_NullObjectError
_5961:
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5962
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5964
	call	_brl_blitz_NullObjectError
_5964:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-268],eax
	push	_5966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5968
	call	_brl_blitz_NullObjectError
_5968:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5971
	call	_brl_blitz_NullObjectError
_5971:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5974
	call	_brl_blitz_NullObjectError
_5974:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-272],eax
	push	_5976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5978
	call	_brl_blitz_NullObjectError
_5978:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_396
_398:
	mov	eax,ebp
	push	eax
	push	_5988
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5984
	call	_brl_blitz_NullObjectError
_5984:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5987
	call	_brl_blitz_NullObjectError
_5987:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_396:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5981
	call	_brl_blitz_NullObjectError
_5981:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_398
_397:
	push	_5989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5991
	call	_brl_blitz_NullObjectError
_5991:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5992
	mov	eax,ebp
	push	eax
	push	_5999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5995
	call	_brl_blitz_NullObjectError
_5995:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5998
	call	_brl_blitz_NullObjectError
_5998:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5992:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5929
_5934:
	mov	eax,ebp
	push	eax
	push	_6057
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6004
	call	_brl_blitz_NullObjectError
_6004:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6007
	call	_brl_blitz_NullObjectError
_6007:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_165
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_166
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_167
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_168
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_169
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_170
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	push	_171
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6010
	jmp	_6009
_6010:
	mov	eax,ebp
	push	eax
	push	_6014
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6013
	call	_brl_blitz_NullObjectError
_6013:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6009
_6009:
	push	_6015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6017
	call	_brl_blitz_NullObjectError
_6017:
	mov	ebx,dword [ebx+52]
	cmp	ebx,_bbNullObject
	jne	_6019
	call	_brl_blitz_NullObjectError
_6019:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6022
	call	_brl_blitz_NullObjectError
_6022:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_6024
	call	_brl_blitz_NullObjectError
_6024:
	push	_bbStringClass
	push	dword [esi+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_6026
	mov	eax,_bbEmptyString
_6026:
	push	_174
	push	eax
	push	_173
	push	dword [ebp-260]
	push	_172
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_6030
	push	eax
	call	_bbGCFree
	add	esp,4
_6030:
	mov	dword [ebx+8],esi
	push	_6031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6033
	call	_brl_blitz_NullObjectError
_6033:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+132]
	add	esp,4
	push	_6034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6036
	call	_brl_blitz_NullObjectError
_6036:
	mov	dword [ebx+24],3
	push	_6038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6040
	call	_brl_blitz_NullObjectError
_6040:
	mov	eax,dword [ebx+72]
	mov	dword [ebp-276],eax
	push	_6042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6044
	call	_brl_blitz_NullObjectError
_6044:
	mov	dword [ebx+72],1
	push	_6046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6048
	call	_brl_blitz_NullObjectError
_6048:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	push	_6049
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6051
	call	_brl_blitz_NullObjectError
_6051:
	mov	dword [ebx+24],0
	push	_6053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6055
	call	_brl_blitz_NullObjectError
_6055:
	mov	eax,dword [ebp-276]
	mov	dword [ebx+72],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5929
_5929:
	call	dword [_bbOnDebugLeaveScope]
_5924:
	push	_6060
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6062
	call	_brl_blitz_NullObjectError
_6062:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_393:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5920
	call	_brl_blitz_NullObjectError
_5920:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_395
_394:
	push	_6064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6066
	call	_brl_blitz_NullObjectError
_6066:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_6071
	push	eax
	call	_bbGCFree
	add	esp,4
_6071:
	mov	dword [esi+28],ebx
	push	_6072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6074
	call	_brl_blitz_NullObjectError
_6074:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6077
	call	_brl_blitz_NullObjectError
_6077:
	mov	dword [ebx+72],3
	push	_6079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6081
	call	_brl_blitz_NullObjectError
_6081:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4967:
	mov	eax,ebp
	push	eax
	push	_6153
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6085
	call	_brl_blitz_NullObjectError
_6085:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6088
	call	_brl_blitz_NullObjectError
_6088:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-280],eax
	push	_6090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6092
	call	_brl_blitz_NullObjectError
_6092:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6095
	call	_brl_blitz_NullObjectError
_6095:
	push	dword [ebp-280]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_6096
	mov	eax,ebp
	push	eax
	push	_6100
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6097
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6099
	call	_brl_blitz_NullObjectError
_6099:
	push	_118
	push	dword [ebp-280]
	push	_400
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
	call	dword [_bbOnDebugLeaveScope]
_6096:
	push	_6101
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_399
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-284],eax
	push	_6103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_6105
	call	_brl_blitz_NullObjectError
_6105:
	push	dword [ebp-280]
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-280]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-288],eax
	push	_6108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6110
	call	_brl_blitz_NullObjectError
_6110:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6111
	mov	eax,ebp
	push	eax
	push	_6149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_403:
	mov	eax,ebp
	push	eax
	push	_6146
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6115
	call	_brl_blitz_NullObjectError
_6115:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6118
	call	_brl_blitz_NullObjectError
_6118:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-292],eax
	push	_6120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_6122
	call	_brl_blitz_NullObjectError
_6122:
	add	dword [ebx+20],1
	push	_6124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6126
	call	_brl_blitz_NullObjectError
_6126:
	mov	dword [ebp-308],ebx
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_6129
	call	_brl_blitz_NullObjectError
_6129:
	mov	esi,dword [ebp-292]
	cmp	esi,_bbNullObject
	jne	_6131
	call	_brl_blitz_NullObjectError
_6131:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6133
	call	_brl_blitz_NullObjectError
_6133:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-308]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_6137
	push	eax
	call	_bbGCFree
	add	esp,4
_6137:
	mov	eax,dword [ebp-308]
	mov	dword [eax+12],ebx
	push	_6138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-284]
	cmp	esi,_bbNullObject
	jne	_6140
	call	_brl_blitz_NullObjectError
_6140:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6142
	call	_brl_blitz_NullObjectError
_6142:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_404
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6145
	call	_brl_blitz_NullObjectError
_6145:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_401:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6148
	call	_brl_blitz_NullObjectError
_6148:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_403
_402:
	call	dword [_bbOnDebugLeaveScope]
_6111:
	push	_6150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6152
	call	_brl_blitz_NullObjectError
_6152:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-288]
	push	dword [ebp-284]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_895
_4956:
	mov	ebx,_bbNullObject
	jmp	_895
_895:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Variable:
	push	ebp
	mov	ebp,esp
	sub	esp,132
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-8],eax
	movzx	eax,byte [ebp+12]
	mov	eax,eax
	mov	byte [ebp-4],al
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbEmptyString
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],0
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	mov	dword [ebp-80],_bbNullObject
	mov	dword [ebp-84],_bbNullObject
	mov	dword [ebp-88],_bbNullObject
	mov	dword [ebp-92],_bbNullObject
	mov	dword [ebp-96],_bbNullObject
	mov	dword [ebp-100],_bbNullObject
	mov	dword [ebp-104],_bbNullObject
	mov	dword [ebp-112],_bbNullObject
	mov	dword [ebp-116],_bbNullObject
	mov	dword [ebp-120],_bbNullObject
	mov	dword [ebp-124],_bbNullObject
	mov	dword [ebp-108],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_6615
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6157
	call	_brl_blitz_NullObjectError
_6157:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_405
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6160
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6161
	jmp	_6159
_6160:
	mov	eax,ebp
	push	eax
	push	_6286
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_405
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_6164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	push	_6166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_408:
_406:
	mov	eax,ebp
	push	eax
	push	_6282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6169
	call	_brl_blitz_NullObjectError
_6169:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_6171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_6172
	mov	eax,ebp
	push	eax
	push	_6266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6175
	call	_brl_blitz_NullObjectError
_6175:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6178
	call	_brl_blitz_NullObjectError
_6178:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6181
	call	_brl_blitz_NullObjectError
_6181:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6183
	call	_brl_blitz_NullObjectError
_6183:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_6184
	mov	eax,ebp
	push	eax
	push	_6188
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6187
	call	_brl_blitz_NullObjectError
_6187:
	push	_409
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6184:
	push	_6189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6191
	call	_brl_blitz_NullObjectError
_6191:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_6193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6195
	call	_brl_blitz_NullObjectError
_6195:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_6198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_410
_412:
	mov	eax,ebp
	push	eax
	push	_6208
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6203
	call	_brl_blitz_NullObjectError
_6203:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6206
	call	_brl_blitz_NullObjectError
_6206:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6207
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_410:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6200
	call	_brl_blitz_NullObjectError
_6200:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_412
_411:
	push	_6209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_6211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6213
	call	_brl_blitz_NullObjectError
_6213:
	push	dword [ebp-32]
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	push	eax
	push	dword [ebp-12]
	call	_bb_AddChild
	add	esp,8
	push	_6214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6216
	call	_brl_blitz_NullObjectError
_6216:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_6217
	movzx	eax,byte [ebp-4]
_6217:
	cmp	eax,0
	je	_6219
	mov	eax,ebp
	push	eax
	push	_6260
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6222
	call	_brl_blitz_NullObjectError
_6222:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6225
	call	_brl_blitz_NullObjectError
_6225:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_6227
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_413
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_6229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_6231
	call	_brl_blitz_NullObjectError
_6231:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6233
	call	_brl_blitz_NullObjectError
_6233:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6235
	call	_brl_blitz_NullObjectError
_6235:
	push	_bbNullObject
	push	esi
	mov	eax,dword [esi]
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
	push	_6236
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_6238
	call	_brl_blitz_NullObjectError
_6238:
	push	_4
	push	_bbNullObject
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_6240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_6242
	call	_brl_blitz_NullObjectError
_6242:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_6244
	call	_brl_blitz_NullObjectError
_6244:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_6246
	call	_brl_blitz_NullObjectError
_6246:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-44]
	call	_bb_AddChild
	add	esp,8
	push	_6247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_6249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_6251
	call	_brl_blitz_NullObjectError
_6251:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6253
	call	_brl_blitz_NullObjectError
_6253:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	push	dword [ebp-48]
	call	_bb_AddChild
	add	esp,8
	push	_6255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6257
	call	_brl_blitz_NullObjectError
_6257:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_6259
	call	_brl_blitz_NullObjectError
_6259:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6219:
	push	_6263
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6265
	call	_brl_blitz_NullObjectError
_6265:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6268
_6172:
	mov	eax,ebp
	push	eax
	push	_6272
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6271
	call	_brl_blitz_NullObjectError
_6271:
	push	_414
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6268:
	push	_6273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6275
	call	_brl_blitz_NullObjectError
_6275:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6276
	mov	eax,ebp
	push	eax
	push	_6278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_406
_6276:
	mov	eax,ebp
	push	eax
	push	_6281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_407
_407:
	push	_6283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6285
	call	_brl_blitz_NullObjectError
_6285:
	push	_bbNullObject
	push	dword [ebp-16]
	push	dword [__bb_TDatatype_VoidDatatype]
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_899
_6161:
	mov	eax,ebp
	push	eax
	push	_6406
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_405
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	push	_6290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	push	_6292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_417:
_415:
	mov	eax,ebp
	push	eax
	push	_6402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6295
	call	_brl_blitz_NullObjectError
_6295:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-60],eax
	push	_6297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_6298
	mov	eax,ebp
	push	eax
	push	_6387
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6301
	call	_brl_blitz_NullObjectError
_6301:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6304
	call	_brl_blitz_NullObjectError
_6304:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6307
	call	_brl_blitz_NullObjectError
_6307:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6309
	call	_brl_blitz_NullObjectError
_6309:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_6310
	mov	eax,ebp
	push	eax
	push	_6314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6313
	call	_brl_blitz_NullObjectError
_6313:
	push	_409
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6310:
	push	_6315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6317
	call	_brl_blitz_NullObjectError
_6317:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-64],eax
	push	_6319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6321
	call	_brl_blitz_NullObjectError
_6321:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_6324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_418
_420:
	mov	eax,ebp
	push	eax
	push	_6334
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6329
	call	_brl_blitz_NullObjectError
_6329:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6332
	call	_brl_blitz_NullObjectError
_6332:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-68],1
	call	dword [_bbOnDebugLeaveScope]
_418:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6326
	call	_brl_blitz_NullObjectError
_6326:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_420
_419:
	push	_6335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	push	dword [ebp-64]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-72],eax
	push	_6337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6339
	call	_brl_blitz_NullObjectError
_6339:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_6340
	movzx	eax,byte [ebp-4]
_6340:
	cmp	eax,0
	je	_6342
	mov	eax,ebp
	push	eax
	push	_6383
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6345
	call	_brl_blitz_NullObjectError
_6345:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6348
	call	_brl_blitz_NullObjectError
_6348:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_6350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_413
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_6352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6354
	call	_brl_blitz_NullObjectError
_6354:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6356
	call	_brl_blitz_NullObjectError
_6356:
	push	dword [ebp-60]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6358
	call	_brl_blitz_NullObjectError
_6358:
	push	_bbNullObject
	push	esi
	mov	eax,dword [esi]
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
	push	_6359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6361
	call	_brl_blitz_NullObjectError
_6361:
	push	_4
	push	_bbNullObject
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-84],eax
	push	_6363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-72]
	cmp	edi,_bbNullObject
	jne	_6365
	call	_brl_blitz_NullObjectError
_6365:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_6367
	call	_brl_blitz_NullObjectError
_6367:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_6369
	call	_brl_blitz_NullObjectError
_6369:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-84]
	call	_bb_AddChild
	add	esp,8
	push	_6370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_6372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_6374
	call	_brl_blitz_NullObjectError
_6374:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6376
	call	_brl_blitz_NullObjectError
_6376:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-80]
	push	dword [ebp-88]
	call	_bb_AddChild
	add	esp,8
	push	_6378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6380
	call	_brl_blitz_NullObjectError
_6380:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_6382
	call	_brl_blitz_NullObjectError
_6382:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6342:
	push	_6384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6386
	call	_brl_blitz_NullObjectError
_6386:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	mov	dword [ebp-56],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6388
_6298:
	mov	eax,ebp
	push	eax
	push	_6392
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6391
	call	_brl_blitz_NullObjectError
_6391:
	push	_414
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6388:
	push	_6393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6395
	call	_brl_blitz_NullObjectError
_6395:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6396
	mov	eax,ebp
	push	eax
	push	_6398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_415
_6396:
	mov	eax,ebp
	push	eax
	push	_6401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_416
_416:
	push	_6403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6405
	call	_brl_blitz_NullObjectError
_6405:
	push	_bbNullObject
	push	dword [ebp-56]
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_899
_6159:
	push	_6407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6410
	call	_brl_blitz_NullObjectError
_6410:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	dword [ebp-128],eax
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_6413
	call	_brl_blitz_NullObjectError
_6413:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_421
_423:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6418
	call	_brl_blitz_NullObjectError
_6418:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-92],eax
	cmp	dword [ebp-92],_bbNullObject
	je	_421
	mov	eax,ebp
	push	eax
	push	_6614
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6421
	call	_brl_blitz_NullObjectError
_6421:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6423
	call	_brl_blitz_NullObjectError
_6423:
	push	dword [ebx+12]
	call	_bbStringTrim
	add	esp,4
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	esi
	mov	eax,dword [esi]
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
	jne	_6424
	mov	eax,ebp
	push	eax
	push	_6612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_6427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6429
	call	_brl_blitz_NullObjectError
_6429:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	push	_6432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_424
_426:
	mov	eax,ebp
	push	eax
	push	_6444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6441
	call	_brl_blitz_NullObjectError
_6441:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6443
	call	_brl_blitz_NullObjectError
_6443:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_424:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6434
	call	_brl_blitz_NullObjectError
_6434:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_6435
	movzx	eax,byte [ebp-4]
_6435:
	cmp	eax,0
	je	_6437
	mov	eax,dword [ebp-100]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_6437:
	cmp	eax,0
	jne	_426
_425:
	push	_6445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-132],eax
	cmp	dword [ebp-132],_bbNullObject
	jne	_6447
	call	_brl_blitz_NullObjectError
_6447:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_6449
	call	_brl_blitz_NullObjectError
_6449:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6451
	call	_brl_blitz_NullObjectError
_6451:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6453
	call	_brl_blitz_NullObjectError
_6453:
	push	dword [ebp-100]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebx+8]
	push	dword [ebp-100]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	dword [ebp-132]
	mov	eax,dword [ebp-132]
	mov	eax,dword [eax]
	call	dword [eax+96]
	add	esp,12
	mov	dword [ebp-104],eax
	push	_6455
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6456
	mov	eax,ebp
	push	eax
	push	_6477
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6459
	call	_brl_blitz_NullObjectError
_6459:
	mov	esi,dword [ebp-104]
	cmp	esi,_bbNullObject
	jne	_6462
	call	_brl_blitz_NullObjectError
_6462:
	push	dword [esi+12]
	push	_bbNullObject
	push	_136
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	call	_bb_AddChild
	add	esp,8
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_6466
	push	eax
	call	_bbGCFree
	add	esp,4
_6466:
	mov	dword [ebx+12],esi
	push	_6467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6469
	call	_brl_blitz_NullObjectError
_6469:
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-92],eax
	push	_6470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],_bbNullObject
	jne	_6471
	mov	eax,ebp
	push	eax
	push	_6473
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_899
_6471:
	push	_6474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6476
	call	_brl_blitz_NullObjectError
_6476:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_6456:
	push	_6478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_6479
	mov	eax,dword [ebp-104]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_6479:
	cmp	eax,0
	je	_6483
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6482
	call	_brl_blitz_NullObjectError
_6482:
	mov	eax,dword [ebx+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_6483:
	cmp	eax,0
	je	_6485
	mov	eax,ebp
	push	eax
	push	_6489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6488
	call	_brl_blitz_NullObjectError
_6488:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_6485:
	push	_6490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6492
	call	_brl_blitz_NullObjectError
_6492:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_6493
	movzx	eax,byte [ebp-4]
_6493:
	cmp	eax,0
	je	_6495
	mov	eax,ebp
	push	eax
	push	_6555
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6498
	call	_brl_blitz_NullObjectError
_6498:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6501
	call	_brl_blitz_NullObjectError
_6501:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-112],eax
	push	_6503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-96],_bbNullObject
	je	_6504
	mov	eax,ebp
	push	eax
	push	_6508
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6507
	call	_brl_blitz_NullObjectError
_6507:
	push	_4
	push	_bbNullObject
	push	_413
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6509
_6504:
	mov	eax,ebp
	push	eax
	push	_6511
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_413
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6509:
	push	_6512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6513
	mov	eax,ebp
	push	eax
	push	_6519
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_6516
	call	_brl_blitz_NullObjectError
_6516:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6518
	call	_brl_blitz_NullObjectError
_6518:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6520
_6513:
	mov	eax,ebp
	push	eax
	push	_6526
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6523
	call	_brl_blitz_NullObjectError
_6523:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6525
	call	_brl_blitz_NullObjectError
_6525:
	push	dword [ebp-100]
	push	esi
	mov	eax,dword [esi]
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
	call	dword [_bbOnDebugLeaveScope]
_6520:
	push	_6527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6529
	call	_brl_blitz_NullObjectError
_6529:
	push	_4
	push	_bbNullObject
	push	_191
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_6531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6533
	call	_brl_blitz_NullObjectError
_6533:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6535
	call	_brl_blitz_NullObjectError
_6535:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6537
	call	_brl_blitz_NullObjectError
_6537:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6539
	call	_brl_blitz_NullObjectError
_6539:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_6541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6542
	mov	eax,ebp
	push	eax
	push	_6547
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_6545
	call	_brl_blitz_NullObjectError
_6545:
	mov	dword [ebx+20],0
	call	dword [_bbOnDebugLeaveScope]
_6542:
	push	_6548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-120]
	cmp	edi,_bbNullObject
	jne	_6550
	call	_brl_blitz_NullObjectError
_6550:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_6552
	call	_brl_blitz_NullObjectError
_6552:
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_6554
	call	_brl_blitz_NullObjectError
_6554:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6557
_6495:
	mov	eax,ebp
	push	eax
	push	_6591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6559
	mov	eax,ebp
	push	eax
	push	_6585
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6561
	mov	eax,ebp
	push	eax
	push	_6579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6564
	call	_brl_blitz_NullObjectError
_6564:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-96],eax
	push	_6565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	edi,dword [ebp-100]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6569
	call	_brl_blitz_NullObjectError
_6569:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_427
_429:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6574
	call	_brl_blitz_NullObjectError
_6574:
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
	je	_427
	mov	eax,ebp
	push	eax
	push	_6578
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6577
	call	_brl_blitz_NullObjectError
_6577:
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_427:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6572
	call	_brl_blitz_NullObjectError
_6572:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_429
_428:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6580
_6561:
	mov	eax,ebp
	push	eax
	push	_6584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6583
	call	_brl_blitz_NullObjectError
_6583:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6580:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6586
_6559:
	mov	eax,ebp
	push	eax
	push	_6590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6587
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6589
	call	_brl_blitz_NullObjectError
_6589:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6586:
	call	dword [_bbOnDebugLeaveScope]
_6557:
	push	_6592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6594
	call	_brl_blitz_NullObjectError
_6594:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6596
	call	_brl_blitz_NullObjectError
_6596:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6598
	call	_brl_blitz_NullObjectError
_6598:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6600
	call	_brl_blitz_NullObjectError
_6600:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_6602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6603
	mov	eax,ebp
	push	eax
	push	_6608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_6606
	call	_brl_blitz_NullObjectError
_6606:
	mov	dword [ebx+20],0
	call	dword [_bbOnDebugLeaveScope]
_6603:
	push	_6609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6611
	call	_brl_blitz_NullObjectError
_6611:
	push	dword [ebp-100]
	push	dword [ebp-92]
	push	dword [ebp-108]
	push	dword [ebp-96]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_899
_6424:
	call	dword [_bbOnDebugLeaveScope]
_421:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6416
	call	_brl_blitz_NullObjectError
_6416:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_423
_422:
	mov	ebx,_bbNullObject
	jmp	_899
_899:
	call	dword [_bbOnDebugLeaveScope]
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
	sub	esp,84
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
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-28],_bbEmptyString
	mov	byte [ebp-4],0
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbEmptyString
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbEmptyString
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	dword [ebp-76],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_6877
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6619
	call	_brl_blitz_NullObjectError
_6619:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6620
	mov	eax,ebp
	push	eax
	push	_6869
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_430
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_6623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6625
	call	_brl_blitz_NullObjectError
_6625:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6627
	call	_brl_blitz_NullObjectError
_6627:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_282
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6630
	call	_brl_blitz_NullObjectError
_6630:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_6633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-80],eax
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6637
	call	_brl_blitz_NullObjectError
_6637:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_431
_433:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6642
	call	_brl_blitz_NullObjectError
_6642:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-52],eax
	cmp	dword [ebp-52],_bbNullObject
	je	_431
	mov	eax,ebp
	push	eax
	push	_6654
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_6645
	call	_brl_blitz_NullObjectError
_6645:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6647
	call	_brl_blitz_NullObjectError
_6647:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6649
	call	_brl_blitz_NullObjectError
_6649:
	push	dword [esi+16]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6650
	mov	eax,ebp
	push	eax
	push	_6653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	dword [ebp-24],eax
	push	_6652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_432
_6650:
	call	dword [_bbOnDebugLeaveScope]
_431:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6640
	call	_brl_blitz_NullObjectError
_6640:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_433
_432:
	push	_6655
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],_bbNullObject
	jne	_6656
	mov	eax,ebp
	push	eax
	push	_6667
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6659
	call	_brl_blitz_NullObjectError
_6659:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6661
	call	_brl_blitz_NullObjectError
_6661:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6663
	call	_brl_blitz_NullObjectError
_6663:
	push	dword [esi+16]
	push	_434
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_6664
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6666
	call	_brl_blitz_NullObjectError
_6666:
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
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_6656:
	push	_6668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6670
	call	_brl_blitz_NullObjectError
_6670:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_6672
	call	_brl_blitz_NullObjectError
_6672:
	push	dword [ebx+20]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_6673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6675
	call	_brl_blitz_NullObjectError
_6675:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-28],eax
	push	_6677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_6679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_6681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_6683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_6685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6687
	call	_brl_blitz_NullObjectError
_6687:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_6689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6691
	call	_brl_blitz_NullObjectError
_6691:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6692
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	push	_6694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6696
	call	_brl_blitz_NullObjectError
_6696:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6698
	call	_brl_blitz_NullObjectError
_6698:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_6701
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6700
	call	_brl_blitz_NullObjectError
_6700:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_6701:
	cmp	eax,0
	je	_6703
	mov	eax,ebp
	push	eax
	push	_6707
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6706
	call	_brl_blitz_NullObjectError
_6706:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-48],eax
	call	dword [_bbOnDebugLeaveScope]
_6703:
	push	_6708
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6711
	call	_brl_blitz_NullObjectError
_6711:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6713
	call	_brl_blitz_NullObjectError
_6713:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6716
	call	_brl_blitz_NullObjectError
_6716:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_436
_438:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6721
	call	_brl_blitz_NullObjectError
_6721:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	je	_436
	mov	eax,ebp
	push	eax
	push	_6743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_6724
	call	_brl_blitz_NullObjectError
_6724:
	push	dword [ebp-44]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6725
	mov	eax,ebp
	push	eax
	push	_6742
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_6727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	mov	dword [ebp-32],eax
	push	_6728
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_6730
	call	_brl_blitz_NullObjectError
_6730:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_6731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6733
	call	_brl_blitz_NullObjectError
_6733:
	mov	esi,dword [ebp-56]
	cmp	esi,_bbNullObject
	jne	_6735
	call	_brl_blitz_NullObjectError
_6735:
	mov	esi,dword [esi+20]
	cmp	esi,_bbNullObject
	jne	_6737
	call	_brl_blitz_NullObjectError
_6737:
	push	dword [esi+20]
	push	_439
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_6740
	call	_brl_blitz_NullObjectError
_6740:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-40],eax
	push	_6741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_437
_6725:
	call	dword [_bbOnDebugLeaveScope]
_436:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6719
	call	_brl_blitz_NullObjectError
_6719:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_438
_437:
	push	_6744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,0
	jne	_6745
	mov	eax,ebp
	push	eax
	push	_6814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6748
	call	_brl_blitz_NullObjectError
_6748:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+132]
	add	esp,4
	push	_6749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6752
	call	_brl_blitz_NullObjectError
_6752:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6754
	call	_brl_blitz_NullObjectError
_6754:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_6757
	call	_brl_blitz_NullObjectError
_6757:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_440
_442:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6762
	call	_brl_blitz_NullObjectError
_6762:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-60],eax
	cmp	dword [ebp-60],_bbNullObject
	je	_440
	mov	eax,ebp
	push	eax
	push	_6812
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6763
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_6765
	call	_brl_blitz_NullObjectError
_6765:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_6767
	call	_brl_blitz_NullObjectError
_6767:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_6768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6770
	call	_brl_blitz_NullObjectError
_6770:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-64],eax
	push	_6772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6774
	call	_brl_blitz_NullObjectError
_6774:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6777
	call	_brl_blitz_NullObjectError
_6777:
	push	_174
	push	dword [ebp-44]
	push	_173
	push	dword [esi+20]
	push	_172
	call	_bbStringConcat
	add	esp,8
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
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_6781
	push	eax
	call	_bbGCFree
	add	esp,4
_6781:
	mov	dword [ebx+48],esi
	push	_6782
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6784
	call	_brl_blitz_NullObjectError
_6784:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6786
	call	_brl_blitz_NullObjectError
_6786:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	mov	dword [ebp-68],eax
	push	_6788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-68],_bbNullObject
	je	_6789
	mov	eax,ebp
	push	eax
	push	_6803
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_6792
	call	_brl_blitz_NullObjectError
_6792:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	push	_6793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_6795
	call	_brl_blitz_NullObjectError
_6795:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-40],eax
	push	_6796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6798
	call	_brl_blitz_NullObjectError
_6798:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6799
	mov	eax,ebp
	push	eax
	push	_6801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_6799:
	push	_6802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_441
_6789:
	push	_6804
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6806
	call	_brl_blitz_NullObjectError
_6806:
	mov	esi,ebx
	mov	eax,dword [ebp-64]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_6811
	push	eax
	call	_bbGCFree
	add	esp,4
_6811:
	mov	dword [esi+48],ebx
	call	dword [_bbOnDebugLeaveScope]
_440:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6760
	call	_brl_blitz_NullObjectError
_6760:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_442
_441:
	call	dword [_bbOnDebugLeaveScope]
_6745:
	push	_6815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_6816
	mov	eax,ebp
	push	eax
	push	_6822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6819
	call	_brl_blitz_NullObjectError
_6819:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6821
	call	_brl_blitz_NullObjectError
_6821:
	push	_118
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	_443
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
	call	dword [_bbOnDebugLeaveScope]
_6816:
	push	_6823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6825
	call	_brl_blitz_NullObjectError
_6825:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6826
	mov	eax,ebp
	push	eax
	push	_6858
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6829
	call	_brl_blitz_NullObjectError
_6829:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6831
	call	_brl_blitz_NullObjectError
_6831:
	push	dword [ebp-48]
	push	_bbNullObject
	push	_bbNullObject
	push	dword [ebp-40]
	push	dword [ebp-36]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,20
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+96]
	add	esp,12
	mov	dword [ebp-72],eax
	push	_6833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6835
	call	_brl_blitz_NullObjectError
_6835:
	cmp	dword [ebx+16],_bbNullObject
	jne	_6836
	mov	eax,ebp
	push	eax
	push	_6841
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6839
	call	_brl_blitz_NullObjectError
_6839:
	push	dword [ebp-20]
	push	dword [ebx+12]
	call	_bb_AddChild
	add	esp,8
	push	_6840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_6836:
	mov	eax,ebp
	push	eax
	push	_6857
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6845
	call	_brl_blitz_NullObjectError
_6845:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6847
	call	_brl_blitz_NullObjectError
_6847:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_284
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-72]
	cmp	esi,_bbNullObject
	jne	_6850
	call	_brl_blitz_NullObjectError
_6850:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_6855
	push	eax
	call	_bbGCFree
	add	esp,4
_6855:
	mov	dword [esi+12],ebx
	push	_6856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_6826:
	mov	eax,ebp
	push	eax
	push	_6868
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6862
	call	_brl_blitz_NullObjectError
_6862:
	push	_4
	push	_bbNullObject
	push	_284
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-76],eax
	push	_6864
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	push	dword [ebp-76]
	call	_bb_AddChild
	add	esp,8
	push	_6865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6867
	call	_brl_blitz_NullObjectError
_6867:
	push	dword [ebp-48]
	push	dword [ebp-32]
	push	dword [ebp-40]
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_6620:
	mov	eax,ebp
	push	eax
	push	_6876
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6875
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_904
_904:
	call	dword [_bbOnDebugLeaveScope]
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
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_6931
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_linkedlist_CreateList
	mov	dword [ebp-12],eax
	push	_6882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_6884
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_446:
	mov	eax,ebp
	push	eax
	push	_6915
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6887
	call	_brl_blitz_NullObjectError
_6887:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6890
	call	_brl_blitz_NullObjectError
_6890:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_6892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6894
	call	_brl_blitz_NullObjectError
_6894:
	mov	dword [ebp-24],ebx
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_6897
	call	_brl_blitz_NullObjectError
_6897:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6899
	call	_brl_blitz_NullObjectError
_6899:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6901
	call	_brl_blitz_NullObjectError
_6901:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_6905
	push	eax
	call	_bbGCFree
	add	esp,4
_6905:
	mov	eax,dword [ebp-24]
	mov	dword [eax+12],ebx
	push	_6906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6908
	call	_brl_blitz_NullObjectError
_6908:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6910
	call	_brl_blitz_NullObjectError
_6910:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_6911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6913
	call	_brl_blitz_NullObjectError
_6913:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_444:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6917
	call	_brl_blitz_NullObjectError
_6917:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_446
_445:
	push	_6918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_6921
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6920
	call	_brl_blitz_NullObjectError
_6920:
	mov	eax,dword [ebp-16]
	cmp	eax,dword [ebx+20]
	setne	al
	movzx	eax,al
_6921:
	cmp	eax,0
	je	_6923
	mov	eax,ebp
	push	eax
	push	_6929
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6926
	call	_brl_blitz_NullObjectError
_6926:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6928
	call	_brl_blitz_NullObjectError
_6928:
	push	_118
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_448
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_447
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	call	dword [_bbOnDebugLeaveScope]
_6923:
	push	_6930
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_908
_908:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_RegisterVariable:
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
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_6993
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6935
	call	_brl_blitz_NullObjectError
_6935:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6938
	call	_brl_blitz_NullObjectError
_6938:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_6940
	call	_brl_blitz_ArrayBoundsError
_6940:
	mov	edi,dword [esi+ebx*4+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6943
	call	_brl_blitz_NullObjectError
_6943:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_449
_451:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6948
	call	_brl_blitz_NullObjectError
_6948:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	je	_449
	mov	eax,ebp
	push	eax
	push	_6960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6949
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_6951
	call	_brl_blitz_NullObjectError
_6951:
	push	dword [ebx+12]
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6952
	mov	eax,ebp
	push	eax
	push	_6959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6955
	call	_brl_blitz_NullObjectError
_6955:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6957
	call	_brl_blitz_NullObjectError
_6957:
	push	dword [esi+12]
	push	_452
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_6958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_913
_6952:
	call	dword [_bbOnDebugLeaveScope]
_449:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6946
	call	_brl_blitz_NullObjectError
_6946:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_451
_450:
	push	_6961
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6963
	call	_brl_blitz_NullObjectError
_6963:
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	mov	dword [ebp-16],eax
	push	_6965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6967
	call	_brl_blitz_NullObjectError
_6967:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6970
	call	_brl_blitz_NullObjectError
_6970:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_6972
	call	_brl_blitz_ArrayBoundsError
_6972:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_6974
	call	_brl_blitz_NullObjectError
_6974:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_6975
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	push	_6977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6979
	call	_brl_blitz_NullObjectError
_6979:
	cmp	dword [ebx+20],0
	jne	_6980
	mov	eax,ebp
	push	eax
	push	_6982
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_238
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6983
_6980:
	mov	eax,ebp
	push	eax
	push	_6985
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_237
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_6983:
	push	_6986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6988
	call	_brl_blitz_NullObjectError
_6988:
	push	dword [ebp-8]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6991
	call	_brl_blitz_NullObjectError
_6991:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_6992
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_913
_913:
	call	dword [_bbOnDebugLeaveScope]
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
	sub	esp,32
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_7039
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6997
	call	_brl_blitz_NullObjectError
_6997:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-28]
	add	eax,24
	mov	dword [ebp-24],eax
	mov	edx,dword [ebp-24]
	mov	eax,dword [ebp-28]
	add	edx,dword [eax+16]
	mov	dword [ebp-32],edx
	jmp	_453
_455:
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax]
	mov	dword [ebp-12],eax
	add	dword [ebp-24],4
	cmp	dword [ebp-12],_bbNullObject
	je	_453
	mov	eax,ebp
	push	eax
	push	_7019
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7006
	call	_brl_blitz_NullObjectError
_7006:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_456
_458:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7011
	call	_brl_blitz_NullObjectError
_7011:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_456
	mov	eax,ebp
	push	eax
	push	_7018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7014
	call	_brl_blitz_NullObjectError
_7014:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7015
	mov	eax,ebp
	push	eax
	push	_7017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_917
_7015:
	call	dword [_bbOnDebugLeaveScope]
_456:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7009
	call	_brl_blitz_NullObjectError
_7009:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_458
_457:
	call	dword [_bbOnDebugLeaveScope]
_453:
	mov	eax,dword [ebp-32]
	cmp	dword [ebp-24],eax
	jne	_455
_454:
	push	_7020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7023
	call	_brl_blitz_NullObjectError
_7023:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7026
	call	_brl_blitz_NullObjectError
_7026:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_459
_461:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7031
	call	_brl_blitz_NullObjectError
_7031:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_459
	mov	eax,ebp
	push	eax
	push	_7038
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_7034
	call	_brl_blitz_NullObjectError
_7034:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7035
	mov	eax,ebp
	push	eax
	push	_7037
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_917
_7035:
	call	dword [_bbOnDebugLeaveScope]
_459:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7029
	call	_brl_blitz_NullObjectError
_7029:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_461
_460:
	mov	ebx,_bbNullObject
	jmp	_917
_917:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetVariablelist:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_7072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7042
	call	_brl_blitz_NullObjectError
_7042:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_7044
	call	_brl_blitz_NullObjectError
_7044:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_7046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7049
	call	_brl_blitz_NullObjectError
_7049:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	add	eax,24
	mov	dword [ebp-20],eax
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-24]
	add	edx,dword [eax+16]
	mov	dword [ebp-28],edx
	jmp	_462
_464:
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	mov	dword [ebp-12],eax
	add	dword [ebp-20],4
	cmp	dword [ebp-12],_bbNullObject
	je	_462
	mov	eax,ebp
	push	eax
	push	_7069
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7054
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7058
	call	_brl_blitz_NullObjectError
_7058:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_465
_467:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7063
	call	_brl_blitz_NullObjectError
_7063:
	push	_bb_TIdentifierVariable
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_465
	mov	eax,ebp
	push	eax
	push	_7067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7066
	call	_brl_blitz_NullObjectError
_7066:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_465:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7061
	call	_brl_blitz_NullObjectError
_7061:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_467
_466:
	call	dword [_bbOnDebugLeaveScope]
_462:
	mov	eax,dword [ebp-28]
	cmp	dword [ebp-20],eax
	jne	_464
_463:
	push	_7071
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_920
_920:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_IsToken:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_7076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7075
	call	_brl_blitz_NullObjectError
_7075:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	mov	eax,eax
	and	eax,0xff
	mov	eax,eax
	mov	byte [ebp-12],al
	jmp	_924
_924:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_ValidDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_7111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_127
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_7078
	push	_126
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7078:
	cmp	eax,0
	jne	_7080
	push	_125
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7080:
	cmp	eax,0
	jne	_7082
	push	_129
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7082:
	cmp	eax,0
	jne	_7084
	push	_190
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7084:
	cmp	eax,0
	jne	_7086
	push	_189
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7086:
	cmp	eax,0
	jne	_7088
	push	_193
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7088:
	cmp	eax,0
	je	_7090
	mov	eax,ebp
	push	eax
	push	_7092
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7091
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_928
_7090:
	push	_7093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7097
	call	_brl_blitz_NullObjectError
_7097:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_468
_470:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7102
	call	_brl_blitz_NullObjectError
_7102:
	push	_bb_TDatatype
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_468
	mov	eax,ebp
	push	eax
	push	_7109
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7105
	call	_brl_blitz_NullObjectError
_7105:
	push	dword [ebp-8]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7106
	mov	eax,ebp
	push	eax
	push	_7108
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_928
_7106:
	call	dword [_bbOnDebugLeaveScope]
_468:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7100
	call	_brl_blitz_NullObjectError
_7100:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_470
_469:
	push	_7110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	jmp	_928
_928:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-12]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Match:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_7126
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7113
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7115
	call	_brl_blitz_NullObjectError
_7115:
	push	dword [ebp-8]
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7116
	push	ebp
	push	_7120
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7119
	call	_brl_blitz_NullObjectError
_7119:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_932
_7116:
	push	ebp
	push	_7125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7124
	call	_brl_blitz_NullObjectError
_7124:
	push	_472
	push	_83
	push	dword [ebp-8]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_471
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_7121:
	mov	ebx,_bbEmptyString
	jmp	_932
_932:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetNext:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7130
	call	_brl_blitz_NullObjectError
_7130:
	cmp	dword [ebx+52],_bbNullObject
	je	_7131
	push	ebp
	push	_7144
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7132
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7134
	call	_brl_blitz_NullObjectError
_7134:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7137
	call	_brl_blitz_NullObjectError
_7137:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7139
	call	_brl_blitz_NullObjectError
_7139:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_7143
	push	eax
	call	_bbGCFree
	add	esp,4
_7143:
	mov	dword [ebx+52],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7145
_7131:
	push	ebp
	push	_7147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_7145:
	push	_7148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7150
	call	_brl_blitz_NullObjectError
_7150:
	cmp	dword [ebx+52],_bbNullObject
	jne	_7151
	push	ebp
	push	_7155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7154
	call	_brl_blitz_NullObjectError
_7154:
	push	_473
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7156
_7151:
	push	ebp
	push	_7180
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7159
	call	_brl_blitz_NullObjectError
_7159:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7162
	call	_brl_blitz_NullObjectError
_7162:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7164
	call	_brl_blitz_NullObjectError
_7164:
	push	_bbStringClass
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_7166
	mov	eax,_bbEmptyString
_7166:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_7170
	push	eax
	call	_bbGCFree
	add	esp,4
_7170:
	mov	dword [ebx+48],esi
	push	_7171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7173
	call	_brl_blitz_NullObjectError
_7173:
	push	_83
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7174
	push	ebp
	push	_7179
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7177
	call	_brl_blitz_NullObjectError
_7177:
	add	dword [ebx+56],1
	call	dword [_bbOnDebugLeaveScope]
_7174:
	call	dword [_bbOnDebugLeaveScope]
_7156:
	push	_7181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7183
	call	_brl_blitz_NullObjectError
_7183:
	mov	ebx,dword [ebx+48]
	jmp	_935
_935:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetBefore:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7187
	call	_brl_blitz_NullObjectError
_7187:
	cmp	dword [ebx+52],_bbNullObject
	je	_7188
	push	ebp
	push	_7201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7189
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7191
	call	_brl_blitz_NullObjectError
_7191:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7194
	call	_brl_blitz_NullObjectError
_7194:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7196
	call	_brl_blitz_NullObjectError
_7196:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_7200
	push	eax
	call	_bbGCFree
	add	esp,4
_7200:
	mov	dword [ebx+52],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7202
_7188:
	push	ebp
	push	_7204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_7202:
	push	_7205
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7207
	call	_brl_blitz_NullObjectError
_7207:
	cmp	dword [ebx+52],_bbNullObject
	jne	_7208
	push	ebp
	push	_7212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7211
	call	_brl_blitz_NullObjectError
_7211:
	push	_474
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7213
_7208:
	push	ebp
	push	_7237
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7216
	call	_brl_blitz_NullObjectError
_7216:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7219
	call	_brl_blitz_NullObjectError
_7219:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7221
	call	_brl_blitz_NullObjectError
_7221:
	push	_bbStringClass
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_7223
	mov	eax,_bbEmptyString
_7223:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_7227
	push	eax
	call	_bbGCFree
	add	esp,4
_7227:
	mov	dword [ebx+48],esi
	push	_7228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7230
	call	_brl_blitz_NullObjectError
_7230:
	push	_83
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7231
	push	ebp
	push	_7236
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7234
	call	_brl_blitz_NullObjectError
_7234:
	sub	dword [ebx+56],1
	call	dword [_bbOnDebugLeaveScope]
_7231:
	call	dword [_bbOnDebugLeaveScope]
_7213:
	push	_7238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7240
	call	_brl_blitz_NullObjectError
_7240:
	mov	ebx,dword [ebx+48]
	jmp	_938
_938:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_GetCurrent:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7244
	call	_brl_blitz_NullObjectError
_7244:
	mov	ebx,dword [ebx+48]
	jmp	_941
_941:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Error:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	push	ebp
	push	_7277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7248
	call	_brl_blitz_NullObjectError
_7248:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7250
	call	_brl_blitz_NullObjectError
_7250:
	push	_478
	push	_472
	push	_83
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_477
	push	dword [ebx+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_476
	push	dword [ebp-8]
	push	_475
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_7252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7254
	call	_brl_blitz_NullObjectError
_7254:
	mov	esi,dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7257
	call	_brl_blitz_NullObjectError
_7257:
	mov	ebx,dword [ebx+56]
	add	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_7259
	call	_brl_blitz_ArrayBoundsError
_7259:
	push	_83
	push	_85
	push	_98
	push	dword [esi+ebx*4+24]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	_479
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
	push	_7260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_480
	push	dword [ebp-12]
	call	_brl_stream_SaveString
	add	esp,8
	push	_7261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_bbWriteStdout
	add	esp,4
	push	_7262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7264
	call	_brl_blitz_NullObjectError
_7264:
	mov	byte [ebx+68],1
	push	_7266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_481
_483:
	push	ebp
	push	_7276
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7275
	call	_brl_blitz_NullObjectError
_7275:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_481:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7268
	call	_brl_blitz_NullObjectError
_7268:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_7271
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7270
	call	_brl_blitz_NullObjectError
_7270:
	mov	eax,dword [ebx+52]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_7271:
	cmp	eax,0
	jne	_483
_482:
	mov	ebx,0
	jmp	_945
_945:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TCompiler_Warning:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	push	ebp
	push	_7306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7281
	call	_brl_blitz_NullObjectError
_7281:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7283
	call	_brl_blitz_NullObjectError
_7283:
	push	_478
	push	_472
	push	_83
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_477
	push	dword [ebx+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_476
	push	dword [ebp-8]
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
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_7285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7287
	call	_brl_blitz_NullObjectError
_7287:
	mov	esi,dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7290
	call	_brl_blitz_NullObjectError
_7290:
	mov	ebx,dword [ebx+56]
	add	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_7292
	call	_brl_blitz_ArrayBoundsError
_7292:
	push	_83
	push	_85
	push	_98
	push	dword [esi+ebx*4+24]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	_479
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
	push	_7293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_480
	push	dword [ebp-12]
	call	_brl_stream_SaveString
	add	esp,8
	push	_7294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_bbWriteStdout
	add	esp,4
	push	_7295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_485
_487:
	push	ebp
	push	_7305
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7304
	call	_brl_blitz_NullObjectError
_7304:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_485:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7297
	call	_brl_blitz_NullObjectError
_7297:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_7300
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7299
	call	_brl_blitz_NullObjectError
_7299:
	mov	eax,dword [ebx+52]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_7300:
	cmp	eax,0
	jne	_487
_486:
	mov	ebx,0
	jmp	_949
_949:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TRecursive
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	push	ebp
	push	_7311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_952
_952:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_955:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_7315
	push	eax
	call	_bbGCFree
	add	esp,4
_7315:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_7317
	push	eax
	call	_bbGCFree
	add	esp,4
_7317:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_7319
	push	eax
	call	_bbGCFree
	add	esp,4
_7319:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_7321
	push	eax
	call	_bbGCFree
	add	esp,4
_7321:
	mov	eax,0
	jmp	_7313
_7313:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	eax,dword [ebp+24]
	mov	dword [ebp-20],eax
	mov	eax,ebp
	push	eax
	push	_7355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7324
	call	_brl_blitz_NullObjectError
_7324:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_7329
	push	eax
	call	_bbGCFree
	add	esp,4
_7329:
	mov	dword [esi+8],ebx
	push	_7330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7332
	call	_brl_blitz_NullObjectError
_7332:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7337
	push	eax
	call	_bbGCFree
	add	esp,4
_7337:
	mov	dword [esi+16],ebx
	push	_7338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7340
	call	_brl_blitz_NullObjectError
_7340:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_7345
	push	eax
	call	_bbGCFree
	add	esp,4
_7345:
	mov	dword [esi+12],ebx
	push	_7346
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7348
	call	_brl_blitz_NullObjectError
_7348:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_7353
	push	eax
	call	_bbGCFree
	add	esp,4
_7353:
	mov	dword [esi+20],ebx
	push	_7354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_962
_962:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_GetDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7359
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7358
	call	_brl_blitz_NullObjectError
_7358:
	mov	ebx,dword [ebx+8]
	jmp	_965
_965:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TRecursive_GetNode:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7363
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7362
	call	_brl_blitz_NullObjectError
_7362:
	mov	ebx,dword [ebx+12]
	jmp	_968
_968:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_7367
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TDatatype
	mov	eax,dword [ebp-4]
	mov	byte [eax+8],0
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],0
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	push	ebp
	push	_7366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_971
_971:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_974:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_7370
	push	eax
	call	_bbGCFree
	add	esp,4
_7370:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_7372
	push	eax
	call	_bbGCFree
	add	esp,4
_7372:
	mov	eax,0
	jmp	_7368
_7368:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Init:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	esi
	mov	eax,ebp
	push	eax
	push	_7746
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	dec	dword [eax+4]
	jnz	_7377
	push	eax
	call	_bbGCFree
	add	esp,4
_7377:
	mov	dword [__bb_TDatatype_IntDatatype],ebx
	push	_7378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_IntDatatype]
	cmp	esi,_bbNullObject
	jne	_7380
	call	_brl_blitz_NullObjectError
_7380:
	mov	ebx,_127
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7385
	push	eax
	call	_bbGCFree
	add	esp,4
_7385:
	mov	dword [esi+16],ebx
	push	_7386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7388
	call	_brl_blitz_NullObjectError
_7388:
	mov	dword [ebx+12],3
	push	_7390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	dec	dword [eax+4]
	jnz	_7394
	push	eax
	call	_bbGCFree
	add	esp,4
_7394:
	mov	dword [__bb_TDatatype_FloatDatatype],ebx
	push	_7395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_FloatDatatype]
	cmp	esi,_bbNullObject
	jne	_7397
	call	_brl_blitz_NullObjectError
_7397:
	mov	ebx,_125
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7402
	push	eax
	call	_bbGCFree
	add	esp,4
_7402:
	mov	dword [esi+16],ebx
	push	_7403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7405
	call	_brl_blitz_NullObjectError
_7405:
	mov	dword [ebx+12],4
	push	_7407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	dec	dword [eax+4]
	jnz	_7411
	push	eax
	call	_bbGCFree
	add	esp,4
_7411:
	mov	dword [__bb_TDatatype_StringDatatype],ebx
	push	_7412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_StringDatatype]
	cmp	esi,_bbNullObject
	jne	_7414
	call	_brl_blitz_NullObjectError
_7414:
	mov	ebx,_126
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7419
	push	eax
	call	_bbGCFree
	add	esp,4
_7419:
	mov	dword [esi+16],ebx
	push	_7420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7422
	call	_brl_blitz_NullObjectError
_7422:
	mov	dword [ebx+12],7
	push	_7424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	dec	dword [eax+4]
	jnz	_7428
	push	eax
	call	_bbGCFree
	add	esp,4
_7428:
	mov	dword [__bb_TDatatype_ByteDatatype],ebx
	push	_7429
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_ByteDatatype]
	cmp	esi,_bbNullObject
	jne	_7431
	call	_brl_blitz_NullObjectError
_7431:
	mov	ebx,_129
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7436
	push	eax
	call	_bbGCFree
	add	esp,4
_7436:
	mov	dword [esi+16],ebx
	push	_7437
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7439
	call	_brl_blitz_NullObjectError
_7439:
	mov	dword [ebx+12],1
	push	_7441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	dec	dword [eax+4]
	jnz	_7445
	push	eax
	call	_bbGCFree
	add	esp,4
_7445:
	mov	dword [__bb_TDatatype_LongDatatype],ebx
	push	_7446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_LongDatatype]
	cmp	esi,_bbNullObject
	jne	_7448
	call	_brl_blitz_NullObjectError
_7448:
	mov	ebx,_190
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7453
	push	eax
	call	_bbGCFree
	add	esp,4
_7453:
	mov	dword [esi+16],ebx
	push	_7454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7456
	call	_brl_blitz_NullObjectError
_7456:
	mov	dword [ebx+12],5
	push	_7458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	dec	dword [eax+4]
	jnz	_7462
	push	eax
	call	_bbGCFree
	add	esp,4
_7462:
	mov	dword [__bb_TDatatype_DoubleDatatype],ebx
	push	_7463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_DoubleDatatype]
	cmp	esi,_bbNullObject
	jne	_7465
	call	_brl_blitz_NullObjectError
_7465:
	mov	ebx,_193
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7470
	push	eax
	call	_bbGCFree
	add	esp,4
_7470:
	mov	dword [esi+16],ebx
	push	_7471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7473
	call	_brl_blitz_NullObjectError
_7473:
	mov	dword [ebx+12],6
	push	_7475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	dec	dword [eax+4]
	jnz	_7479
	push	eax
	call	_bbGCFree
	add	esp,4
_7479:
	mov	dword [__bb_TDatatype_ShortDatatype],ebx
	push	_7480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_ShortDatatype]
	cmp	esi,_bbNullObject
	jne	_7482
	call	_brl_blitz_NullObjectError
_7482:
	mov	ebx,_189
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7487
	push	eax
	call	_bbGCFree
	add	esp,4
_7487:
	mov	dword [esi+16],ebx
	push	_7488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7490
	call	_brl_blitz_NullObjectError
_7490:
	mov	dword [ebx+12],2
	push	_7492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	dec	dword [eax+4]
	jnz	_7496
	push	eax
	call	_bbGCFree
	add	esp,4
_7496:
	mov	dword [__bb_TDatatype_VoidDatatype],ebx
	push	_7497
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	cmp	esi,_bbNullObject
	jne	_7499
	call	_brl_blitz_NullObjectError
_7499:
	mov	ebx,_488
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7504
	push	eax
	call	_bbGCFree
	add	esp,4
_7504:
	mov	dword [esi+16],ebx
	push	_7505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_VoidDatatype]
	cmp	ebx,_bbNullObject
	jne	_7507
	call	_brl_blitz_NullObjectError
_7507:
	mov	dword [ebx+12],-1
	push	_7509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	dec	dword [eax+4]
	jnz	_7513
	push	eax
	call	_bbGCFree
	add	esp,4
_7513:
	mov	dword [__bb_TDatatype_NullDatatype],ebx
	push	_7514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_NullDatatype]
	cmp	esi,_bbNullObject
	jne	_7516
	call	_brl_blitz_NullObjectError
_7516:
	mov	ebx,_195
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7521
	push	eax
	call	_bbGCFree
	add	esp,4
_7521:
	mov	dword [esi+16],ebx
	push	_7522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_7524
	call	_brl_blitz_NullObjectError
_7524:
	mov	dword [ebx+12],10
	push	_7526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7528
	call	_brl_blitz_NullObjectError
_7528:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7530
	call	_brl_blitz_NullObjectError
_7530:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7533
	call	_brl_blitz_NullObjectError
_7533:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7535
	call	_brl_blitz_NullObjectError
_7535:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7538
	call	_brl_blitz_NullObjectError
_7538:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7540
	call	_brl_blitz_NullObjectError
_7540:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7541
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7543
	call	_brl_blitz_NullObjectError
_7543:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7545
	call	_brl_blitz_NullObjectError
_7545:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7546
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7548
	call	_brl_blitz_NullObjectError
_7548:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7550
	call	_brl_blitz_NullObjectError
_7550:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7553
	call	_brl_blitz_NullObjectError
_7553:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7555
	call	_brl_blitz_NullObjectError
_7555:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7558
	call	_brl_blitz_NullObjectError
_7558:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7560
	call	_brl_blitz_NullObjectError
_7560:
	push	dword [__bb_TDatatype_NullDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7563
	call	_brl_blitz_NullObjectError
_7563:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7565
	call	_brl_blitz_NullObjectError
_7565:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7566
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7568
	call	_brl_blitz_NullObjectError
_7568:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7570
	call	_brl_blitz_NullObjectError
_7570:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7573
	call	_brl_blitz_NullObjectError
_7573:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7575
	call	_brl_blitz_NullObjectError
_7575:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7576
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7578
	call	_brl_blitz_NullObjectError
_7578:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7580
	call	_brl_blitz_NullObjectError
_7580:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7581
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7583
	call	_brl_blitz_NullObjectError
_7583:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7585
	call	_brl_blitz_NullObjectError
_7585:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7588
	call	_brl_blitz_NullObjectError
_7588:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7590
	call	_brl_blitz_NullObjectError
_7590:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7591
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7593
	call	_brl_blitz_NullObjectError
_7593:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7595
	call	_brl_blitz_NullObjectError
_7595:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7598
	call	_brl_blitz_NullObjectError
_7598:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7600
	call	_brl_blitz_NullObjectError
_7600:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7601
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7603
	call	_brl_blitz_NullObjectError
_7603:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7605
	call	_brl_blitz_NullObjectError
_7605:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7608
	call	_brl_blitz_NullObjectError
_7608:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7610
	call	_brl_blitz_NullObjectError
_7610:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7613
	call	_brl_blitz_NullObjectError
_7613:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7615
	call	_brl_blitz_NullObjectError
_7615:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7618
	call	_brl_blitz_NullObjectError
_7618:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7620
	call	_brl_blitz_NullObjectError
_7620:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7623
	call	_brl_blitz_NullObjectError
_7623:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7625
	call	_brl_blitz_NullObjectError
_7625:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7628
	call	_brl_blitz_NullObjectError
_7628:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7630
	call	_brl_blitz_NullObjectError
_7630:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7631
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7633
	call	_brl_blitz_NullObjectError
_7633:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7635
	call	_brl_blitz_NullObjectError
_7635:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7638
	call	_brl_blitz_NullObjectError
_7638:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7640
	call	_brl_blitz_NullObjectError
_7640:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7643
	call	_brl_blitz_NullObjectError
_7643:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7645
	call	_brl_blitz_NullObjectError
_7645:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7648
	call	_brl_blitz_NullObjectError
_7648:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7650
	call	_brl_blitz_NullObjectError
_7650:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7653
	call	_brl_blitz_NullObjectError
_7653:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7655
	call	_brl_blitz_NullObjectError
_7655:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7658
	call	_brl_blitz_NullObjectError
_7658:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7660
	call	_brl_blitz_NullObjectError
_7660:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7663
	call	_brl_blitz_NullObjectError
_7663:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7665
	call	_brl_blitz_NullObjectError
_7665:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7666
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7668
	call	_brl_blitz_NullObjectError
_7668:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7670
	call	_brl_blitz_NullObjectError
_7670:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7673
	call	_brl_blitz_NullObjectError
_7673:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7675
	call	_brl_blitz_NullObjectError
_7675:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7678
	call	_brl_blitz_NullObjectError
_7678:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7680
	call	_brl_blitz_NullObjectError
_7680:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7683
	call	_brl_blitz_NullObjectError
_7683:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7685
	call	_brl_blitz_NullObjectError
_7685:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7688
	call	_brl_blitz_NullObjectError
_7688:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7690
	call	_brl_blitz_NullObjectError
_7690:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7693
	call	_brl_blitz_NullObjectError
_7693:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7695
	call	_brl_blitz_NullObjectError
_7695:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7698
	call	_brl_blitz_NullObjectError
_7698:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7700
	call	_brl_blitz_NullObjectError
_7700:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7703
	call	_brl_blitz_NullObjectError
_7703:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7705
	call	_brl_blitz_NullObjectError
_7705:
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7708
	call	_brl_blitz_NullObjectError
_7708:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7710
	call	_brl_blitz_NullObjectError
_7710:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7713
	call	_brl_blitz_NullObjectError
_7713:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7715
	call	_brl_blitz_NullObjectError
_7715:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7718
	call	_brl_blitz_NullObjectError
_7718:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7720
	call	_brl_blitz_NullObjectError
_7720:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7723
	call	_brl_blitz_NullObjectError
_7723:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7725
	call	_brl_blitz_NullObjectError
_7725:
	push	dword [__bb_TDatatype_StringDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7726
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7728
	call	_brl_blitz_NullObjectError
_7728:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7730
	call	_brl_blitz_NullObjectError
_7730:
	push	dword [__bb_TDatatype_ByteDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7733
	call	_brl_blitz_NullObjectError
_7733:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7735
	call	_brl_blitz_NullObjectError
_7735:
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7738
	call	_brl_blitz_NullObjectError
_7738:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7740
	call	_brl_blitz_NullObjectError
_7740:
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_7743
	call	_brl_blitz_NullObjectError
_7743:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7745
	call	_brl_blitz_NullObjectError
_7745:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_976
_976:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Create:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_7835
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bbStringToLower
	add	esp,4
	mov	dword [ebp-4],eax
	push	_7748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	esi,dword [__bb_TDatatype_IntDatatype]
	cmp	esi,_bbNullObject
	jne	_7753
	call	_brl_blitz_NullObjectError
_7753:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7751
	mov	esi,dword [__bb_TDatatype_FloatDatatype]
	cmp	esi,_bbNullObject
	jne	_7756
	call	_brl_blitz_NullObjectError
_7756:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7754
	mov	esi,dword [__bb_TDatatype_StringDatatype]
	cmp	esi,_bbNullObject
	jne	_7759
	call	_brl_blitz_NullObjectError
_7759:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7757
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	cmp	esi,_bbNullObject
	jne	_7762
	call	_brl_blitz_NullObjectError
_7762:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7760
	mov	esi,dword [__bb_TDatatype_ByteDatatype]
	cmp	esi,_bbNullObject
	jne	_7765
	call	_brl_blitz_NullObjectError
_7765:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7763
	mov	esi,dword [__bb_TDatatype_LongDatatype]
	cmp	esi,_bbNullObject
	jne	_7768
	call	_brl_blitz_NullObjectError
_7768:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7766
	mov	esi,dword [__bb_TDatatype_ShortDatatype]
	cmp	esi,_bbNullObject
	jne	_7771
	call	_brl_blitz_NullObjectError
_7771:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7769
	mov	esi,dword [__bb_TDatatype_DoubleDatatype]
	cmp	esi,_bbNullObject
	jne	_7774
	call	_brl_blitz_NullObjectError
_7774:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7772
	mov	eax,ebp
	push	eax
	push	_7802
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7779
	call	_brl_blitz_NullObjectError
_7779:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_489
_491:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7784
	call	_brl_blitz_NullObjectError
_7784:
	push	_bb_TDatatype
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_489
	mov	eax,ebp
	push	eax
	push	_7793
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7785
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7787
	call	_brl_blitz_NullObjectError
_7787:
	push	dword [ebp-4]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	dword [ebx+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7788
	mov	eax,ebp
	push	eax
	push	_7792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7791
	call	_brl_blitz_NullObjectError
_7791:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7788:
	call	dword [_bbOnDebugLeaveScope]
_489:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7782
	call	_brl_blitz_NullObjectError
_7782:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_491
_490:
	push	_7794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_TCompiler_Current],_bbNullObject
	jne	_7795
	mov	eax,ebp
	push	eax
	push	_7797
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_492
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_7795:
	push	_7798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Current]
	cmp	ebx,_bbNullObject
	jne	_7800
	call	_brl_blitz_NullObjectError
_7800:
	push	_118
	push	dword [ebp-4]
	push	_493
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
	push	_7801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7750
_7751:
	mov	eax,ebp
	push	eax
	push	_7806
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7805
	call	_brl_blitz_NullObjectError
_7805:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7754:
	mov	eax,ebp
	push	eax
	push	_7810
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7809
	call	_brl_blitz_NullObjectError
_7809:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7757:
	mov	eax,ebp
	push	eax
	push	_7814
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7813
	call	_brl_blitz_NullObjectError
_7813:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7760:
	mov	eax,ebp
	push	eax
	push	_7818
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_VoidDatatype]
	cmp	ebx,_bbNullObject
	jne	_7817
	call	_brl_blitz_NullObjectError
_7817:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7763:
	mov	eax,ebp
	push	eax
	push	_7822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7821
	call	_brl_blitz_NullObjectError
_7821:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7766:
	mov	eax,ebp
	push	eax
	push	_7826
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7825
	call	_brl_blitz_NullObjectError
_7825:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7769:
	mov	eax,ebp
	push	eax
	push	_7830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7827
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7829
	call	_brl_blitz_NullObjectError
_7829:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7772:
	mov	eax,ebp
	push	eax
	push	_7834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7833
	call	_brl_blitz_NullObjectError
_7833:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_980
_7750:
	mov	ebx,_bbNullObject
	jmp	_980
_980:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_CreateByNode:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_7859
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7838
	call	_brl_blitz_NullObjectError
_7838:
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_7840
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7842
	call	_brl_blitz_NullObjectError
_7842:
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-12],eax
	push	_7844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-8]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_7846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7848
	call	_brl_blitz_NullObjectError
_7848:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_7850
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_7852
	call	_brl_blitz_NullObjectError
_7852:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7857
	push	eax
	call	_bbGCFree
	add	esp,4
_7857:
	mov	dword [esi+16],ebx
	push	_7858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_983
_983:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Copy:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	push	ebp
	push	_7900
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_7863
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7865
	call	_brl_blitz_NullObjectError
_7865:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7868
	call	_brl_blitz_NullObjectError
_7868:
	mov	ebx,dword [ebx+16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7872
	push	eax
	call	_bbGCFree
	add	esp,4
_7872:
	mov	dword [esi+16],ebx
	push	_7873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7875
	call	_brl_blitz_NullObjectError
_7875:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	push	_7877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7879
	call	_brl_blitz_NullObjectError
_7879:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7882
	call	_brl_blitz_NullObjectError
_7882:
	mov	eax,dword [esi+12]
	mov	dword [ebx+12],eax
	push	_7883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7885
	call	_brl_blitz_NullObjectError
_7885:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7888
	call	_brl_blitz_NullObjectError
_7888:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_7892
	push	eax
	call	_bbGCFree
	add	esp,4
_7892:
	mov	dword [esi+24],ebx
	push	_7893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7895
	call	_brl_blitz_NullObjectError
_7895:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7898
	call	_brl_blitz_NullObjectError
_7898:
	movzx	eax,byte [esi+8]
	mov	eax,eax
	mov	byte [ebx+8],al
	push	_7899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_987
_987:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Add2Node:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_7911
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_7903
	call	_brl_blitz_NullObjectError
_7903:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7905
	call	_brl_blitz_NullObjectError
_7905:
	push	dword [ebx+16]
	push	_136
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7908
	call	_brl_blitz_NullObjectError
_7908:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7910
	call	_brl_blitz_NullObjectError
_7910:
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	mov	ebx,0
	jmp	_991
_991:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_Cast:
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
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_8035
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7914
	call	_brl_blitz_NullObjectError
_7914:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_7917
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7916
	call	_brl_blitz_NullObjectError
_7916:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7917:
	cmp	eax,0
	je	_7919
	mov	eax,ebp
	push	eax
	push	_7930
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7922
	call	_brl_blitz_NullObjectError
_7922:
	movzx	eax,byte [ebx+8]
	cmp	eax,0
	jne	_7925
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7924
	call	_brl_blitz_NullObjectError
_7924:
	movzx	eax,byte [ebx+8]
_7925:
	cmp	eax,0
	je	_7927
	mov	eax,ebp
	push	eax
	push	_7929
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_995
_7927:
	call	dword [_bbOnDebugLeaveScope]
_7919:
	push	_7931
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7933
	call	_brl_blitz_NullObjectError
_7933:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7935
	call	_brl_blitz_NullObjectError
_7935:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_7938
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7937
	call	_brl_blitz_NullObjectError
_7937:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_7938:
	cmp	eax,0
	je	_7942
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7941
	call	_brl_blitz_NullObjectError
_7941:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_7942:
	cmp	eax,0
	je	_7944
	mov	eax,ebp
	push	eax
	push	_7952
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TCompiler_Current]
	cmp	edi,_bbNullObject
	jne	_7947
	call	_brl_blitz_NullObjectError
_7947:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_7949
	call	_brl_blitz_NullObjectError
_7949:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7951
	call	_brl_blitz_NullObjectError
_7951:
	push	_118
	push	dword [ebx+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_276
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_494
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_7944:
	push	_7953
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_495
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_7955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7957
	call	_brl_blitz_NullObjectError
_7957:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7959
	call	_brl_blitz_NullObjectError
_7959:
	push	dword [ebx+16]
	push	_351
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7962
	call	_brl_blitz_NullObjectError
_7962:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7964
	call	_brl_blitz_NullObjectError
_7964:
	push	dword [ebx+16]
	push	_496
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7967
	call	_brl_blitz_NullObjectError
_7967:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7969
	call	_brl_blitz_NullObjectError
_7969:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7970
	mov	eax,ebp
	push	eax
	push	_7972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_995
_7970:
	push	_7973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7976
	call	_brl_blitz_NullObjectError
_7976:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_7979
	call	_brl_blitz_NullObjectError
_7979:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_497
_499:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7984
	call	_brl_blitz_NullObjectError
_7984:
	push	_bb_TDatatype
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-16],eax
	cmp	dword [ebp-16],_bbNullObject
	je	_497
	mov	eax,ebp
	push	eax
	push	_8005
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_7987
	call	_brl_blitz_NullObjectError
_7987:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7989
	call	_brl_blitz_NullObjectError
_7989:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7990
	mov	eax,ebp
	push	eax
	push	_8004
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7993
	call	_brl_blitz_NullObjectError
_7993:
	movzx	eax,byte [ebx+8]
	cmp	eax,0
	jne	_7996
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7995
	call	_brl_blitz_NullObjectError
_7995:
	movzx	eax,byte [ebx+8]
_7996:
	cmp	eax,0
	je	_7998
	mov	eax,ebp
	push	eax
	push	_8000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_995
_7998:
	mov	eax,ebp
	push	eax
	push	_8003
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_995
_7990:
	call	dword [_bbOnDebugLeaveScope]
_497:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7982
	call	_brl_blitz_NullObjectError
_7982:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_499
_498:
	push	_8006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8008
	call	_brl_blitz_NullObjectError
_8008:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_8011
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8010
	call	_brl_blitz_NullObjectError
_8010:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_8011:
	cmp	eax,0
	jne	_8019
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8014
	call	_brl_blitz_NullObjectError
_8014:
	push	_195
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_8017
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8016
	call	_brl_blitz_NullObjectError
_8016:
	mov	eax,dword [ebx+20]
_8017:
_8019:
	cmp	eax,0
	je	_8021
	mov	eax,ebp
	push	eax
	push	_8023
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_995
_8021:
	push	_8024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_8026
	call	_brl_blitz_NullObjectError
_8026:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_8028
	call	_brl_blitz_NullObjectError
_8028:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_8030
	call	_brl_blitz_NullObjectError
_8030:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8032
	call	_brl_blitz_NullObjectError
_8032:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8034
	call	_brl_blitz_NullObjectError
_8034:
	push	_503
	push	dword [ebx+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_501
	push	dword [esi+16]
	push	_502
	push	dword [edi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_501
	mov	eax,dword [ebp-28]
	push	dword [eax+16]
	push	_500
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax]
	call	dword [eax+140]
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_995
_995:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_CastNode:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	dword [ebp-16],_bbNullObject
	push	ebp
	push	_8048
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8038
	call	_brl_blitz_NullObjectError
_8038:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_8040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_8041
	push	ebp
	push	_8044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bb_AddChild
	add	esp,8
	push	_8043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1000
_8041:
	push	ebp
	push	_8047
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1000
_1000:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_ToString:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_8055
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8052
	call	_brl_blitz_NullObjectError
_8052:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_8054
	call	_brl_blitz_NullObjectError
_8054:
	push	_38
	push	dword [esi+20]
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
	mov	ebx,eax
	jmp	_1003
_1003:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TDatatype_GetArrayString:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],0
	push	ebp
	push	_8067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_8058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8061
	call	_brl_blitz_NullObjectError
_8061:
	mov	ebx,dword [ebx+20]
	jmp	_8062
_506:
	push	ebp
	push	_8065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_507
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_504:
	add	dword [ebp-12],1
_8062:
	cmp	dword [ebp-12],ebx
	jle	_506
_505:
	push	_8066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_1006
_1006:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_8073
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TOperator
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	edx,_bbEmptyArray
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	push	ebp
	push	_8072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_1009
_1009:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_1012:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_8076
	push	eax
	call	_bbGCFree
	add	esp,4
_8076:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_8078
	push	eax
	call	_bbGCFree
	add	esp,4
_8078:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_8080
	push	eax
	call	_bbGCFree
	add	esp,4
_8080:
	mov	eax,0
	jmp	_8074
_8074:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_AddDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,ebp
	push	eax
	push	_8106
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8083
	call	_brl_blitz_NullObjectError
_8083:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_8086
	call	_brl_blitz_NullObjectError
_8086:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8088
	call	_brl_blitz_NullObjectError
_8088:
	mov	eax,dword [ebx+16]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+16]
	push	_547
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_8092
	push	eax
	call	_bbGCFree
	add	esp,4
_8092:
	mov	dword [edi+16],ebx
	push	_8093
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8095
	call	_brl_blitz_NullObjectError
_8095:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8098
	call	_brl_blitz_NullObjectError
_8098:
	mov	eax,dword [ebx+16]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_8100
	call	_brl_blitz_ArrayBoundsError
_8100:
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_8105
	push	eax
	call	_bbGCFree
	add	esp,4
_8105:
	mov	dword [esi+24],ebx
	mov	ebx,0
	jmp	_1016
_1016:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_CanMatch:
	push	ebp
	mov	ebp,esp
	sub	esp,44
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
	mov	eax,ebp
	push	eax
	push	_8145
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8110
	call	_brl_blitz_NullObjectError
_8110:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	add	eax,24
	mov	dword [ebp-36],eax
	mov	edx,dword [ebp-36]
	mov	eax,dword [ebp-40]
	add	edx,dword [eax+16]
	mov	dword [ebp-44],edx
	jmp	_508
_510:
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax]
	mov	dword [ebp-16],eax
	add	dword [ebp-36],4
	cmp	dword [ebp-16],_bbNullObject
	je	_508
	mov	eax,ebp
	push	eax
	push	_8143
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_8117
	call	_brl_blitz_NullObjectError
_8117:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8119
	call	_brl_blitz_NullObjectError
_8119:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8120
	mov	eax,ebp
	push	eax
	push	_8142
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8121
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8124
	call	_brl_blitz_NullObjectError
_8124:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-28]
	add	eax,24
	mov	edi,eax
	mov	edx,edi
	mov	eax,dword [ebp-28]
	add	edx,dword [eax+16]
	mov	dword [ebp-32],edx
	jmp	_511
_513:
	mov	eax,dword [edi]
	mov	dword [ebp-20],eax
	add	edi,4
	cmp	dword [ebp-20],_bbNullObject
	je	_511
	mov	eax,ebp
	push	eax
	push	_8141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_8130
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_8130:
	cmp	eax,0
	je	_8136
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8133
	call	_brl_blitz_NullObjectError
_8133:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8135
	call	_brl_blitz_NullObjectError
_8135:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_8136:
	cmp	eax,0
	je	_8138
	mov	eax,ebp
	push	eax
	push	_8140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1021
_8138:
	call	dword [_bbOnDebugLeaveScope]
_511:
	cmp	edi,dword [ebp-32]
	jne	_513
_512:
	call	dword [_bbOnDebugLeaveScope]
_8120:
	call	dword [_bbOnDebugLeaveScope]
_508:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-36],eax
	jne	_510
_509:
	push	_8144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	jmp	_1021
_1021:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-24]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_ParseDatatype:
	push	ebp
	mov	ebp,esp
	sub	esp,60
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	mov	dword [ebp-24],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_8259
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8151
	call	_brl_blitz_NullObjectError
_8151:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-52]
	add	eax,24
	mov	dword [ebp-48],eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-52]
	add	edx,dword [eax+16]
	mov	dword [ebp-60],edx
	jmp	_514
_516:
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax]
	mov	dword [ebp-20],eax
	add	dword [ebp-48],4
	cmp	dword [ebp-20],_bbNullObject
	je	_514
	mov	eax,ebp
	push	eax
	push	_8245
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_8158
	call	_brl_blitz_NullObjectError
_8158:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8160
	call	_brl_blitz_NullObjectError
_8160:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8162
	call	_brl_blitz_NullObjectError
_8162:
	push	dword [esi+16]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8163
	mov	eax,ebp
	push	eax
	push	_8244
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8167
	call	_brl_blitz_NullObjectError
_8167:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	add	eax,24
	mov	edi,eax
	mov	edx,edi
	mov	eax,dword [ebp-40]
	add	edx,dword [eax+16]
	mov	dword [ebp-44],edx
	jmp	_517
_519:
	mov	eax,dword [edi]
	mov	dword [ebp-24],eax
	add	edi,4
	cmp	dword [ebp-24],_bbNullObject
	je	_517
	mov	eax,ebp
	push	eax
	push	_8243
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_8174
	call	_brl_blitz_NullObjectError
_8174:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8176
	call	_brl_blitz_NullObjectError
_8176:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8178
	call	_brl_blitz_NullObjectError
_8178:
	push	dword [esi+16]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8179
	mov	eax,ebp
	push	eax
	push	_8240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_8182
	call	_brl_blitz_NullObjectError
_8182:
	push	_4
	push	_bbNullObject
	push	_282
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-28],eax
	push	_8184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_8186
	call	_brl_blitz_NullObjectError
_8186:
	push	_4
	push	_bbNullObject
	push	_284
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	push	_8188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_8190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8192
	call	_brl_blitz_NullObjectError
_8192:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8194
	call	_brl_blitz_NullObjectError
_8194:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8196
	call	_brl_blitz_NullObjectError
_8196:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8198
	call	_brl_blitz_NullObjectError
_8198:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jle	_8199
	mov	eax,ebp
	push	eax
	push	_8201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_8202
_8199:
	mov	eax,ebp
	push	eax
	push	_8218
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8205
	call	_brl_blitz_NullObjectError
_8205:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8207
	call	_brl_blitz_NullObjectError
_8207:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8209
	call	_brl_blitz_NullObjectError
_8209:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8211
	call	_brl_blitz_NullObjectError
_8211:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jge	_8212
	mov	eax,ebp
	push	eax
	push	_8214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_8215
_8212:
	mov	eax,ebp
	push	eax
	push	_8217
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
_8215:
	call	dword [_bbOnDebugLeaveScope]
_8202:
	push	_8219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8221
	call	_brl_blitz_NullObjectError
_8221:
	mov	edi,dword [ebx+8]
	cmp	edi,_bbNullObject
	jne	_8223
	call	_brl_blitz_NullObjectError
_8223:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8225
	call	_brl_blitz_NullObjectError
_8225:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8227
	call	_brl_blitz_NullObjectError
_8227:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-28]
	call	_bb_AddChild
	add	esp,8
	push	_8228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8230
	call	_brl_blitz_NullObjectError
_8230:
	mov	edi,dword [ebx+8]
	cmp	edi,_bbNullObject
	jne	_8232
	call	_brl_blitz_NullObjectError
_8232:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8234
	call	_brl_blitz_NullObjectError
_8234:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8236
	call	_brl_blitz_NullObjectError
_8236:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	push	eax
	push	dword [ebp-32]
	call	_bb_AddChild
	add	esp,8
	push	_8237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8239
	call	_brl_blitz_NullObjectError
_8239:
	mov	ebx,dword [ebx+8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1027
_8179:
	call	dword [_bbOnDebugLeaveScope]
_517:
	cmp	edi,dword [ebp-44]
	jne	_519
_518:
	call	dword [_bbOnDebugLeaveScope]
_8163:
	call	dword [_bbOnDebugLeaveScope]
_514:
	mov	eax,dword [ebp-60]
	cmp	dword [ebp-48],eax
	jne	_516
_515:
	push	_8246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TCompiler_Current]
	cmp	edi,_bbNullObject
	jne	_8248
	call	_brl_blitz_NullObjectError
_8248:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_8250
	call	_brl_blitz_NullObjectError
_8250:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8252
	call	_brl_blitz_NullObjectError
_8252:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8254
	call	_brl_blitz_NullObjectError
_8254:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8256
	call	_brl_blitz_NullObjectError
_8256:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8258
	call	_brl_blitz_NullObjectError
_8258:
	push	_277
	push	dword [esi+16]
	push	_276
	push	dword [ebx+16]
	push	_521
	mov	eax,dword [ebp-56]
	push	dword [eax+12]
	push	_520
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+140]
	add	esp,8
	mov	ebx,_bbNullObject
	jmp	_1027
_1027:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_Init:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],0
	mov	eax,ebp
	push	eax
	push	_8394
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	5
	push	_8261
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TOperator_Priority]
	dec	dword [eax+4]
	jnz	_8265
	push	eax
	call	_bbGCFree
	add	esp,4
_8265:
	mov	dword [__bb_TOperator_Priority],ebx
	push	_8266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	mov	eax,dword [__bb_TOperator_Priority]
	mov	edi,dword [eax+20]
	jmp	_8268
_524:
	mov	eax,ebp
	push	eax
	push	_8278
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_8272
	call	_brl_blitz_ArrayBoundsError
_8272:
	mov	eax,dword [__bb_TOperator_Priority]
	shl	ebx,2
	add	eax,ebx
	mov	esi,eax
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_8277
	push	eax
	call	_bbGCFree
	add	esp,4
_8277:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_522:
	add	dword [ebp-4],1
_8268:
	cmp	dword [ebp-4],edi
	jl	_524
_523:
	push	_8279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_525
	push	_525
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8287
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_526
	push	_526
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_103
	push	_527
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_528
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_101
	push	_529
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_102
	push	_530
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_547
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
	push	_99
	push	_531
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_547
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
	push	_100
	push	_532
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8345
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_533
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_547
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
	push	_92
	push	_534
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_535
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_94
	push	_281
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_536
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_547
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
	push	_537
	push	4
	call	dword [_bb_TOperator+64]
	add	esp,16
	mov	ebx,0
	jmp	_1029
_1029:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_NewOperator:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	eax,dword [ebp+16]
	mov	dword [ebp-12],eax
	mov	eax,dword [ebp+20]
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_8426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_8397
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8399
	call	_brl_blitz_NullObjectError
_8399:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_8404
	push	eax
	call	_bbGCFree
	add	esp,4
_8404:
	mov	dword [esi+8],ebx
	push	_8405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8407
	call	_brl_blitz_NullObjectError
_8407:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_8412
	push	eax
	call	_bbGCFree
	add	esp,4
_8412:
	mov	dword [esi+12],ebx
	push	_8413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8415
	call	_brl_blitz_NullObjectError
_8415:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_8420
	push	eax
	call	_bbGCFree
	add	esp,4
_8420:
	mov	dword [esi+16],ebx
	push	_8421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_8423
	call	_brl_blitz_ArrayBoundsError
_8423:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_8425
	call	_brl_blitz_NullObjectError
_8425:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_1035
_1035:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TOperator_GetByName:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_8454
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	eax,dword [__bb_TOperator_Priority]
	mov	dword [ebp-20],eax
	mov	eax,dword [ebp-20]
	add	eax,24
	mov	dword [ebp-16],eax
	mov	edx,dword [ebp-16]
	mov	eax,dword [ebp-20]
	add	edx,dword [eax+16]
	mov	dword [ebp-24],edx
	jmp	_538
_540:
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax]
	mov	dword [ebp-8],eax
	add	dword [ebp-16],4
	cmp	dword [ebp-8],_bbNullObject
	je	_538
	mov	eax,ebp
	push	eax
	push	_8451
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [ebp-8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_8437
	call	_brl_blitz_NullObjectError
_8437:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_541
_543:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_8442
	call	_brl_blitz_NullObjectError
_8442:
	push	_bb_TOperator
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_541
	mov	eax,ebp
	push	eax
	push	_8449
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8445
	call	_brl_blitz_NullObjectError
_8445:
	push	dword [ebp-4]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8446
	mov	eax,ebp
	push	eax
	push	_8448
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1038
_8446:
	call	dword [_bbOnDebugLeaveScope]
_541:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_8440
	call	_brl_blitz_NullObjectError
_8440:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_543
_542:
	call	dword [_bbOnDebugLeaveScope]
_538:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-16],eax
	jne	_540
_539:
	push	_8453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_1038
_1038:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_1063:
	dd	0
_1062:
	db	"TCompiler_CPB",0
	align	4
_1061:
	dd	1
	dd	_1062
	dd	0
_545:
	db	"TIdentifier",0
_546:
	db	"Datatype",0
_547:
	db	":TDatatype",0
_548:
	db	"Name",0
_549:
	db	"$",0
_550:
	db	"New",0
_551:
	db	"()i",0
_552:
	db	"Delete",0
_553:
	db	"Create",0
_554:
	db	"($,:TDatatype):TIdentifier",0
_555:
	db	"ToNode",0
_556:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_544:
	dd	2
	dd	_545
	dd	3
	dd	_546
	dd	_547
	dd	8
	dd	3
	dd	_548
	dd	_549
	dd	12
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_553
	dd	_554
	dd	48
	dd	6
	dd	_555
	dd	_556
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_544
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
_558:
	db	"TIdentifierFunction",0
_559:
	db	"Gen",0
_560:
	db	"b",0
_561:
	db	"RealName",0
_562:
	db	"ParamList",0
_563:
	db	":brl.linkedlist.TList",0
_564:
	db	"UserFunc",0
_565:
	db	"Used",0
_566:
	db	"Childs",0
_567:
	db	"OWner",0
_568:
	db	":TTypeTemplate",0
_569:
	db	"Datatypes",0
_570:
	db	"use",0
_571:
	db	"()b",0
_572:
	db	"AddParameter",0
_573:
	db	"($,:TDatatype,$)i",0
_574:
	db	"GenName",0
_575:
	db	"Copy",0
_576:
	db	"():TIdentifierFunction",0
	align	4
_557:
	dd	2
	dd	_558
	dd	3
	dd	_559
	dd	_560
	dd	16
	dd	3
	dd	_561
	dd	_549
	dd	20
	dd	3
	dd	_562
	dd	_563
	dd	24
	dd	3
	dd	_564
	dd	_560
	dd	28
	dd	3
	dd	_565
	dd	_560
	dd	29
	dd	3
	dd	_566
	dd	_563
	dd	32
	dd	3
	dd	_567
	dd	_568
	dd	36
	dd	3
	dd	_569
	dd	_549
	dd	40
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_570
	dd	_571
	dd	56
	dd	6
	dd	_572
	dd	_573
	dd	60
	dd	6
	dd	_574
	dd	_551
	dd	64
	dd	6
	dd	_575
	dd	_576
	dd	68
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_557
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
_578:
	db	"TIdentifierVariable",0
_579:
	db	"Info",0
_580:
	db	":Object",0
_581:
	db	"Owner",0
	align	4
_577:
	dd	2
	dd	_578
	dd	3
	dd	_579
	dd	_580
	dd	16
	dd	3
	dd	_581
	dd	_568
	dd	20
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_577
	dd	24
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
_583:
	db	"TTypeField",0
_584:
	db	"ISPRIVATE",0
	align	4
_585:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_586:
	db	"ISPROTECTED",0
	align	4
_587:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	50
_588:
	db	"ISPUBLIC",0
	align	4
_589:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	51
_590:
	db	"Mode",0
_591:
	db	"i",0
_592:
	db	"Create2",0
_593:
	db	"($,:TDatatype,i):TIdentifier",0
	align	4
_582:
	dd	2
	dd	_583
	dd	1
	dd	_584
	dd	_560
	dd	_585
	dd	1
	dd	_586
	dd	_560
	dd	_587
	dd	1
	dd	_588
	dd	_560
	dd	_589
	dd	3
	dd	_590
	dd	_591
	dd	24
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_592
	dd	_593
	dd	56
	dd	0
	align	4
_bb_TTypeField:
	dd	_bb_TIdentifierVariable
	dd	_bbObjectFree
	dd	_582
	dd	28
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
_595:
	db	"TTypeMethod",0
_596:
	db	"ISNORMAL",0
	align	4
_597:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_598:
	db	"ISOVERRIDE",0
_599:
	db	"ISVIRTUAL",0
_600:
	db	"ISABSTRACT",0
_601:
	db	"ISFINAL",0
	align	4
_602:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	52
_603:
	db	"ISSTATIC",0
	align	4
_604:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	53
_605:
	db	"State",0
_606:
	db	"Func",0
_607:
	db	":TIdentifierFunction",0
_608:
	db	"From",0
_609:
	db	"VirtualID",0
_610:
	db	"($,:TTypeTemplate,b,b,i):TTypeMethod",0
	align	4
_594:
	dd	2
	dd	_595
	dd	1
	dd	_596
	dd	_560
	dd	_597
	dd	1
	dd	_598
	dd	_560
	dd	_585
	dd	1
	dd	_599
	dd	_560
	dd	_587
	dd	1
	dd	_600
	dd	_560
	dd	_589
	dd	1
	dd	_601
	dd	_560
	dd	_602
	dd	1
	dd	_603
	dd	_560
	dd	_604
	dd	1
	dd	_584
	dd	_560
	dd	_585
	dd	1
	dd	_586
	dd	_560
	dd	_587
	dd	1
	dd	_588
	dd	_560
	dd	_589
	dd	3
	dd	_590
	dd	_591
	dd	8
	dd	3
	dd	_605
	dd	_560
	dd	12
	dd	3
	dd	_606
	dd	_607
	dd	16
	dd	3
	dd	_548
	dd	_549
	dd	20
	dd	3
	dd	_608
	dd	_568
	dd	24
	dd	3
	dd	_609
	dd	_591
	dd	28
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_553
	dd	_610
	dd	48
	dd	0
	align	4
_bb_TTypeMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_594
	dd	32
	dd	__bb_TTypeMethod_New
	dd	__bb_TTypeMethod_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TTypeMethod_Create
_1041:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_Identifier.bmx",0
	align	4
_1040:
	dd	_1041
	dd	153
	dd	2
	align	4
__bb_TTypeTemplate_ObjectTemplate:
	dd	_bbNullObject
_612:
	db	"TTypeTemplate",0
_613:
	db	"Fields",0
_614:
	db	"Methods",0
_615:
	db	"SuperType",0
_616:
	db	"LastID",0
_617:
	db	"VIDMap",0
_618:
	db	":brl.map.TMap",0
_619:
	db	"Init",0
_620:
	db	"GetFields",0
_621:
	db	"(i):brl.linkedlist.TList",0
_622:
	db	"GetMethods",0
_623:
	db	"AddField",0
_624:
	db	"($,:TDatatype,:bah.libxml.TxmlNode,i)i",0
_625:
	db	"AddMethod",0
_626:
	db	"(:TIdentifierFunction,$,:TDatatype,b,i):TTypeMethod",0
_627:
	db	"():bah.libxml.TxmlNode",0
	align	4
_611:
	dd	2
	dd	_612
	dd	3
	dd	_590
	dd	_591
	dd	8
	dd	3
	dd	_613
	dd	_563
	dd	12
	dd	3
	dd	_614
	dd	_563
	dd	16
	dd	3
	dd	_548
	dd	_549
	dd	20
	dd	3
	dd	_615
	dd	_568
	dd	24
	dd	3
	dd	_546
	dd	_547
	dd	28
	dd	3
	dd	_616
	dd	_591
	dd	32
	dd	3
	dd	_617
	dd	_618
	dd	36
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	7
	dd	_619
	dd	_551
	dd	48
	dd	6
	dd	_620
	dd	_621
	dd	52
	dd	6
	dd	_622
	dd	_621
	dd	56
	dd	6
	dd	_623
	dd	_624
	dd	60
	dd	6
	dd	_625
	dd	_626
	dd	64
	dd	6
	dd	_555
	dd	_627
	dd	68
	dd	0
	align	4
_bb_TTypeTemplate:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_611
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
_629:
	db	"TParameter",0
_630:
	db	"Pre",0
_631:
	db	"Node",0
_632:
	db	":bah.libxml.TxmlNode",0
_633:
	db	"($,:TDatatype,$):TParameter",0
	align	4
_628:
	dd	2
	dd	_629
	dd	3
	dd	_548
	dd	_549
	dd	8
	dd	3
	dd	_546
	dd	_547
	dd	12
	dd	3
	dd	_630
	dd	_549
	dd	16
	dd	3
	dd	_631
	dd	_632
	dd	20
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_553
	dd	_633
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_628
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
_1043:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_CPB.bmx",0
	align	4
_1042:
	dd	_1043
	dd	7
	dd	2
	align	4
__bb_TCompiler_Current:
	dd	_bbNullObject
	align	4
_1044:
	dd	_1043
	dd	8
	dd	2
	align	4
_1046:
	dd	0
	align	4
__bb_TCompiler_Templates:
	dd	_bbNullObject
_635:
	db	"TCompiler",0
_636:
	db	"Token",0
_637:
	db	"GlobalVarIdentifier",0
_638:
	db	"FunctionIdentifier",0
_639:
	db	"LocalVarIdentifier",0
_640:
	db	"[]:brl.linkedlist.TList",0
_641:
	db	"CurrentMode",0
_642:
	db	"CurrentType",0
_643:
	db	"Lines",0
_644:
	db	"[]$",0
_645:
	db	"XMLFile",0
_646:
	db	":bah.libxml.TxmlDoc",0
_647:
	db	"CurrentRoot",0
_648:
	db	"CurrentLineNode",0
_649:
	db	"CurrentToken",0
_650:
	db	"CurrentLink",0
_651:
	db	":brl.linkedlist.TLink",0
_652:
	db	"CurrentLine",0
_653:
	db	"LastFunc",0
_654:
	db	"FUnctionDatatype",0
_655:
	db	"AnyError",0
_656:
	db	"ScopeMode",0
_657:
	db	"LoadFunction",0
_658:
	db	"($)i",0
_659:
	db	"LoadHeaders",0
_660:
	db	"Tokenizer",0
_661:
	db	"Analyser",0
_662:
	db	"Parser",0
_663:
	db	"(b)i",0
_664:
	db	"InternBlock",0
_665:
	db	"(:bah.libxml.TxmlNode)i",0
_666:
	db	"Block",0
_667:
	db	"Expression",0
_668:
	db	"(i):TRecursive",0
_669:
	db	"Factor",0
_670:
	db	"():TRecursive",0
_671:
	db	"Funk",0
_672:
	db	"(:bah.libxml.TxmlNode):TRecursive",0
_673:
	db	"Keyword",0
_674:
	db	"Variable",0
_675:
	db	"(b):TRecursive",0
_676:
	db	"ParseType",0
_677:
	db	"(:TRecursive,:brl.linkedlist.TList):TRecursive",0
_678:
	db	"ParseArray",0
_679:
	db	"(:TDatatype):brl.linkedlist.TList",0
_680:
	db	"RegisterVariable",0
_681:
	db	"($,:TDatatype):bah.libxml.TxmlNode",0
_682:
	db	"GetVariable",0
_683:
	db	"($):TIdentifierVariable",0
_684:
	db	"GetVariablelist",0
_685:
	db	"():brl.linkedlist.TList",0
_686:
	db	"IsToken",0
_687:
	db	"($)b",0
_688:
	db	"ValidDatatype",0
_689:
	db	"Match",0
_690:
	db	"($)$",0
_691:
	db	"GetNext",0
_692:
	db	"()$",0
_693:
	db	"GetBefore",0
_694:
	db	"GetCurrent",0
_695:
	db	"Error",0
_696:
	db	"Warning",0
	align	4
_634:
	dd	2
	dd	_635
	dd	3
	dd	_636
	dd	_563
	dd	8
	dd	3
	dd	_637
	dd	_563
	dd	12
	dd	3
	dd	_638
	dd	_563
	dd	16
	dd	3
	dd	_639
	dd	_640
	dd	20
	dd	3
	dd	_641
	dd	_591
	dd	24
	dd	3
	dd	_642
	dd	_549
	dd	28
	dd	3
	dd	_643
	dd	_644
	dd	32
	dd	3
	dd	_645
	dd	_646
	dd	36
	dd	3
	dd	_647
	dd	_632
	dd	40
	dd	3
	dd	_648
	dd	_632
	dd	44
	dd	3
	dd	_649
	dd	_549
	dd	48
	dd	3
	dd	_650
	dd	_651
	dd	52
	dd	3
	dd	_652
	dd	_591
	dd	56
	dd	3
	dd	_653
	dd	_632
	dd	60
	dd	3
	dd	_654
	dd	_547
	dd	64
	dd	3
	dd	_655
	dd	_560
	dd	68
	dd	3
	dd	_656
	dd	_591
	dd	72
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_657
	dd	_658
	dd	48
	dd	6
	dd	_659
	dd	_658
	dd	52
	dd	6
	dd	_660
	dd	_658
	dd	56
	dd	6
	dd	_661
	dd	_551
	dd	60
	dd	6
	dd	_662
	dd	_663
	dd	64
	dd	6
	dd	_664
	dd	_665
	dd	68
	dd	6
	dd	_666
	dd	_551
	dd	72
	dd	6
	dd	_667
	dd	_668
	dd	76
	dd	6
	dd	_669
	dd	_670
	dd	80
	dd	6
	dd	_671
	dd	_672
	dd	84
	dd	6
	dd	_673
	dd	_670
	dd	88
	dd	6
	dd	_674
	dd	_675
	dd	92
	dd	6
	dd	_676
	dd	_677
	dd	96
	dd	6
	dd	_678
	dd	_679
	dd	100
	dd	6
	dd	_680
	dd	_681
	dd	104
	dd	6
	dd	_682
	dd	_683
	dd	108
	dd	6
	dd	_684
	dd	_685
	dd	112
	dd	6
	dd	_686
	dd	_687
	dd	116
	dd	6
	dd	_688
	dd	_687
	dd	120
	dd	6
	dd	_689
	dd	_690
	dd	124
	dd	6
	dd	_691
	dd	_692
	dd	128
	dd	6
	dd	_693
	dd	_692
	dd	132
	dd	6
	dd	_694
	dd	_692
	dd	136
	dd	6
	dd	_695
	dd	_658
	dd	140
	dd	6
	dd	_696
	dd	_658
	dd	144
	dd	0
	align	4
_bb_TCompiler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_634
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
_698:
	db	"TRecursive",0
_699:
	db	"Positions",0
_700:
	db	"(:bah.libxml.TxmlNode,:TDatatype,:Object,:brl.linkedlist.TList):TRecursive",0
_701:
	db	"GetDatatype",0
_702:
	db	"():TDatatype",0
_703:
	db	"GetNode",0
	align	4
_697:
	dd	2
	dd	_698
	dd	3
	dd	_546
	dd	_547
	dd	8
	dd	3
	dd	_631
	dd	_632
	dd	12
	dd	3
	dd	_579
	dd	_580
	dd	16
	dd	3
	dd	_699
	dd	_580
	dd	20
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_553
	dd	_700
	dd	48
	dd	6
	dd	_701
	dd	_702
	dd	52
	dd	6
	dd	_703
	dd	_627
	dd	56
	dd	0
	align	4
_bb_TRecursive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_697
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
_1048:
	dd	_1043
	dd	1721
	dd	2
	align	4
__bb_TDatatype_IntDatatype:
	dd	_bbNullObject
	align	4
_1049:
	dd	_1043
	dd	1722
	dd	2
	align	4
__bb_TDatatype_FloatDatatype:
	dd	_bbNullObject
	align	4
_1050:
	dd	_1043
	dd	1723
	dd	2
	align	4
__bb_TDatatype_StringDatatype:
	dd	_bbNullObject
	align	4
_1051:
	dd	_1043
	dd	1724
	dd	2
	align	4
__bb_TDatatype_ByteDatatype:
	dd	_bbNullObject
	align	4
_1052:
	dd	_1043
	dd	1725
	dd	2
	align	4
__bb_TDatatype_LongDatatype:
	dd	_bbNullObject
	align	4
_1053:
	dd	_1043
	dd	1726
	dd	2
	align	4
__bb_TDatatype_DoubleDatatype:
	dd	_bbNullObject
	align	4
_1054:
	dd	_1043
	dd	1727
	dd	2
	align	4
__bb_TDatatype_ShortDatatype:
	dd	_bbNullObject
	align	4
_1055:
	dd	_1043
	dd	1728
	dd	2
	align	4
__bb_TDatatype_VoidDatatype:
	dd	_bbNullObject
	align	4
_1056:
	dd	_1043
	dd	1729
	dd	2
	align	4
__bb_TDatatype_NullDatatype:
	dd	_bbNullObject
	align	4
_1057:
	dd	_1043
	dd	1730
	dd	2
	align	4
__bb_TDatatype_UserDefinedDatatypes:
	dd	_bbNullObject
_705:
	db	"TDatatype",0
_706:
	db	"IsNotPrimitive",0
_707:
	db	"Prio",0
_708:
	db	"IsArray",0
_709:
	db	"CanCastTo",0
_710:
	db	"($,i):TDatatype",0
_711:
	db	"CreateByNode",0
_712:
	db	"(:bah.libxml.TxmlNode):TDatatype",0
_713:
	db	"(i):TDatatype",0
_714:
	db	"Add2Node",0
_715:
	db	"Cast",0
_716:
	db	"(:TDatatype):bah.libxml.TxmlNode",0
_717:
	db	"CastNode",0
_718:
	db	"(:TDatatype,:bah.libxml.TxmlNode):bah.libxml.TxmlNode",0
_719:
	db	"ToString",0
_720:
	db	"GetArrayString",0
	align	4
_704:
	dd	2
	dd	_705
	dd	3
	dd	_706
	dd	_560
	dd	8
	dd	3
	dd	_707
	dd	_591
	dd	12
	dd	3
	dd	_548
	dd	_549
	dd	16
	dd	3
	dd	_708
	dd	_591
	dd	20
	dd	3
	dd	_709
	dd	_563
	dd	24
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	7
	dd	_619
	dd	_551
	dd	48
	dd	7
	dd	_553
	dd	_710
	dd	52
	dd	7
	dd	_711
	dd	_712
	dd	56
	dd	6
	dd	_575
	dd	_713
	dd	60
	dd	6
	dd	_714
	dd	_665
	dd	64
	dd	6
	dd	_715
	dd	_716
	dd	68
	dd	6
	dd	_717
	dd	_718
	dd	72
	dd	6
	dd	_719
	dd	_692
	dd	24
	dd	6
	dd	_720
	dd	_692
	dd	76
	dd	0
	align	4
_bb_TDatatype:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_704
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
_1060:
	dd	_1043
	dd	1928
	dd	2
	align	4
__bb_TOperator_Priority:
	dd	_bbEmptyArray
_722:
	db	"TOperator",0
_723:
	db	"Operator",0
_724:
	db	"[]:TDatatype",0
_725:
	db	"AddDatatype",0
_726:
	db	"(:TDatatype)i",0
_727:
	db	"CanMatch",0
_728:
	db	"(:TDatatype,:TDatatype)b",0
_729:
	db	"ParseDatatype",0
_730:
	db	"(:TRecursive,:TRecursive,:bah.libxml.TxmlNode):TDatatype",0
_731:
	db	"NewOperator",0
_732:
	db	"(i,$,$,[]:TDatatype)i",0
_733:
	db	"GetByName",0
_734:
	db	"($):TOperator",0
	align	4
_721:
	dd	2
	dd	_722
	dd	3
	dd	_548
	dd	_549
	dd	8
	dd	3
	dd	_723
	dd	_549
	dd	12
	dd	3
	dd	_546
	dd	_724
	dd	16
	dd	6
	dd	_550
	dd	_551
	dd	16
	dd	6
	dd	_552
	dd	_551
	dd	20
	dd	6
	dd	_725
	dd	_726
	dd	48
	dd	6
	dd	_727
	dd	_728
	dd	52
	dd	6
	dd	_729
	dd	_730
	dd	56
	dd	7
	dd	_619
	dd	_551
	dd	60
	dd	7
	dd	_731
	dd	_732
	dd	64
	dd	7
	dd	_733
	dd	_734
	dd	68
	dd	0
	align	4
_bb_TOperator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_721
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
_1069:
	db	"Self",0
_1070:
	db	":TIdentifier",0
	align	4
_1068:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1070
	dd	-4
	dd	0
	align	4
_1067:
	dd	3
	dd	0
	dd	0
_1094:
	db	"N",0
_1095:
	db	"Typ",0
	align	4
_1093:
	dd	1
	dd	_553
	dd	2
	dd	_1069
	dd	_1070
	dd	-4
	dd	2
	dd	_1094
	dd	_549
	dd	-8
	dd	2
	dd	_1095
	dd	_547
	dd	-12
	dd	0
	align	4
_1076:
	dd	_1041
	dd	8
	dd	3
	align	4
_1084:
	dd	_1041
	dd	9
	dd	3
	align	4
_1092:
	dd	_1041
	dd	10
	dd	3
_1180:
	db	"Infos",0
	align	4
_1179:
	dd	1
	dd	_555
	dd	2
	dd	_1069
	dd	_1070
	dd	-8
	dd	2
	dd	_1180
	dd	_563
	dd	-12
	dd	0
	align	4
_1096:
	dd	_1041
	dd	13
	dd	3
_1166:
	db	"Info2",0
_1167:
	db	"node",0
_1168:
	db	"List2",0
	align	4
_1165:
	dd	3
	dd	0
	dd	2
	dd	_1166
	dd	_560
	dd	-4
	dd	2
	dd	_1167
	dd	_632
	dd	-16
	dd	2
	dd	_591
	dd	_591
	dd	-20
	dd	2
	dd	_1168
	dd	_563
	dd	-24
	dd	0
	align	4
_1104:
	dd	_1041
	dd	14
	dd	4
	align	4
_1106:
	dd	_1041
	dd	16
	dd	4
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_1108:
	dd	_1041
	dd	19
	dd	4
	align	4
_1113:
	dd	_1041
	dd	20
	dd	4
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
_1122:
	dd	_1041
	dd	21
	dd	4
	align	4
_1124:
	dd	_1041
	dd	23
	dd	4
	align	4
_1126:
	dd	_1041
	dd	24
	dd	4
_1140:
	db	"Tmp",0
	align	4
_1139:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-28
	dd	0
	align	4
_1136:
	dd	_1041
	dd	25
	dd	5
	align	4
_1141:
	dd	_1041
	dd	27
	dd	4
	align	4
_1155:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-32
	dd	0
	align	4
_1151:
	dd	_1041
	dd	28
	dd	5
	align	4
_1152:
	dd	_1041
	dd	29
	dd	5
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_1156:
	dd	_1041
	dd	55
	dd	4
	align	4
_1163:
	dd	3
	dd	0
	dd	0
	align	4
_1162:
	dd	_1041
	dd	55
	dd	32
	align	4
_1164:
	dd	_1041
	dd	56
	dd	4
	align	4
_1178:
	dd	3
	dd	0
	dd	2
	dd	_1167
	dd	_632
	dd	-36
	dd	0
	align	4
_1170:
	dd	_1041
	dd	58
	dd	4
	align	4
_1172:
	dd	_1041
	dd	59
	dd	4
	align	4
_1177:
	dd	_1041
	dd	60
	dd	4
	align	4
_1187:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_607
	dd	-4
	dd	0
	align	4
_1186:
	dd	3
	dd	0
	dd	0
	align	4
_1203:
	dd	1
	dd	_570
	dd	2
	dd	_1069
	dd	_607
	dd	-4
	dd	0
	align	4
_1199:
	dd	_1041
	dd	76
	dd	3
_1214:
	db	"DataType",0
_1215:
	db	"P",0
_1216:
	db	":TParameter",0
	align	4
_1213:
	dd	1
	dd	_572
	dd	2
	dd	_1069
	dd	_607
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_1214
	dd	_547
	dd	-12
	dd	2
	dd	_630
	dd	_549
	dd	-16
	dd	2
	dd	_1215
	dd	_1216
	dd	-20
	dd	0
	align	4
_1204:
	dd	_1041
	dd	79
	dd	3
	align	4
_1208:
	dd	_1041
	dd	80
	dd	3
	align	4
_1282:
	dd	1
	dd	_574
	dd	2
	dd	_1069
	dd	_607
	dd	-4
	dd	0
	align	4
_1217:
	dd	_1041
	dd	83
	dd	3
	align	4
_1281:
	dd	3
	dd	0
	dd	0
	align	4
_1221:
	dd	_1041
	dd	84
	dd	4
	align	4
_1225:
	dd	_1041
	dd	85
	dd	4
	align	4
_1235:
	dd	_1041
	dd	86
	dd	4
	align	4
_1243:
	dd	_1041
	dd	87
	dd	4
_1280:
	db	"Param",0
	align	4
_1279:
	dd	3
	dd	0
	dd	2
	dd	_1280
	dd	_1216
	dd	-8
	dd	0
	align	4
_1255:
	dd	_1041
	dd	88
	dd	5
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_1267:
	dd	_1041
	dd	89
	dd	5
	align	4
_1310:
	dd	1
	dd	_575
	dd	2
	dd	_1069
	dd	_607
	dd	-4
	dd	2
	dd	_575
	dd	_607
	dd	-8
	dd	0
	align	4
_1283:
	dd	_1041
	dd	94
	dd	3
	align	4
_1291:
	dd	_1041
	dd	95
	dd	3
	align	4
_1303:
	dd	_1041
	dd	96
	dd	3
	align	4
_1309:
	dd	_1041
	dd	98
	dd	3
_1315:
	db	":TIdentifierVariable",0
	align	4
_1314:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1315
	dd	-4
	dd	0
	align	4
_1313:
	dd	3
	dd	0
	dd	0
_1323:
	db	":TTypeField",0
	align	4
_1322:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1323
	dd	-4
	dd	0
	align	4
_1321:
	dd	3
	dd	0
	dd	0
	align	4
_1346:
	dd	1
	dd	_592
	dd	2
	dd	_1069
	dd	_1323
	dd	-4
	dd	2
	dd	_1094
	dd	_549
	dd	-8
	dd	2
	dd	_1095
	dd	_547
	dd	-12
	dd	2
	dd	_590
	dd	_591
	dd	-16
	dd	0
	align	4
_1325:
	dd	_1041
	dd	116
	dd	3
	align	4
_1333:
	dd	_1041
	dd	117
	dd	3
	align	4
_1341:
	dd	_1041
	dd	118
	dd	3
	align	4
_1345:
	dd	_1041
	dd	119
	dd	3
_1352:
	db	":TTypeMethod",0
	align	4
_1351:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1352
	dd	-4
	dd	0
	align	4
_1350:
	dd	3
	dd	0
	dd	0
_1390:
	db	"F",0
	align	4
_1389:
	dd	1
	dd	_553
	dd	2
	dd	_1069
	dd	_1352
	dd	-12
	dd	2
	dd	_1094
	dd	_549
	dd	-16
	dd	2
	dd	_1390
	dd	_568
	dd	-20
	dd	2
	dd	_605
	dd	_560
	dd	-4
	dd	2
	dd	_590
	dd	_560
	dd	-8
	dd	2
	dd	_609
	dd	_591
	dd	-24
	dd	0
	align	4
_1360:
	dd	_1041
	dd	142
	dd	3
	align	4
_1368:
	dd	_1041
	dd	143
	dd	3
	align	4
_1376:
	dd	_1041
	dd	144
	dd	3
	align	4
_1380:
	dd	_1041
	dd	145
	dd	3
	align	4
_1384:
	dd	_1041
	dd	146
	dd	3
	align	4
_1388:
	dd	_1041
	dd	147
	dd	3
	align	4
_1411:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_568
	dd	-4
	dd	0
	align	4
_1410:
	dd	3
	dd	0
	dd	0
	align	4
_1397:
	dd	_1041
	dd	173
	dd	3
	align	4
_1409:
	dd	3
	dd	0
	dd	0
	align	4
_1401:
	dd	_1041
	dd	173
	dd	26
	align	4
_1467:
	dd	1
	dd	_619
	dd	0
	align	4
_1425:
	dd	_1041
	dd	156
	dd	3
	align	4
_1430:
	dd	_1041
	dd	157
	dd	3
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
	align	4
_1438:
	dd	_1041
	dd	158
	dd	3
	align	4
_1446:
	dd	_1041
	dd	159
	dd	3
	align	4
_1456:
	dd	_1041
	dd	160
	dd	3
	align	4
_1462:
	dd	_1041
	dd	161
	dd	3
_1529:
	db	"List",0
	align	4
_1528:
	dd	1
	dd	_620
	dd	2
	dd	_1069
	dd	_568
	dd	-4
	dd	2
	dd	_590
	dd	_591
	dd	-8
	dd	2
	dd	_1529
	dd	_563
	dd	-12
	dd	0
	align	4
_1468:
	dd	_1041
	dd	176
	dd	3
	align	4
_1471:
	dd	3
	dd	0
	dd	0
	align	4
_1470:
	dd	_1041
	dd	176
	dd	18
	align	4
_1472:
	dd	_1041
	dd	177
	dd	3
	align	4
_1474:
	dd	_1041
	dd	178
	dd	3
	align	4
_1496:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_1323
	dd	-16
	dd	0
	align	4
_1486:
	dd	_1041
	dd	179
	dd	4
	align	4
_1495:
	dd	3
	dd	0
	dd	0
	align	4
_1492:
	dd	_1041
	dd	180
	dd	5
	align	4
_1497:
	dd	_1041
	dd	183
	dd	3
	align	4
_1526:
	dd	3
	dd	0
	dd	0
	align	4
_1501:
	dd	_1041
	dd	184
	dd	4
	align	4
_1525:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_1323
	dd	-20
	dd	0
	align	4
_1515:
	dd	_1041
	dd	185
	dd	5
	align	4
_1524:
	dd	3
	dd	0
	dd	0
	align	4
_1521:
	dd	_1041
	dd	186
	dd	6
	align	4
_1527:
	dd	_1041
	dd	190
	dd	3
	align	4
_1590:
	dd	1
	dd	_622
	dd	2
	dd	_1069
	dd	_568
	dd	-4
	dd	2
	dd	_590
	dd	_591
	dd	-8
	dd	2
	dd	_1529
	dd	_563
	dd	-12
	dd	0
	align	4
_1530:
	dd	_1041
	dd	194
	dd	3
	align	4
_1532:
	dd	_1041
	dd	195
	dd	3
	align	4
_1554:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_1352
	dd	-16
	dd	0
	align	4
_1544:
	dd	_1041
	dd	196
	dd	4
	align	4
_1553:
	dd	3
	dd	0
	dd	0
	align	4
_1550:
	dd	_1041
	dd	197
	dd	5
	align	4
_1555:
	dd	_1041
	dd	200
	dd	3
	align	4
_1588:
	dd	3
	dd	0
	dd	0
	align	4
_1561:
	dd	_1041
	dd	201
	dd	4
	align	4
_1587:
	dd	3
	dd	0
	dd	2
	dd	_1390
	dd	_1352
	dd	-20
	dd	0
	align	4
_1575:
	dd	_1041
	dd	202
	dd	5
	align	4
_1586:
	dd	3
	dd	0
	dd	0
	align	4
_1583:
	dd	_1041
	dd	203
	dd	6
	align	4
_1589:
	dd	_1041
	dd	207
	dd	3
_1617:
	db	"Vari",0
	align	4
_1616:
	dd	1
	dd	_623
	dd	2
	dd	_1069
	dd	_568
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_546
	dd	_547
	dd	-12
	dd	2
	dd	_630
	dd	_632
	dd	-16
	dd	2
	dd	_590
	dd	_591
	dd	-20
	dd	2
	dd	_1617
	dd	_1070
	dd	-24
	dd	0
	align	4
_1591:
	dd	_1041
	dd	210
	dd	3
	align	4
_1595:
	dd	_1041
	dd	211
	dd	3
	align	4
_1603:
	dd	_1041
	dd	212
	dd	3
	align	4
_1611:
	dd	_1041
	dd	213
	dd	3
_1752:
	db	"CurID",0
_1665:
	db	"M",0
	align	4
_1751:
	dd	1
	dd	_625
	dd	2
	dd	_1069
	dd	_568
	dd	-8
	dd	2
	dd	_606
	dd	_607
	dd	-12
	dd	2
	dd	_548
	dd	_549
	dd	-16
	dd	2
	dd	_546
	dd	_547
	dd	-20
	dd	2
	dd	_605
	dd	_560
	dd	-4
	dd	2
	dd	_590
	dd	_591
	dd	-24
	dd	2
	dd	_1752
	dd	_591
	dd	-28
	dd	2
	dd	_1665
	dd	_1352
	dd	-32
	dd	0
	align	4
_1618:
	dd	_1041
	dd	219
	dd	3
	align	4
_1664:
	dd	3
	dd	0
	dd	2
	dd	_1665
	dd	_1352
	dd	-36
	dd	0
	align	4
_1630:
	dd	_1041
	dd	221
	dd	4
	align	4
_1663:
	dd	3
	dd	0
	dd	0
	align	4
_1658:
	dd	_1041
	dd	222
	dd	5
	align	4
_1666:
	dd	_1041
	dd	225
	dd	3
	align	4
_1668:
	dd	_1041
	dd	227
	dd	3
	align	4
_1723:
	dd	3
	dd	0
	dd	2
	dd	_1095
	dd	_547
	dd	-40
	dd	0
	align	4
_1682:
	dd	_1041
	dd	228
	dd	4
_1722:
	db	"Count",0
	align	4
_1721:
	dd	3
	dd	0
	dd	2
	dd	_1722
	dd	_591
	dd	-44
	dd	0
	align	4
_1702:
	dd	_1041
	dd	229
	dd	5
	align	4
_1710:
	dd	_1041
	dd	230
	dd	5
	align	4
_1715:
	dd	_1041
	dd	231
	dd	5
	align	4
_1716:
	dd	_1041
	dd	232
	dd	5
	align	4
_1724:
	dd	_1041
	dd	235
	dd	3
	align	4
_1732:
	dd	3
	dd	0
	dd	0
	align	4
_1726:
	dd	_1041
	dd	236
	dd	4
	align	4
_192:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_1731:
	dd	_1041
	dd	237
	dd	4
	align	4
_1733:
	dd	_1041
	dd	239
	dd	3
	align	4
_1737:
	dd	_1041
	dd	240
	dd	3
	align	4
_1745:
	dd	_1041
	dd	241
	dd	3
	align	4
_1750:
	dd	_1041
	dd	242
	dd	3
_1902:
	db	"ExtendName",0
	align	4
_1901:
	dd	1
	dd	_555
	dd	2
	dd	_1069
	dd	_568
	dd	-4
	dd	2
	dd	_631
	dd	_632
	dd	-8
	dd	2
	dd	_1902
	dd	_549
	dd	-12
	dd	2
	dd	_591
	dd	_591
	dd	-16
	dd	0
	align	4
_1753:
	dd	_1041
	dd	245
	dd	3
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
	align	4
_1755:
	dd	_1041
	dd	246
	dd	3
	align	4
_1760:
	dd	_1041
	dd	247
	dd	3
	align	4
_1762:
	dd	_1041
	dd	248
	dd	3
	align	4
_1771:
	dd	3
	dd	0
	dd	0
	align	4
_1766:
	dd	_1041
	dd	248
	dd	16
	align	4
_1772:
	dd	_1041
	dd	249
	dd	3
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_1775:
	dd	_1041
	dd	250
	dd	3
	align	4
_1777:
	dd	_1041
	dd	251
	dd	3
	align	4
_1807:
	dd	3
	dd	0
	dd	2
	dd	_1617
	dd	_1315
	dd	-20
	dd	2
	dd	_1140
	dd	_632
	dd	-24
	dd	0
	align	4
_1789:
	dd	_1041
	dd	252
	dd	4
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_1793:
	dd	_1041
	dd	253
	dd	4
	align	4
_1798:
	dd	_1041
	dd	254
	dd	4
	align	4
_1803:
	dd	_1041
	dd	255
	dd	4
	align	4
_1806:
	dd	_1041
	dd	256
	dd	4
	align	4
_1808:
	dd	_1041
	dd	258
	dd	3
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	102,105,101,108,100,99,111,117,110,116
	align	4
_1811:
	dd	_1041
	dd	259
	dd	3
	align	4
_1812:
	dd	_1041
	dd	260
	dd	3
_1896:
	db	"Meth",0
	align	4
_1895:
	dd	3
	dd	0
	dd	2
	dd	_1896
	dd	_1352
	dd	-28
	dd	2
	dd	_1140
	dd	_632
	dd	-32
	dd	0
	align	4
_1824:
	dd	_1041
	dd	261
	dd	4
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_1828:
	dd	_1041
	dd	262
	dd	4
	align	4
_1839:
	dd	_1041
	dd	264
	dd	4
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_1844:
	dd	_1041
	dd	265
	dd	4
	align	4
_1893:
	dd	3
	dd	0
	dd	0
	align	4
_1848:
	dd	_1041
	dd	266
	dd	5
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_1855:
	dd	_1041
	dd	267
	dd	5
	align	4
_1862:
	dd	_1041
	dd	268
	dd	5
_1891:
	db	"Par",0
_1892:
	db	"Node2",0
	align	4
_1890:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_1216
	dd	-36
	dd	2
	dd	_1892
	dd	_632
	dd	-40
	dd	0
	align	4
_1876:
	dd	_1041
	dd	269
	dd	6
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_1880:
	dd	_1041
	dd	270
	dd	6
	align	4
_1885:
	dd	_1041
	dd	271
	dd	6
	align	4
_1894:
	dd	_1041
	dd	274
	dd	4
	align	4
_1897:
	dd	_1041
	dd	276
	dd	3
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	109,101,116,104,111,100,99,111,117,110,116
	align	4
_1900:
	dd	_1041
	dd	277
	dd	3
	align	4
_1908:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1216
	dd	-4
	dd	0
	align	4
_1907:
	dd	3
	dd	0
	dd	0
	align	4
_1943:
	dd	1
	dd	_553
	dd	2
	dd	_1069
	dd	_1216
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_546
	dd	_547
	dd	-12
	dd	2
	dd	_630
	dd	_549
	dd	-16
	dd	0
	align	4
_1918:
	dd	_1041
	dd	287
	dd	3
	align	4
_1926:
	dd	_1041
	dd	288
	dd	3
	align	4
_1934:
	dd	_1041
	dd	289
	dd	3
	align	4
_1942:
	dd	_1041
	dd	290
	dd	3
_1960:
	db	":TCompiler",0
	align	4
_1959:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
_1947:
	db	":brl.linkedlist.TList",0
	align	4
_1958:
	dd	3
	dd	0
	dd	0
_2064:
	db	"FilePath",0
_2065:
	db	"File",0
_2066:
	db	"Root",0
	align	4
_2063:
	dd	1
	dd	_657
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_2064
	dd	_549
	dd	-8
	dd	2
	dd	_2065
	dd	_646
	dd	-12
	dd	2
	dd	_2066
	dd	_632
	dd	-16
	dd	0
	align	4
_1988:
	dd	_1043
	dd	18
	dd	3
	align	4
_1990:
	dd	_1043
	dd	19
	dd	3
	align	4
_1994:
	dd	_1043
	dd	20
	dd	3
	align	4
_2062:
	dd	3
	dd	0
	dd	2
	dd	_1167
	dd	_632
	dd	-20
	dd	2
	dd	_548
	dd	_549
	dd	-24
	dd	2
	dd	_546
	dd	_547
	dd	-28
	dd	2
	dd	_606
	dd	_607
	dd	-32
	dd	0
	align	4
_2006:
	dd	_1043
	dd	21
	dd	4
	align	4
_2010:
	dd	_1043
	dd	22
	dd	4
	align	4
_2012:
	dd	_1043
	dd	23
	dd	4
	align	4
_2014:
	dd	_1043
	dd	24
	dd	4
	align	4
_2017:
	dd	_1043
	dd	25
	dd	4
	align	4
_2053:
	dd	3
	dd	0
	dd	0
	align	4
_2021:
	dd	_1043
	dd	26
	dd	5
_2051:
	db	"Child",0
_2052:
	db	"Data",0
	align	4
_2050:
	dd	3
	dd	0
	dd	2
	dd	_2051
	dd	_632
	dd	-36
	dd	2
	dd	_630
	dd	_549
	dd	-40
	dd	2
	dd	_2052
	dd	_547
	dd	-44
	dd	0
	align	4
_2033:
	dd	_1043
	dd	27
	dd	6
	align	4
_2035:
	dd	_1043
	dd	28
	dd	6
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,114,101
	align	4
_2042:
	dd	3
	dd	0
	dd	0
	align	4
_2039:
	dd	_1043
	dd	29
	dd	7
	align	4
_2043:
	dd	_1043
	dd	31
	dd	6
	align	4
_2045:
	dd	_1043
	dd	32
	dd	6
	align	4
_2054:
	dd	_1043
	dd	35
	dd	4
	align	4
_2057:
	dd	_1043
	dd	36
	dd	4
_2068:
	db	"Path",0
	align	4
_2067:
	dd	1
	dd	_659
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_2068
	dd	_549
	dd	-8
	dd	0
_2306:
	db	"Text",0
_2307:
	db	"SplitToken",0
_2308:
	db	"InRem",0
_2309:
	db	"l",0
	align	4
_2305:
	dd	1
	dd	_660
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	2
	dd	_2306
	dd	_549
	dd	-12
	dd	2
	dd	_2307
	dd	_644
	dd	-16
	dd	2
	dd	_2308
	dd	_560
	dd	-4
	dd	2
	dd	_2309
	dd	_651
	dd	-20
	dd	0
	align	4
_2069:
	dd	_1043
	dd	43
	dd	3
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_2070:
	dd	_1043
	dd	44
	dd	3
	align	4
_2078:
	dd	_1043
	dd	45
	dd	3
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	46
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_86:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	44
	align	4
_87:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	40
	align	4
_88:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_89:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	91
	align	4
_90:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	93
	align	4
_91:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	58
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	43
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	45
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	42
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	47
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	94
	align	4
_97:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	92
	align	4
_98:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	9
	align	4
_99:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	61,61
	align	4
_100:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,62
	align	4
_101:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	60,61
	align	4
_102:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	62,61
	align	4
_103:
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
_104:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	61
	align	4
_105:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	37
	align	4
_106:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	35
	align	4
_107:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	36
	align	4
_2106:
	dd	_1043
	dd	46
	dd	3
	align	4
_2114:
	dd	_1043
	dd	47
	dd	3
	align	4
_2116:
	dd	_1043
	dd	48
	dd	3
_2276:
	db	"Line",0
_2277:
	db	"LastFound",0
	align	4
_2275:
	dd	3
	dd	0
	dd	2
	dd	_2276
	dd	_549
	dd	-24
	dd	2
	dd	_2277
	dd	_591
	dd	-28
	dd	0
	align	4
_2124:
	dd	_1043
	dd	49
	dd	4
	align	4
_2126:
	dd	_1043
	dd	50
	dd	4
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	114,101,109
	align	4
_2129:
	dd	3
	dd	0
	dd	0
	align	4
_2128:
	dd	_1043
	dd	51
	dd	5
	align	4
_2130:
	dd	_1043
	dd	53
	dd	4
	align	4
_2142:
	dd	3
	dd	0
	dd	0
	align	4
_2132:
	dd	_1043
	dd	54
	dd	5
	align	4
_2137:
	dd	_1043
	dd	55
	dd	5
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,110,100,114,101,109
	align	4
_2140:
	dd	3
	dd	0
	dd	0
	align	4
_2139:
	dd	_1043
	dd	56
	dd	6
	align	4
_2141:
	dd	_1043
	dd	58
	dd	5
	align	4
_2143:
	dd	_1043
	dd	60
	dd	4
	align	4
_2144:
	dd	_1043
	dd	61
	dd	4
	align	4
_2269:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-32
	dd	0
	align	4
_2148:
	dd	_1043
	dd	62
	dd	5
	align	4
_2156:
	dd	3
	dd	0
	dd	0
	align	4
_2150:
	dd	_1043
	dd	63
	dd	6
	align	4
_2155:
	dd	_1043
	dd	64
	dd	6
	align	4
_2157:
	dd	_1043
	dd	66
	dd	5
	align	4
_2160:
	dd	3
	dd	0
	dd	0
	align	4
_2159:
	dd	_1043
	dd	66
	dd	31
	align	4
_2161:
	dd	_1043
	dd	67
	dd	5
	align	4
_116:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	59
	align	4
_117:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	47,47
	align	4
_118:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	39
	align	4
_2168:
	dd	3
	dd	0
	dd	0
	align	4
_2167:
	dd	_1043
	dd	68
	dd	6
	align	4
_2169:
	dd	_1043
	dd	70
	dd	5
	align	4
_2170:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2192:
	dd	3
	dd	0
	dd	0
	align	4
_2172:
	dd	_1043
	dd	71
	dd	6
	align	4
_2177:
	dd	_1043
	dd	72
	dd	6
	align	4
_2178:
	dd	_1043
	dd	73
	dd	6
	align	4
_2191:
	dd	3
	dd	0
	dd	0
	align	4
_2181:
	dd	_1043
	dd	74
	dd	7
	align	4
_2190:
	dd	3
	dd	0
	dd	0
	align	4
_2183:
	dd	_1043
	dd	75
	dd	8
	align	4
_2188:
	dd	_1043
	dd	76
	dd	8
	align	4
_2189:
	dd	_1043
	dd	77
	dd	8
	align	4
_2193:
	dd	_1043
	dd	82
	dd	5
_2268:
	db	"SplitTok",0
	align	4
_2267:
	dd	3
	dd	0
	dd	2
	dd	_2268
	dd	_549
	dd	-36
	dd	0
	align	4
_2199:
	dd	_1043
	dd	83
	dd	6
	align	4
_2266:
	dd	3
	dd	0
	dd	0
	align	4
_2201:
	dd	_1043
	dd	84
	dd	7
	align	4
_2211:
	dd	3
	dd	0
	dd	0
	align	4
_2205:
	dd	_1043
	dd	85
	dd	8
	align	4
_2210:
	dd	3
	dd	0
	dd	0
	align	4
_2209:
	dd	_1043
	dd	85
	dd	102
	align	4
_2212:
	dd	_1043
	dd	87
	dd	7
	align	4
_2217:
	dd	_1043
	dd	88
	dd	7
	align	4
_2262:
	dd	3
	dd	0
	dd	0
	align	4
_2221:
	dd	_1043
	dd	90
	dd	8
	align	4
_2229:
	dd	3
	dd	0
	dd	0
	align	4
_2223:
	dd	_1043
	dd	91
	dd	9
	align	4
_2228:
	dd	_1043
	dd	92
	dd	9
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,111,97,116
	align	4
_2230:
	dd	_1043
	dd	94
	dd	8
	align	4
_2238:
	dd	3
	dd	0
	dd	0
	align	4
_2232:
	dd	_1043
	dd	95
	dd	9
	align	4
_2237:
	dd	_1043
	dd	96
	dd	9
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
_2239:
	dd	_1043
	dd	98
	dd	8
	align	4
_2247:
	dd	3
	dd	0
	dd	0
	align	4
_2241:
	dd	_1043
	dd	99
	dd	9
	align	4
_2246:
	dd	_1043
	dd	100
	dd	9
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_2248:
	dd	_1043
	dd	102
	dd	8
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	33
	align	4
_2256:
	dd	3
	dd	0
	dd	0
	align	4
_2250:
	dd	_1043
	dd	103
	dd	9
	align	4
_2255:
	dd	_1043
	dd	104
	dd	9
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	98,121,116,101
	align	4
_2257:
	dd	_1043
	dd	106
	dd	8
	align	4
_2263:
	dd	_1043
	dd	109
	dd	7
	align	4
_2264:
	dd	_1043
	dd	110
	dd	7
	align	4
_2265:
	dd	_1043
	dd	111
	dd	7
	align	4
_2270:
	dd	_1043
	dd	115
	dd	4
	align	4
_2278:
	dd	_1043
	dd	117
	dd	3
	align	4
_2284:
	dd	_1043
	dd	118
	dd	3
	align	4
_2304:
	dd	3
	dd	0
	dd	0
	align	4
_2285:
	dd	_1043
	dd	119
	dd	4
	align	4
_2300:
	dd	3
	dd	0
	dd	0
	align	4
_2297:
	dd	_1043
	dd	119
	dd	68
	align	4
_2301:
	dd	_1043
	dd	120
	dd	4
_3348:
	db	"TmpCompiler",0
_3349:
	db	"[]:Object",0
_3350:
	db	"intype",0
_2406:
	db	"Template",0
	align	4
_3347:
	dd	1
	dd	_661
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	2
	dd	_3348
	dd	_1960
	dd	-12
	dd	2
	dd	_1140
	dd	_3349
	dd	-16
	dd	2
	dd	_3350
	dd	_549
	dd	-20
	dd	2
	dd	_2406
	dd	_568
	dd	-24
	dd	0
	align	4
_2310:
	dd	_1043
	dd	125
	dd	3
	align	4
_2312:
	dd	_1043
	dd	126
	dd	3
	align	4
_2317:
	dd	_1043
	dd	127
	dd	3
	align	4
_2320:
	dd	_1043
	dd	128
	dd	3
	align	4
_2326:
	dd	_1043
	dd	131
	dd	3
	align	4
_2407:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-28
	dd	2
	dd	_2306
	dd	_549
	dd	-32
	dd	0
	align	4
_2330:
	dd	_1043
	dd	132
	dd	4
	align	4
_2336:
	dd	_1043
	dd	133
	dd	4
	align	4
_136:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_2405:
	dd	3
	dd	0
	dd	2
	dd	_2406
	dd	_568
	dd	-36
	dd	2
	dd	_546
	dd	_547
	dd	-40
	dd	0
	align	4
_2340:
	dd	_1043
	dd	135
	dd	6
	align	4
_2341:
	dd	_1043
	dd	136
	dd	6
	align	4
_2343:
	dd	_1043
	dd	137
	dd	6
	align	4
_2355:
	dd	_1043
	dd	138
	dd	6
	align	4
_2357:
	dd	_1043
	dd	139
	dd	6
	align	4
_2365:
	dd	_1043
	dd	140
	dd	6
	align	4
_2375:
	dd	_1043
	dd	141
	dd	6
	align	4
_2379:
	dd	_1043
	dd	142
	dd	6
	align	4
_2383:
	dd	_1043
	dd	143
	dd	6
	align	4
_2388:
	dd	_1043
	dd	146
	dd	6
	align	4
_2393:
	dd	_1043
	dd	148
	dd	6
	align	4
_2396:
	dd	_1043
	dd	149
	dd	6
	align	4
_2399:
	dd	_1043
	dd	151
	dd	6
	align	4
_2402:
	dd	_1043
	dd	152
	dd	6
	align	4
_2408:
	dd	_1043
	dd	156
	dd	3
	align	4
_2860:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-44
	dd	2
	dd	_2306
	dd	_549
	dd	-48
	dd	0
	align	4
_2412:
	dd	_1043
	dd	157
	dd	4
	align	4
_2418:
	dd	_1043
	dd	158
	dd	4
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_2504:
	dd	3
	dd	0
	dd	0
	align	4
_2423:
	dd	_1043
	dd	188
	dd	6
_2498:
	db	"name",0
_2499:
	db	"Id",0
	align	4
_2497:
	dd	3
	dd	0
	dd	2
	dd	_2498
	dd	_549
	dd	-52
	dd	2
	dd	_546
	dd	_547
	dd	-56
	dd	2
	dd	_2499
	dd	_1315
	dd	-60
	dd	0
	align	4
_2424:
	dd	_1043
	dd	162
	dd	7
	align	4
_2425:
	dd	_1043
	dd	163
	dd	7
	align	4
_2431:
	dd	_1043
	dd	164
	dd	7
	align	4
_2433:
	dd	_1043
	dd	165
	dd	7
	align	4
_2434:
	dd	_1043
	dd	166
	dd	7
	align	4
_2446:
	dd	3
	dd	0
	dd	0
	align	4
_2440:
	dd	_1043
	dd	167
	dd	8
	align	4
_2441:
	dd	_1043
	dd	168
	dd	8
	align	4
_2447:
	dd	_1043
	dd	170
	dd	7
	align	4
_2448:
	dd	_1043
	dd	171
	dd	7
	align	4
_2459:
	dd	3
	dd	0
	dd	0
	align	4
_2453:
	dd	_1043
	dd	172
	dd	8
	align	4
_2454:
	dd	_1043
	dd	173
	dd	8
	align	4
_2455:
	dd	_1043
	dd	174
	dd	8
	align	4
_2460:
	dd	_1043
	dd	176
	dd	7
	align	4
_2462:
	dd	_1043
	dd	177
	dd	7
	align	4
_2465:
	dd	_1043
	dd	178
	dd	7
	align	4
_2470:
	dd	_1043
	dd	179
	dd	7
	align	4
_2495:
	dd	3
	dd	0
	dd	0
	align	4
_2476:
	dd	_1043
	dd	180
	dd	8
	align	4
_2494:
	dd	3
	dd	0
	dd	0
	align	4
_2479:
	dd	_1043
	dd	181
	dd	9
	align	4
_2493:
	dd	3
	dd	0
	dd	0
	align	4
_2491:
	dd	_1043
	dd	182
	dd	10
	align	4
_2492:
	dd	_1043
	dd	183
	dd	10
	align	4
_2496:
	dd	_1043
	dd	187
	dd	7
	align	4
_2859:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-64
	dd	2
	dd	_2406
	dd	_568
	dd	-68
	dd	0
	align	4
_2505:
	dd	_1043
	dd	190
	dd	6
	align	4
_2506:
	dd	_1043
	dd	192
	dd	6
	align	4
_2512:
	dd	_1043
	dd	193
	dd	6
	align	4
_2514:
	dd	_1043
	dd	194
	dd	6
_2531:
	db	"Temp",0
	align	4
_2530:
	dd	3
	dd	0
	dd	2
	dd	_2531
	dd	_568
	dd	-72
	dd	0
	align	4
_2524:
	dd	_1043
	dd	195
	dd	7
	align	4
_2529:
	dd	3
	dd	0
	dd	0
	align	4
_2528:
	dd	_1043
	dd	196
	dd	8
	align	4
_2532:
	dd	_1043
	dd	199
	dd	6
	align	4
_2533:
	dd	_1043
	dd	200
	dd	6
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,120,116,101,110,100,115
_2590:
	db	"superName",0
	align	4
_2589:
	dd	3
	dd	0
	dd	2
	dd	_2590
	dd	_549
	dd	-76
	dd	0
	align	4
_2539:
	dd	_1043
	dd	201
	dd	7
	align	4
_2540:
	dd	_1043
	dd	202
	dd	7
	align	4
_2546:
	dd	_1043
	dd	203
	dd	7
	align	4
_2588:
	dd	3
	dd	0
	dd	2
	dd	_2531
	dd	_568
	dd	-80
	dd	0
	align	4
_2556:
	dd	_1043
	dd	204
	dd	8
	align	4
_2587:
	dd	3
	dd	0
	dd	0
	align	4
_2560:
	dd	_1043
	dd	205
	dd	9
	align	4
_2568:
	dd	_1043
	dd	206
	dd	9
	align	4
_2577:
	dd	_1043
	dd	207
	dd	9
	align	4
_2586:
	dd	_1043
	dd	209
	dd	9
	align	4
_2618:
	dd	3
	dd	0
	dd	0
	align	4
_2592:
	dd	_1043
	dd	213
	dd	7
	align	4
_2600:
	dd	_1043
	dd	214
	dd	7
	align	4
_2609:
	dd	_1043
	dd	215
	dd	7
	align	4
_2619:
	dd	_1043
	dd	217
	dd	6
	align	4
_2854:
	dd	3
	dd	0
	dd	0
	align	4
_2624:
	dd	_1043
	dd	218
	dd	7
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	112,114,105,118,97,116,101
	align	4
_2635:
	dd	3
	dd	0
	dd	0
	align	4
_2630:
	dd	_1043
	dd	219
	dd	8
	align	4
_2634:
	dd	_1043
	dd	220
	dd	8
	align	4
_2636:
	dd	_1043
	dd	222
	dd	7
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,117,98,108,105,99
	align	4
_2647:
	dd	3
	dd	0
	dd	0
	align	4
_2642:
	dd	_1043
	dd	223
	dd	8
	align	4
_2646:
	dd	_1043
	dd	224
	dd	8
	align	4
_2648:
	dd	_1043
	dd	226
	dd	7
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	112,114,111,116,101,99,116,101,100
	align	4
_2659:
	dd	3
	dd	0
	dd	0
	align	4
_2654:
	dd	_1043
	dd	227
	dd	8
	align	4
_2658:
	dd	_1043
	dd	228
	dd	8
	align	4
_2660:
	dd	_1043
	dd	230
	dd	7
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_2689:
	dd	3
	dd	0
	dd	0
	align	4
_2666:
	dd	_1043
	dd	231
	dd	8
	align	4
_2667:
	dd	_1043
	dd	232
	dd	8
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,105,114,116,117,97,108
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	111,118,101,114,114,105,100,101
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,98,115,116,114,97,99,116
	align	4
_168:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,97,116,105,99
	align	4
_169:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,110,97,108
	align	4
_170:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,116,116,101,114
	align	4
_171:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,101,116,116,101,114
	align	4
_2676:
	dd	3
	dd	0
	dd	0
	align	4
_2675:
	dd	_1043
	dd	234
	dd	10
	align	4
_2677:
	dd	_1043
	dd	236
	dd	8
	align	4
_174:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_173:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,95
	align	4
_172:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,95,95
	align	4
_2690:
	dd	_1043
	dd	280
	dd	7
_2852:
	db	"PreNode",0
	align	4
_2851:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-84
	dd	2
	dd	_546
	dd	_547
	dd	-88
	dd	2
	dd	_2306
	dd	_549
	dd	-92
	dd	2
	dd	_2852
	dd	_632
	dd	-96
	dd	0
	align	4
_2696:
	dd	_1043
	dd	281
	dd	8
	align	4
_2697:
	dd	_1043
	dd	282
	dd	8
	align	4
_2703:
	dd	_1043
	dd	283
	dd	8
	align	4
_2704:
	dd	_1043
	dd	284
	dd	8
	align	4
_2705:
	dd	_1043
	dd	285
	dd	8
	align	4
_2711:
	dd	_1043
	dd	286
	dd	8
	align	4
_2712:
	dd	_1043
	dd	287
	dd	8
	align	4
_2723:
	dd	3
	dd	0
	dd	0
	align	4
_2717:
	dd	_1043
	dd	288
	dd	9
	align	4
_2718:
	dd	_1043
	dd	289
	dd	9
	align	4
_2719:
	dd	_1043
	dd	290
	dd	9
	align	4
_2724:
	dd	_1043
	dd	292
	dd	8
	align	4
_2727:
	dd	_1043
	dd	293
	dd	8
_2804:
	db	"Compiler",0
	align	4
_2803:
	dd	3
	dd	0
	dd	2
	dd	_2804
	dd	_1960
	dd	-100
	dd	0
	align	4
_2733:
	dd	_1043
	dd	294
	dd	9
	align	4
_2734:
	dd	_1043
	dd	295
	dd	9
	align	4
_2745:
	dd	3
	dd	0
	dd	0
	align	4
_2739:
	dd	_1043
	dd	296
	dd	10
	align	4
_2744:
	dd	_1043
	dd	297
	dd	10
	align	4
_2746:
	dd	_1043
	dd	299
	dd	9
	align	4
_2748:
	dd	_1043
	dd	300
	dd	9
	align	4
_2755:
	dd	_1043
	dd	301
	dd	9
	align	4
_2758:
	dd	_1043
	dd	303
	dd	9
	align	4
_2802:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-104
	dd	0
	align	4
_2774:
	dd	_1043
	dd	304
	dd	10
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_2801:
	dd	3
	dd	0
	dd	0
	align	4
_2778:
	dd	_1043
	dd	305
	dd	11
	align	4
_2799:
	dd	3
	dd	0
	dd	2
	dd	_1892
	dd	_632
	dd	-108
	dd	0
	align	4
_2790:
	dd	_1043
	dd	306
	dd	12
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_2798:
	dd	3
	dd	0
	dd	0
	align	4
_2794:
	dd	_1043
	dd	307
	dd	13
	align	4
_2797:
	dd	_1043
	dd	308
	dd	13
	align	4
_2800:
	dd	_1043
	dd	311
	dd	11
	align	4
_2845:
	dd	3
	dd	0
	dd	0
	align	4
_2806:
	dd	_1043
	dd	315
	dd	9
	align	4
_189:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_190:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_193:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
_2815:
	dd	3
	dd	0
	dd	0
	align	4
_2814:
	dd	_1043
	dd	328
	dd	11
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_2827:
	dd	3
	dd	0
	dd	0
	align	4
_2816:
	dd	_1043
	dd	317
	dd	11
	align	4
_2817:
	dd	_1043
	dd	318
	dd	11
	align	4
_191:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2820:
	dd	_1043
	dd	319
	dd	11
	align	4
_2839:
	dd	3
	dd	0
	dd	0
	align	4
_2828:
	dd	_1043
	dd	321
	dd	11
	align	4
_2829:
	dd	_1043
	dd	322
	dd	11
	align	4
_194:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,48
	align	4
_2832:
	dd	_1043
	dd	323
	dd	11
	align	4
_2844:
	dd	3
	dd	0
	dd	0
	align	4
_2840:
	dd	_1043
	dd	325
	dd	11
	align	4
_2841:
	dd	_1043
	dd	326
	dd	11
	align	4
_2846:
	dd	_1043
	dd	331
	dd	8
	align	4
_2853:
	dd	_1043
	dd	333
	dd	7
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,110,100,116,121,112,101
	align	4
_2855:
	dd	_1043
	dd	335
	dd	6
	align	4
_2861:
	dd	_1043
	dd	338
	dd	3
	align	4
_2863:
	dd	_1043
	dd	339
	dd	3
	align	4
_2865:
	dd	_1043
	dd	340
	dd	3
	align	4
_3240:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-112
	dd	2
	dd	_2306
	dd	_549
	dd	-116
	dd	0
	align	4
_2869:
	dd	_1043
	dd	341
	dd	4
	align	4
_2875:
	dd	_1043
	dd	342
	dd	4
	align	4
_2908:
	dd	3
	dd	0
	dd	0
	align	4
_2884:
	dd	_1043
	dd	344
	dd	6
	align	4
_2885:
	dd	_1043
	dd	345
	dd	6
	align	4
_2890:
	dd	_1043
	dd	347
	dd	6
	align	4
_2907:
	dd	3
	dd	0
	dd	2
	dd	_2531
	dd	_568
	dd	-120
	dd	0
	align	4
_2900:
	dd	_1043
	dd	348
	dd	7
	align	4
_2906:
	dd	3
	dd	0
	dd	0
	align	4
_2904:
	dd	_1043
	dd	349
	dd	8
	align	4
_2905:
	dd	_1043
	dd	350
	dd	8
	align	4
_2915:
	dd	3
	dd	0
	dd	0
	align	4
_2909:
	dd	_1043
	dd	354
	dd	6
	align	4
_2910:
	dd	_1043
	dd	355
	dd	6
	align	4
_2911:
	dd	_1043
	dd	356
	dd	6
	align	4
_2923:
	dd	3
	dd	0
	dd	0
	align	4
_2916:
	dd	_1043
	dd	358
	dd	6
	align	4
_2922:
	dd	3
	dd	0
	dd	0
	align	4
_2918:
	dd	_1043
	dd	358
	dd	20
	align	4
_2931:
	dd	3
	dd	0
	dd	0
	align	4
_2924:
	dd	_1043
	dd	360
	dd	6
	align	4
_2930:
	dd	3
	dd	0
	dd	0
	align	4
_2926:
	dd	_1043
	dd	360
	dd	20
	align	4
_2939:
	dd	3
	dd	0
	dd	0
	align	4
_2932:
	dd	_1043
	dd	362
	dd	6
	align	4
_2938:
	dd	3
	dd	0
	dd	0
	align	4
_2934:
	dd	_1043
	dd	362
	dd	20
_3238:
	db	"IsArray2",0
_3239:
	db	"SelTemplate",0
	align	4
_3237:
	dd	3
	dd	0
	dd	2
	dd	_605
	dd	_560
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-124
	dd	2
	dd	_546
	dd	_547
	dd	-128
	dd	2
	dd	_2499
	dd	_607
	dd	-132
	dd	2
	dd	_1896
	dd	_1352
	dd	-136
	dd	2
	dd	_3238
	dd	_591
	dd	-140
	dd	2
	dd	_3239
	dd	_568
	dd	-144
	dd	0
	align	4
_2940:
	dd	_1043
	dd	364
	dd	6
	align	4
_2941:
	dd	_1043
	dd	365
	dd	6
	align	4
_2943:
	dd	_1043
	dd	366
	dd	6
	align	4
_2959:
	dd	3
	dd	0
	dd	0
	align	4
_2957:
	dd	_1043
	dd	368
	dd	8
	align	4
_2958:
	dd	_1043
	dd	369
	dd	8
	align	4
_2962:
	dd	3
	dd	0
	dd	0
	align	4
_2960:
	dd	_1043
	dd	371
	dd	8
	align	4
_2961:
	dd	_1043
	dd	372
	dd	8
	align	4
_2965:
	dd	3
	dd	0
	dd	0
	align	4
_2963:
	dd	_1043
	dd	374
	dd	8
	align	4
_2964:
	dd	_1043
	dd	375
	dd	8
	align	4
_2968:
	dd	3
	dd	0
	dd	0
	align	4
_2966:
	dd	_1043
	dd	377
	dd	8
	align	4
_2967:
	dd	_1043
	dd	378
	dd	8
	align	4
_2971:
	dd	3
	dd	0
	dd	0
	align	4
_2969:
	dd	_1043
	dd	380
	dd	8
	align	4
_2970:
	dd	_1043
	dd	381
	dd	8
	align	4
_2972:
	dd	3
	dd	0
	dd	0
	align	4
_2973:
	dd	3
	dd	0
	dd	0
	align	4
_2974:
	dd	_1043
	dd	387
	dd	6
	align	4
_2980:
	dd	_1043
	dd	389
	dd	6
	align	4
_2982:
	dd	_1043
	dd	390
	dd	6
	align	4
_2983:
	dd	_1043
	dd	393
	dd	6
	align	4
_2996:
	dd	3
	dd	0
	dd	0
	align	4
_2989:
	dd	_1043
	dd	394
	dd	7
	align	4
_2990:
	dd	_1043
	dd	395
	dd	7
	align	4
_2995:
	dd	_1043
	dd	396
	dd	7
	align	4
_2997:
	dd	_1043
	dd	398
	dd	6
	align	4
_2999:
	dd	_1043
	dd	399
	dd	6
	align	4
_3001:
	dd	_1043
	dd	400
	dd	6
	align	4
_3004:
	dd	_1043
	dd	401
	dd	6
	align	4
_3011:
	dd	3
	dd	0
	dd	0
	align	4
_3006:
	dd	_1043
	dd	402
	dd	7
	align	4
_3012:
	dd	_1043
	dd	405
	dd	6
	align	4
_3014:
	dd	_1043
	dd	406
	dd	6
	align	4
_3022:
	dd	3
	dd	0
	dd	0
	align	4
_3019:
	dd	_1043
	dd	407
	dd	7
	align	4
_3020:
	dd	_1043
	dd	408
	dd	7
	align	4
_3021:
	dd	_1043
	dd	409
	dd	7
	align	4
_3023:
	dd	_1043
	dd	411
	dd	6
	align	4
_3024:
	dd	_1043
	dd	412
	dd	6
	align	4
_3028:
	dd	_1043
	dd	413
	dd	6
	align	4
_3030:
	dd	_1043
	dd	414
	dd	6
	align	4
_3037:
	dd	3
	dd	0
	dd	0
	align	4
_3032:
	dd	_1043
	dd	416
	dd	7
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_3038:
	dd	_1043
	dd	418
	dd	6
	align	4
_3135:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-148
	dd	2
	dd	_1095
	dd	_547
	dd	-152
	dd	2
	dd	_630
	dd	_549
	dd	-156
	dd	2
	dd	_708
	dd	_591
	dd	-160
	dd	0
	align	4
_3043:
	dd	_1043
	dd	419
	dd	7
	align	4
_3049:
	dd	_1043
	dd	420
	dd	7
	align	4
_3050:
	dd	_1043
	dd	421
	dd	7
	align	4
_3053:
	dd	_1043
	dd	422
	dd	7
	align	4
_3066:
	dd	3
	dd	0
	dd	0
	align	4
_3059:
	dd	_1043
	dd	423
	dd	8
	align	4
_3060:
	dd	_1043
	dd	424
	dd	8
	align	4
_3065:
	dd	_1043
	dd	425
	dd	8
	align	4
_3067:
	dd	_1043
	dd	429
	dd	7
	align	4
_3069:
	dd	_1043
	dd	430
	dd	7
	align	4
_3077:
	dd	3
	dd	0
	dd	0
	align	4
_3074:
	dd	_1043
	dd	431
	dd	8
	align	4
_3075:
	dd	_1043
	dd	432
	dd	8
	align	4
_3076:
	dd	_1043
	dd	433
	dd	8
	align	4
_3078:
	dd	_1043
	dd	436
	dd	7
	align	4
_3082:
	dd	_1043
	dd	437
	dd	7
	align	4
_3122:
	dd	3
	dd	0
	dd	0
	align	4
_3088:
	dd	_1043
	dd	438
	dd	8
	align	4
_3121:
	dd	3
	dd	0
	dd	0
	align	4
_3091:
	dd	_1043
	dd	439
	dd	9
	align	4
_3113:
	dd	3
	dd	0
	dd	0
	align	4
_3103:
	dd	_1043
	dd	440
	dd	10
	align	4
_3111:
	dd	3
	dd	0
	dd	0
	align	4
_3109:
	dd	_1043
	dd	441
	dd	11
	align	4
_3110:
	dd	_1043
	dd	442
	dd	11
	align	4
_3112:
	dd	_1043
	dd	444
	dd	10
	align	4
_3120:
	dd	3
	dd	0
	dd	0
	align	4
_3115:
	dd	_1043
	dd	446
	dd	10
	align	4
_3123:
	dd	_1043
	dd	451
	dd	7
	align	4
_3126:
	dd	_1043
	dd	452
	dd	7
	align	4
_3133:
	dd	3
	dd	0
	dd	0
	align	4
_3132:
	dd	_1043
	dd	452
	dd	35
	align	4
_3134:
	dd	_1043
	dd	453
	dd	7
	align	4
_3136:
	dd	_1043
	dd	455
	dd	6
	align	4
_3148:
	dd	3
	dd	0
	dd	0
	align	4
_3138:
	dd	_1043
	dd	455
	dd	14
	align	4
_3149:
	dd	_1043
	dd	456
	dd	6
	align	4
_3153:
	dd	_1043
	dd	457
	dd	6
_3226:
	db	"TmpLink",0
	align	4
_3225:
	dd	3
	dd	0
	dd	2
	dd	_3226
	dd	_651
	dd	-164
	dd	0
	align	4
_3155:
	dd	_1043
	dd	458
	dd	7
	align	4
_3163:
	dd	_1043
	dd	459
	dd	7
	align	4
_3224:
	dd	3
	dd	0
	dd	0
	align	4
_3164:
	dd	_1043
	dd	460
	dd	8
	align	4
_3220:
	dd	3
	dd	0
	dd	0
	align	4
_3180:
	dd	_1043
	dd	461
	dd	9
	align	4
_3189:
	dd	3
	dd	0
	dd	0
	align	4
_3186:
	dd	_1043
	dd	462
	dd	10
	align	4
_3190:
	dd	_1043
	dd	464
	dd	9
	align	4
_3200:
	dd	_1043
	dd	465
	dd	9
	align	4
_3208:
	dd	_1043
	dd	466
	dd	9
	align	4
_3221:
	dd	_1043
	dd	468
	dd	8
	align	4
_3231:
	dd	3
	dd	0
	dd	0
	align	4
_3228:
	dd	_1043
	dd	471
	dd	7
	align	4
_3232:
	dd	_1043
	dd	473
	dd	6
	align	4
_3241:
	dd	_1043
	dd	477
	dd	3
	align	4
_3341:
	dd	3
	dd	0
	dd	2
	dd	_2406
	dd	_568
	dd	-168
	dd	2
	dd	_1095
	dd	_568
	dd	-172
	dd	0
	align	4
_3251:
	dd	_1043
	dd	478
	dd	4
	align	4
_3255:
	dd	_1043
	dd	479
	dd	4
	align	4
_3340:
	dd	3
	dd	0
	dd	0
	align	4
_3256:
	dd	_1043
	dd	480
	dd	5
	align	4
_3336:
	dd	3
	dd	0
	dd	2
	dd	_1896
	dd	_1352
	dd	-176
	dd	0
	align	4
_3268:
	dd	_1043
	dd	481
	dd	6
	align	4
_3335:
	dd	3
	dd	0
	dd	2
	dd	_606
	dd	_607
	dd	-180
	dd	0
	align	4
_3272:
	dd	_1043
	dd	482
	dd	7
	align	4
_3278:
	dd	_1043
	dd	484
	dd	7
	align	4
_3285:
	dd	_1043
	dd	485
	dd	7
	align	4
_3301:
	dd	_1043
	dd	486
	dd	7
	align	4
_3304:
	dd	_1043
	dd	487
	dd	7
	align	4
_3312:
	dd	_1043
	dd	488
	dd	7
	align	4
_3317:
	dd	_1043
	dd	491
	dd	7
	align	4
_3337:
	dd	_1043
	dd	494
	dd	5
	align	4
_3342:
	dd	_1043
	dd	497
	dd	3
_3590:
	db	"DoDefs",0
_3591:
	db	"RootNode",0
	align	4
_3589:
	dd	1
	dd	_662
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	2
	dd	_3590
	dd	_560
	dd	-4
	dd	2
	dd	_1140
	dd	_1960
	dd	-12
	dd	2
	dd	_3591
	dd	_632
	dd	-16
	dd	0
	align	4
_3351:
	dd	_1043
	dd	512
	dd	3
	align	4
_3353:
	dd	_1043
	dd	513
	dd	3
	align	4
_3358:
	dd	_1043
	dd	514
	dd	3
	align	4
_227:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,46,48
	align	4
_3366:
	dd	_1043
	dd	515
	dd	3
	align	4
_228:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	67,80,66
	align	4
_3368:
	dd	_1043
	dd	516
	dd	3
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,50
	align	4
_229:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,101,114,115,105,111,110
	align	4
_3371:
	dd	_1043
	dd	517
	dd	3
	align	4
_3376:
	dd	_1043
	dd	518
	dd	3
_3438:
	db	"GlobalNode",0
	align	4
_3437:
	dd	3
	dd	0
	dd	2
	dd	_3438
	dd	_632
	dd	-20
	dd	0
	align	4
_3378:
	dd	_1043
	dd	519
	dd	4
	align	4
_3391:
	dd	3
	dd	0
	dd	2
	dd	_2406
	dd	_568
	dd	-24
	dd	0
	align	4
_3388:
	dd	_1043
	dd	520
	dd	5
	align	4
_3392:
	dd	_1043
	dd	522
	dd	4
	align	4
_3396:
	dd	_1043
	dd	524
	dd	4
_3436:
	db	"vari",0
	align	4
_3435:
	dd	3
	dd	0
	dd	2
	dd	_3436
	dd	_1315
	dd	-28
	dd	2
	dd	_631
	dd	_632
	dd	-32
	dd	0
	align	4
_3408:
	dd	_1043
	dd	525
	dd	5
	align	4
_3410:
	dd	_1043
	dd	526
	dd	5
	align	4
_3419:
	dd	3
	dd	0
	dd	0
	align	4
_3416:
	dd	_1043
	dd	527
	dd	6
	align	4
_237:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_3424:
	dd	3
	dd	0
	dd	0
	align	4
_3421:
	dd	_1043
	dd	529
	dd	6
	align	4
_238:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_3425:
	dd	_1043
	dd	531
	dd	5
	align	4
_3430:
	dd	_1043
	dd	532
	dd	5
	align	4
_3439:
	dd	_1043
	dd	535
	dd	3
	align	4
_3449:
	dd	_1043
	dd	536
	dd	3
	align	4
_3459:
	dd	_1043
	dd	537
	dd	3
	align	4
_3471:
	dd	_1043
	dd	538
	dd	3
	align	4
_3485:
	dd	_1043
	dd	540
	dd	3
	align	4
_3488:
	dd	_1043
	dd	544
	dd	3
	align	4
_3570:
	dd	3
	dd	0
	dd	0
	align	4
_3490:
	dd	_1043
	dd	545
	dd	4
_3569:
	db	"func",0
	align	4
_3568:
	dd	3
	dd	0
	dd	2
	dd	_3569
	dd	_607
	dd	-36
	dd	2
	dd	_631
	dd	_632
	dd	-40
	dd	0
	align	4
_3502:
	dd	_1043
	dd	547
	dd	5
	align	4
_3511:
	dd	3
	dd	0
	dd	0
	align	4
_3510:
	dd	_1043
	dd	547
	dd	46
	align	4
_3512:
	dd	_1043
	dd	548
	dd	5
	align	4
_3516:
	dd	_1043
	dd	549
	dd	5
	align	4
_3521:
	dd	_1043
	dd	550
	dd	5
	align	4
_3526:
	dd	_1043
	dd	551
	dd	5
	align	4
_3531:
	dd	_1043
	dd	552
	dd	5
	align	4
_242:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_3536:
	dd	_1043
	dd	554
	dd	5
	align	4
_3562:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_1216
	dd	-44
	dd	2
	dd	_1892
	dd	_632
	dd	-48
	dd	0
	align	4
_3548:
	dd	_1043
	dd	555
	dd	6
	align	4
_3552:
	dd	_1043
	dd	556
	dd	6
	align	4
_3557:
	dd	_1043
	dd	557
	dd	6
	align	4
_3563:
	dd	_1043
	dd	559
	dd	5
	align	4
_3571:
	dd	_1043
	dd	564
	dd	3
	align	4
_246:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_3572:
	dd	_1043
	dd	565
	dd	3
	align	4
_3577:
	dd	_1043
	dd	566
	dd	3
	align	4
_3582:
	dd	_1043
	dd	568
	dd	3
	align	4
_3588:
	dd	3
	dd	0
	dd	0
	align	4
_3586:
	dd	_1043
	dd	569
	dd	4
	align	4
_247:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	69,114,114,111,114,33
	align	4
_3587:
	dd	_1043
	dd	570
	dd	4
_3628:
	db	"CurLine",0
	align	4
_3627:
	dd	1
	dd	_664
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_631
	dd	_632
	dd	-8
	dd	2
	dd	_2066
	dd	_632
	dd	-12
	dd	2
	dd	_3628
	dd	_632
	dd	-16
	dd	0
	align	4
_3592:
	dd	_1043
	dd	574
	dd	3
	align	4
_3596:
	dd	_1043
	dd	575
	dd	3
	align	4
_3600:
	dd	_1043
	dd	576
	dd	3
	align	4
_3608:
	dd	_1043
	dd	578
	dd	3
	align	4
_3611:
	dd	_1043
	dd	580
	dd	3
	align	4
_3619:
	dd	_1043
	dd	581
	dd	3
	align	4
_3776:
	dd	1
	dd	_666
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
	align	4
_3629:
	dd	_1043
	dd	584
	dd	3
	align	4
_3641:
	dd	_1043
	dd	585
	dd	3
	align	4
_3654:
	dd	_1043
	dd	586
	dd	3
	align	4
_3763:
	dd	3
	dd	0
	dd	0
	align	4
_3701:
	dd	_1043
	dd	587
	dd	4
	align	4
_3709:
	dd	3
	dd	0
	dd	0
	align	4
_3705:
	dd	_1043
	dd	588
	dd	5
	align	4
_3708:
	dd	_1043
	dd	589
	dd	5
	align	4
_3710:
	dd	_1043
	dd	591
	dd	4
	align	4
_3722:
	dd	_1043
	dd	592
	dd	4
	align	4
_261:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,117,109,98,101,114
	align	4
_3729:
	dd	_1043
	dd	593
	dd	4
	align	4
_3736:
	dd	_1043
	dd	594
	dd	4
	align	4
_3747:
	dd	3
	dd	0
	dd	0
	align	4
_3744:
	dd	_1043
	dd	594
	dd	42
	align	4
_3748:
	dd	_1043
	dd	595
	dd	4
	align	4
_3762:
	dd	3
	dd	0
	dd	0
	align	4
_3759:
	dd	_1043
	dd	596
	dd	5
	align	4
_251:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,110,100,105,102
	align	4
_252:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,108,115,101,105,102
	align	4
_253:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,120,116
	align	4
_255:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	119,101,110,100
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	117,110,116,105,108
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	101,110,100,102,117,110,99,116,105,111,110
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,110,100,115,101,108,101,99,116
	align	4
_3764:
	dd	_1043
	dd	599
	dd	3
	align	4
_3947:
	dd	1
	dd	_667
	dd	2
	dd	_1069
	dd	_1960
	dd	-12
	dd	2
	dd	_707
	dd	_591
	dd	-16
	dd	0
	align	4
_3777:
	dd	_1043
	dd	602
	dd	3
	align	4
_3782:
	dd	3
	dd	0
	dd	0
	align	4
_3779:
	dd	_1043
	dd	603
	dd	4
_3941:
	db	"Rec1",0
_3942:
	db	":Trecursive",0
_3943:
	db	"Rec2",0
_3944:
	db	":TRecursive",0
_3945:
	db	"ReturnNode",0
_3946:
	db	"Ret",0
	align	4
_3940:
	dd	3
	dd	0
	dd	2
	dd	_3941
	dd	_3942
	dd	-20
	dd	2
	dd	_3943
	dd	_3944
	dd	-24
	dd	2
	dd	_3945
	dd	_632
	dd	-28
	dd	2
	dd	_631
	dd	_632
	dd	-32
	dd	2
	dd	_3946
	dd	_547
	dd	-36
	dd	0
	align	4
_3784:
	dd	_1043
	dd	606
	dd	4
	align	4
_3788:
	dd	_1043
	dd	607
	dd	4
	align	4
_3790:
	dd	_1043
	dd	608
	dd	4
	align	4
_3793:
	dd	_1043
	dd	609
	dd	4
	align	4
_3797:
	dd	_1043
	dd	611
	dd	4
_3929:
	db	"Found",0
_3930:
	db	"Matches",0
	align	4
_3928:
	dd	3
	dd	0
	dd	2
	dd	_3929
	dd	_560
	dd	-4
	dd	2
	dd	_3930
	dd	_560
	dd	-8
	dd	0
	align	4
_3798:
	dd	_1043
	dd	612
	dd	5
	align	4
_3800:
	dd	_1043
	dd	613
	dd	5
	align	4
_3802:
	dd	_1043
	dd	614
	dd	5
_3868:
	db	"Op",0
_3869:
	db	":TOperator",0
	align	4
_3923:
	dd	3
	dd	0
	dd	2
	dd	_3868
	dd	_3869
	dd	-40
	dd	0
	align	4
_3814:
	dd	_1043
	dd	615
	dd	6
_3921:
	db	"CurrentOperator",0
_3922:
	db	"Sel",0
	align	4
_3920:
	dd	3
	dd	0
	dd	2
	dd	_3921
	dd	_549
	dd	-44
	dd	2
	dd	_3922
	dd	_3869
	dd	-48
	dd	0
	align	4
_3820:
	dd	_1043
	dd	616
	dd	7
	align	4
_3824:
	dd	_1043
	dd	617
	dd	7
	align	4
_3827:
	dd	_1043
	dd	618
	dd	7
	align	4
_3830:
	dd	_1043
	dd	619
	dd	7
	align	4
_3832:
	dd	_1043
	dd	620
	dd	7
	align	4
_3867:
	dd	3
	dd	0
	dd	2
	dd	_3868
	dd	_3869
	dd	-52
	dd	0
	align	4
_3844:
	dd	_1043
	dd	621
	dd	8
	align	4
_3866:
	dd	3
	dd	0
	dd	0
	align	4
_3864:
	dd	_1043
	dd	623
	dd	9
	align	4
_3865:
	dd	_1043
	dd	624
	dd	9
	align	4
_3870:
	dd	_1043
	dd	627
	dd	7
_3902:
	db	"LLeft",0
_3903:
	db	"RRight",0
	align	4
_3901:
	dd	3
	dd	0
	dd	2
	dd	_3902
	dd	_632
	dd	-56
	dd	2
	dd	_3903
	dd	_632
	dd	-60
	dd	0
	align	4
_3872:
	dd	_1043
	dd	628
	dd	8
	align	4
_3882:
	dd	3
	dd	0
	dd	0
	align	4
_3874:
	dd	_1043
	dd	628
	dd	22
	align	4
_3883:
	dd	_1043
	dd	630
	dd	8
	align	4
_3886:
	dd	_1043
	dd	631
	dd	8
	align	4
_3889:
	dd	_1043
	dd	632
	dd	8
	align	4
_3892:
	dd	_1043
	dd	633
	dd	8
	align	4
_3900:
	dd	_1043
	dd	637
	dd	8
	align	4
_3919:
	dd	3
	dd	0
	dd	0
	align	4
_3905:
	dd	_1043
	dd	639
	dd	8
	align	4
_3918:
	dd	3
	dd	0
	dd	0
	align	4
_3907:
	dd	_1043
	dd	639
	dd	19
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,93
	align	4
_276:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	39,44,32,39
	align	4
_275:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	39,32,119,105,116,104,32,100,97,116,97,116,121,112,101,115
	dw	32,91,39
	align	4
_274:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,79,112,101,114
	dw	97,116,111,114,32,39
	align	4
_3924:
	dd	_1043
	dd	643
	dd	5
	align	4
_3927:
	dd	3
	dd	0
	dd	0
	align	4
_3926:
	dd	_1043
	dd	643
	dd	23
	align	4
_3931:
	dd	_1043
	dd	645
	dd	4
	align	4
_3936:
	dd	3
	dd	0
	dd	0
	align	4
_3933:
	dd	_1043
	dd	646
	dd	5
	align	4
_3937:
	dd	_1043
	dd	648
	dd	4
	align	4
_4167:
	dd	1
	dd	_669
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
	align	4
_3948:
	dd	_1043
	dd	653
	dd	3
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,114,117,101
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,97,108,115,101
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,111,116
_4009:
	db	"Rec",0
	align	4
_4008:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-8
	dd	0
	align	4
_3981:
	dd	_1043
	dd	709
	dd	5
	align	4
_3983:
	dd	_1043
	dd	710
	dd	5
	align	4
_3986:
	dd	_1043
	dd	711
	dd	5
	align	4
_3989:
	dd	3
	dd	0
	dd	0
	align	4
_3988:
	dd	_1043
	dd	711
	dd	17
	align	4
_3990:
	dd	_1043
	dd	712
	dd	5
	align	4
_3993:
	dd	_1043
	dd	713
	dd	5
	align	4
_3996:
	dd	3
	dd	0
	dd	0
	align	4
_3995:
	dd	_1043
	dd	713
	dd	17
	align	4
_3997:
	dd	_1043
	dd	714
	dd	5
	align	4
_4000:
	dd	_1043
	dd	715
	dd	5
	align	4
_4003:
	dd	3
	dd	0
	dd	0
	align	4
_4002:
	dd	_1043
	dd	715
	dd	17
	align	4
_4004:
	dd	_1043
	dd	716
	dd	5
	align	4
_285:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	85,110,107,110,111,119,110,32,84,111,107,101,110
	align	4
_4007:
	dd	_1043
	dd	717
	dd	5
	align	4
_4021:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-12
	dd	0
	align	4
_4010:
	dd	_1043
	dd	655
	dd	5
	align	4
_4013:
	dd	_1043
	dd	656
	dd	5
	align	4
_4017:
	dd	_1043
	dd	657
	dd	5
	align	4
_4020:
	dd	_1043
	dd	658
	dd	5
	align	4
_4033:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-16
	dd	0
	align	4
_4022:
	dd	_1043
	dd	660
	dd	5
	align	4
_4024:
	dd	_1043
	dd	661
	dd	5
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_4027:
	dd	_1043
	dd	662
	dd	5
	align	4
_4030:
	dd	_1043
	dd	663
	dd	5
	align	4
_4045:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-20
	dd	0
	align	4
_4034:
	dd	_1043
	dd	665
	dd	5
	align	4
_4036:
	dd	_1043
	dd	666
	dd	5
	align	4
_4039:
	dd	_1043
	dd	667
	dd	5
	align	4
_4042:
	dd	_1043
	dd	668
	dd	5
	align	4
_4063:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-24
	dd	2
	dd	_4009
	dd	_3944
	dd	-28
	dd	0
	align	4
_4046:
	dd	_1043
	dd	670
	dd	5
	align	4
_4048:
	dd	_1043
	dd	671
	dd	5
	align	4
_4051:
	dd	_1043
	dd	672
	dd	5
	align	4
_4055:
	dd	_1043
	dd	673
	dd	5
	align	4
_4058:
	dd	_1043
	dd	674
	dd	5
_4098:
	db	"Node3",0
	align	4
_4097:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-32
	dd	2
	dd	_4009
	dd	_3944
	dd	-36
	dd	2
	dd	_1892
	dd	_632
	dd	-40
	dd	2
	dd	_4098
	dd	_632
	dd	-44
	dd	0
	align	4
_4064:
	dd	_1043
	dd	676
	dd	5
	align	4
_4067:
	dd	_1043
	dd	677
	dd	5
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_4069:
	dd	_1043
	dd	678
	dd	5
	align	4
_4073:
	dd	_1043
	dd	679
	dd	5
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_4077:
	dd	_1043
	dd	680
	dd	5
	align	4
_4079:
	dd	_1043
	dd	681
	dd	5
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_4082:
	dd	_1043
	dd	682
	dd	5
	align	4
_4087:
	dd	_1043
	dd	683
	dd	5
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_4092:
	dd	_1043
	dd	684
	dd	5
	align	4
_4113:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-48
	dd	0
	align	4
_4099:
	dd	_1043
	dd	686
	dd	5
	align	4
_4102:
	dd	_1043
	dd	687
	dd	5
	align	4
_4106:
	dd	_1043
	dd	688
	dd	5
	align	4
_4122:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-52
	dd	0
	align	4
_4114:
	dd	_1043
	dd	690
	dd	5
	align	4
_4117:
	dd	_1043
	dd	691
	dd	5
	align	4
_4119:
	dd	_1043
	dd	692
	dd	5
	align	4
_4136:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-56
	dd	0
	align	4
_4123:
	dd	_1043
	dd	694
	dd	5
	align	4
_4125:
	dd	_1043
	dd	695
	dd	5
	align	4
_4130:
	dd	_1043
	dd	696
	dd	5
	align	4
_4133:
	dd	_1043
	dd	697
	dd	5
	align	4
_4150:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-60
	dd	0
	align	4
_4137:
	dd	_1043
	dd	699
	dd	5
	align	4
_4139:
	dd	_1043
	dd	700
	dd	5
	align	4
_4144:
	dd	_1043
	dd	701
	dd	5
	align	4
_4147:
	dd	_1043
	dd	702
	dd	5
	align	4
_4166:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-64
	dd	0
	align	4
_4151:
	dd	_1043
	dd	704
	dd	5
	align	4
_4153:
	dd	_1043
	dd	705
	dd	5
	align	4
_4160:
	dd	_1043
	dd	706
	dd	5
	align	4
_4163:
	dd	_1043
	dd	707
	dd	5
_4951:
	db	"PreParam",0
	align	4
_4950:
	dd	1
	dd	_671
	dd	2
	dd	_1069
	dd	_1960
	dd	-16
	dd	2
	dd	_4951
	dd	_632
	dd	-20
	dd	0
	align	4
_4168:
	dd	_1043
	dd	721
	dd	3
	align	4
_4250:
	dd	3
	dd	0
	dd	2
	dd	_546
	dd	_547
	dd	-24
	dd	2
	dd	_708
	dd	_591
	dd	-28
	dd	2
	dd	_4009
	dd	_3944
	dd	-32
	dd	2
	dd	_631
	dd	_632
	dd	-36
	dd	2
	dd	_699
	dd	_563
	dd	-40
	dd	0
	align	4
_4174:
	dd	_1043
	dd	722
	dd	4
	align	4
_4178:
	dd	_1043
	dd	723
	dd	4
	align	4
_4181:
	dd	_1043
	dd	724
	dd	4
	align	4
_4183:
	dd	_1043
	dd	725
	dd	4
	align	4
_4193:
	dd	3
	dd	0
	dd	0
	align	4
_4186:
	dd	_1043
	dd	726
	dd	5
	align	4
_4189:
	dd	_1043
	dd	727
	dd	5
	align	4
_4192:
	dd	_1043
	dd	728
	dd	5
	align	4
_4194:
	dd	_1043
	dd	730
	dd	4
	align	4
_4198:
	dd	_1043
	dd	731
	dd	4
	align	4
_4201:
	dd	_1043
	dd	732
	dd	4
	align	4
_4205:
	dd	_1043
	dd	733
	dd	4
	align	4
_4208:
	dd	_1043
	dd	734
	dd	4
	align	4
_4216:
	dd	_1043
	dd	735
	dd	4
	align	4
_4218:
	dd	_1043
	dd	736
	dd	4
	align	4
_4229:
	dd	3
	dd	0
	dd	0
	align	4
_4222:
	dd	_1043
	dd	737
	dd	5
	align	4
_4226:
	dd	_1043
	dd	739
	dd	5
	align	4
_4230:
	dd	_1043
	dd	741
	dd	4
	align	4
_4246:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-44
	dd	0
	align	4
_4234:
	dd	_1043
	dd	742
	dd	5
	align	4
_4240:
	dd	_1043
	dd	743
	dd	5
	align	4
_4243:
	dd	_1043
	dd	744
	dd	5
	align	4
_4247:
	dd	_1043
	dd	747
	dd	4
_4944:
	db	"FuncCount",0
_4945:
	db	"Break",0
_4946:
	db	"Recs",0
_4947:
	db	"FunkName",0
_4948:
	db	"Start",0
_4949:
	db	"ParameterCount",0
	align	4
_4943:
	dd	3
	dd	0
	dd	2
	dd	_4944
	dd	_591
	dd	-48
	dd	2
	dd	_4945
	dd	_560
	dd	-4
	dd	2
	dd	_4946
	dd	_563
	dd	-52
	dd	2
	dd	_4947
	dd	_549
	dd	-56
	dd	2
	dd	_569
	dd	_549
	dd	-60
	dd	2
	dd	_4948
	dd	_560
	dd	-8
	dd	2
	dd	_4949
	dd	_591
	dd	-64
	dd	0
	align	4
_4252:
	dd	_1043
	dd	749
	dd	4
	align	4
_4254:
	dd	_1043
	dd	750
	dd	4
	align	4
_4256:
	dd	_1043
	dd	751
	dd	4
	align	4
_4277:
	dd	3
	dd	0
	dd	2
	dd	_606
	dd	_607
	dd	-68
	dd	0
	align	4
_4268:
	dd	_1043
	dd	752
	dd	5
	align	4
_4276:
	dd	3
	dd	0
	dd	0
	align	4
_4274:
	dd	_1043
	dd	753
	dd	6
	align	4
_4275:
	dd	_1043
	dd	754
	dd	6
	align	4
_4278:
	dd	_1043
	dd	757
	dd	4
	align	4
_4281:
	dd	3
	dd	0
	dd	0
	align	4
_4280:
	dd	_1043
	dd	757
	dd	18
	align	4
_4282:
	dd	_1043
	dd	759
	dd	4
	align	4
_4284:
	dd	_1043
	dd	760
	dd	4
	align	4
_4288:
	dd	_1043
	dd	761
	dd	4
	align	4
_4290:
	dd	_1043
	dd	762
	dd	4
	align	4
_4295:
	dd	3
	dd	0
	dd	2
	dd	_1095
	dd	_549
	dd	-72
	dd	0
	align	4
_4292:
	dd	_1043
	dd	763
	dd	5
	align	4
_4294:
	dd	_1043
	dd	764
	dd	5
	align	4
_292:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,95,100,105,109,95,48,95
	align	4
_4296:
	dd	_1043
	dd	767
	dd	4
	align	4
_4299:
	dd	_1043
	dd	768
	dd	4
	align	4
_4301:
	dd	_1043
	dd	769
	dd	4
	align	4
_4303:
	dd	_1043
	dd	770
	dd	4
	align	4
_4310:
	dd	3
	dd	0
	dd	0
	align	4
_4307:
	dd	_1043
	dd	770
	dd	29
	align	4
_4311:
	dd	_1043
	dd	771
	dd	4
	align	4
_4353:
	dd	3
	dd	0
	dd	0
	align	4
_4319:
	dd	_1043
	dd	772
	dd	5
	align	4
_4352:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-76
	dd	0
	align	4
_4324:
	dd	_1043
	dd	773
	dd	6
	align	4
_4329:
	dd	3
	dd	0
	dd	0
	align	4
_4326:
	dd	_1043
	dd	773
	dd	26
	align	4
_4330:
	dd	_1043
	dd	774
	dd	6
	align	4
_4331:
	dd	_1043
	dd	775
	dd	6
	align	4
_4338:
	dd	3
	dd	0
	dd	0
	align	4
_4335:
	dd	_1043
	dd	775
	dd	31
	align	4
_296:
	dd	_bbStringClass
	dd	2147483647
	dd	54
	dw	77,121,70,117,110,99,116,105,111,110,40,44,44,41,32,100
	dw	111,101,115,32,110,111,116,32,119,111,114,107,44,32,97,110
	dw	100,32,105,115,32,110,111,116,32,103,111,105,110,103,32,116
	dw	111,32,119,111,114,107
	align	4
_4339:
	dd	_1043
	dd	776
	dd	6
	align	4
_4343:
	dd	_1043
	dd	777
	dd	6
	align	4
_4346:
	dd	_1043
	dd	779
	dd	6
	align	4
_4351:
	dd	_1043
	dd	780
	dd	6
	align	4
_4354:
	dd	_1043
	dd	783
	dd	4
	align	4
_4361:
	dd	3
	dd	0
	dd	0
	align	4
_4358:
	dd	_1043
	dd	783
	dd	29
	align	4
_4362:
	dd	_1043
	dd	784
	dd	4
	align	4
_4601:
	dd	3
	dd	0
	dd	2
	dd	_606
	dd	_607
	dd	-80
	dd	0
	align	4
_4374:
	dd	_1043
	dd	785
	dd	5
_4600:
	db	"Link",0
	align	4
_4599:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-84
	dd	2
	dd	_4600
	dd	_651
	dd	-88
	dd	2
	dd	_546
	dd	_547
	dd	-92
	dd	2
	dd	_699
	dd	_563
	dd	-96
	dd	0
	align	4
_4378:
	dd	_1043
	dd	787
	dd	6
	align	4
_4379:
	dd	_1043
	dd	788
	dd	6
	align	4
_4397:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_1216
	dd	-100
	dd	0
	align	4
_4391:
	dd	_1043
	dd	789
	dd	7
	align	4
_4396:
	dd	3
	dd	0
	dd	0
	align	4
_4395:
	dd	_1043
	dd	789
	dd	27
	align	4
_4398:
	dd	_1043
	dd	791
	dd	6
	align	4
_4425:
	dd	3
	dd	0
	dd	0
	align	4
_4406:
	dd	_1043
	dd	792
	dd	7
	align	4
_4424:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_1216
	dd	-104
	dd	0
	align	4
_4418:
	dd	_1043
	dd	793
	dd	8
	align	4
_4423:
	dd	3
	dd	0
	dd	0
	align	4
_4422:
	dd	_1043
	dd	794
	dd	9
	align	4
_4426:
	dd	_1043
	dd	798
	dd	6
	align	4
_4429:
	dd	3
	dd	0
	dd	0
	align	4
_4428:
	dd	_1043
	dd	798
	dd	20
	align	4
_4430:
	dd	_1043
	dd	799
	dd	6
	align	4
_4434:
	dd	_1043
	dd	800
	dd	6
	align	4
_306:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_4436:
	dd	_1043
	dd	801
	dd	6
	align	4
_4476:
	dd	3
	dd	0
	dd	0
	align	4
_4440:
	dd	_1043
	dd	802
	dd	7
	align	4
_4475:
	dd	3
	dd	0
	dd	2
	dd	_1896
	dd	_1352
	dd	-108
	dd	0
	align	4
_4454:
	dd	_1043
	dd	803
	dd	8
	align	4
_4474:
	dd	3
	dd	0
	dd	0
	align	4
_4468:
	dd	_1043
	dd	804
	dd	9
	align	4
_4473:
	dd	_1043
	dd	805
	dd	9
	align	4
_4477:
	dd	_1043
	dd	809
	dd	6
	align	4
_4482:
	dd	_1043
	dd	810
	dd	6
	align	4
_4488:
	dd	_1043
	dd	811
	dd	6
	align	4
_4493:
	dd	3
	dd	0
	dd	0
	align	4
_4490:
	dd	_1043
	dd	812
	dd	7
	align	4
_4494:
	dd	_1043
	dd	814
	dd	6
_4515:
	db	"ParamNode",0
	align	4
_4514:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-112
	dd	2
	dd	_4515
	dd	_632
	dd	-116
	dd	0
	align	4
_4504:
	dd	_1043
	dd	815
	dd	7
	align	4
_4508:
	dd	_1043
	dd	818
	dd	7
	align	4
_4511:
	dd	_1043
	dd	819
	dd	7
	align	4
_4516:
	dd	_1043
	dd	821
	dd	6
	align	4
_4526:
	dd	_1043
	dd	822
	dd	6
	align	4
_4528:
	dd	_1043
	dd	823
	dd	6
_4578:
	db	"XNode",0
	align	4
_4577:
	dd	3
	dd	0
	dd	2
	dd	_4578
	dd	_632
	dd	-120
	dd	0
	align	4
_4532:
	dd	_1043
	dd	824
	dd	7
	align	4
_4536:
	dd	_1043
	dd	826
	dd	7
	align	4
_4541:
	dd	_1043
	dd	828
	dd	7
	align	4
_4545:
	dd	_1043
	dd	829
	dd	7
	align	4
_4575:
	dd	3
	dd	0
	dd	0
	align	4
_4551:
	dd	_1043
	dd	831
	dd	8
	align	4
_4574:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-124
	dd	0
	align	4
_4563:
	dd	_1043
	dd	832
	dd	9
	align	4
_4573:
	dd	3
	dd	0
	dd	0
	align	4
_4567:
	dd	_1043
	dd	833
	dd	10
	align	4
_4572:
	dd	_1043
	dd	834
	dd	10
	align	4
_4576:
	dd	_1043
	dd	838
	dd	7
	align	4
_4579:
	dd	_1043
	dd	840
	dd	6
	align	4
_4595:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-128
	dd	0
	align	4
_4583:
	dd	_1043
	dd	841
	dd	7
	align	4
_4589:
	dd	_1043
	dd	842
	dd	7
	align	4
_4592:
	dd	_1043
	dd	843
	dd	7
	align	4
_4596:
	dd	_1043
	dd	845
	dd	6
	align	4
_4602:
	dd	_1043
	dd	848
	dd	4
	align	4
_4937:
	dd	3
	dd	0
	dd	0
	align	4
_4604:
	dd	_1043
	dd	849
	dd	5
	align	4
_4936:
	dd	3
	dd	0
	dd	2
	dd	_606
	dd	_607
	dd	-132
	dd	0
	align	4
_4616:
	dd	_1043
	dd	850
	dd	6
_4935:
	db	"MustBeOptional",0
	align	4
_4934:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-136
	dd	2
	dd	_4600
	dd	_651
	dd	-140
	dd	2
	dd	_4935
	dd	_560
	dd	-12
	dd	2
	dd	_546
	dd	_547
	dd	-144
	dd	2
	dd	_699
	dd	_563
	dd	-148
	dd	0
	align	4
_4620:
	dd	_1043
	dd	852
	dd	7
	align	4
_4624:
	dd	_1043
	dd	853
	dd	7
	align	4
_4626:
	dd	_1043
	dd	854
	dd	7
	align	4
_4658:
	dd	3
	dd	0
	dd	0
	align	4
_4630:
	dd	_1043
	dd	855
	dd	9
	align	4
_4657:
	dd	3
	dd	0
	dd	2
	dd	_1896
	dd	_1352
	dd	-152
	dd	0
	align	4
_4644:
	dd	_1043
	dd	856
	dd	9
	align	4
_4656:
	dd	3
	dd	0
	dd	0
	align	4
_4650:
	dd	_1043
	dd	857
	dd	10
	align	4
_4655:
	dd	_1043
	dd	858
	dd	10
	align	4
_4659:
	dd	_1043
	dd	862
	dd	7
	align	4
_4664:
	dd	_1043
	dd	863
	dd	7
	align	4
_4668:
	dd	_1043
	dd	864
	dd	7
	align	4
_4670:
	dd	_1043
	dd	865
	dd	7
	align	4
_4675:
	dd	3
	dd	0
	dd	0
	align	4
_4672:
	dd	_1043
	dd	866
	dd	8
	align	4
_4676:
	dd	_1043
	dd	868
	dd	7
	align	4
_4849:
	dd	3
	dd	0
	dd	2
	dd	_1891
	dd	_1216
	dd	-156
	dd	2
	dd	_4009
	dd	_3944
	dd	-160
	dd	0
	align	4
_4688:
	dd	_1043
	dd	869
	dd	8
	align	4
_4703:
	dd	3
	dd	0
	dd	0
	align	4
_4696:
	dd	_1043
	dd	871
	dd	9
	align	4
_4701:
	dd	3
	dd	0
	dd	0
	align	4
_4698:
	dd	_1043
	dd	871
	dd	17
	align	4
_4702:
	dd	_1043
	dd	872
	dd	9
	align	4
_4704:
	dd	_1043
	dd	874
	dd	8
	align	4
_4739:
	dd	3
	dd	0
	dd	0
	align	4
_4710:
	dd	_1043
	dd	876
	dd	9
	align	4
_4725:
	dd	3
	dd	0
	dd	0
	align	4
_4714:
	dd	_1043
	dd	877
	dd	10
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
_4738:
	dd	3
	dd	0
	dd	0
	align	4
_4727:
	dd	_1043
	dd	879
	dd	10
	align	4
_4740:
	dd	_1043
	dd	883
	dd	8
	align	4
_4742:
	dd	_1043
	dd	884
	dd	8
	align	4
_4747:
	dd	3
	dd	0
	dd	0
	align	4
_4744:
	dd	_1043
	dd	884
	dd	21
	align	4
_4748:
	dd	_1043
	dd	886
	dd	8
_4824:
	db	":Tcompiler",0
	align	4
_4823:
	dd	3
	dd	0
	dd	2
	dd	_2804
	dd	_4824
	dd	-164
	dd	2
	dd	_2852
	dd	_632
	dd	-168
	dd	0
	align	4
_4754:
	dd	_1043
	dd	888
	dd	9
	align	4
_4755:
	dd	_1043
	dd	889
	dd	9
	align	4
_4757:
	dd	_1043
	dd	891
	dd	9
	align	4
_4770:
	dd	_1043
	dd	892
	dd	9
	align	4
_4773:
	dd	_1043
	dd	894
	dd	9
	align	4
_4775:
	dd	_1043
	dd	895
	dd	9
	align	4
_4819:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-172
	dd	0
	align	4
_4791:
	dd	_1043
	dd	896
	dd	10
	align	4
_4818:
	dd	3
	dd	0
	dd	0
	align	4
_4795:
	dd	_1043
	dd	897
	dd	11
	align	4
_4816:
	dd	3
	dd	0
	dd	2
	dd	_1892
	dd	_632
	dd	-176
	dd	0
	align	4
_4807:
	dd	_1043
	dd	898
	dd	12
	align	4
_4815:
	dd	3
	dd	0
	dd	0
	align	4
_4811:
	dd	_1043
	dd	899
	dd	13
	align	4
_4814:
	dd	_1043
	dd	900
	dd	13
	align	4
_4817:
	dd	_1043
	dd	903
	dd	11
	align	4
_4820:
	dd	_1043
	dd	907
	dd	9
	align	4
_4848:
	dd	3
	dd	0
	dd	2
	dd	_4515
	dd	_632
	dd	-180
	dd	0
	align	4
_4826:
	dd	_1043
	dd	909
	dd	9
	align	4
_4831:
	dd	3
	dd	0
	dd	0
	align	4
_4828:
	dd	_1043
	dd	909
	dd	32
	align	4
_334:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,44,39
	align	4
_4832:
	dd	_1043
	dd	910
	dd	9
	align	4
_4836:
	dd	_1043
	dd	911
	dd	9
	align	4
_4845:
	dd	_1043
	dd	912
	dd	9
	align	4
_4850:
	dd	_1043
	dd	915
	dd	7
	align	4
_4860:
	dd	_1043
	dd	916
	dd	7
	align	4
_4862:
	dd	_1043
	dd	917
	dd	7
	align	4
_4911:
	dd	3
	dd	0
	dd	2
	dd	_4578
	dd	_632
	dd	-184
	dd	0
	align	4
_4866:
	dd	_1043
	dd	918
	dd	8
	align	4
_4870:
	dd	_1043
	dd	920
	dd	8
	align	4
_4875:
	dd	_1043
	dd	922
	dd	8
	align	4
_4879:
	dd	_1043
	dd	923
	dd	8
	align	4
_4909:
	dd	3
	dd	0
	dd	0
	align	4
_4885:
	dd	_1043
	dd	925
	dd	9
	align	4
_4908:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-188
	dd	0
	align	4
_4897:
	dd	_1043
	dd	926
	dd	10
	align	4
_4907:
	dd	3
	dd	0
	dd	0
	align	4
_4901:
	dd	_1043
	dd	927
	dd	11
	align	4
_4906:
	dd	_1043
	dd	928
	dd	11
	align	4
_4910:
	dd	_1043
	dd	932
	dd	8
	align	4
_4912:
	dd	_1043
	dd	934
	dd	7
	align	4
_4928:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-192
	dd	0
	align	4
_4916:
	dd	_1043
	dd	935
	dd	8
	align	4
_4922:
	dd	_1043
	dd	936
	dd	8
	align	4
_4925:
	dd	_1043
	dd	937
	dd	8
	align	4
_4929:
	dd	_1043
	dd	939
	dd	7
	align	4
_4942:
	dd	3
	dd	0
	dd	0
	align	4
_4939:
	dd	_1043
	dd	944
	dd	5
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
_6154:
	dd	1
	dd	_673
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	0
	align	4
_4952:
	dd	_1043
	dd	950
	dd	3
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
_5127:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-12
	dd	2
	dd	_4009
	dd	_3944
	dd	-16
	dd	2
	dd	_1892
	dd	_632
	dd	-20
	dd	0
	align	4
_4968:
	dd	_1043
	dd	954
	dd	5
	align	4
_4971:
	dd	_1043
	dd	955
	dd	5
	align	4
_4973:
	dd	_1043
	dd	956
	dd	5
	align	4
_4977:
	dd	_1043
	dd	957
	dd	5
	align	4
_340:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_4981:
	dd	_1043
	dd	958
	dd	5
	align	4
_4988:
	dd	_1043
	dd	959
	dd	5
	align	4
_341:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,101,110
	align	4
_5010:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-24
	dd	2
	dd	_1892
	dd	_632
	dd	-28
	dd	0
	align	4
_4992:
	dd	_1043
	dd	960
	dd	6
	align	4
_4995:
	dd	_1043
	dd	961
	dd	6
	align	4
_4999:
	dd	_1043
	dd	962
	dd	6
	align	4
_5001:
	dd	_1043
	dd	963
	dd	6
	align	4
_5006:
	dd	_1043
	dd	964
	dd	6
	align	4
_5009:
	dd	_1043
	dd	965
	dd	6
	align	4
_5123:
	dd	3
	dd	0
	dd	0
	align	4
_5012:
	dd	_1043
	dd	967
	dd	6
	align	4
_5015:
	dd	_1043
	dd	968
	dd	6
_5095:
	db	"NodeLine",0
_5096:
	db	"NodeElse",0
	align	4
_5101:
	dd	3
	dd	0
	dd	2
	dd	_5095
	dd	_632
	dd	-32
	dd	2
	dd	_5096
	dd	_632
	dd	-36
	dd	0
	align	4
_5019:
	dd	_1043
	dd	969
	dd	7
	align	4
_5021:
	dd	_1043
	dd	970
	dd	7
	align	4
_5026:
	dd	_1043
	dd	971
	dd	7
	align	4
_5030:
	dd	_1043
	dd	972
	dd	7
_5098:
	db	"NodeLine2",0
_5099:
	db	"NodeIf",0
	align	4
_5097:
	dd	3
	dd	0
	dd	2
	dd	_5098
	dd	_632
	dd	-40
	dd	2
	dd	_5099
	dd	_632
	dd	-44
	dd	2
	dd	_4009
	dd	_3944
	dd	-48
	dd	2
	dd	_1892
	dd	_632
	dd	-52
	dd	0
	align	4
_5033:
	dd	_1043
	dd	973
	dd	8
	align	4
_5036:
	dd	_1043
	dd	974
	dd	8
	align	4
_5040:
	dd	_1043
	dd	975
	dd	8
	align	4
_5045:
	dd	_1043
	dd	976
	dd	8
	align	4
_5049:
	dd	_1043
	dd	977
	dd	8
	align	4
_5053:
	dd	_1043
	dd	978
	dd	8
	align	4
_5057:
	dd	_1043
	dd	979
	dd	8
	align	4
_5064:
	dd	_1043
	dd	980
	dd	8
	align	4
_5067:
	dd	_1043
	dd	981
	dd	8
	align	4
_5094:
	dd	3
	dd	0
	dd	2
	dd	_5095
	dd	_632
	dd	-56
	dd	2
	dd	_5096
	dd	_632
	dd	-60
	dd	0
	align	4
_5075:
	dd	_1043
	dd	982
	dd	9
	align	4
_5078:
	dd	_1043
	dd	983
	dd	9
	align	4
_5082:
	dd	_1043
	dd	984
	dd	9
	align	4
_5087:
	dd	_1043
	dd	985
	dd	9
	align	4
_5091:
	dd	_1043
	dd	986
	dd	9
	align	4
_5100:
	dd	_1043
	dd	989
	dd	7
	align	4
_5119:
	dd	3
	dd	0
	dd	0
	align	4
_5103:
	dd	_1043
	dd	990
	dd	6
_5118:
	db	"ElseNode",0
	align	4
_5117:
	dd	3
	dd	0
	dd	2
	dd	_5118
	dd	_632
	dd	-64
	dd	0
	align	4
_5107:
	dd	_1043
	dd	991
	dd	7
	align	4
_5110:
	dd	_1043
	dd	992
	dd	7
	align	4
_5114:
	dd	_1043
	dd	993
	dd	7
	align	4
_5120:
	dd	_1043
	dd	996
	dd	6
	align	4
_5124:
	dd	_1043
	dd	999
	dd	5
	align	4
_5169:
	dd	3
	dd	0
	dd	2
	dd	_590
	dd	_591
	dd	-68
	dd	2
	dd	_631
	dd	_632
	dd	-72
	dd	2
	dd	_4009
	dd	_3944
	dd	-76
	dd	2
	dd	_1892
	dd	_632
	dd	-80
	dd	0
	align	4
_5128:
	dd	_1043
	dd	1001
	dd	5
	align	4
_5132:
	dd	_1043
	dd	1002
	dd	5
	align	4
_5136:
	dd	_1043
	dd	1003
	dd	5
	align	4
_5139:
	dd	_1043
	dd	1004
	dd	5
	align	4
_5141:
	dd	_1043
	dd	1005
	dd	5
	align	4
_5145:
	dd	_1043
	dd	1006
	dd	5
	align	4
_5149:
	dd	_1043
	dd	1008
	dd	5
	align	4
_5156:
	dd	_1043
	dd	1009
	dd	5
	align	4
_5159:
	dd	_1043
	dd	1010
	dd	5
	align	4
_5162:
	dd	_1043
	dd	1011
	dd	5
	align	4
_5166:
	dd	_1043
	dd	1012
	dd	5
	align	4
_5211:
	dd	3
	dd	0
	dd	2
	dd	_590
	dd	_591
	dd	-84
	dd	2
	dd	_631
	dd	_632
	dd	-88
	dd	2
	dd	_4009
	dd	_3944
	dd	-92
	dd	2
	dd	_1892
	dd	_632
	dd	-96
	dd	0
	align	4
_5170:
	dd	_1043
	dd	1014
	dd	5
	align	4
_5174:
	dd	_1043
	dd	1015
	dd	5
	align	4
_5178:
	dd	_1043
	dd	1016
	dd	5
	align	4
_5181:
	dd	_1043
	dd	1017
	dd	5
	align	4
_5183:
	dd	_1043
	dd	1018
	dd	5
	align	4
_5186:
	dd	_1043
	dd	1019
	dd	5
	align	4
_5189:
	dd	_1043
	dd	1020
	dd	5
	align	4
_5193:
	dd	_1043
	dd	1021
	dd	5
	align	4
_5197:
	dd	_1043
	dd	1023
	dd	5
	align	4
_5204:
	dd	_1043
	dd	1024
	dd	5
	align	4
_5208:
	dd	_1043
	dd	1025
	dd	5
_5334:
	db	"variable",0
_5335:
	db	"TmpNode",0
	align	4
_5333:
	dd	3
	dd	0
	dd	2
	dd	_590
	dd	_591
	dd	-100
	dd	2
	dd	_631
	dd	_632
	dd	-104
	dd	2
	dd	_4009
	dd	_3942
	dd	-108
	dd	2
	dd	_5334
	dd	_1315
	dd	-112
	dd	2
	dd	_5335
	dd	_632
	dd	-116
	dd	0
	align	4
_5212:
	dd	_1043
	dd	1027
	dd	5
	align	4
_5216:
	dd	_1043
	dd	1028
	dd	5
	align	4
_5220:
	dd	_1043
	dd	1029
	dd	5
	align	4
_5223:
	dd	_1043
	dd	1030
	dd	5
	align	4
_5225:
	dd	_1043
	dd	1031
	dd	5
	align	4
_5229:
	dd	_1043
	dd	1032
	dd	5
	align	4
_5233:
	dd	_1043
	dd	1040
	dd	5
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_5237:
	dd	_1043
	dd	1041
	dd	5
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_5242:
	dd	_1043
	dd	1042
	dd	5
	align	4
_5247:
	dd	_1043
	dd	1044
	dd	5
	align	4
_5250:
	dd	_1043
	dd	1045
	dd	5
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_5253:
	dd	_1043
	dd	1046
	dd	5
	align	4
_5256:
	dd	_1043
	dd	1047
	dd	5
	align	4
_5263:
	dd	_1043
	dd	1050
	dd	5
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_5266:
	dd	_1043
	dd	1051
	dd	5
	align	4
_5269:
	dd	_1043
	dd	1052
	dd	5
	align	4
_5272:
	dd	_1043
	dd	1053
	dd	5
	align	4
_5279:
	dd	_1043
	dd	1055
	dd	5
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_5299:
	dd	3
	dd	0
	dd	0
	align	4
_5283:
	dd	_1043
	dd	1056
	dd	6
	align	4
_5286:
	dd	_1043
	dd	1057
	dd	6
	align	4
_5289:
	dd	_1043
	dd	1058
	dd	6
	align	4
_5292:
	dd	_1043
	dd	1059
	dd	6
	align	4
_5309:
	dd	3
	dd	0
	dd	0
	align	4
_5301:
	dd	_1043
	dd	1061
	dd	6
	align	4
_5304:
	dd	_1043
	dd	1062
	dd	6
	align	4
_5310:
	dd	_1043
	dd	1065
	dd	5
	align	4
_5313:
	dd	_1043
	dd	1066
	dd	5
	align	4
_5323:
	dd	_1043
	dd	1068
	dd	5
	align	4
_5326:
	dd	_1043
	dd	1069
	dd	5
	align	4
_5330:
	dd	_1043
	dd	1070
	dd	5
	align	4
_5350:
	dd	3
	dd	0
	dd	0
	align	4
_5336:
	dd	_1043
	dd	1072
	dd	5
	align	4
_5343:
	dd	3
	dd	0
	dd	0
	align	4
_5340:
	dd	_1043
	dd	1072
	dd	28
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,117,115,116,32,98,101,32,105,110,32,97,32,108,111,111
	dw	112
	align	4
_5344:
	dd	_1043
	dd	1073
	dd	5
	align	4
_5347:
	dd	_1043
	dd	1074
	dd	5
	align	4
_5365:
	dd	3
	dd	0
	dd	0
	align	4
_5351:
	dd	_1043
	dd	1076
	dd	5
	align	4
_5358:
	dd	3
	dd	0
	dd	0
	align	4
_5355:
	dd	_1043
	dd	1076
	dd	28
	align	4
_5359:
	dd	_1043
	dd	1077
	dd	5
	align	4
_5362:
	dd	_1043
	dd	1078
	dd	5
_5685:
	db	"FuncNode",0
_5559:
	db	"DatatypeName",0
_5686:
	db	"isArray",0
_5687:
	db	"CodeNode",0
	align	4
_5684:
	dd	3
	dd	0
	dd	2
	dd	_5685
	dd	_632
	dd	-120
	dd	2
	dd	_4947
	dd	_549
	dd	-124
	dd	2
	dd	_5559
	dd	_549
	dd	-128
	dd	2
	dd	_5686
	dd	_591
	dd	-132
	dd	2
	dd	_546
	dd	_547
	dd	-136
	dd	2
	dd	_1140
	dd	_640
	dd	-140
	dd	2
	dd	_569
	dd	_549
	dd	-144
	dd	2
	dd	_5687
	dd	_632
	dd	-148
	dd	0
	align	4
_5366:
	dd	_1043
	dd	1080
	dd	5
	align	4
_5369:
	dd	_1043
	dd	1081
	dd	5
	align	4
_5378:
	dd	3
	dd	0
	dd	0
	align	4
_5375:
	dd	_1043
	dd	1083
	dd	7
	align	4
_5379:
	dd	_1043
	dd	1085
	dd	5
	align	4
_5381:
	dd	_1043
	dd	1086
	dd	5
	align	4
_5385:
	dd	_1043
	dd	1087
	dd	5
	align	4
_5388:
	dd	_1043
	dd	1088
	dd	5
	align	4
_5391:
	dd	_1043
	dd	1089
	dd	5
	align	4
_5395:
	dd	_1043
	dd	1090
	dd	5
	align	4
_5398:
	dd	_1043
	dd	1091
	dd	5
	align	4
_5400:
	dd	_1043
	dd	1092
	dd	5
	align	4
_5410:
	dd	3
	dd	0
	dd	0
	align	4
_5403:
	dd	_1043
	dd	1093
	dd	6
	align	4
_5406:
	dd	_1043
	dd	1094
	dd	6
	align	4
_5409:
	dd	_1043
	dd	1095
	dd	6
	align	4
_5411:
	dd	_1043
	dd	1097
	dd	5
	align	4
_5413:
	dd	_1043
	dd	1098
	dd	5
	align	4
_5421:
	dd	_1043
	dd	1100
	dd	5
	align	4
_5424:
	dd	_1043
	dd	1102
	dd	5
	align	4
_5428:
	dd	_1043
	dd	1103
	dd	5
_5432:
	db	":brl.linkedlist.TList",0
	align	4
_5437:
	dd	_1043
	dd	1104
	dd	5
	align	4
_5448:
	dd	_1043
	dd	1105
	dd	5
	align	4
_5450:
	dd	_1043
	dd	1107
	dd	5
	align	4
_5478:
	dd	3
	dd	0
	dd	2
	dd	_546
	dd	_547
	dd	-152
	dd	2
	dd	_2051
	dd	_632
	dd	-156
	dd	0
	align	4
_5458:
	dd	_1043
	dd	1108
	dd	6
	align	4
_5461:
	dd	_1043
	dd	1109
	dd	6
	align	4
_5465:
	dd	_1043
	dd	1110
	dd	6
	align	4
_5468:
	dd	_1043
	dd	1111
	dd	6
	align	4
_5472:
	dd	_1043
	dd	1112
	dd	6
	align	4
_5475:
	dd	_1043
	dd	1113
	dd	6
	align	4
_5479:
	dd	_1043
	dd	1115
	dd	5
	align	4
_5558:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-160
	dd	2
	dd	_5559
	dd	_549
	dd	-164
	dd	2
	dd	_2051
	dd	_632
	dd	-168
	dd	2
	dd	_708
	dd	_591
	dd	-172
	dd	2
	dd	_546
	dd	_547
	dd	-176
	dd	0
	align	4
_5482:
	dd	_1043
	dd	1116
	dd	6
	align	4
_5489:
	dd	3
	dd	0
	dd	0
	align	4
_5486:
	dd	_1043
	dd	1116
	dd	49
	align	4
_363:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,118,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_5490:
	dd	_1043
	dd	1117
	dd	6
	align	4
_5494:
	dd	_1043
	dd	1118
	dd	6
	align	4
_5497:
	dd	_1043
	dd	1119
	dd	6
	align	4
_5500:
	dd	_1043
	dd	1120
	dd	6
	align	4
_5504:
	dd	_1043
	dd	1122
	dd	6
	align	4
_5505:
	dd	_1043
	dd	1123
	dd	6
	align	4
_5508:
	dd	_1043
	dd	1125
	dd	6
	align	4
_5512:
	dd	_1043
	dd	1126
	dd	6
	align	4
_5514:
	dd	_1043
	dd	1128
	dd	6
	align	4
_5524:
	dd	3
	dd	0
	dd	0
	align	4
_5517:
	dd	_1043
	dd	1129
	dd	7
	align	4
_5520:
	dd	_1043
	dd	1130
	dd	7
	align	4
_5523:
	dd	_1043
	dd	1131
	dd	7
	align	4
_5525:
	dd	_1043
	dd	1133
	dd	6
	align	4
_367:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	95,95,100,105,109,95
	align	4
_5526:
	dd	_1043
	dd	1134
	dd	6
	align	4
_5528:
	dd	_1043
	dd	1135
	dd	6
	align	4
_5531:
	dd	_1043
	dd	1136
	dd	6
	align	4
_5534:
	dd	_1043
	dd	1137
	dd	6
	align	4
_5537:
	dd	_1043
	dd	1139
	dd	6
	align	4
_5547:
	dd	3
	dd	0
	dd	0
	align	4
_5541:
	dd	_1043
	dd	1140
	dd	7
	align	4
_5544:
	dd	_1043
	dd	1141
	dd	7
	align	4
_5548:
	dd	_1043
	dd	1144
	dd	6
	align	4
_5552:
	dd	3
	dd	0
	dd	0
	align	4
_5557:
	dd	3
	dd	0
	dd	0
	align	4
_5554:
	dd	_1043
	dd	1146
	dd	7
	align	4
_5560:
	dd	_1043
	dd	1149
	dd	5
	align	4
_5563:
	dd	_1043
	dd	1150
	dd	5
	align	4
_5566:
	dd	_1043
	dd	1151
	dd	5
	align	4
_5569:
	dd	_1043
	dd	1152
	dd	5
	align	4
_5572:
	dd	_1043
	dd	1153
	dd	5
	align	4
_5576:
	dd	_1043
	dd	1154
	dd	5
	align	4
_5579:
	dd	_1043
	dd	1155
	dd	5
	align	4
_5587:
	dd	_1043
	dd	1156
	dd	5
	align	4
_5590:
	dd	_1043
	dd	1157
	dd	5
	align	4
_5595:
	dd	_1043
	dd	1158
	dd	5
	align	4
_5603:
	dd	_1043
	dd	1159
	dd	5
	align	4
_5680:
	dd	3
	dd	0
	dd	2
	dd	_606
	dd	_607
	dd	-180
	dd	0
	align	4
_5615:
	dd	_1043
	dd	1160
	dd	6
	align	4
_5679:
	dd	3
	dd	0
	dd	0
	align	4
_5619:
	dd	_1043
	dd	1161
	dd	7
	align	4
_5677:
	dd	3
	dd	0
	dd	2
	dd	_2051
	dd	_607
	dd	-184
	dd	2
	dd	_4578
	dd	_632
	dd	-188
	dd	0
	align	4
_5631:
	dd	_1043
	dd	1162
	dd	8
	align	4
_5635:
	dd	_1043
	dd	1163
	dd	8
	align	4
_5640:
	dd	_1043
	dd	1164
	dd	8
	align	4
_5668:
	dd	3
	dd	0
	dd	2
	dd	_1280
	dd	_632
	dd	-192
	dd	0
	align	4
_5652:
	dd	_1043
	dd	1165
	dd	9
	align	4
_5667:
	dd	3
	dd	0
	dd	0
	align	4
_5660:
	dd	_1043
	dd	1166
	dd	10
	align	4
_5669:
	dd	_1043
	dd	1170
	dd	8
	align	4
_5672:
	dd	_1043
	dd	1171
	dd	8
	align	4
_5678:
	dd	_1043
	dd	1173
	dd	7
	align	4
_5681:
	dd	_1043
	dd	1176
	dd	5
	align	4
_5717:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-196
	dd	2
	dd	_4009
	dd	_3942
	dd	-200
	dd	0
	align	4
_5688:
	dd	_1043
	dd	1178
	dd	5
	align	4
_5695:
	dd	3
	dd	0
	dd	0
	align	4
_5692:
	dd	_1043
	dd	1178
	dd	35
	align	4
_378:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	82,101,116,117,114,110,32,109,117,115,116,32,98,101,32,105
	dw	110,32,97,32,70,117,110,99,116,105,111,110
	align	4
_5696:
	dd	_1043
	dd	1179
	dd	5
	align	4
_5699:
	dd	_1043
	dd	1180
	dd	5
	align	4
_5701:
	dd	_1043
	dd	1181
	dd	5
	align	4
_5705:
	dd	_1043
	dd	1183
	dd	5
	align	4
_5714:
	dd	_1043
	dd	1184
	dd	5
	align	4
_5883:
	dd	3
	dd	0
	dd	2
	dd	_590
	dd	_591
	dd	-204
	dd	2
	dd	_631
	dd	_632
	dd	-208
	dd	2
	dd	_1892
	dd	_632
	dd	-212
	dd	2
	dd	_4009
	dd	_3944
	dd	-216
	dd	0
	align	4
_5718:
	dd	_1043
	dd	1186
	dd	5
	align	4
_5722:
	dd	_1043
	dd	1188
	dd	5
	align	4
_5725:
	dd	_1043
	dd	1189
	dd	5
	align	4
_5727:
	dd	_1043
	dd	1191
	dd	5
	align	4
_5731:
	dd	_1043
	dd	1192
	dd	5
	align	4
_5735:
	dd	_1043
	dd	1194
	dd	5
	align	4
_5742:
	dd	_1043
	dd	1195
	dd	5
	align	4
_5745:
	dd	_1043
	dd	1196
	dd	5
_5845:
	db	"Do",0
_5846:
	db	"Cases",0
_5847:
	db	"[]:bah.libxml.TxmlNode",0
	align	4
_5844:
	dd	3
	dd	0
	dd	2
	dd	_5845
	dd	_560
	dd	-4
	dd	2
	dd	_5846
	dd	_5847
	dd	-220
	dd	2
	dd	_5335
	dd	_632
	dd	-224
	dd	0
	align	4
_5748:
	dd	_1043
	dd	1197
	dd	6
	align	4
_5751:
	dd	_1043
	dd	1198
	dd	6
	align	4
_5753:
	dd	_1043
	dd	1199
	dd	6
_5754:
	db	":bah.libxml.TxmlNode",0
	align	4
_5756:
	dd	_1043
	dd	1215
	dd	6
_5805:
	db	"NodeCase",0
	align	4
_5804:
	dd	3
	dd	0
	dd	2
	dd	_5095
	dd	_632
	dd	-228
	dd	2
	dd	_5805
	dd	_632
	dd	-232
	dd	2
	dd	_1892
	dd	_632
	dd	-236
	dd	2
	dd	_4009
	dd	_3944
	dd	-240
	dd	0
	align	4
_5757:
	dd	_1043
	dd	1201
	dd	7
	align	4
_5758:
	dd	_1043
	dd	1202
	dd	7
	align	4
_5762:
	dd	_1043
	dd	1203
	dd	7
	align	4
_5767:
	dd	_1043
	dd	1205
	dd	7
	align	4
_5771:
	dd	_1043
	dd	1206
	dd	7
	align	4
_5775:
	dd	_1043
	dd	1207
	dd	7
	align	4
_5779:
	dd	_1043
	dd	1210
	dd	7
	align	4
_5786:
	dd	_1043
	dd	1212
	dd	7
	align	4
_5794:
	dd	3
	dd	0
	dd	0
	align	4
_5790:
	dd	_1043
	dd	1212
	dd	32
	align	4
_5791:
	dd	_1043
	dd	1212
	dd	40
	align	4
_5795:
	dd	_1043
	dd	1213
	dd	7
	align	4
_5796:
	dd	_1043
	dd	1214
	dd	7
	align	4
_5806:
	dd	_1043
	dd	1216
	dd	6
	align	4
_386:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	116,109,112
	align	4
_5808:
	dd	_1043
	dd	1217
	dd	6
	align	4
_5811:
	dd	_1043
	dd	1218
	dd	6
	align	4
_5843:
	dd	3
	dd	0
	dd	0
	align	4
_5815:
	dd	_1043
	dd	1219
	dd	7
_5842:
	db	"tmp",0
	align	4
_5841:
	dd	3
	dd	0
	dd	2
	dd	_5842
	dd	_632
	dd	-244
	dd	0
	align	4
_5827:
	dd	_1043
	dd	1220
	dd	8
	align	4
_5840:
	dd	3
	dd	0
	dd	0
	align	4
_5831:
	dd	_1043
	dd	1221
	dd	9
_5839:
	db	"Tmp2",0
	align	4
_5838:
	dd	3
	dd	0
	dd	2
	dd	_5839
	dd	_632
	dd	-248
	dd	0
	align	4
_5837:
	dd	_1043
	dd	1222
	dd	10
	align	4
_5848:
	dd	_1043
	dd	1230
	dd	5
_5872:
	db	"NodeDefault",0
	align	4
_5871:
	dd	3
	dd	0
	dd	2
	dd	_5095
	dd	_632
	dd	-252
	dd	2
	dd	_5872
	dd	_632
	dd	-256
	dd	0
	align	4
_5852:
	dd	_1043
	dd	1231
	dd	6
	align	4
_5855:
	dd	_1043
	dd	1232
	dd	6
	align	4
_5859:
	dd	_1043
	dd	1233
	dd	6
	align	4
_5864:
	dd	_1043
	dd	1234
	dd	6
	align	4
_5868:
	dd	_1043
	dd	1235
	dd	6
	align	4
_5873:
	dd	_1043
	dd	1237
	dd	5
	align	4
_5876:
	dd	_1043
	dd	1238
	dd	5
	align	4
_5880:
	dd	_1043
	dd	1239
	dd	5
	align	4
_6082:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-260
	dd	2
	dd	_546
	dd	_547
	dd	-264
	dd	0
	align	4
_5884:
	dd	_1043
	dd	1242
	dd	5
	align	4
_5887:
	dd	_1043
	dd	1243
	dd	5
	align	4
_5891:
	dd	_1043
	dd	1244
	dd	5
	align	4
_5899:
	dd	_1043
	dd	1245
	dd	5
	align	4
_5901:
	dd	_1043
	dd	1247
	dd	5
	align	4
_5904:
	dd	_1043
	dd	1248
	dd	5
	align	4
_5914:
	dd	3
	dd	0
	dd	0
	align	4
_5908:
	dd	_1043
	dd	1250
	dd	6
	align	4
_5911:
	dd	_1043
	dd	1251
	dd	6
	align	4
_5915:
	dd	_1043
	dd	1255
	dd	5
	align	4
_5918:
	dd	_1043
	dd	1256
	dd	5
	align	4
_6063:
	dd	3
	dd	0
	dd	0
	align	4
_5921:
	dd	_1043
	dd	1257
	dd	6
	align	4
_6059:
	dd	3
	dd	0
	dd	0
	align	4
_5925:
	dd	_1043
	dd	1258
	dd	7
	align	4
_5942:
	dd	3
	dd	0
	dd	0
	align	4
_5935:
	dd	_1043
	dd	1260
	dd	9
	align	4
_5939:
	dd	_1043
	dd	1261
	dd	9
	align	4
_5950:
	dd	3
	dd	0
	dd	0
	align	4
_5943:
	dd	_1043
	dd	1263
	dd	9
	align	4
_5947:
	dd	_1043
	dd	1264
	dd	9
	align	4
_5958:
	dd	3
	dd	0
	dd	0
	align	4
_5951:
	dd	_1043
	dd	1266
	dd	9
	align	4
_5955:
	dd	_1043
	dd	1267
	dd	9
_6001:
	db	"FieldName",0
	align	4
_6000:
	dd	3
	dd	0
	dd	2
	dd	_6001
	dd	_549
	dd	-268
	dd	2
	dd	_546
	dd	_547
	dd	-272
	dd	0
	align	4
_5959:
	dd	_1043
	dd	1269
	dd	9
	align	4
_5962:
	dd	_1043
	dd	1270
	dd	9
	align	4
_5966:
	dd	_1043
	dd	1271
	dd	9
	align	4
_5969:
	dd	_1043
	dd	1272
	dd	9
	align	4
_5972:
	dd	_1043
	dd	1273
	dd	9
	align	4
_5976:
	dd	_1043
	dd	1274
	dd	9
	align	4
_5979:
	dd	_1043
	dd	1275
	dd	9
	align	4
_5988:
	dd	3
	dd	0
	dd	0
	align	4
_5982:
	dd	_1043
	dd	1276
	dd	10
	align	4
_5985:
	dd	_1043
	dd	1277
	dd	10
	align	4
_5989:
	dd	_1043
	dd	1279
	dd	9
	align	4
_5999:
	dd	3
	dd	0
	dd	0
	align	4
_5993:
	dd	_1043
	dd	1280
	dd	10
	align	4
_5996:
	dd	_1043
	dd	1281
	dd	10
_6058:
	db	"TmpMode",0
	align	4
_6057:
	dd	3
	dd	0
	dd	2
	dd	_6058
	dd	_591
	dd	-276
	dd	0
	align	4
_6002:
	dd	_1043
	dd	1284
	dd	9
	align	4
_6005:
	dd	_1043
	dd	1285
	dd	9
	align	4
_6014:
	dd	3
	dd	0
	dd	0
	align	4
_6011:
	dd	_1043
	dd	1287
	dd	11
	align	4
_6015:
	dd	_1043
	dd	1289
	dd	9
	align	4
_6031:
	dd	_1043
	dd	1290
	dd	9
	align	4
_6034:
	dd	_1043
	dd	1291
	dd	9
	align	4
_6038:
	dd	_1043
	dd	1292
	dd	9
	align	4
_6042:
	dd	_1043
	dd	1293
	dd	9
	align	4
_6046:
	dd	_1043
	dd	1294
	dd	9
	align	4
_6049:
	dd	_1043
	dd	1295
	dd	9
	align	4
_6053:
	dd	_1043
	dd	1296
	dd	9
	align	4
_6060:
	dd	_1043
	dd	1299
	dd	6
	align	4
_6064:
	dd	_1043
	dd	1301
	dd	5
	align	4
_6072:
	dd	_1043
	dd	1302
	dd	5
	align	4
_6075:
	dd	_1043
	dd	1303
	dd	5
	align	4
_6079:
	dd	_1043
	dd	1304
	dd	5
	align	4
_6153:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-280
	dd	2
	dd	_631
	dd	_632
	dd	-284
	dd	2
	dd	_546
	dd	_547
	dd	-288
	dd	0
	align	4
_6083:
	dd	_1043
	dd	1306
	dd	5
	align	4
_6086:
	dd	_1043
	dd	1307
	dd	5
	align	4
_6090:
	dd	_1043
	dd	1308
	dd	5
	align	4
_6093:
	dd	_1043
	dd	1309
	dd	5
	align	4
_6100:
	dd	3
	dd	0
	dd	0
	align	4
_6097:
	dd	_1043
	dd	1309
	dd	34
	align	4
_400:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,107,110,111,119,110,32,84,121,112,101,32,39
	align	4
_6101:
	dd	_1043
	dd	1310
	dd	5
	align	4
_6103:
	dd	_1043
	dd	1311
	dd	5
	align	4
_6106:
	dd	_1043
	dd	1312
	dd	5
	align	4
_6108:
	dd	_1043
	dd	1313
	dd	5
	align	4
_6149:
	dd	3
	dd	0
	dd	0
	align	4
_6112:
	dd	_1043
	dd	1322
	dd	6
	align	4
_6146:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-292
	dd	0
	align	4
_6113:
	dd	_1043
	dd	1316
	dd	7
	align	4
_6116:
	dd	_1043
	dd	1317
	dd	7
	align	4
_6120:
	dd	_1043
	dd	1318
	dd	7
	align	4
_6124:
	dd	_1043
	dd	1319
	dd	7
	align	4
_6138:
	dd	_1043
	dd	1320
	dd	7
	align	4
_404:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_6143:
	dd	_1043
	dd	1321
	dd	7
	align	4
_6150:
	dd	_1043
	dd	1324
	dd	5
_6616:
	db	"DoSet",0
	align	4
_6615:
	dd	1
	dd	_674
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	2
	dd	_6616
	dd	_560
	dd	-4
	dd	0
	align	4
_6155:
	dd	_1043
	dd	1329
	dd	3
	align	4
_405:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
_6287:
	db	"LastVar",0
	align	4
_6286:
	dd	3
	dd	0
	dd	2
	dd	_1167
	dd	_632
	dd	-12
	dd	2
	dd	_6287
	dd	_1315
	dd	-16
	dd	0
	align	4
_6162:
	dd	_1043
	dd	1331
	dd	5
	align	4
_6164:
	dd	_1043
	dd	1332
	dd	5
	align	4
_6166:
	dd	_1043
	dd	1374
	dd	5
	align	4
_6282:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-20
	dd	0
	align	4
_6167:
	dd	_1043
	dd	1334
	dd	6
	align	4
_6171:
	dd	_1043
	dd	1335
	dd	6
_6267:
	db	"DimCount",0
	align	4
_6266:
	dd	3
	dd	0
	dd	2
	dd	_5559
	dd	_549
	dd	-24
	dd	2
	dd	_6267
	dd	_591
	dd	-28
	dd	2
	dd	_546
	dd	_547
	dd	-32
	dd	0
	align	4
_6173:
	dd	_1043
	dd	1336
	dd	7
	align	4
_6176:
	dd	_1043
	dd	1337
	dd	7
	align	4
_6179:
	dd	_1043
	dd	1338
	dd	7
	align	4
_6188:
	dd	3
	dd	0
	dd	0
	align	4
_6185:
	dd	_1043
	dd	1338
	dd	49
	align	4
_409:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	85,110,107,110,111,119,110,32,68,97,116,97,116,121,112,101
	align	4
_6189:
	dd	_1043
	dd	1339
	dd	7
	align	4
_6193:
	dd	_1043
	dd	1340
	dd	7
	align	4
_6196:
	dd	_1043
	dd	1341
	dd	7
	align	4
_6198:
	dd	_1043
	dd	1342
	dd	7
	align	4
_6208:
	dd	3
	dd	0
	dd	0
	align	4
_6201:
	dd	_1043
	dd	1343
	dd	8
	align	4
_6204:
	dd	_1043
	dd	1344
	dd	8
	align	4
_6207:
	dd	_1043
	dd	1345
	dd	8
	align	4
_6209:
	dd	_1043
	dd	1347
	dd	7
	align	4
_6211:
	dd	_1043
	dd	1348
	dd	7
	align	4
_6214:
	dd	_1043
	dd	1350
	dd	7
_6261:
	db	"NodeValue",0
_6262:
	db	"LineNode",0
	align	4
_6260:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-36
	dd	2
	dd	_1892
	dd	_632
	dd	-40
	dd	2
	dd	_6261
	dd	_632
	dd	-44
	dd	2
	dd	_6262
	dd	_632
	dd	-48
	dd	0
	align	4
_6220:
	dd	_1043
	dd	1351
	dd	8
	align	4
_6223:
	dd	_1043
	dd	1352
	dd	8
	align	4
_6227:
	dd	_1043
	dd	1353
	dd	8
	align	4
_413:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_6229:
	dd	_1043
	dd	1354
	dd	8
	align	4
_6236:
	dd	_1043
	dd	1355
	dd	8
	align	4
_6240:
	dd	_1043
	dd	1357
	dd	8
	align	4
_6247:
	dd	_1043
	dd	1359
	dd	8
	align	4
_6249:
	dd	_1043
	dd	1360
	dd	8
	align	4
_6254:
	dd	_1043
	dd	1361
	dd	8
	align	4
_6255:
	dd	_1043
	dd	1362
	dd	8
	align	4
_6263:
	dd	_1043
	dd	1365
	dd	7
	align	4
_6272:
	dd	3
	dd	0
	dd	0
	align	4
_6269:
	dd	_1043
	dd	1367
	dd	7
	align	4
_414:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,86,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_6273:
	dd	_1043
	dd	1369
	dd	6
	align	4
_6278:
	dd	3
	dd	0
	dd	0
	align	4
_6277:
	dd	_1043
	dd	1370
	dd	7
	align	4
_6281:
	dd	3
	dd	0
	dd	0
	align	4
_6280:
	dd	_1043
	dd	1372
	dd	7
	align	4
_6283:
	dd	_1043
	dd	1375
	dd	5
	align	4
_6406:
	dd	3
	dd	0
	dd	2
	dd	_1167
	dd	_632
	dd	-52
	dd	2
	dd	_6287
	dd	_1315
	dd	-56
	dd	0
	align	4
_6288:
	dd	_1043
	dd	1377
	dd	5
	align	4
_6290:
	dd	_1043
	dd	1378
	dd	5
	align	4
_6292:
	dd	_1043
	dd	1418
	dd	5
	align	4
_6402:
	dd	3
	dd	0
	dd	2
	dd	_548
	dd	_549
	dd	-60
	dd	0
	align	4
_6293:
	dd	_1043
	dd	1380
	dd	6
	align	4
_6297:
	dd	_1043
	dd	1381
	dd	6
	align	4
_6387:
	dd	3
	dd	0
	dd	2
	dd	_5559
	dd	_549
	dd	-64
	dd	2
	dd	_6267
	dd	_591
	dd	-68
	dd	2
	dd	_546
	dd	_547
	dd	-72
	dd	0
	align	4
_6299:
	dd	_1043
	dd	1382
	dd	7
	align	4
_6302:
	dd	_1043
	dd	1383
	dd	7
	align	4
_6305:
	dd	_1043
	dd	1384
	dd	7
	align	4
_6314:
	dd	3
	dd	0
	dd	0
	align	4
_6311:
	dd	_1043
	dd	1384
	dd	49
	align	4
_6315:
	dd	_1043
	dd	1385
	dd	7
	align	4
_6319:
	dd	_1043
	dd	1387
	dd	7
	align	4
_6322:
	dd	_1043
	dd	1388
	dd	7
	align	4
_6324:
	dd	_1043
	dd	1389
	dd	7
	align	4
_6334:
	dd	3
	dd	0
	dd	0
	align	4
_6327:
	dd	_1043
	dd	1390
	dd	8
	align	4
_6330:
	dd	_1043
	dd	1391
	dd	8
	align	4
_6333:
	dd	_1043
	dd	1392
	dd	8
	align	4
_6335:
	dd	_1043
	dd	1394
	dd	7
	align	4
_6337:
	dd	_1043
	dd	1395
	dd	7
	align	4
_6383:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-76
	dd	2
	dd	_1892
	dd	_632
	dd	-80
	dd	2
	dd	_6261
	dd	_632
	dd	-84
	dd	2
	dd	_6262
	dd	_632
	dd	-88
	dd	0
	align	4
_6343:
	dd	_1043
	dd	1396
	dd	8
	align	4
_6346:
	dd	_1043
	dd	1397
	dd	8
	align	4
_6350:
	dd	_1043
	dd	1398
	dd	8
	align	4
_6352:
	dd	_1043
	dd	1399
	dd	8
	align	4
_6359:
	dd	_1043
	dd	1400
	dd	8
	align	4
_6363:
	dd	_1043
	dd	1402
	dd	8
	align	4
_6370:
	dd	_1043
	dd	1404
	dd	8
	align	4
_6372:
	dd	_1043
	dd	1405
	dd	8
	align	4
_6377:
	dd	_1043
	dd	1406
	dd	8
	align	4
_6378:
	dd	_1043
	dd	1407
	dd	8
	align	4
_6384:
	dd	_1043
	dd	1409
	dd	7
	align	4
_6392:
	dd	3
	dd	0
	dd	0
	align	4
_6389:
	dd	_1043
	dd	1411
	dd	7
	align	4
_6393:
	dd	_1043
	dd	1413
	dd	6
	align	4
_6398:
	dd	3
	dd	0
	dd	0
	align	4
_6397:
	dd	_1043
	dd	1414
	dd	7
	align	4
_6401:
	dd	3
	dd	0
	dd	0
	align	4
_6400:
	dd	_1043
	dd	1416
	dd	7
	align	4
_6403:
	dd	_1043
	dd	1419
	dd	5
	align	4
_6407:
	dd	_1043
	dd	1423
	dd	3
	align	4
_6614:
	dd	3
	dd	0
	dd	2
	dd	_674
	dd	_1315
	dd	-92
	dd	0
	align	4
_6419:
	dd	_1043
	dd	1424
	dd	4
_6613:
	db	"RecAccess",0
	align	4
_6612:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-96
	dd	2
	dd	_699
	dd	_563
	dd	-100
	dd	2
	dd	_6613
	dd	_3944
	dd	-104
	dd	2
	dd	_1140
	dd	_547
	dd	-108
	dd	0
	align	4
_6425:
	dd	_1043
	dd	1425
	dd	5
	align	4
_6427:
	dd	_1043
	dd	1426
	dd	5
	align	4
_6430:
	dd	_1043
	dd	1427
	dd	5
	align	4
_6432:
	dd	_1043
	dd	1428
	dd	5
	align	4
_6444:
	dd	3
	dd	0
	dd	0
	align	4
_6439:
	dd	_1043
	dd	1429
	dd	6
	align	4
_6445:
	dd	_1043
	dd	1431
	dd	5
	align	4
_6455:
	dd	_1043
	dd	1433
	dd	5
	align	4
_6477:
	dd	3
	dd	0
	dd	0
	align	4
_6457:
	dd	_1043
	dd	1434
	dd	6
	align	4
_6467:
	dd	_1043
	dd	1435
	dd	6
	align	4
_6470:
	dd	_1043
	dd	1436
	dd	6
	align	4
_6473:
	dd	3
	dd	0
	dd	0
	align	4
_6472:
	dd	_1043
	dd	1437
	dd	7
	align	4
_6474:
	dd	_1043
	dd	1439
	dd	6
	align	4
_6478:
	dd	_1043
	dd	1445
	dd	5
	align	4
_6489:
	dd	3
	dd	0
	dd	0
	align	4
_6486:
	dd	_1043
	dd	1446
	dd	6
	align	4
_6490:
	dd	_1043
	dd	1449
	dd	5
_6556:
	db	"Value",0
	align	4
_6555:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-112
	dd	2
	dd	_6556
	dd	_632
	dd	-116
	dd	2
	dd	_1140
	dd	_547
	dd	-120
	dd	0
	align	4
_6496:
	dd	_1043
	dd	1450
	dd	6
	align	4
_6499:
	dd	_1043
	dd	1451
	dd	6
	align	4
_6503:
	dd	_1043
	dd	1452
	dd	6
	align	4
_6508:
	dd	3
	dd	0
	dd	0
	align	4
_6505:
	dd	_1043
	dd	1453
	dd	7
	align	4
_6511:
	dd	3
	dd	0
	dd	0
	align	4
_6510:
	dd	_1043
	dd	1455
	dd	7
	align	4
_6512:
	dd	_1043
	dd	1457
	dd	6
	align	4
_6519:
	dd	3
	dd	0
	dd	0
	align	4
_6514:
	dd	_1043
	dd	1458
	dd	7
	align	4
_6526:
	dd	3
	dd	0
	dd	0
	align	4
_6521:
	dd	_1043
	dd	1460
	dd	7
	align	4
_6527:
	dd	_1043
	dd	1462
	dd	6
	align	4
_6531:
	dd	_1043
	dd	1463
	dd	6
	align	4
_6541:
	dd	_1043
	dd	1464
	dd	6
	align	4
_6547:
	dd	3
	dd	0
	dd	0
	align	4
_6543:
	dd	_1043
	dd	1464
	dd	25
	align	4
_6548:
	dd	_1043
	dd	1465
	dd	6
	align	4
_6591:
	dd	3
	dd	0
	dd	0
	align	4
_6558:
	dd	_1043
	dd	1468
	dd	6
	align	4
_6585:
	dd	3
	dd	0
	dd	0
	align	4
_6560:
	dd	_1043
	dd	1469
	dd	7
	align	4
_6579:
	dd	3
	dd	0
	dd	0
	align	4
_6562:
	dd	_1043
	dd	1470
	dd	8
	align	4
_6565:
	dd	_1043
	dd	1471
	dd	8
	align	4
_6578:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-124
	dd	0
	align	4
_6575:
	dd	_1043
	dd	1472
	dd	9
	align	4
_6584:
	dd	3
	dd	0
	dd	0
	align	4
_6581:
	dd	_1043
	dd	1475
	dd	8
	align	4
_6590:
	dd	3
	dd	0
	dd	0
	align	4
_6587:
	dd	_1043
	dd	1478
	dd	7
	align	4
_6592:
	dd	_1043
	dd	1481
	dd	5
	align	4
_6602:
	dd	_1043
	dd	1482
	dd	5
	align	4
_6608:
	dd	3
	dd	0
	dd	0
	align	4
_6604:
	dd	_1043
	dd	1482
	dd	24
	align	4
_6609:
	dd	_1043
	dd	1483
	dd	5
_6878:
	db	"RecIdent",0
_6879:
	db	"Pos",0
	align	4
_6877:
	dd	1
	dd	_676
	dd	2
	dd	_1069
	dd	_1960
	dd	-8
	dd	2
	dd	_6878
	dd	_3944
	dd	-12
	dd	2
	dd	_6879
	dd	_563
	dd	-16
	dd	0
	align	4
_6617:
	dd	_1043
	dd	1489
	dd	3
_6870:
	db	"Member",0
_6871:
	db	"ValNode",0
_6872:
	db	"ValDatatype",0
_6873:
	db	"MemberName",0
	align	4
_6869:
	dd	3
	dd	0
	dd	2
	dd	_631
	dd	_632
	dd	-20
	dd	2
	dd	_2406
	dd	_568
	dd	-24
	dd	2
	dd	_6870
	dd	_549
	dd	-28
	dd	2
	dd	_3929
	dd	_560
	dd	-4
	dd	2
	dd	_674
	dd	_1315
	dd	-32
	dd	2
	dd	_6871
	dd	_632
	dd	-36
	dd	2
	dd	_6872
	dd	_547
	dd	-40
	dd	2
	dd	_6873
	dd	_549
	dd	-44
	dd	2
	dd	_699
	dd	_563
	dd	-48
	dd	0
	align	4
_6621:
	dd	_1043
	dd	1490
	dd	4
	align	4
_430:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_6623:
	dd	_1043
	dd	1491
	dd	4
	align	4
_6628:
	dd	_1043
	dd	1493
	dd	4
	align	4
_6631:
	dd	_1043
	dd	1494
	dd	4
	align	4
_6633:
	dd	_1043
	dd	1495
	dd	4
	align	4
_6654:
	dd	3
	dd	0
	dd	2
	dd	_2531
	dd	_568
	dd	-52
	dd	0
	align	4
_6643:
	dd	_1043
	dd	1496
	dd	5
	align	4
_6653:
	dd	3
	dd	0
	dd	0
	align	4
_6651:
	dd	_1043
	dd	1497
	dd	6
	align	4
_6652:
	dd	_1043
	dd	1498
	dd	6
	align	4
_6655:
	dd	_1043
	dd	1502
	dd	4
	align	4
_6667:
	dd	3
	dd	0
	dd	0
	align	4
_6657:
	dd	_1043
	dd	1503
	dd	5
	align	4
_434:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	84,121,112,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116,58,32
	align	4
_6664:
	dd	_1043
	dd	1504
	dd	5
	align	4
_435:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	117,110,107,110,111,119,110
	align	4
_6668:
	dd	_1043
	dd	1506
	dd	4
	align	4
_6673:
	dd	_1043
	dd	1507
	dd	4
	align	4
_6677:
	dd	_1043
	dd	1508
	dd	4
	align	4
_6679:
	dd	_1043
	dd	1509
	dd	4
	align	4
_6681:
	dd	_1043
	dd	1510
	dd	4
	align	4
_6683:
	dd	_1043
	dd	1511
	dd	4
	align	4
_6685:
	dd	_1043
	dd	1512
	dd	4
	align	4
_6689:
	dd	_1043
	dd	1513
	dd	4
	align	4
_6692:
	dd	_1043
	dd	1515
	dd	4
	align	4
_6694:
	dd	_1043
	dd	1516
	dd	4
	align	4
_6707:
	dd	3
	dd	0
	dd	0
	align	4
_6704:
	dd	_1043
	dd	1517
	dd	5
	align	4
_6708:
	dd	_1043
	dd	1519
	dd	4
	align	4
_6743:
	dd	3
	dd	0
	dd	2
	dd	_1617
	dd	_1315
	dd	-56
	dd	0
	align	4
_6722:
	dd	_1043
	dd	1520
	dd	5
	align	4
_6742:
	dd	3
	dd	0
	dd	0
	align	4
_6726:
	dd	_1043
	dd	1521
	dd	6
	align	4
_6727:
	dd	_1043
	dd	1522
	dd	6
	align	4
_6728:
	dd	_1043
	dd	1523
	dd	6
	align	4
_6731:
	dd	_1043
	dd	1524
	dd	6
	align	4
_439:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,108,97,115,115
	align	4
_6738:
	dd	_1043
	dd	1525
	dd	6
	align	4
_6741:
	dd	_1043
	dd	1526
	dd	6
	align	4
_6744:
	dd	_1043
	dd	1530
	dd	4
	align	4
_6814:
	dd	3
	dd	0
	dd	0
	align	4
_6746:
	dd	_1043
	dd	1531
	dd	5
	align	4
_6749:
	dd	_1043
	dd	1532
	dd	5
_6813:
	db	"MethMeth",0
	align	4
_6812:
	dd	3
	dd	0
	dd	2
	dd	_6813
	dd	_1352
	dd	-60
	dd	2
	dd	_1140
	dd	_549
	dd	-64
	dd	2
	dd	_4009
	dd	_3944
	dd	-68
	dd	0
	align	4
_6763:
	dd	_1043
	dd	1533
	dd	6
	align	4
_6768:
	dd	_1043
	dd	1534
	dd	6
	align	4
_6772:
	dd	_1043
	dd	1535
	dd	6
	align	4
_6782:
	dd	_1043
	dd	1536
	dd	6
	align	4
_6788:
	dd	_1043
	dd	1537
	dd	6
	align	4
_6803:
	dd	3
	dd	0
	dd	0
	align	4
_6790:
	dd	_1043
	dd	1538
	dd	7
	align	4
_6793:
	dd	_1043
	dd	1539
	dd	7
	align	4
_6796:
	dd	_1043
	dd	1540
	dd	7
	align	4
_6801:
	dd	3
	dd	0
	dd	0
	align	4
_6800:
	dd	_1043
	dd	1540
	dd	33
	align	4
_6802:
	dd	_1043
	dd	1541
	dd	7
	align	4
_6804:
	dd	_1043
	dd	1543
	dd	6
	align	4
_6815:
	dd	_1043
	dd	1546
	dd	4
	align	4
_6822:
	dd	3
	dd	0
	dd	0
	align	4
_6817:
	dd	_1043
	dd	1546
	dd	17
	align	4
_443:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,111,117,108,100,110,39,116,32,102,105,110,100,32,109,101
	dw	109,98,101,114,32,39
	align	4
_6823:
	dd	_1043
	dd	1550
	dd	4
	align	4
_6858:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-72
	dd	0
	align	4
_6827:
	dd	_1043
	dd	1551
	dd	5
	align	4
_6833:
	dd	_1043
	dd	1552
	dd	5
	align	4
_6841:
	dd	3
	dd	0
	dd	0
	align	4
_6837:
	dd	_1043
	dd	1553
	dd	6
	align	4
_6840:
	dd	_1043
	dd	1554
	dd	6
	align	4
_6857:
	dd	3
	dd	0
	dd	0
	align	4
_6843:
	dd	_1043
	dd	1556
	dd	6
	align	4
_6848:
	dd	_1043
	dd	1557
	dd	6
	align	4
_6856:
	dd	_1043
	dd	1558
	dd	6
	align	4
_6868:
	dd	3
	dd	0
	dd	2
	dd	_1140
	dd	_632
	dd	-76
	dd	0
	align	4
_6860:
	dd	_1043
	dd	1561
	dd	5
	align	4
_6864:
	dd	_1043
	dd	1562
	dd	5
	align	4
_6865:
	dd	_1043
	dd	1563
	dd	5
	align	4
_6876:
	dd	3
	dd	0
	dd	0
	align	4
_6875:
	dd	_1043
	dd	1566
	dd	4
	align	4
_6931:
	dd	1
	dd	_678
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_546
	dd	_547
	dd	-8
	dd	2
	dd	_699
	dd	_563
	dd	-12
	dd	2
	dd	_708
	dd	_591
	dd	-16
	dd	0
	align	4
_6880:
	dd	_1043
	dd	1571
	dd	3
	align	4
_6882:
	dd	_1043
	dd	1573
	dd	3
	align	4
_6884:
	dd	_1043
	dd	1582
	dd	3
	align	4
_6915:
	dd	3
	dd	0
	dd	2
	dd	_4009
	dd	_3944
	dd	-20
	dd	0
	align	4
_6885:
	dd	_1043
	dd	1575
	dd	4
	align	4
_6888:
	dd	_1043
	dd	1576
	dd	4
	align	4
_6892:
	dd	_1043
	dd	1578
	dd	4
	align	4
_6906:
	dd	_1043
	dd	1579
	dd	4
	align	4
_6911:
	dd	_1043
	dd	1580
	dd	4
	align	4
_6914:
	dd	_1043
	dd	1581
	dd	4
	align	4
_6918:
	dd	_1043
	dd	1583
	dd	3
	align	4
_6929:
	dd	3
	dd	0
	dd	0
	align	4
_6924:
	dd	_1043
	dd	1583
	dd	45
	align	4
_448:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	39,44,32,101,120,112,101,99,116,105,110,103,32,39
	align	4
_447:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	85,110,97,108,108,111,119,101,100,32,100,105,109,101,110,115
	dw	105,111,110,32,99,111,117,110,116,32,39
	align	4
_6930:
	dd	_1043
	dd	1584
	dd	3
	align	4
_6993:
	dd	1
	dd	_680
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_546
	dd	_547
	dd	-12
	dd	2
	dd	_674
	dd	_1070
	dd	-16
	dd	2
	dd	_631
	dd	_632
	dd	-20
	dd	0
	align	4
_6932:
	dd	_1043
	dd	1588
	dd	3
	align	4
_6960:
	dd	3
	dd	0
	dd	2
	dd	_674
	dd	_1315
	dd	-24
	dd	0
	align	4
_6949:
	dd	_1043
	dd	1589
	dd	4
	align	4
_6959:
	dd	3
	dd	0
	dd	0
	align	4
_6953:
	dd	_1043
	dd	1590
	dd	5
	align	4
_452:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	86,97,114,105,97,98,108,101,32,97,108,114,101,97,100,121
	dw	32,100,101,102,105,110,101,100,58,32
	align	4
_6958:
	dd	_1043
	dd	1591
	dd	5
	align	4
_6961:
	dd	_1043
	dd	1594
	dd	3
	align	4
_6965:
	dd	_1043
	dd	1595
	dd	3
	align	4
_6975:
	dd	_1043
	dd	1596
	dd	3
	align	4
_6977:
	dd	_1043
	dd	1597
	dd	3
	align	4
_6982:
	dd	3
	dd	0
	dd	0
	align	4
_6981:
	dd	_1043
	dd	1598
	dd	4
	align	4
_6985:
	dd	3
	dd	0
	dd	0
	align	4
_6984:
	dd	_1043
	dd	1600
	dd	4
	align	4
_6986:
	dd	_1043
	dd	1602
	dd	3
	align	4
_6989:
	dd	_1043
	dd	1603
	dd	3
	align	4
_6992:
	dd	_1043
	dd	1604
	dd	3
	align	4
_7039:
	dd	1
	dd	_682
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	0
	align	4
_6994:
	dd	_1043
	dd	1608
	dd	3
	align	4
_7019:
	dd	3
	dd	0
	dd	2
	dd	_1529
	dd	_563
	dd	-12
	dd	0
	align	4
_7002:
	dd	_1043
	dd	1609
	dd	4
	align	4
_7018:
	dd	3
	dd	0
	dd	2
	dd	_1617
	dd	_1315
	dd	-16
	dd	0
	align	4
_7012:
	dd	_1043
	dd	1610
	dd	5
	align	4
_7017:
	dd	3
	dd	0
	dd	0
	align	4
_7016:
	dd	_1043
	dd	1610
	dd	28
	align	4
_7020:
	dd	_1043
	dd	1613
	dd	3
	align	4
_7038:
	dd	3
	dd	0
	dd	2
	dd	_1617
	dd	_1315
	dd	-20
	dd	0
	align	4
_7032:
	dd	_1043
	dd	1614
	dd	4
	align	4
_7037:
	dd	3
	dd	0
	dd	0
	align	4
_7036:
	dd	_1043
	dd	1614
	dd	27
	align	4
_7072:
	dd	1
	dd	_684
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_1529
	dd	_563
	dd	-8
	dd	0
	align	4
_7040:
	dd	_1043
	dd	1618
	dd	3
	align	4
_7046:
	dd	_1043
	dd	1619
	dd	3
_7070:
	db	"LList",0
	align	4
_7069:
	dd	3
	dd	0
	dd	2
	dd	_7070
	dd	_563
	dd	-12
	dd	0
	align	4
_7054:
	dd	_1043
	dd	1620
	dd	4
_7068:
	db	":TidentifierVariable",0
	align	4
_7067:
	dd	3
	dd	0
	dd	2
	dd	_1617
	dd	_7068
	dd	-16
	dd	0
	align	4
_7064:
	dd	_1043
	dd	1621
	dd	5
	align	4
_7071:
	dd	_1043
	dd	1624
	dd	3
	align	4
_7076:
	dd	1
	dd	_686
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	0
	align	4
_7073:
	dd	_1043
	dd	1627
	dd	3
_7112:
	db	"typ",0
	align	4
_7111:
	dd	1
	dd	_688
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_7112
	dd	_549
	dd	-8
	dd	0
	align	4
_7077:
	dd	_1043
	dd	1630
	dd	3
	align	4
_7092:
	dd	3
	dd	0
	dd	0
	align	4
_7091:
	dd	_1043
	dd	1630
	dd	111
	align	4
_7093:
	dd	_1043
	dd	1631
	dd	3
	align	4
_7109:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-16
	dd	0
	align	4
_7103:
	dd	_1043
	dd	1632
	dd	4
	align	4
_7108:
	dd	3
	dd	0
	dd	0
	align	4
_7107:
	dd	_1043
	dd	1632
	dd	21
	align	4
_7110:
	dd	_1043
	dd	1634
	dd	3
_7127:
	db	"Tok",0
	align	4
_7126:
	dd	1
	dd	_689
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_7127
	dd	_549
	dd	-8
	dd	0
	align	4
_7113:
	dd	_1043
	dd	1637
	dd	3
	align	4
_7120:
	dd	3
	dd	0
	dd	0
	align	4
_7117:
	dd	_1043
	dd	1638
	dd	4
	align	4
_7125:
	dd	3
	dd	0
	dd	0
	align	4
_7122:
	dd	_1043
	dd	1640
	dd	4
	align	4
_472:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_471:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	85,110,101,120,112,101,99,116,101,100,32,84,111,107,101,110
	dw	44,32,101,120,112,101,99,116,105,110,103,58,32
	align	4
_7184:
	dd	1
	dd	_691
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
	align	4
_7128:
	dd	_1043
	dd	1644
	dd	3
	align	4
_7144:
	dd	3
	dd	0
	dd	0
	align	4
_7132:
	dd	_1043
	dd	1644
	dd	18
	align	4
_7147:
	dd	3
	dd	0
	dd	0
	align	4
_7146:
	dd	_1043
	dd	1644
	dd	58
	align	4
_7148:
	dd	_1043
	dd	1645
	dd	3
	align	4
_7155:
	dd	3
	dd	0
	dd	0
	align	4
_7152:
	dd	_1043
	dd	1646
	dd	4
	align	4
_473:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	85,110,101,120,112,101,99,116,101,100,32,69,110,100,32,111
	dw	102,32,70,105,108,101
	align	4
_7180:
	dd	3
	dd	0
	dd	0
	align	4
_7157:
	dd	_1043
	dd	1648
	dd	4
	align	4
_7171:
	dd	_1043
	dd	1649
	dd	4
	align	4
_7179:
	dd	3
	dd	0
	dd	0
	align	4
_7175:
	dd	_1043
	dd	1650
	dd	5
	align	4
_7181:
	dd	_1043
	dd	1653
	dd	3
	align	4
_7241:
	dd	1
	dd	_693
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
	align	4
_7185:
	dd	_1043
	dd	1656
	dd	3
	align	4
_7201:
	dd	3
	dd	0
	dd	0
	align	4
_7189:
	dd	_1043
	dd	1656
	dd	18
	align	4
_7204:
	dd	3
	dd	0
	dd	0
	align	4
_7203:
	dd	_1043
	dd	1656
	dd	58
	align	4
_7205:
	dd	_1043
	dd	1657
	dd	3
	align	4
_7212:
	dd	3
	dd	0
	dd	0
	align	4
_7209:
	dd	_1043
	dd	1658
	dd	4
	align	4
_474:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	85,110,101,120,112,101,99,116,101,100,32,66,101,103,105,110
	dw	32,111,102,32,70,105,108,101
	align	4
_7237:
	dd	3
	dd	0
	dd	0
	align	4
_7214:
	dd	_1043
	dd	1660
	dd	4
	align	4
_7228:
	dd	_1043
	dd	1661
	dd	4
	align	4
_7236:
	dd	3
	dd	0
	dd	0
	align	4
_7232:
	dd	_1043
	dd	1662
	dd	5
	align	4
_7238:
	dd	_1043
	dd	1665
	dd	3
	align	4
_7245:
	dd	1
	dd	_694
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	0
	align	4
_7242:
	dd	_1043
	dd	1668
	dd	3
_7278:
	db	"Err",0
	align	4
_7277:
	dd	1
	dd	_695
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_2306
	dd	_549
	dd	-8
	dd	2
	dd	_7278
	dd	_549
	dd	-12
	dd	0
	align	4
_7246:
	dd	_1043
	dd	1674
	dd	3
	align	4
_478:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	39,32,45,45,45,10
	align	4
_477:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,44,32,97,116,32,84,111,107,101,110,32,39
	align	4
_476:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,105,110,32,108,105,110,101,32,39
	align	4
_475:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,45,45,32,69,114,114,111,114,58,32
	align	4
_7252:
	dd	_1043
	dd	1675
	dd	3
	align	4
_479:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	9,32,108,105,110,101,58,32,32
	align	4
_7260:
	dd	_1043
	dd	1676
	dd	3
	align	4
_480:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_7261:
	dd	_1043
	dd	1677
	dd	3
	align	4
_7262:
	dd	_1043
	dd	1679
	dd	3
	align	4
_7266:
	dd	_1043
	dd	1680
	dd	3
	align	4
_7276:
	dd	3
	dd	0
	dd	0
	align	4
_7273:
	dd	_1043
	dd	1681
	dd	4
	align	4
_7306:
	dd	1
	dd	_696
	dd	2
	dd	_1069
	dd	_1960
	dd	-4
	dd	2
	dd	_2306
	dd	_549
	dd	-8
	dd	2
	dd	_7278
	dd	_549
	dd	-12
	dd	0
	align	4
_7279:
	dd	_1043
	dd	1687
	dd	3
	align	4
_484:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	45,45,45,32,87,97,114,110,105,110,103,58,32
	align	4
_7285:
	dd	_1043
	dd	1688
	dd	3
	align	4
_7293:
	dd	_1043
	dd	1689
	dd	3
	align	4
_7294:
	dd	_1043
	dd	1690
	dd	3
	align	4
_7295:
	dd	_1043
	dd	1692
	dd	3
	align	4
_7305:
	dd	3
	dd	0
	dd	0
	align	4
_7302:
	dd	_1043
	dd	1693
	dd	4
	align	4
_7312:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_3944
	dd	-4
	dd	0
	align	4
_7311:
	dd	3
	dd	0
	dd	0
	align	4
_7355:
	dd	1
	dd	_553
	dd	2
	dd	_1069
	dd	_3944
	dd	-4
	dd	2
	dd	_631
	dd	_632
	dd	-8
	dd	2
	dd	_1095
	dd	_547
	dd	-12
	dd	2
	dd	_579
	dd	_580
	dd	-16
	dd	2
	dd	_699
	dd	_563
	dd	-20
	dd	0
	align	4
_7322:
	dd	_1043
	dd	1705
	dd	3
	align	4
_7330:
	dd	_1043
	dd	1706
	dd	3
	align	4
_7338:
	dd	_1043
	dd	1707
	dd	3
	align	4
_7346:
	dd	_1043
	dd	1708
	dd	3
	align	4
_7354:
	dd	_1043
	dd	1709
	dd	3
	align	4
_7359:
	dd	1
	dd	_701
	dd	2
	dd	_1069
	dd	_3944
	dd	-4
	dd	0
	align	4
_7356:
	dd	_1043
	dd	1712
	dd	3
	align	4
_7363:
	dd	1
	dd	_703
	dd	2
	dd	_1069
	dd	_3944
	dd	-4
	dd	0
	align	4
_7360:
	dd	_1043
	dd	1715
	dd	3
	align	4
_7367:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	0
	align	4
_7366:
	dd	3
	dd	0
	dd	0
	align	4
_7746:
	dd	1
	dd	_619
	dd	0
	align	4
_7373:
	dd	_1043
	dd	1739
	dd	3
	align	4
_7378:
	dd	_1043
	dd	1740
	dd	3
	align	4
_7386:
	dd	_1043
	dd	1741
	dd	3
	align	4
_7390:
	dd	_1043
	dd	1743
	dd	3
	align	4
_7395:
	dd	_1043
	dd	1744
	dd	3
	align	4
_7403:
	dd	_1043
	dd	1745
	dd	3
	align	4
_7407:
	dd	_1043
	dd	1747
	dd	3
	align	4
_7412:
	dd	_1043
	dd	1748
	dd	3
	align	4
_7420:
	dd	_1043
	dd	1749
	dd	3
	align	4
_7424:
	dd	_1043
	dd	1751
	dd	3
	align	4
_7429:
	dd	_1043
	dd	1752
	dd	3
	align	4
_7437:
	dd	_1043
	dd	1753
	dd	3
	align	4
_7441:
	dd	_1043
	dd	1755
	dd	3
	align	4
_7446:
	dd	_1043
	dd	1756
	dd	3
	align	4
_7454:
	dd	_1043
	dd	1757
	dd	3
	align	4
_7458:
	dd	_1043
	dd	1759
	dd	3
	align	4
_7463:
	dd	_1043
	dd	1760
	dd	3
	align	4
_7471:
	dd	_1043
	dd	1761
	dd	3
	align	4
_7475:
	dd	_1043
	dd	1763
	dd	3
	align	4
_7480:
	dd	_1043
	dd	1764
	dd	3
	align	4
_7488:
	dd	_1043
	dd	1765
	dd	3
	align	4
_7492:
	dd	_1043
	dd	1767
	dd	3
	align	4
_7497:
	dd	_1043
	dd	1768
	dd	3
	align	4
_488:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_7505:
	dd	_1043
	dd	1769
	dd	3
	align	4
_7509:
	dd	_1043
	dd	1771
	dd	3
	align	4
_7514:
	dd	_1043
	dd	1772
	dd	3
	align	4
_7522:
	dd	_1043
	dd	1773
	dd	3
	align	4
_7526:
	dd	_1043
	dd	1775
	dd	3
	align	4
_7531:
	dd	_1043
	dd	1776
	dd	3
	align	4
_7536:
	dd	_1043
	dd	1777
	dd	3
	align	4
_7541:
	dd	_1043
	dd	1778
	dd	3
	align	4
_7546:
	dd	_1043
	dd	1779
	dd	3
	align	4
_7551:
	dd	_1043
	dd	1780
	dd	3
	align	4
_7556:
	dd	_1043
	dd	1781
	dd	3
	align	4
_7561:
	dd	_1043
	dd	1783
	dd	3
	align	4
_7566:
	dd	_1043
	dd	1784
	dd	3
	align	4
_7571:
	dd	_1043
	dd	1785
	dd	3
	align	4
_7576:
	dd	_1043
	dd	1786
	dd	3
	align	4
_7581:
	dd	_1043
	dd	1787
	dd	3
	align	4
_7586:
	dd	_1043
	dd	1788
	dd	3
	align	4
_7591:
	dd	_1043
	dd	1790
	dd	3
	align	4
_7596:
	dd	_1043
	dd	1791
	dd	3
	align	4
_7601:
	dd	_1043
	dd	1792
	dd	3
	align	4
_7606:
	dd	_1043
	dd	1793
	dd	3
	align	4
_7611:
	dd	_1043
	dd	1794
	dd	3
	align	4
_7616:
	dd	_1043
	dd	1795
	dd	3
	align	4
_7621:
	dd	_1043
	dd	1797
	dd	3
	align	4
_7626:
	dd	_1043
	dd	1798
	dd	3
	align	4
_7631:
	dd	_1043
	dd	1799
	dd	3
	align	4
_7636:
	dd	_1043
	dd	1800
	dd	3
	align	4
_7641:
	dd	_1043
	dd	1801
	dd	3
	align	4
_7646:
	dd	_1043
	dd	1802
	dd	3
	align	4
_7651:
	dd	_1043
	dd	1804
	dd	3
	align	4
_7656:
	dd	_1043
	dd	1805
	dd	3
	align	4
_7661:
	dd	_1043
	dd	1806
	dd	3
	align	4
_7666:
	dd	_1043
	dd	1807
	dd	3
	align	4
_7671:
	dd	_1043
	dd	1808
	dd	3
	align	4
_7676:
	dd	_1043
	dd	1809
	dd	3
	align	4
_7681:
	dd	_1043
	dd	1811
	dd	3
	align	4
_7686:
	dd	_1043
	dd	1812
	dd	3
	align	4
_7691:
	dd	_1043
	dd	1813
	dd	3
	align	4
_7696:
	dd	_1043
	dd	1814
	dd	3
	align	4
_7701:
	dd	_1043
	dd	1815
	dd	3
	align	4
_7706:
	dd	_1043
	dd	1816
	dd	3
	align	4
_7711:
	dd	_1043
	dd	1818
	dd	3
	align	4
_7716:
	dd	_1043
	dd	1819
	dd	3
	align	4
_7721:
	dd	_1043
	dd	1820
	dd	3
	align	4
_7726:
	dd	_1043
	dd	1821
	dd	3
	align	4
_7731:
	dd	_1043
	dd	1822
	dd	3
	align	4
_7736:
	dd	_1043
	dd	1823
	dd	3
	align	4
_7741:
	dd	_1043
	dd	1825
	dd	3
	align	4
_7835:
	dd	1
	dd	_553
	dd	2
	dd	_548
	dd	_549
	dd	-4
	dd	2
	dd	_708
	dd	_591
	dd	-8
	dd	0
	align	4
_7747:
	dd	_1043
	dd	1829
	dd	3
	align	4
_7748:
	dd	_1043
	dd	1830
	dd	3
	align	4
_7802:
	dd	3
	dd	0
	dd	0
	align	4
_7775:
	dd	_1043
	dd	1848
	dd	5
	align	4
_7793:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-12
	dd	0
	align	4
_7785:
	dd	_1043
	dd	1849
	dd	6
	align	4
_7792:
	dd	3
	dd	0
	dd	0
	align	4
_7789:
	dd	_1043
	dd	1849
	dd	44
	align	4
_7794:
	dd	_1043
	dd	1851
	dd	5
	align	4
_7797:
	dd	3
	dd	0
	dd	0
	align	4
_7796:
	dd	_1043
	dd	1851
	dd	31
	align	4
_492:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	73,110,116,101,114,110,97,108,32,101,114,114,111,114
	align	4
_7798:
	dd	_1043
	dd	1852
	dd	5
	align	4
_493:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,68,97,116,97
	dw	116,121,112,101,32,39
	align	4
_7801:
	dd	_1043
	dd	1853
	dd	5
	align	4
_7806:
	dd	3
	dd	0
	dd	0
	align	4
_7803:
	dd	_1043
	dd	1832
	dd	5
	align	4
_7810:
	dd	3
	dd	0
	dd	0
	align	4
_7807:
	dd	_1043
	dd	1834
	dd	5
	align	4
_7814:
	dd	3
	dd	0
	dd	0
	align	4
_7811:
	dd	_1043
	dd	1836
	dd	5
	align	4
_7818:
	dd	3
	dd	0
	dd	0
	align	4
_7815:
	dd	_1043
	dd	1838
	dd	5
	align	4
_7822:
	dd	3
	dd	0
	dd	0
	align	4
_7819:
	dd	_1043
	dd	1840
	dd	5
	align	4
_7826:
	dd	3
	dd	0
	dd	0
	align	4
_7823:
	dd	_1043
	dd	1842
	dd	5
	align	4
_7830:
	dd	3
	dd	0
	dd	0
	align	4
_7827:
	dd	_1043
	dd	1844
	dd	5
	align	4
_7834:
	dd	3
	dd	0
	dd	0
	align	4
_7831:
	dd	_1043
	dd	1846
	dd	5
_7860:
	db	"DimCOunt",0
	align	4
_7859:
	dd	1
	dd	_711
	dd	2
	dd	_631
	dd	_632
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_7860
	dd	_591
	dd	-12
	dd	2
	dd	_1095
	dd	_547
	dd	-16
	dd	0
	align	4
_7836:
	dd	_1043
	dd	1857
	dd	3
	align	4
_7840:
	dd	_1043
	dd	1858
	dd	3
	align	4
_7844:
	dd	_1043
	dd	1859
	dd	3
	align	4
_7846:
	dd	_1043
	dd	1860
	dd	3
	align	4
_7850:
	dd	_1043
	dd	1861
	dd	3
	align	4
_7858:
	dd	_1043
	dd	1862
	dd	3
	align	4
_7900:
	dd	1
	dd	_575
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	2
	dd	_708
	dd	_591
	dd	-8
	dd	2
	dd	_3946
	dd	_547
	dd	-12
	dd	0
	align	4
_7861:
	dd	_1043
	dd	1866
	dd	3
	align	4
_7863:
	dd	_1043
	dd	1867
	dd	3
	align	4
_7873:
	dd	_1043
	dd	1868
	dd	3
	align	4
_7877:
	dd	_1043
	dd	1869
	dd	3
	align	4
_7883:
	dd	_1043
	dd	1870
	dd	3
	align	4
_7893:
	dd	_1043
	dd	1871
	dd	3
	align	4
_7899:
	dd	_1043
	dd	1872
	dd	3
	align	4
_7911:
	dd	1
	dd	_714
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	2
	dd	_631
	dd	_632
	dd	-8
	dd	0
	align	4
_7901:
	dd	_1043
	dd	1875
	dd	3
	align	4
_7906:
	dd	_1043
	dd	1876
	dd	3
	align	4
_8035:
	dd	1
	dd	_715
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	2
	dd	_546
	dd	_547
	dd	-8
	dd	2
	dd	_631
	dd	_632
	dd	-12
	dd	0
	align	4
_7912:
	dd	_1043
	dd	1879
	dd	3
	align	4
_7930:
	dd	3
	dd	0
	dd	0
	align	4
_7920:
	dd	_1043
	dd	1880
	dd	4
	align	4
_7929:
	dd	3
	dd	0
	dd	0
	align	4
_7928:
	dd	_1043
	dd	1881
	dd	5
	align	4
_7931:
	dd	_1043
	dd	1884
	dd	3
	align	4
_7952:
	dd	3
	dd	0
	dd	0
	align	4
_7945:
	dd	_1043
	dd	1884
	dd	85
	align	4
_494:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	68,105,109,101,110,115,105,111,110,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,39
	align	4
_7953:
	dd	_1043
	dd	1885
	dd	3
	align	4
_495:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_7955:
	dd	_1043
	dd	1886
	dd	3
	align	4
_7960:
	dd	_1043
	dd	1887
	dd	3
	align	4
_496:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_7965:
	dd	_1043
	dd	1888
	dd	3
	align	4
_7972:
	dd	3
	dd	0
	dd	0
	align	4
_7971:
	dd	_1043
	dd	1888
	dd	30
	align	4
_7973:
	dd	_1043
	dd	1889
	dd	3
	align	4
_8005:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-16
	dd	0
	align	4
_7985:
	dd	_1043
	dd	1890
	dd	4
	align	4
_8004:
	dd	3
	dd	0
	dd	0
	align	4
_7991:
	dd	_1043
	dd	1891
	dd	5
	align	4
_8000:
	dd	3
	dd	0
	dd	0
	align	4
_7999:
	dd	_1043
	dd	1892
	dd	6
	align	4
_8003:
	dd	3
	dd	0
	dd	0
	align	4
_8002:
	dd	_1043
	dd	1894
	dd	6
	align	4
_8006:
	dd	_1043
	dd	1899
	dd	3
	align	4
_8023:
	dd	3
	dd	0
	dd	0
	align	4
_8022:
	dd	_1043
	dd	1900
	dd	4
	align	4
_8024:
	dd	_1043
	dd	1903
	dd	3
	align	4
_503:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,41
	align	4
_501:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	39,32,40,100,105,109,101,110,115,105,111,110,115,58,32,39
	align	4
_502:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	39,41,32,116,111,32,39
	align	4
_500:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,110,110,111,116,32,99,97,115,116,32,39
_8049:
	db	"caster",0
	align	4
_8048:
	dd	1
	dd	_717
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	2
	dd	_546
	dd	_547
	dd	-8
	dd	2
	dd	_631
	dd	_632
	dd	-12
	dd	2
	dd	_8049
	dd	_632
	dd	-16
	dd	0
	align	4
_8036:
	dd	_1043
	dd	1906
	dd	3
	align	4
_8040:
	dd	_1043
	dd	1907
	dd	3
	align	4
_8044:
	dd	3
	dd	0
	dd	0
	align	4
_8042:
	dd	_1043
	dd	1908
	dd	4
	align	4
_8043:
	dd	_1043
	dd	1909
	dd	4
	align	4
_8047:
	dd	3
	dd	0
	dd	0
	align	4
_8046:
	dd	_1043
	dd	1911
	dd	4
	align	4
_8055:
	dd	1
	dd	_719
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	0
	align	4
_8050:
	dd	_1043
	dd	1915
	dd	3
_8068:
	db	"T",0
	align	4
_8067:
	dd	1
	dd	_720
	dd	2
	dd	_1069
	dd	_547
	dd	-4
	dd	2
	dd	_8068
	dd	_549
	dd	-8
	dd	0
	align	4
_8056:
	dd	_1043
	dd	1918
	dd	3
	align	4
_8058:
	dd	_1043
	dd	1919
	dd	3
	align	4
_8065:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-12
	dd	0
	align	4
_8064:
	dd	_1043
	dd	1920
	dd	4
	align	4
_507:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
	align	4
_8066:
	dd	_1043
	dd	1922
	dd	3
	align	4
_8073:
	dd	1
	dd	_550
	dd	2
	dd	_1069
	dd	_3869
	dd	-4
	dd	0
	align	4
_8072:
	dd	3
	dd	0
	dd	0
	align	4
_8106:
	dd	1
	dd	_725
	dd	2
	dd	_1069
	dd	_3869
	dd	-4
	dd	2
	dd	_2052
	dd	_547
	dd	-8
	dd	0
	align	4
_8081:
	dd	_1043
	dd	1933
	dd	3
	align	4
_8093:
	dd	_1043
	dd	1934
	dd	3
_8146:
	db	"Data1",0
_8147:
	db	"Data2",0
	align	4
_8145:
	dd	1
	dd	_727
	dd	2
	dd	_1069
	dd	_3869
	dd	-4
	dd	2
	dd	_8146
	dd	_547
	dd	-8
	dd	2
	dd	_8147
	dd	_547
	dd	-12
	dd	0
	align	4
_8107:
	dd	_1043
	dd	1937
	dd	3
	align	4
_8143:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-16
	dd	0
	align	4
_8115:
	dd	_1043
	dd	1938
	dd	4
	align	4
_8142:
	dd	3
	dd	0
	dd	0
	align	4
_8121:
	dd	_1043
	dd	1939
	dd	5
	align	4
_8141:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-20
	dd	0
	align	4
_8129:
	dd	_1043
	dd	1940
	dd	6
	align	4
_8140:
	dd	3
	dd	0
	dd	0
	align	4
_8139:
	dd	_1043
	dd	1941
	dd	7
	align	4
_8144:
	dd	_1043
	dd	1946
	dd	3
	align	4
_8259:
	dd	1
	dd	_729
	dd	2
	dd	_1069
	dd	_3869
	dd	-4
	dd	2
	dd	_3941
	dd	_3944
	dd	-8
	dd	2
	dd	_3943
	dd	_3944
	dd	-12
	dd	2
	dd	_631
	dd	_632
	dd	-16
	dd	0
	align	4
_8148:
	dd	_1043
	dd	1949
	dd	3
	align	4
_8245:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-20
	dd	0
	align	4
_8156:
	dd	_1043
	dd	1950
	dd	4
	align	4
_8244:
	dd	3
	dd	0
	dd	0
	align	4
_8164:
	dd	_1043
	dd	1951
	dd	5
	align	4
_8243:
	dd	3
	dd	0
	dd	2
	dd	_2052
	dd	_547
	dd	-24
	dd	0
	align	4
_8172:
	dd	_1043
	dd	1952
	dd	6
_8241:
	db	"NodeLeft",0
_8242:
	db	"NodeRight",0
	align	4
_8240:
	dd	3
	dd	0
	dd	2
	dd	_8241
	dd	_632
	dd	-28
	dd	2
	dd	_8242
	dd	_632
	dd	-32
	dd	2
	dd	_3922
	dd	_3944
	dd	-36
	dd	0
	align	4
_8180:
	dd	_1043
	dd	1953
	dd	7
	align	4
_8184:
	dd	_1043
	dd	1954
	dd	7
	align	4
_8188:
	dd	_1043
	dd	1956
	dd	7
	align	4
_8190:
	dd	_1043
	dd	1957
	dd	7
	align	4
_8201:
	dd	3
	dd	0
	dd	0
	align	4
_8200:
	dd	_1043
	dd	1958
	dd	8
	align	4
_8218:
	dd	3
	dd	0
	dd	0
	align	4
_8203:
	dd	_1043
	dd	1959
	dd	7
	align	4
_8214:
	dd	3
	dd	0
	dd	0
	align	4
_8213:
	dd	_1043
	dd	1960
	dd	8
	align	4
_8217:
	dd	3
	dd	0
	dd	0
	align	4
_8216:
	dd	_1043
	dd	1962
	dd	8
	align	4
_8219:
	dd	_1043
	dd	1964
	dd	7
	align	4
_8228:
	dd	_1043
	dd	1965
	dd	7
	align	4
_8237:
	dd	_1043
	dd	1966
	dd	7
	align	4
_8246:
	dd	_1043
	dd	1971
	dd	3
	align	4
_521:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	39,32,100,97,116,97,116,121,112,101,115,32,109,105,115,109
	dw	97,116,99,104,32,91,39
	align	4
_520:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,112,101,114,97,116,111,114,32,39
	align	4
_8394:
	dd	1
	dd	_619
	dd	0
	align	4
_8260:
	dd	_1043
	dd	1975
	dd	3
_8261:
	db	":brl.linkedlist.TList",0
	align	4
_8266:
	dd	_1043
	dd	1981
	dd	3
	align	4
_8278:
	dd	3
	dd	0
	dd	2
	dd	_591
	dd	_591
	dd	-4
	dd	0
	align	4
_8270:
	dd	_1043
	dd	1982
	dd	4
	align	4
_8279:
	dd	_1043
	dd	1985
	dd	3
	align	4
_525:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_8287:
	dd	_1043
	dd	1986
	dd	3
	align	4
_526:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_8295:
	dd	_1043
	dd	1988
	dd	3
	align	4
_527:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_8303:
	dd	_1043
	dd	1989
	dd	3
	align	4
_528:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_8311:
	dd	_1043
	dd	1990
	dd	3
	align	4
_529:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_8319:
	dd	_1043
	dd	1991
	dd	3
	align	4
_530:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_8327:
	dd	_1043
	dd	1992
	dd	3
	align	4
_531:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_8336:
	dd	_1043
	dd	1993
	dd	3
	align	4
_532:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_8345:
	dd	_1043
	dd	1995
	dd	3
	align	4
_533:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_8353:
	dd	_1043
	dd	1996
	dd	3
	align	4
_534:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_8362:
	dd	_1043
	dd	1997
	dd	3
	align	4
_535:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_8370:
	dd	_1043
	dd	1999
	dd	3
	align	4
_8378:
	dd	_1043
	dd	2000
	dd	3
	align	4
_536:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_8386:
	dd	_1043
	dd	2002
	dd	3
	align	4
_537:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,111,119
	align	4
_8426:
	dd	1
	dd	_731
	dd	2
	dd	_707
	dd	_591
	dd	-4
	dd	2
	dd	_548
	dd	_549
	dd	-8
	dd	2
	dd	_723
	dd	_549
	dd	-12
	dd	2
	dd	_2052
	dd	_724
	dd	-16
	dd	2
	dd	_3868
	dd	_3869
	dd	-20
	dd	0
	align	4
_8395:
	dd	_1043
	dd	2006
	dd	3
	align	4
_8397:
	dd	_1043
	dd	2007
	dd	3
	align	4
_8405:
	dd	_1043
	dd	2008
	dd	3
	align	4
_8413:
	dd	_1043
	dd	2009
	dd	3
	align	4
_8421:
	dd	_1043
	dd	2010
	dd	3
	align	4
_8454:
	dd	1
	dd	_733
	dd	2
	dd	_548
	dd	_549
	dd	-4
	dd	0
	align	4
_8427:
	dd	_1043
	dd	2013
	dd	3
_8452:
	db	"Ops",0
	align	4
_8451:
	dd	3
	dd	0
	dd	2
	dd	_8452
	dd	_563
	dd	-8
	dd	0
	align	4
_8433:
	dd	_1043
	dd	2014
	dd	4
_8450:
	db	":tOperator",0
	align	4
_8449:
	dd	3
	dd	0
	dd	2
	dd	_3868
	dd	_8450
	dd	-12
	dd	0
	align	4
_8443:
	dd	_1043
	dd	2015
	dd	5
	align	4
_8448:
	dd	3
	dd	0
	dd	0
	align	4
_8447:
	dd	_1043
	dd	2016
	dd	6
	align	4
_8453:
	dd	_1043
	dd	2020
	dd	3
