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
	push	ebx
	cmp	dword [_1061],0
	je	_1062
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_1062:
	mov	dword [_1061],1
	push	ebp
	push	_1059
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
	push	_1038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectRegisterType
	add	esp,4
	push	_1040
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1042
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_1044]
	and	eax,1
	cmp	eax,0
	jne	_1045
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TCompiler_Templates],eax
	or	dword [_1044],1
_1045:
	push	_bb_TCompiler
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectRegisterType
	add	esp,4
	push	_1046
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1047
	call	dword [_bbOnDebugEnterStm]
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
	mov	eax,dword [_1044]
	and	eax,2
	cmp	eax,0
	jne	_1057
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TDatatype_UserDefinedDatatypes],eax
	or	dword [_1044],2
_1057:
	push	_bb_TDatatype
	call	_bbObjectRegisterType
	add	esp,4
	push	_1058
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_733
_733:
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
	push	_1066
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
	push	_1065
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_736
_736:
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
_739:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1071
	push	eax
	call	_bbGCFree
	add	esp,4
_1071:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1073
	push	eax
	call	_bbGCFree
	add	esp,4
_1073:
	mov	eax,0
	jmp	_1069
_1069:
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
	push	_1091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1076
	call	_brl_blitz_NullObjectError
_1076:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1081
	push	eax
	call	_bbGCFree
	add	esp,4
_1081:
	mov	dword [esi+8],ebx
	push	_1082
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1084
	call	_brl_blitz_NullObjectError
_1084:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1089
	push	eax
	call	_bbGCFree
	add	esp,4
_1089:
	mov	dword [esi+12],ebx
	push	_1090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_744
_744:
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
	push	_1177
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1096
	call	_brl_blitz_NullObjectError
_1096:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1098
	call	_brl_blitz_NullObjectError
_1098:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_1099
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1099:
	cmp	eax,0
	je	_1101
	mov	eax,ebp
	push	eax
	push	_1163
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_1104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_25
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_1106
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1108
	call	_brl_blitz_NullObjectError
_1108:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1110
	call	_brl_blitz_NullObjectError
_1110:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1111
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1113
	call	_brl_blitz_NullObjectError
_1113:
	push	_4
	push	_bbNullObject
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1115
	call	_brl_blitz_NullObjectError
_1115:
	push	_4
	push	_bbNullObject
	push	_27
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1117
	call	_brl_blitz_NullObjectError
_1117:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1119
	call	_brl_blitz_NullObjectError
_1119:
	push	dword [esi+12]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_1122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-24],eax
	push	_1124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1128
	call	_brl_blitz_NullObjectError
_1128:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_28
_30:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1133
	call	_brl_blitz_NullObjectError
_1133:
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
	push	_1137
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_1136
	call	_brl_blitz_NullObjectError
_1136:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_28:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1131
	call	_brl_blitz_NullObjectError
_1131:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_30
_29:
	push	_1139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1143
	call	_brl_blitz_NullObjectError
_1143:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_31
_33:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_1148
	call	_brl_blitz_NullObjectError
_1148:
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
	push	_1153
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_1150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1152
	call	_brl_blitz_NullObjectError
_1152:
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
	jne	_1146
	call	_brl_blitz_NullObjectError
_1146:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_33
_32:
	push	_1154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1156
	call	_brl_blitz_NullObjectError
_1156:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1158
	call	_brl_blitz_NullObjectError
_1158:
	mov	eax,dword [ebx+20]
	cmp	dword [ebp-20],eax
	je	_1159
	mov	eax,ebp
	push	eax
	push	_1161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_748
_1159:
	push	_1162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_748
_1101:
	mov	eax,ebp
	push	eax
	push	_1176
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_27
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_1170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_1172
	call	_brl_blitz_NullObjectError
_1172:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1174
	call	_brl_blitz_NullObjectError
_1174:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_748
_748:
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
	push	_1185
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
	push	_1184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_751
_751:
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
_754:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1188
	push	eax
	call	_bbGCFree
	add	esp,4
_1188:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1190
	push	eax
	call	_bbGCFree
	add	esp,4
_1190:
	mov	eax,dword [ebx+32]
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
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1186
_1186:
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
	push	_1201
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1199
	call	_brl_blitz_NullObjectError
_1199:
	mov	byte [ebx+29],1
	mov	byte [ebp-8],0
	jmp	_757
_757:
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
	push	_1211
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1204
	call	_brl_blitz_NullObjectError
_1204:
	push	dword [ebp-16]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_1206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1208
	call	_brl_blitz_NullObjectError
_1208:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1210
	call	_brl_blitz_NullObjectError
_1210:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_763
_763:
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
	push	_1280
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1217
	call	_brl_blitz_NullObjectError
_1217:
	movzx	eax,byte [ebx+16]
	mov	eax,eax
	cmp	eax,0
	jne	_1218
	mov	eax,ebp
	push	eax
	push	_1279
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1221
	call	_brl_blitz_NullObjectError
_1221:
	mov	byte [ebx+16],1
	push	_1223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1225
	call	_brl_blitz_NullObjectError
_1225:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1228
	call	_brl_blitz_NullObjectError
_1228:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1232
	push	eax
	call	_bbGCFree
	add	esp,4
_1232:
	mov	dword [esi+20],ebx
	push	_1233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1235
	call	_brl_blitz_NullObjectError
_1235:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_1240
	push	eax
	call	_bbGCFree
	add	esp,4
_1240:
	mov	dword [esi+40],ebx
	push	_1241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1244
	call	_brl_blitz_NullObjectError
_1244:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-12],eax
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1247
	call	_brl_blitz_NullObjectError
_1247:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_35
_37:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1252
	call	_brl_blitz_NullObjectError
_1252:
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
	push	_1277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1255
	call	_brl_blitz_NullObjectError
_1255:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1258
	call	_brl_blitz_NullObjectError
_1258:
	mov	esi,dword [esi+12]
	cmp	esi,_bbNullObject
	jne	_1260
	call	_brl_blitz_NullObjectError
_1260:
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
	jnz	_1264
	push	eax
	call	_bbGCFree
	add	esp,4
_1264:
	mov	dword [ebx+12],esi
	push	_1265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1267
	call	_brl_blitz_NullObjectError
_1267:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1270
	call	_brl_blitz_NullObjectError
_1270:
	mov	esi,dword [esi+12]
	cmp	esi,_bbNullObject
	jne	_1272
	call	_brl_blitz_NullObjectError
_1272:
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
	jnz	_1276
	push	eax
	call	_bbGCFree
	add	esp,4
_1276:
	mov	dword [ebx+40],esi
	call	dword [_bbOnDebugLeaveScope]
_35:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1250
	call	_brl_blitz_NullObjectError
_1250:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_37
_36:
	call	dword [_bbOnDebugLeaveScope]
_1218:
	mov	ebx,0
	jmp	_766
_766:
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
	push	_1308
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1281
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_1283
	call	_brl_blitz_NullObjectError
_1283:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1285
	call	_brl_blitz_NullObjectError
_1285:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1287
	call	_brl_blitz_NullObjectError
_1287:
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
	push	_1289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1291
	call	_brl_blitz_NullObjectError
_1291:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1294
	call	_brl_blitz_NullObjectError
_1294:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1296
	call	_brl_blitz_NullObjectError
_1296:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1300
	push	eax
	call	_bbGCFree
	add	esp,4
_1300:
	mov	dword [esi+24],ebx
	push	_1301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1303
	call	_brl_blitz_NullObjectError
_1303:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1306
	call	_brl_blitz_NullObjectError
_1306:
	movzx	eax,byte [esi+28]
	mov	eax,eax
	mov	byte [ebx+28],al
	push	_1307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_769
_769:
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
	push	_1311
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
	push	ebp
	push	_1310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_772
_772:
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
_775:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1315
	push	eax
	call	_bbGCFree
	add	esp,4
_1315:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_1313
_1313:
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
	push	_1317
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifierVariable_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TTypeField
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],3
	push	ebp
	push	_1316
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_778
_778:
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
_781:
	mov	dword [eax],_bb_TIdentifierVariable
	push	eax
	call	__bb_TIdentifierVariable_Delete
	add	esp,4
	mov	eax,0
	jmp	_1319
_1319:
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
	push	_1341
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1322
	call	_brl_blitz_NullObjectError
_1322:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1327
	push	eax
	call	_bbGCFree
	add	esp,4
_1327:
	mov	dword [esi+8],ebx
	push	_1328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1330
	call	_brl_blitz_NullObjectError
_1330:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1335
	push	eax
	call	_bbGCFree
	add	esp,4
_1335:
	mov	dword [esi+12],ebx
	push	_1336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1338
	call	_brl_blitz_NullObjectError
_1338:
	mov	eax,dword [ebp-16]
	mov	dword [ebx+20],eax
	push	_1340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_787
_787:
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
	push	_1346
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
	push	_1345
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_790
_790:
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
_793:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1350
	push	eax
	call	_bbGCFree
	add	esp,4
_1350:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1352
	push	eax
	call	_bbGCFree
	add	esp,4
_1352:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1354
	push	eax
	call	_bbGCFree
	add	esp,4
_1354:
	mov	eax,0
	jmp	_1348
_1348:
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
	push	_1384
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1357
	call	_brl_blitz_NullObjectError
_1357:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1362
	push	eax
	call	_bbGCFree
	add	esp,4
_1362:
	mov	dword [esi+20],ebx
	push	_1363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1365
	call	_brl_blitz_NullObjectError
_1365:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1370
	push	eax
	call	_bbGCFree
	add	esp,4
_1370:
	mov	dword [esi+24],ebx
	push	_1371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1373
	call	_brl_blitz_NullObjectError
_1373:
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	mov	dword [ebx+8],eax
	push	_1375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1377
	call	_brl_blitz_NullObjectError
_1377:
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	mov	byte [ebx+12],al
	push	_1379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1381
	call	_brl_blitz_NullObjectError
_1381:
	mov	eax,dword [ebp-24]
	mov	dword [ebx+28],eax
	push	_1383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_801
_801:
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
	push	_1406
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
	push	_1405
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1394
	call	_brl_blitz_NullObjectError
_1394:
	mov	eax,dword [ebp-4]
	cmp	dword [ebx+24],eax
	jne	_1395
	push	ebp
	push	_1404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1398
	call	_brl_blitz_NullObjectError
_1398:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_1403
	push	eax
	call	_bbGCFree
	add	esp,4
_1403:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_1395:
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_804
_804:
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
_807:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1409
	push	eax
	call	_bbGCFree
	add	esp,4
_1409:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1411
	push	eax
	call	_bbGCFree
	add	esp,4
_1411:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_1413
	push	eax
	call	_bbGCFree
	add	esp,4
_1413:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1415
	push	eax
	call	_bbGCFree
	add	esp,4
_1415:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1417
	push	eax
	call	_bbGCFree
	add	esp,4
_1417:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1419
	push	eax
	call	_bbGCFree
	add	esp,4
_1419:
	mov	eax,0
	jmp	_1407
_1407:
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
	push	_1462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TTypeTemplate_ObjectTemplate]
	dec	dword [eax+4]
	jnz	_1424
	push	eax
	call	_bbGCFree
	add	esp,4
_1424:
	mov	dword [__bb_TTypeTemplate_ObjectTemplate],ebx
	push	_1425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	esi,_bbNullObject
	jne	_1427
	call	_brl_blitz_NullObjectError
_1427:
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_1432
	push	eax
	call	_bbGCFree
	add	esp,4
_1432:
	mov	dword [esi+20],ebx
	push	_1433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	esi,_bbNullObject
	jne	_1435
	call	_brl_blitz_NullObjectError
_1435:
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_1440
	push	eax
	call	_bbGCFree
	add	esp,4
_1440:
	mov	dword [esi+28],ebx
	push	_1441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1443
	call	_brl_blitz_NullObjectError
_1443:
	mov	esi,dword [ebx+28]
	cmp	esi,_bbNullObject
	jne	_1445
	call	_brl_blitz_NullObjectError
_1445:
	mov	ebx,_39
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1450
	push	eax
	call	_bbGCFree
	add	esp,4
_1450:
	mov	dword [esi+16],ebx
	push	_1451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1453
	call	_brl_blitz_NullObjectError
_1453:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_1455
	call	_brl_blitz_NullObjectError
_1455:
	mov	dword [ebx+12],0
	push	_1457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_UserDefinedDatatypes]
	cmp	esi,_bbNullObject
	jne	_1459
	call	_brl_blitz_NullObjectError
_1459:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_1461
	call	_brl_blitz_NullObjectError
_1461:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_809
_809:
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
	push	_1523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1463
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],0
	jne	_1464
	mov	eax,ebp
	push	eax
	push	_1466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_1464:
	push	_1467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1469
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1472
	call	_brl_blitz_NullObjectError
_1472:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1475
	call	_brl_blitz_NullObjectError
_1475:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_40
_42:
	cmp	ebx,_bbNullObject
	jne	_1480
	call	_brl_blitz_NullObjectError
_1480:
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
	push	_1491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1481
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1483
	call	_brl_blitz_NullObjectError
_1483:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebp-8]
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1484
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1484:
	cmp	eax,0
	je	_1486
	mov	eax,ebp
	push	eax
	push	_1490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1489
	call	_brl_blitz_NullObjectError
_1489:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1486:
	call	dword [_bbOnDebugLeaveScope]
_40:
	cmp	ebx,_bbNullObject
	jne	_1478
	call	_brl_blitz_NullObjectError
_1478:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	push	_1492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1494
	call	_brl_blitz_NullObjectError
_1494:
	cmp	dword [ebx+24],_bbNullObject
	je	_1495
	mov	eax,ebp
	push	eax
	push	_1521
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1499
	call	_brl_blitz_NullObjectError
_1499:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1501
	call	_brl_blitz_NullObjectError
_1501:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1504
	call	_brl_blitz_NullObjectError
_1504:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_43
_45:
	cmp	ebx,_bbNullObject
	jne	_1509
	call	_brl_blitz_NullObjectError
_1509:
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
	push	_1520
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_1512
	call	_brl_blitz_NullObjectError
_1512:
	mov	eax,dword [esi+20]
	cmp	eax,2
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1513
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1513:
	cmp	eax,0
	je	_1515
	mov	eax,ebp
	push	eax
	push	_1519
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1518
	call	_brl_blitz_NullObjectError
_1518:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1515:
	call	dword [_bbOnDebugLeaveScope]
_43:
	cmp	ebx,_bbNullObject
	jne	_1507
	call	_brl_blitz_NullObjectError
_1507:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	call	dword [_bbOnDebugLeaveScope]
_1495:
	push	_1522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_813
_813:
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
	push	_1585
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1530
	call	_brl_blitz_NullObjectError
_1530:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1533
	call	_brl_blitz_NullObjectError
_1533:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_46
_48:
	cmp	ebx,_bbNullObject
	jne	_1538
	call	_brl_blitz_NullObjectError
_1538:
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
	push	_1549
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1539
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_1541
	call	_brl_blitz_NullObjectError
_1541:
	mov	eax,dword [esi+8]
	cmp	eax,dword [ebp-8]
	setge	al
	movzx	eax,al
	cmp	eax,0
	jne	_1542
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1542:
	cmp	eax,0
	je	_1544
	mov	eax,ebp
	push	eax
	push	_1548
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1547
	call	_brl_blitz_NullObjectError
_1547:
	push	dword [ebp-16]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1544:
	call	dword [_bbOnDebugLeaveScope]
_46:
	cmp	ebx,_bbNullObject
	jne	_1536
	call	_brl_blitz_NullObjectError
_1536:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	push	_1550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1552
	call	_brl_blitz_NullObjectError
_1552:
	mov	eax,dword [ebx+24]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_1553
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	setne	al
	movzx	eax,al
_1553:
	cmp	eax,0
	je	_1555
	mov	eax,ebp
	push	eax
	push	_1583
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1559
	call	_brl_blitz_NullObjectError
_1559:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1561
	call	_brl_blitz_NullObjectError
_1561:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1564
	call	_brl_blitz_NullObjectError
_1564:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_49
_51:
	cmp	ebx,_bbNullObject
	jne	_1569
	call	_brl_blitz_NullObjectError
_1569:
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
	push	_1582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1570
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_1572
	call	_brl_blitz_NullObjectError
_1572:
	mov	eax,dword [esi+8]
	cmp	eax,2
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1573
	mov	eax,dword [ebp-8]
	cmp	eax,1
	sete	al
	movzx	eax,al
_1573:
	cmp	eax,0
	jne	_1575
	mov	eax,dword [ebp-8]
	cmp	eax,-1
	sete	al
	movzx	eax,al
_1575:
	cmp	eax,0
	je	_1577
	mov	eax,ebp
	push	eax
	push	_1581
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1578
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_1580
	call	_brl_blitz_NullObjectError
_1580:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1577:
	call	dword [_bbOnDebugLeaveScope]
_49:
	cmp	ebx,_bbNullObject
	jne	_1567
	call	_brl_blitz_NullObjectError
_1567:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_51
_50:
	call	dword [_bbOnDebugLeaveScope]
_1555:
	push	_1584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_817
_817:
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
	push	_1603
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeField
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1588
	call	_brl_blitz_NullObjectError
_1588:
	push	dword [ebp-20]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_1590
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	push	dword [ebp-24]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_1592
	call	_brl_blitz_NullObjectError
_1592:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1597
	push	eax
	call	_bbGCFree
	add	esp,4
_1597:
	mov	dword [esi+16],ebx
	push	_1598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1600
	call	_brl_blitz_NullObjectError
_1600:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1602
	call	_brl_blitz_NullObjectError
_1602:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_824
_824:
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
	push	_1745
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1605
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1608
	call	_brl_blitz_NullObjectError
_1608:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1611
	call	_brl_blitz_NullObjectError
_1611:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-52],eax
	jmp	_52
_54:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1616
	call	_brl_blitz_NullObjectError
_1616:
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
	push	_1658
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1619
	call	_brl_blitz_NullObjectError
_1619:
	push	dword [ebp-16]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_1620
	mov	eax,ebp
	push	eax
	push	_1622
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_1620:
	push	_1623
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1625
	call	_brl_blitz_NullObjectError
_1625:
	push	dword [ebp-16]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1628
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1627
	call	_brl_blitz_NullObjectError
_1627:
	mov	eax,dword [ebx+16]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_1628:
	cmp	eax,0
	je	_1638
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1631
	call	_brl_blitz_NullObjectError
_1631:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1633
	call	_brl_blitz_NullObjectError
_1633:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_1635
	call	_brl_blitz_NullObjectError
_1635:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1637
	call	_brl_blitz_NullObjectError
_1637:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_1638:
	cmp	eax,0
	je	_1648
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1641
	call	_brl_blitz_NullObjectError
_1641:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1643
	call	_brl_blitz_NullObjectError
_1643:
	mov	esi,dword [ebx+8]
	cmp	esi,_bbNullObject
	jne	_1645
	call	_brl_blitz_NullObjectError
_1645:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1647
	call	_brl_blitz_NullObjectError
_1647:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1648:
	cmp	eax,0
	je	_1650
	mov	eax,ebp
	push	eax
	push	_1657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	push	_1652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1654
	call	_brl_blitz_NullObjectError
_1654:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1656
	call	_brl_blitz_NullObjectError
_1656:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_1650:
	call	dword [_bbOnDebugLeaveScope]
_52:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1614
	call	_brl_blitz_NullObjectError
_1614:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	push	_1660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],-1
	push	_1662
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1665
	call	_brl_blitz_NullObjectError
_1665:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1667
	call	_brl_blitz_NullObjectError
_1667:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1670
	call	_brl_blitz_NullObjectError
_1670:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	mov	dword [ebp-48],eax
	jmp	_55
_57:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1675
	call	_brl_blitz_NullObjectError
_1675:
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
	push	_1717
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1678
	call	_brl_blitz_NullObjectError
_1678:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1680
	call	_brl_blitz_NullObjectError
_1680:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_1685
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1682
	call	_brl_blitz_NullObjectError
_1682:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1684
	call	_brl_blitz_NullObjectError
_1684:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	sete	al
	movzx	eax,al
_1685:
	cmp	eax,0
	je	_1693
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1688
	call	_brl_blitz_NullObjectError
_1688:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1690
	call	_brl_blitz_NullObjectError
_1690:
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
	jne	_1692
	mov	eax,_bbEmptyString
_1692:
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,dword [ebp-28]
	setg	al
	movzx	eax,al
_1693:
	cmp	eax,0
	je	_1695
	mov	eax,ebp
	push	eax
	push	_1715
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1696
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1698
	call	_brl_blitz_NullObjectError
_1698:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1700
	call	_brl_blitz_NullObjectError
_1700:
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
	jne	_1702
	mov	eax,_bbEmptyString
_1702:
	push	eax
	call	_bbStringToInt
	add	esp,4
	add	eax,1
	mov	dword [ebp-44],eax
	push	_1704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1706
	call	_brl_blitz_NullObjectError
_1706:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1708
	call	_brl_blitz_NullObjectError
_1708:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-44]
	mov	dword [ebp-28],eax
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
_1695:
	call	dword [_bbOnDebugLeaveScope]
_55:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_1673
	call	_brl_blitz_NullObjectError
_1673:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_57
_56:
	push	_1718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],-1
	jne	_1719
	mov	eax,ebp
	push	eax
	push	_1726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1722
	call	_brl_blitz_NullObjectError
_1722:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_1724
	call	_brl_blitz_NullObjectError
_1724:
	push	_185
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,12
	push	_1725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	call	dword [_bbOnDebugLeaveScope]
_1719:
	push	_1727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeMethod
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_1729
	call	_brl_blitz_NullObjectError
_1729:
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
	push	_1731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_1733
	call	_brl_blitz_NullObjectError
_1733:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1738
	push	eax
	call	_bbGCFree
	add	esp,4
_1738:
	mov	dword [esi+16],ebx
	push	_1739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1741
	call	_brl_blitz_NullObjectError
_1741:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1743
	call	_brl_blitz_NullObjectError
_1743:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_1744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	jmp	_832
_832:
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
	push	_1895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_58
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_1749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_1751
	call	_brl_blitz_NullObjectError
_1751:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1753
	call	_brl_blitz_NullObjectError
_1753:
	push	dword [ebx+20]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_4
	push	_1756
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1758
	call	_brl_blitz_NullObjectError
_1758:
	cmp	dword [ebx+24],_bbNullObject
	je	_1759
	mov	eax,ebp
	push	eax
	push	_1765
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1760
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1762
	call	_brl_blitz_NullObjectError
_1762:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_1764
	call	_brl_blitz_NullObjectError
_1764:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_1759:
	push	_1766
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1768
	call	_brl_blitz_NullObjectError
_1768:
	push	dword [ebp-12]
	push	_59
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1774
	call	_brl_blitz_NullObjectError
_1774:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1777
	call	_brl_blitz_NullObjectError
_1777:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1782
	call	_brl_blitz_NullObjectError
_1782:
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
	push	_1801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1785
	call	_brl_blitz_NullObjectError
_1785:
	push	_4
	push	_bbNullObject
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_1787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_1789
	call	_brl_blitz_NullObjectError
_1789:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1791
	call	_brl_blitz_NullObjectError
_1791:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1794
	call	_brl_blitz_NullObjectError
_1794:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1796
	call	_brl_blitz_NullObjectError
_1796:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_1799
	call	_brl_blitz_NullObjectError
_1799:
	push	_bah_libxml_TxmlNode
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	push	dword [ebp-24]
	call	_bb_AddChild
	add	esp,8
	push	_1800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_60:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1780
	call	_brl_blitz_NullObjectError
_1780:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	push	_1802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1804
	call	_brl_blitz_NullObjectError
_1804:
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_64
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_1806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1809
	call	_brl_blitz_NullObjectError
_1809:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1812
	call	_brl_blitz_NullObjectError
_1812:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-60],eax
	jmp	_65
_67:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1817
	call	_brl_blitz_NullObjectError
_1817:
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
	push	_1889
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1820
	call	_brl_blitz_NullObjectError
_1820:
	push	_4
	push	_bbNullObject
	push	_68
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	push	_1822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_1824
	call	_brl_blitz_NullObjectError
_1824:
	mov	eax,dword [ebp-28]
	mov	dword [ebp-48],eax
	cmp	dword [ebp-48],_bbNullObject
	jne	_1826
	call	_brl_blitz_NullObjectError
_1826:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1828
	call	_brl_blitz_NullObjectError
_1828:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_1830
	call	_brl_blitz_NullObjectError
_1830:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_1832
	call	_brl_blitz_NullObjectError
_1832:
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
	push	_1833
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1835
	call	_brl_blitz_NullObjectError
_1835:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_1837
	call	_brl_blitz_NullObjectError
_1837:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1840
	call	_brl_blitz_NullObjectError
_1840:
	cmp	dword [ebx+16],_bbNullObject
	je	_1841
	mov	eax,ebp
	push	eax
	push	_1887
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1844
	call	_brl_blitz_NullObjectError
_1844:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_1846
	call	_brl_blitz_NullObjectError
_1846:
	mov	esi,dword [esi+16]
	cmp	esi,_bbNullObject
	jne	_1848
	call	_brl_blitz_NullObjectError
_1848:
	push	dword [esi+20]
	push	_70
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1851
	call	_brl_blitz_NullObjectError
_1851:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1853
	call	_brl_blitz_NullObjectError
_1853:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_1855
	call	_brl_blitz_NullObjectError
_1855:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_1856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_1859
	call	_brl_blitz_NullObjectError
_1859:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_1861
	call	_brl_blitz_NullObjectError
_1861:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_1864
	call	_brl_blitz_NullObjectError
_1864:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_71
_73:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1869
	call	_brl_blitz_NullObjectError
_1869:
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
	push	_1884
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_1872
	call	_brl_blitz_NullObjectError
_1872:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_1874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_1876
	call	_brl_blitz_NullObjectError
_1876:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1878
	call	_brl_blitz_NullObjectError
_1878:
	push	dword [ebx+8]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_1879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_1881
	call	_brl_blitz_NullObjectError
_1881:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_1883
	call	_brl_blitz_NullObjectError
_1883:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_71:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_1867
	call	_brl_blitz_NullObjectError
_1867:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_73
_72:
	call	dword [_bbOnDebugLeaveScope]
_1841:
	push	_1888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_65:
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_1815
	call	_brl_blitz_NullObjectError
_1815:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_67
_66:
	push	_1891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_1893
	call	_brl_blitz_NullObjectError
_1893:
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_75
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_1894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_835
_835:
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
	push	_1902
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
	push	_1901
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_838
_838:
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
_841:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1905
	push	eax
	call	_bbGCFree
	add	esp,4
_1905:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1907
	push	eax
	call	_bbGCFree
	add	esp,4
_1907:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1909
	push	eax
	call	_bbGCFree
	add	esp,4
_1909:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1911
	push	eax
	call	_bbGCFree
	add	esp,4
_1911:
	mov	eax,0
	jmp	_1903
_1903:
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
	push	_1937
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1914
	call	_brl_blitz_NullObjectError
_1914:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_1919
	push	eax
	call	_bbGCFree
	add	esp,4
_1919:
	mov	dword [esi+8],ebx
	push	_1920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1922
	call	_brl_blitz_NullObjectError
_1922:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_1927
	push	eax
	call	_bbGCFree
	add	esp,4
_1927:
	mov	dword [esi+12],ebx
	push	_1928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_1930
	call	_brl_blitz_NullObjectError
_1930:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_1935
	push	eax
	call	_bbGCFree
	add	esp,4
_1935:
	mov	dword [esi+16],ebx
	push	_1936
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_847
_847:
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
	push	_1953
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
	push	_1941
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
	push	_1952
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_850
_850:
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
_853:
	mov	eax,dword [ebx+64]
	dec	dword [eax+4]
	jnz	_1957
	push	eax
	call	_bbGCFree
	add	esp,4
_1957:
	mov	eax,dword [ebx+60]
	dec	dword [eax+4]
	jnz	_1959
	push	eax
	call	_bbGCFree
	add	esp,4
_1959:
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_1961
	push	eax
	call	_bbGCFree
	add	esp,4
_1961:
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_1963
	push	eax
	call	_bbGCFree
	add	esp,4
_1963:
	mov	eax,dword [ebx+44]
	dec	dword [eax+4]
	jnz	_1965
	push	eax
	call	_bbGCFree
	add	esp,4
_1965:
	mov	eax,dword [ebx+40]
	dec	dword [eax+4]
	jnz	_1967
	push	eax
	call	_bbGCFree
	add	esp,4
_1967:
	mov	eax,dword [ebx+36]
	dec	dword [eax+4]
	jnz	_1969
	push	eax
	call	_bbGCFree
	add	esp,4
_1969:
	mov	eax,dword [ebx+32]
	dec	dword [eax+4]
	jnz	_1971
	push	eax
	call	_bbGCFree
	add	esp,4
_1971:
	mov	eax,dword [ebx+28]
	dec	dword [eax+4]
	jnz	_1973
	push	eax
	call	_bbGCFree
	add	esp,4
_1973:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_1975
	push	eax
	call	_bbGCFree
	add	esp,4
_1975:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_1977
	push	eax
	call	_bbGCFree
	add	esp,4
_1977:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_1979
	push	eax
	call	_bbGCFree
	add	esp,4
_1979:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_1981
	push	eax
	call	_bbGCFree
	add	esp,4
_1981:
	mov	eax,0
	jmp	_1955
_1955:
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
	push	_2057
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_1982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-8]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-12],eax
	push	_1984
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_1986
	call	_brl_blitz_NullObjectError
_1986:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_1988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_1991
	call	_brl_blitz_NullObjectError
_1991:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_1994
	call	_brl_blitz_NullObjectError
_1994:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_76
_78:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1999
	call	_brl_blitz_NullObjectError
_1999:
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
	push	_2056
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2002
	call	_brl_blitz_NullObjectError
_2002:
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToLower
	add	esp,4
	mov	dword [ebp-24],eax
	push	_2004
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	dword [ebp-28],eax
	push	_2006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-32],eax
	push	_2008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2010
	call	_brl_blitz_NullObjectError
_2010:
	push	dword [ebp-28]
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_2011
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2013
	call	_brl_blitz_NullObjectError
_2013:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_2014
	mov	eax,ebp
	push	eax
	push	_2047
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2018
	call	_brl_blitz_NullObjectError
_2018:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_2021
	call	_brl_blitz_NullObjectError
_2021:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_79
_81:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2026
	call	_brl_blitz_NullObjectError
_2026:
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
	push	_2044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2027
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_4
	push	_2029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2031
	call	_brl_blitz_NullObjectError
_2031:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+204]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_2032
	mov	eax,ebp
	push	eax
	push	_2036
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2035
	call	_brl_blitz_NullObjectError
_2035:
	push	_82
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-40],eax
	call	dword [_bbOnDebugLeaveScope]
_2032:
	push	_2037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	call	dword [_bb_TDatatype+56]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_2039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_2041
	call	_brl_blitz_NullObjectError
_2041:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2043
	call	_brl_blitz_NullObjectError
_2043:
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
	jne	_2024
	call	_brl_blitz_NullObjectError
_2024:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_81
_80:
	call	dword [_bbOnDebugLeaveScope]
_2014:
	push	_2048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_2050
	call	_brl_blitz_NullObjectError
_2050:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_2051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_2053
	call	_brl_blitz_NullObjectError
_2053:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_2055
	call	_brl_blitz_NullObjectError
_2055:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_76:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_1997
	call	_brl_blitz_NullObjectError
_1997:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_78
_77:
	mov	ebx,0
	jmp	_857
_857:
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
	push	_2061
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	mov	ebx,0
	jmp	_861
_861:
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
	push	_2299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	_83
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-12],eax
	push	_2064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2066
	call	_brl_blitz_NullObjectError
_2066:
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_2071
	push	eax
	call	_bbGCFree
	add	esp,4
_2071:
	mov	dword [esi+8],ebx
	push	_2072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	25
	push	_548
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
	push	_2100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_2102
	call	_brl_blitz_NullObjectError
_2102:
	push	_83
	push	dword [ebp-12]
	call	_bbStringSplit
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+32]
	dec	dword [eax+4]
	jnz	_2107
	push	eax
	call	_bbGCFree
	add	esp,4
_2107:
	mov	dword [esi+32],ebx
	push	_2108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2113
	call	_brl_blitz_NullObjectError
_2113:
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
	push	_2269
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_2120
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
	jne	_2121
	mov	eax,ebp
	push	eax
	push	_2123
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2122
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_2121:
	push	_2124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_2125
	mov	eax,ebp
	push	eax
	push	_2136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2128
	call	_brl_blitz_NullObjectError
_2128:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2130
	call	_brl_blitz_NullObjectError
_2130:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2131
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
	jne	_2132
	mov	eax,ebp
	push	eax
	push	_2134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	call	dword [_bbOnDebugLeaveScope]
_2132:
	push	_2135
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_108
_2125:
	push	_2137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_85
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-24],eax
	push	_2138
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],0
	mov	dword [ebp-32],0
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax+8]
	mov	dword [ebp-40],eax
	jmp	_2140
_115:
	mov	eax,ebp
	push	eax
	push	_2263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2142
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
	jne	_2143
	mov	eax,ebp
	push	eax
	push	_2150
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2144
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2146
	call	_brl_blitz_NullObjectError
_2146:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2148
	call	_brl_blitz_NullObjectError
_2148:
	push	_97
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
_2143:
	push	_2151
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
	jne	_2152
	mov	eax,ebp
	push	eax
	push	_2154
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_113
_2152:
	push	_2155
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
	jne	_2156
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
_2156:
	cmp	eax,0
	jne	_2158
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
_2158:
	cmp	eax,0
	je	_2160
	mov	eax,ebp
	push	eax
	push	_2162
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_114
_2160:
	push	_2163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2164
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
	jne	_2165
	mov	eax,ebp
	push	eax
	push	_2186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2168
	call	_brl_blitz_NullObjectError
_2168:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2170
	call	_brl_blitz_NullObjectError
_2170:
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
	push	_2171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	push	_2172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-32],1
	mov	eax,dword [ebp-24]
	mov	ebx,dword [eax+8]
	jmp	_2173
_121:
	mov	eax,ebp
	push	eax
	push	_2185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_2164
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
	jne	_2176
	mov	eax,ebp
	push	eax
	push	_2184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2179
	call	_brl_blitz_NullObjectError
_2179:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2181
	call	_brl_blitz_NullObjectError
_2181:
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
	push	_2182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	add	eax,1
	mov	dword [ebp-28],eax
	push	_2183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_120
_2176:
	call	dword [_bbOnDebugLeaveScope]
_119:
	add	dword [ebp-32],1
_2173:
	cmp	dword [ebp-32],ebx
	jle	_121
_120:
	call	dword [_bbOnDebugLeaveScope]
_2165:
	push	_2187
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
	push	_2261
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2193
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
	jne	_2194
	mov	eax,ebp
	push	eax
	push	_2260
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2195
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
	je	_2196
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
_2196:
	cmp	eax,0
	je	_2198
	mov	eax,ebp
	push	eax
	push	_2205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2199
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
	jne	_2200
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
_2200:
	cmp	eax,0
	je	_2202
	mov	eax,ebp
	push	eax
	push	_2204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_123
_2202:
	call	dword [_bbOnDebugLeaveScope]
_2198:
	push	_2206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2208
	call	_brl_blitz_NullObjectError
_2208:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2210
	call	_brl_blitz_NullObjectError
_2210:
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
	push	_2211
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
	je	_2212
	push	_98
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2212:
	cmp	eax,0
	je	_2214
	mov	eax,ebp
	push	eax
	push	_2256
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_106
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2216
	mov	eax,ebp
	push	eax
	push	_2223
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2219
	call	_brl_blitz_NullObjectError
_2219:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2221
	call	_brl_blitz_NullObjectError
_2221:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_125
	call	dword [_bbOnDebugLeaveScope]
_2216:
	push	_2224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_107
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2225
	mov	eax,ebp
	push	eax
	push	_2232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2228
	call	_brl_blitz_NullObjectError
_2228:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2230
	call	_brl_blitz_NullObjectError
_2230:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_126
	call	dword [_bbOnDebugLeaveScope]
_2225:
	push	_2233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_105
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2234
	mov	eax,ebp
	push	eax
	push	_2241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2237
	call	_brl_blitz_NullObjectError
_2237:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2239
	call	_brl_blitz_NullObjectError
_2239:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_127
	call	dword [_bbOnDebugLeaveScope]
_2234:
	push	_2242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_128
	push	dword [ebp-36]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2243
	mov	eax,ebp
	push	eax
	push	_2250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2246
	call	_brl_blitz_NullObjectError
_2246:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2248
	call	_brl_blitz_NullObjectError
_2248:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2249
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_129
	call	dword [_bbOnDebugLeaveScope]
_2243:
	push	_2251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2253
	call	_brl_blitz_NullObjectError
_2253:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2255
	call	_brl_blitz_NullObjectError
_2255:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2214:
	push	_2257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edx,dword [ebp-32]
	mov	eax,dword [ebp-36]
	add	edx,dword [eax+8]
	mov	dword [ebp-28],edx
	push	_2258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax+8]
	sub	eax,1
	add	dword [ebp-32],eax
	push	_2259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_123
_2194:
	call	dword [_bbOnDebugLeaveScope]
_122:
	cmp	ebx,edi
	jne	_124
_123:
	call	dword [_bbOnDebugLeaveScope]
_113:
	add	dword [ebp-32],1
_2140:
	mov	eax,dword [ebp-40]
	cmp	dword [ebp-32],eax
	jle	_115
_114:
	push	_2264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2266
	call	_brl_blitz_NullObjectError
_2266:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2268
	call	_brl_blitz_NullObjectError
_2268:
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
	push	_2272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2274
	call	_brl_blitz_NullObjectError
_2274:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2276
	call	_brl_blitz_NullObjectError
_2276:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_2278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_130
_132:
	mov	eax,ebp
	push	eax
	push	_2298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2281
	call	_brl_blitz_NullObjectError
_2281:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2283
	mov	eax,_bbEmptyString
_2283:
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
	je	_2288
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2285
	call	_brl_blitz_NullObjectError
_2285:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2287
	mov	eax,_bbEmptyString
_2287:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_2288:
	cmp	eax,0
	je	_2290
	mov	eax,ebp
	push	eax
	push	_2294
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2293
	call	_brl_blitz_NullObjectError
_2293:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_2290:
	push	_2295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_2297
	call	_brl_blitz_NullObjectError
_2297:
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
	jmp	_865
_865:
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
	sub	esp,220
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
	mov	dword [ebp-124],_bbEmptyString
	mov	dword [ebp-128],_bbNullObject
	mov	byte [ebp-4],0
	mov	dword [ebp-132],_bbNullObject
	mov	dword [ebp-136],0
	mov	dword [ebp-140],_bbNullObject
	mov	dword [ebp-144],_bbEmptyString
	mov	dword [ebp-148],_bbNullObject
	mov	dword [ebp-152],_bbEmptyString
	mov	dword [ebp-156],_bbNullObject
	mov	dword [ebp-160],_bbEmptyString
	mov	dword [ebp-164],0
	mov	dword [ebp-168],_bbNullObject
	mov	dword [ebp-172],_bbNullObject
	mov	dword [ebp-176],_bbNullObject
	mov	dword [ebp-180],_bbNullObject
	mov	dword [ebp-184],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_3364
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-12],eax
	push	_2306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_2310
	push	eax
	call	_bbGCFree
	add	esp,4
_2310:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_2311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Templates]
	cmp	ebx,_bbNullObject
	jne	_2313
	call	_brl_blitz_NullObjectError
_2313:
	push	dword [__bb_TTypeTemplate_ObjectTemplate]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2316
	call	_brl_blitz_NullObjectError
_2316:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_2318
	call	_brl_blitz_NullObjectError
_2318:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,4
	mov	dword [ebp-16],eax
	push	_2320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	mov	dword [ebp-28],0
	mov	eax,dword [ebp-16]
	mov	edi,dword [eax+20]
	jmp	_2322
_135:
	mov	eax,ebp
	push	eax
	push	_2401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2326
	call	_brl_blitz_ArrayBoundsError
_2326:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2328
	mov	eax,_bbEmptyString
_2328:
	mov	dword [ebp-32],eax
	push	_2330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	push	_136
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2333
	jmp	_2332
_2333:
	mov	eax,ebp
	push	eax
	push	_2399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	push	_2335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TTypeTemplate
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_2337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2339
	call	_brl_blitz_NullObjectError
_2339:
	mov	esi,dword [ebp-28]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2342
	call	_brl_blitz_ArrayBoundsError
_2342:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2344
	mov	eax,_bbEmptyString
_2344:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_2348
	push	eax
	call	_bbGCFree
	add	esp,4
_2348:
	mov	dword [ebx+20],esi
	push	_2349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-40],eax
	push	_2351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_2353
	call	_brl_blitz_NullObjectError
_2353:
	mov	esi,ebx
	mov	eax,dword [ebp-40]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_2358
	push	eax
	call	_bbGCFree
	add	esp,4
_2358:
	mov	dword [esi+28],ebx
	push	_2359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2361
	call	_brl_blitz_NullObjectError
_2361:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_2364
	call	_brl_blitz_NullObjectError
_2364:
	mov	eax,dword [esi+20]
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_2368
	push	eax
	call	_bbGCFree
	add	esp,4
_2368:
	mov	dword [ebx+16],esi
	push	_2369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2371
	call	_brl_blitz_NullObjectError
_2371:
	mov	dword [ebx+12],0
	push	_2373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2375
	call	_brl_blitz_NullObjectError
_2375:
	mov	byte [ebx+8],1
	push	_2377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_2379
	call	_brl_blitz_NullObjectError
_2379:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_2381
	call	_brl_blitz_NullObjectError
_2381:
	push	dword [__bb_TDatatype_NullDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2382
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_2384
	call	_brl_blitz_NullObjectError
_2384:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_2386
	call	_brl_blitz_NullObjectError
_2386:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_99
	call	dword [_bb_TOperator+68]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2389
	call	_brl_blitz_NullObjectError
_2389:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_2390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_100
	call	dword [_bb_TOperator+68]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2392
	call	_brl_blitz_NullObjectError
_2392:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,8
	push	_2393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_UserDefinedDatatypes]
	cmp	ebx,_bbNullObject
	jne	_2395
	call	_brl_blitz_NullObjectError
_2395:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Templates]
	cmp	ebx,_bbNullObject
	jne	_2398
	call	_brl_blitz_NullObjectError
_2398:
	push	dword [ebp-36]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2332
_2332:
	call	dword [_bbOnDebugLeaveScope]
_133:
	add	dword [ebp-28],1
_2322:
	cmp	dword [ebp-28],edi
	jl	_135
_134:
	push	_2402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],0
	mov	dword [ebp-44],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	mov	dword [ebp-220],eax
	jmp	_2404
_139:
	mov	eax,ebp
	push	eax
	push	_2843
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2408
	call	_brl_blitz_ArrayBoundsError
_2408:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2410
	mov	eax,_bbEmptyString
_2410:
	mov	dword [ebp-48],eax
	push	_2412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2415
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2416
	jmp	_2414
_2415:
	mov	eax,ebp
	push	eax
	push	_2498
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_143:
	mov	eax,ebp
	push	eax
	push	_2491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2418
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2421
	call	_brl_blitz_ArrayBoundsError
_2421:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2423
	mov	eax,_bbEmptyString
_2423:
	mov	dword [ebp-52],eax
	push	_2425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-56],eax
	push	_2427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2430
	call	_brl_blitz_ArrayBoundsError
_2430:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2432
	mov	eax,_bbEmptyString
_2432:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2433
	mov	eax,ebp
	push	eax
	push	_2440
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2437
	call	_brl_blitz_ArrayBoundsError
_2437:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2439
	mov	eax,_bbEmptyString
_2439:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-56],eax
	call	dword [_bbOnDebugLeaveScope]
_2433:
	push	_2441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_144
_146:
	mov	eax,ebp
	push	eax
	push	_2453
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_2451
	call	_brl_blitz_NullObjectError
_2451:
	add	dword [ebx+20],1
	call	dword [_bbOnDebugLeaveScope]
_144:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2444
	call	_brl_blitz_ArrayBoundsError
_2444:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2446
	mov	eax,_bbEmptyString
_2446:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_146
_145:
	push	_2454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-60],eax
	push	_2456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_2458
	call	_brl_blitz_NullObjectError
_2458:
	push	dword [ebp-56]
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_2459
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2461
	call	_brl_blitz_NullObjectError
_2461:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_2463
	call	_brl_blitz_NullObjectError
_2463:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_2464
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2466
	call	_brl_blitz_ArrayBoundsError
_2466:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2468
	mov	eax,_bbEmptyString
_2468:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2469
	mov	eax,ebp
	push	eax
	push	_2489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+20]
	jmp	_2471
_149:
	mov	eax,ebp
	push	eax
	push	_2488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2473
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2475
	call	_brl_blitz_ArrayBoundsError
_2475:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2477
	mov	eax,_bbEmptyString
_2477:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_2482
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2479
	call	_brl_blitz_ArrayBoundsError
_2479:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2481
	mov	eax,_bbEmptyString
_2481:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_2482:
	cmp	eax,0
	je	_2484
	mov	eax,ebp
	push	eax
	push	_2487
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-44],1
	push	_2486
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_148
_2484:
	call	dword [_bbOnDebugLeaveScope]
_147:
	add	dword [ebp-44],1
_2471:
	cmp	dword [ebp-44],ebx
	jl	_149
_148:
	call	dword [_bbOnDebugLeaveScope]
_2469:
	push	_2490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_141:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2495
	call	_brl_blitz_ArrayBoundsError
_2495:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2497
	mov	eax,_bbEmptyString
_2497:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_143
_142:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2414
_2416:
	mov	eax,ebp
	push	eax
	push	_2842
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2502
	call	_brl_blitz_ArrayBoundsError
_2502:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2504
	mov	eax,_bbEmptyString
_2504:
	mov	dword [ebp-64],eax
	push	_2506
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	push	_2508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2512
	call	_brl_blitz_NullObjectError
_2512:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_150
_152:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2517
	call	_brl_blitz_NullObjectError
_2517:
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
	push	_2524
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_2520
	call	_brl_blitz_NullObjectError
_2520:
	push	dword [ebp-64]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2521
	mov	eax,ebp
	push	eax
	push	_2523
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-72]
	mov	dword [ebp-68],eax
	call	dword [_bbOnDebugLeaveScope]
_2521:
	call	dword [_bbOnDebugLeaveScope]
_150:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2515
	call	_brl_blitz_NullObjectError
_2515:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_152
_151:
	push	_2526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2529
	call	_brl_blitz_ArrayBoundsError
_2529:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2531
	mov	eax,_bbEmptyString
_2531:
	push	_153
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2532
	mov	eax,ebp
	push	eax
	push	_2583
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2536
	call	_brl_blitz_ArrayBoundsError
_2536:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2538
	mov	eax,_bbEmptyString
_2538:
	mov	dword [ebp-76],eax
	push	_2540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2544
	call	_brl_blitz_NullObjectError
_2544:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_154
_156:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2549
	call	_brl_blitz_NullObjectError
_2549:
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
	push	_2582
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2550
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2552
	call	_brl_blitz_NullObjectError
_2552:
	push	dword [ebp-76]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2553
	mov	eax,ebp
	push	eax
	push	_2581
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2556
	call	_brl_blitz_NullObjectError
_2556:
	mov	ebx,dword [ebp-80]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2561
	push	eax
	call	_bbGCFree
	add	esp,4
_2561:
	mov	dword [esi+24],ebx
	push	_2562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2564
	call	_brl_blitz_NullObjectError
_2564:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2566
	call	_brl_blitz_NullObjectError
_2566:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2568
	call	_brl_blitz_NullObjectError
_2568:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2570
	call	_brl_blitz_NullObjectError
_2570:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_2573
	call	_brl_blitz_NullObjectError
_2573:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2575
	call	_brl_blitz_NullObjectError
_2575:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2577
	call	_brl_blitz_NullObjectError
_2577:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2579
	call	_brl_blitz_NullObjectError
_2579:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_155
_2553:
	call	dword [_bbOnDebugLeaveScope]
_154:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2547
	call	_brl_blitz_NullObjectError
_2547:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_156
_155:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2585
_2532:
	mov	eax,ebp
	push	eax
	push	_2612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2588
	call	_brl_blitz_NullObjectError
_2588:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_2593
	push	eax
	call	_bbGCFree
	add	esp,4
_2593:
	mov	dword [esi+24],ebx
	push	_2594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2596
	call	_brl_blitz_NullObjectError
_2596:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2598
	call	_brl_blitz_NullObjectError
_2598:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2600
	call	_brl_blitz_NullObjectError
_2600:
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_2602
	call	_brl_blitz_NullObjectError
_2602:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_2603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TTypeTemplate_ObjectTemplate]
	cmp	ebx,_bbNullObject
	jne	_2605
	call	_brl_blitz_NullObjectError
_2605:
	mov	ebx,dword [ebx+28]
	cmp	ebx,_bbNullObject
	jne	_2607
	call	_brl_blitz_NullObjectError
_2607:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_2609
	call	_brl_blitz_NullObjectError
_2609:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_2611
	call	_brl_blitz_NullObjectError
_2611:
	push	dword [ebx+28]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_2585:
	push	_2613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_157
_159:
	mov	eax,ebp
	push	eax
	push	_2837
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2618
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2620
	call	_brl_blitz_ArrayBoundsError
_2620:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2622
	mov	eax,_bbEmptyString
_2622:
	push	_161
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2623
	mov	eax,ebp
	push	eax
	push	_2629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2626
	call	_brl_blitz_NullObjectError
_2626:
	mov	dword [ebx+72],1
	push	_2628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2623:
	push	_2630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2632
	call	_brl_blitz_ArrayBoundsError
_2632:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2634
	mov	eax,_bbEmptyString
_2634:
	push	_162
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2635
	mov	eax,ebp
	push	eax
	push	_2641
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2638
	call	_brl_blitz_NullObjectError
_2638:
	mov	dword [ebx+72],3
	push	_2640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2635:
	push	_2642
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2644
	call	_brl_blitz_ArrayBoundsError
_2644:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2646
	mov	eax,_bbEmptyString
_2646:
	push	_163
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2647
	mov	eax,ebp
	push	eax
	push	_2653
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2650
	call	_brl_blitz_NullObjectError
_2650:
	mov	dword [ebx+72],2
	push	_2652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_2647:
	push	_2654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2656
	call	_brl_blitz_ArrayBoundsError
_2656:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2658
	mov	eax,_bbEmptyString
_2658:
	push	_164
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2659
	mov	eax,ebp
	push	eax
	push	_2672
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2662
	call	_brl_blitz_ArrayBoundsError
_2662:
	mov	ebx,dword [ebp-16]
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_2665
	call	_brl_blitz_ArrayBoundsError
_2665:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2667
	mov	eax,_bbEmptyString
_2667:
	push	_167
	push	eax
	push	_166
	push	dword [ebp-64]
	push	_165
	call	_bbStringConcat
	add	esp,8
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
	jnz	_2671
	push	eax
	call	_bbGCFree
	add	esp,4
_2671:
	mov	dword [ebx+24],esi
	call	dword [_bbOnDebugLeaveScope]
_2659:
	push	_2673
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2675
	call	_brl_blitz_ArrayBoundsError
_2675:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2677
	mov	eax,_bbEmptyString
_2677:
	push	_63
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2678
	mov	eax,ebp
	push	eax
	push	_2834
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2679
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2680
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2682
	call	_brl_blitz_ArrayBoundsError
_2682:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2684
	mov	eax,_bbEmptyString
_2684:
	mov	dword [ebp-84],eax
	push	_2686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2690
	call	_brl_blitz_ArrayBoundsError
_2690:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2692
	mov	eax,_bbEmptyString
_2692:
	push	0
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_2694
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_168
_170:
	mov	eax,ebp
	push	eax
	push	_2706
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2700
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2702
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2704
	call	_brl_blitz_NullObjectError
_2704:
	add	dword [ebx+20],1
	call	dword [_bbOnDebugLeaveScope]
_168:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2697
	call	_brl_blitz_ArrayBoundsError
_2697:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2699
	mov	eax,_bbEmptyString
_2699:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_170
_169:
	push	_2707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbEmptyString
	mov	dword [ebp-96],_bbNullObject
	push	_2710
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2712
	call	_brl_blitz_ArrayBoundsError
_2712:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2714
	mov	eax,_bbEmptyString
_2714:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2715
	mov	eax,ebp
	push	eax
	push	_2786
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	push	_2717
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_171
_173:
	mov	eax,ebp
	push	eax
	push	_2728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2724
	call	_brl_blitz_ArrayBoundsError
_2724:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2726
	mov	eax,_bbEmptyString
_2726:
	push	_85
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-92]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-92],eax
	push	_2727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_171:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2719
	call	_brl_blitz_ArrayBoundsError
_2719:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2721
	mov	eax,_bbEmptyString
_2721:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_173
_172:
	push	_2729
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-100],eax
	push	_2731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-100]
	cmp	edi,_bbNullObject
	jne	_2733
	call	_brl_blitz_NullObjectError
_2733:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2735
	call	_brl_blitz_NullObjectError
_2735:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2737
	call	_brl_blitz_NullObjectError
_2737:
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
	push	_2738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2740
	call	_brl_blitz_NullObjectError
_2740:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_2741
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_2744
	call	_brl_blitz_NullObjectError
_2744:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_2746
	call	_brl_blitz_NullObjectError
_2746:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2748
	call	_brl_blitz_NullObjectError
_2748:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2751
	call	_brl_blitz_NullObjectError
_2751:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_174
_176:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2756
	call	_brl_blitz_NullObjectError
_2756:
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
	je	_174
	mov	eax,ebp
	push	eax
	push	_2785
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2759
	call	_brl_blitz_NullObjectError
_2759:
	push	_177
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2760
	mov	eax,ebp
	push	eax
	push	_2784
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_2764
	call	_brl_blitz_NullObjectError
_2764:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2767
	call	_brl_blitz_NullObjectError
_2767:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_178
_180:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2772
	call	_brl_blitz_NullObjectError
_2772:
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
	je	_178
	mov	eax,ebp
	push	eax
	push	_2782
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2775
	call	_brl_blitz_NullObjectError
_2775:
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2776
	mov	eax,ebp
	push	eax
	push	_2781
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_2779
	call	_brl_blitz_NullObjectError
_2779:
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
	push	_2780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_179
_2776:
	call	dword [_bbOnDebugLeaveScope]
_178:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2770
	call	_brl_blitz_NullObjectError
_2770:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_180
_179:
	push	_2783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_175
_2760:
	call	dword [_bbOnDebugLeaveScope]
_174:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2754
	call	_brl_blitz_NullObjectError
_2754:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_176
_175:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2788
_2715:
	mov	eax,ebp
	push	eax
	push	_2828
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2791
	call	_brl_blitz_NullObjectError
_2791:
	mov	ebx,dword [ebx+16]
	push	_127
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2794
	push	_182
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2794
	push	_183
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2794
	push	_129
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2794
	push	_125
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2795
	push	_186
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2795
	push	_126
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2796
	mov	eax,ebp
	push	eax
	push	_2798
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2797
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2793
_2794:
	mov	eax,ebp
	push	eax
	push	_2810
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2800
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2802
	call	_brl_blitz_NullObjectError
_2802:
	push	_185
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_2803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_2805
	call	_brl_blitz_NullObjectError
_2805:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2807
	call	_brl_blitz_NullObjectError
_2807:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2809
	call	_brl_blitz_NullObjectError
_2809:
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
	jmp	_2793
_2795:
	mov	eax,ebp
	push	eax
	push	_2822
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_125
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2814
	call	_brl_blitz_NullObjectError
_2814:
	push	_187
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_2815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_FloatDatatype]
	cmp	edi,_bbNullObject
	jne	_2817
	call	_brl_blitz_NullObjectError
_2817:
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_2819
	call	_brl_blitz_NullObjectError
_2819:
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_2821
	call	_brl_blitz_NullObjectError
_2821:
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
	jmp	_2793
_2796:
	mov	eax,ebp
	push	eax
	push	_2827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_126
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_2824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_2826
	call	_brl_blitz_NullObjectError
_2826:
	push	_4
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2793
_2793:
	call	dword [_bbOnDebugLeaveScope]
_2788:
	push	_2829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_2831
	call	_brl_blitz_NullObjectError
_2831:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2833
	call	_brl_blitz_NullObjectError
_2833:
	push	dword [ebx+72]
	push	dword [ebp-96]
	push	dword [ebp-88]
	push	dword [ebp-84]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_2678:
	push	_2836
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-44],1
	call	dword [_bbOnDebugLeaveScope]
_157:
	mov	ebx,dword [ebp-44]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2615
	call	_brl_blitz_ArrayBoundsError
_2615:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2617
	mov	eax,_bbEmptyString
_2617:
	push	_160
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_159
_158:
	push	_2838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2840
	call	_brl_blitz_NullObjectError
_2840:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2414
_2414:
	call	dword [_bbOnDebugLeaveScope]
_137:
	add	dword [ebp-44],1
_2404:
	mov	eax,dword [ebp-220]
	cmp	dword [ebp-44],eax
	jl	_139
_138:
	push	_2844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_4
	push	_2846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],0
	mov	dword [ebp-112],0
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax+20]
	mov	dword [ebp-216],eax
	jmp	_2850
_191:
	mov	eax,ebp
	push	eax
	push	_3241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2852
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2854
	call	_brl_blitz_ArrayBoundsError
_2854:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2856
	mov	eax,_bbEmptyString
_2856:
	mov	dword [ebp-116],eax
	push	_2858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2861
	push	_160
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2862
	push	_161
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2863
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2864
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2865
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2866
	jmp	_2860
_2861:
	mov	eax,ebp
	push	eax
	push	_2896
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2870
	call	_brl_blitz_ArrayBoundsError
_2870:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2872
	mov	eax,_bbEmptyString
_2872:
	mov	dword [ebp-20],eax
	push	_2873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-120],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_2877
	call	_brl_blitz_NullObjectError
_2877:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_192
_194:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2882
	call	_brl_blitz_NullObjectError
_2882:
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
	je	_192
	mov	eax,ebp
	push	eax
	push	_2891
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_2885
	call	_brl_blitz_NullObjectError
_2885:
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
	jne	_2886
	mov	eax,ebp
	push	eax
	push	_2890
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-24],eax
	push	_2888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	push	_2889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_193
_2886:
	call	dword [_bbOnDebugLeaveScope]
_192:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_2880
	call	_brl_blitz_NullObjectError
_2880:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_194
_193:
	push	_2892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],_bbNullObject
	jne	_2893
	mov	eax,ebp
	push	eax
	push	_2895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_blitz_DebugStop
	call	dword [_bbOnDebugLeaveScope]
_2893:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2862:
	mov	eax,ebp
	push	eax
	push	_2903
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_4
	push	_2898
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_2899
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2901
	call	_brl_blitz_NullObjectError
_2901:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2863:
	mov	eax,ebp
	push	eax
	push	_2911
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2904
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2905
	mov	eax,ebp
	push	eax
	push	_2910
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2908
	call	_brl_blitz_NullObjectError
_2908:
	mov	dword [ebx+72],1
	call	dword [_bbOnDebugLeaveScope]
_2905:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2864:
	mov	eax,ebp
	push	eax
	push	_2919
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2912
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2913
	mov	eax,ebp
	push	eax
	push	_2918
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2916
	call	_brl_blitz_NullObjectError
_2916:
	mov	dword [ebx+72],3
	call	dword [_bbOnDebugLeaveScope]
_2913:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2865:
	mov	eax,ebp
	push	eax
	push	_2927
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2920
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2921
	mov	eax,ebp
	push	eax
	push	_2926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_2924
	call	_brl_blitz_NullObjectError
_2924:
	mov	dword [ebx+72],2
	call	dword [_bbOnDebugLeaveScope]
_2921:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2866:
	mov	eax,ebp
	push	eax
	push	_3238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2931
	call	_brl_blitz_ArrayBoundsError
_2931:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2933
	mov	ebx,_bbEmptyString
_2933:
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_196
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_197
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_198
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_199
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	push	_201
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2936
	jmp	_2935
_2936:
	mov	eax,ebp
	push	eax
	push	_2938
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2935
_2935:
	push	_2939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2941
	call	_brl_blitz_ArrayBoundsError
_2941:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2943
	mov	eax,_bbEmptyString
_2943:
	mov	dword [ebp-124],eax
	push	_2945
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-128],eax
	push	_2947
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_2950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2952
	call	_brl_blitz_ArrayBoundsError
_2952:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_2954
	mov	ebx,_bbEmptyString
_2954:
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2957
	push	_196
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2958
	push	_197
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2959
	push	_199
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2960
	push	_198
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2961
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2962
	push	_201
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_2963
	jmp	_2956
_2957:
	mov	eax,ebp
	push	eax
	push	_2966
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],2
	push	_2965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2958:
	mov	eax,ebp
	push	eax
	push	_2969
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2967
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_2968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2959:
	mov	eax,ebp
	push	eax
	push	_2972
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],3
	push	_2971
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2960:
	mov	eax,ebp
	push	eax
	push	_2975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2973
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],4
	push	_2974
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2961:
	mov	eax,ebp
	push	eax
	push	_2978
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],5
	push	_2977
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2962:
	mov	eax,ebp
	push	eax
	push	_2979
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2963:
	mov	eax,ebp
	push	eax
	push	_2980
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2956
_2956:
	push	_2981
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2983
	call	_brl_blitz_ArrayBoundsError
_2983:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2985
	mov	eax,_bbEmptyString
_2985:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_2986
	mov	eax,ebp
	push	eax
	push	_2994
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_2987
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_2988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_2990
	call	_brl_blitz_ArrayBoundsError
_2990:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_2992
	mov	eax,_bbEmptyString
_2992:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-128],eax
	push	_2993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_2986:
	push	_2995
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierFunction
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-132],eax
	push	_2997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_2999
	call	_brl_blitz_NullObjectError
_2999:
	push	dword [ebp-128]
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_3000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_4
	push	dword [ebp-20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_3001
	mov	eax,ebp
	push	eax
	push	_3007
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3004
	call	_brl_blitz_NullObjectError
_3004:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3006
	call	_brl_blitz_NullObjectError
_3006:
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
	call	dword [_bbOnDebugLeaveScope]
_3001:
	push	_3008
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-136],0
	push	_3010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_202
_204:
	mov	eax,ebp
	push	eax
	push	_3018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3015
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-136],1
	call	dword [_bbOnDebugLeaveScope]
_202:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3012
	call	_brl_blitz_ArrayBoundsError
_3012:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3014
	mov	eax,_bbEmptyString
_3014:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_204
_203:
	push	_3019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3020
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_3022
	call	_brl_blitz_NullObjectError
_3022:
	mov	eax,dword [ebp-136]
	mov	dword [ebx+20],eax
	push	_3024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-140],_bbNullObject
	push	_3026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_167
	push	dword [ebp-124]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_3027
	mov	eax,ebp
	push	eax
	push	_3051
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	_166
	push	dword [ebp-124]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-124]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-144],eax
	push	_3030
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3032
	call	_brl_blitz_NullObjectError
_3032:
	push	_4
	push	0
	push	dword [ebp-144]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	push	eax
	push	_205
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
	push	_3033
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3037
	call	_brl_blitz_NullObjectError
_3037:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_206
_208:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3042
	call	_brl_blitz_NullObjectError
_3042:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-148],eax
	cmp	dword [ebp-148],_bbNullObject
	je	_206
	mov	eax,ebp
	push	eax
	push	_3050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-148]
	cmp	ebx,_bbNullObject
	jne	_3045
	call	_brl_blitz_NullObjectError
_3045:
	push	dword [ebp-144]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3046
	mov	eax,ebp
	push	eax
	push	_3049
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-148]
	mov	dword [ebp-140],eax
	push	_3048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_207
_3046:
	call	dword [_bbOnDebugLeaveScope]
_206:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3040
	call	_brl_blitz_NullObjectError
_3040:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_208
_207:
	call	dword [_bbOnDebugLeaveScope]
_3027:
	push	_3052
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_209
_211:
	mov	eax,ebp
	push	eax
	push	_3149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3059
	call	_brl_blitz_ArrayBoundsError
_3059:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3061
	mov	eax,_bbEmptyString
_3061:
	mov	dword [ebp-152],eax
	push	_3063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3064
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	mov	dword [ebp-156],eax
	mov	dword [ebp-160],_bbEmptyString
	push	_3067
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3069
	call	_brl_blitz_ArrayBoundsError
_3069:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3071
	mov	eax,_bbEmptyString
_3071:
	push	_91
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3072
	mov	eax,ebp
	push	eax
	push	_3080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3073
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3076
	call	_brl_blitz_ArrayBoundsError
_3076:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3078
	mov	eax,_bbEmptyString
_3078:
	push	0
	push	eax
	call	_bbStringToLower
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-156],eax
	push	_3079
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_3072:
	push	_3081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-164],0
	push	_3083
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_212
_214:
	mov	eax,ebp
	push	eax
	push	_3091
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3089
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	push	_3090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-164],1
	call	dword [_bbOnDebugLeaveScope]
_212:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3085
	call	_brl_blitz_ArrayBoundsError
_3085:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3087
	mov	eax,_bbEmptyString
_3087:
	push	_89
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_214
_213:
	push	_3092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_3094
	call	_brl_blitz_NullObjectError
_3094:
	mov	eax,dword [ebp-164]
	mov	dword [ebx+20],eax
	push	_3096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3098
	call	_brl_blitz_ArrayBoundsError
_3098:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3100
	mov	eax,_bbEmptyString
_3100:
	push	_104
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3101
	mov	eax,ebp
	push	eax
	push	_3136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	mov	eax,dword [ebp-16]
	mov	ebx,dword [eax+20]
	jmp	_3103
_217:
	mov	eax,ebp
	push	eax
	push	_3135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3105
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3107
	call	_brl_blitz_ArrayBoundsError
_3107:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3109
	mov	eax,_bbEmptyString
_3109:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3114
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3111
	call	_brl_blitz_ArrayBoundsError
_3111:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3113
	mov	eax,_bbEmptyString
_3113:
	push	_86
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3114:
	cmp	eax,0
	je	_3116
	mov	eax,ebp
	push	eax
	push	_3127
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3119
	call	_brl_blitz_ArrayBoundsError
_3119:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3121
	mov	eax,_bbEmptyString
_3121:
	push	_83
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3122
	mov	eax,ebp
	push	eax
	push	_3125
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-160]
	mov	eax,dword [eax+8]
	sub	eax,1
	push	eax
	push	0
	push	dword [ebp-160]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-160],eax
	push	_3124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	sub	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_3122:
	push	_3126
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_216
_3116:
	mov	eax,ebp
	push	eax
	push	_3134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	esi,dword [eax+20]
	jb	_3131
	call	_brl_blitz_ArrayBoundsError
_3131:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+esi*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3133
	mov	eax,_bbEmptyString
_3133:
	push	eax
	push	_85
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-160]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-160],eax
	call	dword [_bbOnDebugLeaveScope]
_3128:
	call	dword [_bbOnDebugLeaveScope]
_215:
	add	dword [ebp-112],1
_3103:
	cmp	dword [ebp-112],ebx
	jl	_217
_216:
	call	dword [_bbOnDebugLeaveScope]
_3101:
	push	_3137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3139
	call	_brl_blitz_NullObjectError
_3139:
	push	dword [ebp-160]
	call	_bbStringTrim
	add	esp,4
	push	eax
	push	dword [ebp-156]
	push	dword [ebp-152]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,16
	push	_3140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3142
	call	_brl_blitz_ArrayBoundsError
_3142:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3144
	mov	eax,_bbEmptyString
_3144:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3145
	mov	eax,ebp
	push	eax
	push	_3147
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3146
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_210
_3145:
	push	_3148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-112],1
	call	dword [_bbOnDebugLeaveScope]
_209:
	mov	ebx,dword [ebp-112]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_3054
	call	_brl_blitz_ArrayBoundsError
_3054:
	push	_bbStringClass
	mov	eax,dword [ebp-16]
	push	dword [eax+ebx*4+24]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_3056
	mov	eax,_bbEmptyString
_3056:
	push	_88
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_211
_210:
	push	_3150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3152
	call	_brl_blitz_NullObjectError
_3152:
	mov	byte [ebx+28],1
	push	_3154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-140],_bbNullObject
	je	_3155
	mov	eax,ebp
	push	eax
	push	_3226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-140]
	cmp	esi,_bbNullObject
	jne	_3158
	call	_brl_blitz_NullObjectError
_3158:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3160
	call	_brl_blitz_NullObjectError
_3160:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3162
	call	_brl_blitz_NullObjectError
_3162:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-168],eax
	push	_3164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_218
_220:
	mov	eax,ebp
	push	eax
	push	_3225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3167
	call	_brl_blitz_NullObjectError
_3167:
	mov	eax,dword [ebx+8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3170
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3169
	call	_brl_blitz_NullObjectError
_3169:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_3170:
	cmp	eax,0
	je	_3178
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3173
	call	_brl_blitz_NullObjectError
_3173:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3175
	call	_brl_blitz_NullObjectError
_3175:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_3177
	call	_brl_blitz_NullObjectError
_3177:
	push	dword [esi+12]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3178:
	cmp	eax,0
	je	_3180
	mov	eax,ebp
	push	eax
	push	_3221
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3183
	call	_brl_blitz_NullObjectError
_3183:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3185
	call	_brl_blitz_NullObjectError
_3185:
	mov	eax,dword [ebp-140]
	cmp	dword [ebx+24],eax
	jne	_3186
	mov	eax,ebp
	push	eax
	push	_3190
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3189
	call	_brl_blitz_NullObjectError
_3189:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_3186:
	push	_3191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3193
	call	_brl_blitz_NullObjectError
_3193:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3195
	call	_brl_blitz_NullObjectError
_3195:
	mov	ebx,dword [ebp-132]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3200
	push	eax
	call	_bbGCFree
	add	esp,4
_3200:
	mov	dword [esi+16],ebx
	push	_3201
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_3203
	call	_brl_blitz_NullObjectError
_3203:
	mov	ebx,dword [ebp-140]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3208
	push	eax
	call	_bbGCFree
	add	esp,4
_3208:
	mov	dword [esi+36],ebx
	push	_3209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3211
	call	_brl_blitz_NullObjectError
_3211:
	push	_bb_TTypeMethod
	push	dword [ebx+8]
	call	_bbObjectDowncast
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3213
	call	_brl_blitz_NullObjectError
_3213:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3216
	call	_brl_blitz_NullObjectError
_3216:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_3220
	push	eax
	call	_bbGCFree
	add	esp,4
_3220:
	mov	dword [esi+20],ebx
	call	dword [_bbOnDebugLeaveScope]
_3180:
	push	_3222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_3224
	call	_brl_blitz_NullObjectError
_3224:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-168],eax
	call	dword [_bbOnDebugLeaveScope]
_218:
	cmp	dword [ebp-168],_bbNullObject
	jne	_220
_219:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3228
_3155:
	mov	eax,ebp
	push	eax
	push	_3232
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_3231
	call	_brl_blitz_NullObjectError
_3231:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_3228:
	push	_3233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3235
	call	_brl_blitz_NullObjectError
_3235:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3237
	call	_brl_blitz_NullObjectError
_3237:
	push	dword [ebp-132]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_2860
_2860:
	call	dword [_bbOnDebugLeaveScope]
_189:
	add	dword [ebp-112],1
_2850:
	mov	eax,dword [ebp-216]
	cmp	dword [ebp-112],eax
	jl	_191
_190:
	push	_3242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbNullObject
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-208],eax
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_3246
	call	_brl_blitz_NullObjectError
_3246:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-212],eax
	jmp	_221
_223:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3251
	call	_brl_blitz_NullObjectError
_3251:
	push	_bb_TTypeTemplate
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-172],eax
	cmp	dword [ebp-172],_bbNullObject
	je	_221
	mov	eax,ebp
	push	eax
	push	_3358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_3254
	call	_brl_blitz_NullObjectError
_3254:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-176],eax
	push	_3256
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_224
_226:
	mov	eax,ebp
	push	eax
	push	_3357
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],_bbNullObject
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3260
	call	_brl_blitz_NullObjectError
_3260:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-200],eax
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_3263
	call	_brl_blitz_NullObjectError
_3263:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-204],eax
	jmp	_227
_229:
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_3268
	call	_brl_blitz_NullObjectError
_3268:
	push	_bb_TTypeMethod
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-180],eax
	cmp	dword [ebp-180],_bbNullObject
	je	_227
	mov	eax,ebp
	push	eax
	push	_3353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3271
	call	_brl_blitz_NullObjectError
_3271:
	cmp	dword [ebx+16],_bbNullObject
	je	_3272
	mov	eax,ebp
	push	eax
	push	_3352
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3275
	call	_brl_blitz_NullObjectError
_3275:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3277
	call	_brl_blitz_NullObjectError
_3277:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	mov	dword [ebp-184],eax
	push	_3279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3281
	call	_brl_blitz_NullObjectError
_3281:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_3283
	call	_brl_blitz_NullObjectError
_3283:
	push	_bb_TParameter
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3285
	call	_brl_blitz_NullObjectError
_3285:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_3287
	call	_brl_blitz_NullObjectError
_3287:
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_3290
	call	_brl_blitz_NullObjectError
_3290:
	push	dword [ebx+20]
	call	_bbStringToLower
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3294
	push	eax
	call	_bbGCFree
	add	esp,4
_3294:
	mov	dword [esi+16],ebx
	push	_3295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3297
	call	_brl_blitz_NullObjectError
_3297:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3299
	call	_brl_blitz_NullObjectError
_3299:
	mov	ebx,dword [ebx+32]
	cmp	ebx,_bbNullObject
	jne	_3301
	call	_brl_blitz_NullObjectError
_3301:
	push	dword [ebp-184]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_3302
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3304
	call	_brl_blitz_NullObjectError
_3304:
	mov	dword [ebp-196],ebx
	mov	edi,dword [ebp-184]
	cmp	edi,_bbNullObject
	jne	_3307
	call	_brl_blitz_NullObjectError
_3307:
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3309
	call	_brl_blitz_NullObjectError
_3309:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_3311
	call	_brl_blitz_NullObjectError
_3311:
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_3313
	call	_brl_blitz_NullObjectError
_3313:
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
	mov	eax,dword [ebp-196]
	mov	eax,dword [eax+12]
	dec	dword [eax+4]
	jnz	_3317
	push	eax
	call	_bbGCFree
	add	esp,4
_3317:
	mov	eax,dword [ebp-196]
	mov	dword [eax+12],ebx
	push	_3318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_3320
	call	_brl_blitz_NullObjectError
_3320:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_3321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-184]
	cmp	esi,_bbNullObject
	jne	_3323
	call	_brl_blitz_NullObjectError
_3323:
	mov	ebx,dword [ebp-172]
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3328
	push	eax
	call	_bbGCFree
	add	esp,4
_3328:
	mov	dword [esi+36],ebx
	push	_3329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3331
	call	_brl_blitz_NullObjectError
_3331:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_3333
	call	_brl_blitz_NullObjectError
_3333:
	push	dword [ebp-184]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_3334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-172]
	mov	dword [ebp-188],eax
	cmp	dword [ebp-188],_bbNullObject
	jne	_3336
	call	_brl_blitz_NullObjectError
_3336:
	mov	eax,dword [ebp-184]
	mov	dword [ebp-192],eax
	cmp	dword [ebp-192],_bbNullObject
	jne	_3338
	call	_brl_blitz_NullObjectError
_3338:
	mov	edi,dword [ebp-184]
	cmp	edi,_bbNullObject
	jne	_3340
	call	_brl_blitz_NullObjectError
_3340:
	mov	esi,dword [ebp-180]
	cmp	esi,_bbNullObject
	jne	_3342
	call	_brl_blitz_NullObjectError
_3342:
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_3344
	call	_brl_blitz_NullObjectError
_3344:
	push	dword [ebx+8]
	movzx	eax,byte [esi+12]
	push	eax
	push	dword [edi+8]
	mov	eax,dword [ebp-192]
	push	dword [eax+12]
	push	dword [ebp-184]
	push	dword [ebp-188]
	mov	eax,dword [ebp-188]
	mov	eax,dword [eax]
	call	dword [eax+64]
	add	esp,24
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3346
	call	_brl_blitz_NullObjectError
_3346:
	mov	ebx,dword [ebp-184]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_3351
	push	eax
	call	_bbGCFree
	add	esp,4
_3351:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_3272:
	call	dword [_bbOnDebugLeaveScope]
_227:
	mov	ebx,dword [ebp-204]
	cmp	ebx,_bbNullObject
	jne	_3266
	call	_brl_blitz_NullObjectError
_3266:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_229
_228:
	push	_3354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_3356
	call	_brl_blitz_NullObjectError
_3356:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-176],eax
	call	dword [_bbOnDebugLeaveScope]
_224:
	cmp	dword [ebp-176],_bbNullObject
	jne	_226
_225:
	call	dword [_bbOnDebugLeaveScope]
_221:
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_3249
	call	_brl_blitz_NullObjectError
_3249:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_223
_222:
	push	_3359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3363
	push	eax
	call	_bbGCFree
	add	esp,4
_3363:
	mov	dword [__bb_TCompiler_Current],ebx
	mov	ebx,0
	jmp	_868
_868:
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
	push	_3606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-12],eax
	push	_3370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3374
	push	eax
	call	_bbGCFree
	add	esp,4
_3374:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_3375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3377
	call	_brl_blitz_NullObjectError
_3377:
	push	_230
	call	dword [_bah_libxml_TxmlDoc+96]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+36]
	dec	dword [eax+4]
	jnz	_3382
	push	eax
	call	_bbGCFree
	add	esp,4
_3382:
	mov	dword [esi+36],ebx
	push	_3383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_231
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_3385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3387
	call	_brl_blitz_NullObjectError
_3387:
	push	_233
	push	_232
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3390
	call	_brl_blitz_NullObjectError
_3390:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_3392
	call	_brl_blitz_NullObjectError
_3392:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_3393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_3394
	mov	eax,ebp
	push	eax
	push	_3454
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	edi,dword [__bb_TCompiler_Templates]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3399
	call	_brl_blitz_NullObjectError
_3399:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_234
_236:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3404
	call	_brl_blitz_NullObjectError
_3404:
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
	je	_234
	mov	eax,ebp
	push	eax
	push	_3408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3407
	call	_brl_blitz_NullObjectError
_3407:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,4
	push	eax
	push	dword [ebp-16]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_234:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_3402
	call	_brl_blitz_NullObjectError
_3402:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_236
_235:
	push	_3409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3411
	call	_brl_blitz_NullObjectError
_3411:
	push	_4
	push	_bbNullObject
	push	_140
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_3413
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3416
	call	_brl_blitz_NullObjectError
_3416:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-56],eax
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_3419
	call	_brl_blitz_NullObjectError
_3419:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_237
_239:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3424
	call	_brl_blitz_NullObjectError
_3424:
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
	je	_237
	mov	eax,ebp
	push	eax
	push	_3452
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_3427
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3429
	call	_brl_blitz_NullObjectError
_3429:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3431
	call	_brl_blitz_NullObjectError
_3431:
	cmp	dword [ebx+20],0
	je	_3432
	mov	eax,ebp
	push	eax
	push	_3436
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3433
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3435
	call	_brl_blitz_NullObjectError
_3435:
	push	_4
	push	_bbNullObject
	push	_240
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3437
_3432:
	mov	eax,ebp
	push	eax
	push	_3441
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3440
	call	_brl_blitz_NullObjectError
_3440:
	push	_4
	push	_bbNullObject
	push	_241
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
_3437:
	push	_3442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_3444
	call	_brl_blitz_NullObjectError
_3444:
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3446
	call	_brl_blitz_NullObjectError
_3446:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_3449
	call	_brl_blitz_NullObjectError
_3449:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3451
	call	_brl_blitz_NullObjectError
_3451:
	push	dword [ebp-32]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_237:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3422
	call	_brl_blitz_NullObjectError
_3422:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_239
_238:
	call	dword [_bbOnDebugLeaveScope]
_3394:
	push	_3456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3458
	call	_brl_blitz_NullObjectError
_3458:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3461
	call	_brl_blitz_NullObjectError
_3461:
	push	_4
	push	_bbNullObject
	push	_177
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3465
	push	eax
	call	_bbGCFree
	add	esp,4
_3465:
	mov	dword [esi+40],ebx
	push	_3466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3468
	call	_brl_blitz_NullObjectError
_3468:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3471
	call	_brl_blitz_NullObjectError
_3471:
	mov	ebx,dword [ebx+40]
	inc	dword [ebx+4]
	mov	eax,dword [esi+60]
	dec	dword [eax+4]
	jnz	_3475
	push	eax
	call	_bbGCFree
	add	esp,4
_3475:
	mov	dword [esi+60],ebx
	push	_3476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3478
	call	_brl_blitz_NullObjectError
_3478:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3481
	call	_brl_blitz_NullObjectError
_3481:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3483
	call	_brl_blitz_NullObjectError
_3483:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+52]
	dec	dword [eax+4]
	jnz	_3487
	push	eax
	call	_bbGCFree
	add	esp,4
_3487:
	mov	dword [esi+52],ebx
	push	_3488
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3490
	call	_brl_blitz_NullObjectError
_3490:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_3493
	call	_brl_blitz_NullObjectError
_3493:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_3495
	call	_brl_blitz_NullObjectError
_3495:
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
	jne	_3497
	mov	esi,_bbEmptyString
_3497:
	inc	dword [esi+4]
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_3501
	push	eax
	call	_bbGCFree
	add	esp,4
_3501:
	mov	dword [ebx+48],esi
	push	_3502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3504
	call	_brl_blitz_NullObjectError
_3504:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	_3505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_3506
	mov	eax,ebp
	push	eax
	push	_3587
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3510
	call	_brl_blitz_NullObjectError
_3510:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_3513
	call	_brl_blitz_NullObjectError
_3513:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_242
_244:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3518
	call	_brl_blitz_NullObjectError
_3518:
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
	je	_242
	mov	eax,ebp
	push	eax
	push	_3585
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3519
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3521
	call	_brl_blitz_NullObjectError
_3521:
	movzx	eax,byte [ebx+29]
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3524
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3523
	call	_brl_blitz_NullObjectError
_3523:
	movzx	eax,byte [ebx+28]
_3524:
	cmp	eax,0
	je	_3526
	mov	eax,ebp
	push	eax
	push	_3528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_242
_3526:
	push	_3529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_3531
	call	_brl_blitz_NullObjectError
_3531:
	push	_4
	push	_bbNullObject
	push	_164
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_3533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3535
	call	_brl_blitz_NullObjectError
_3535:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3537
	call	_brl_blitz_NullObjectError
_3537:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_3538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_3540
	call	_brl_blitz_NullObjectError
_3540:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3542
	call	_brl_blitz_NullObjectError
_3542:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_3545
	call	_brl_blitz_NullObjectError
_3545:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3547
	call	_brl_blitz_NullObjectError
_3547:
	push	dword [ebx+20]
	push	_70
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3550
	call	_brl_blitz_NullObjectError
_3550:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_3552
	call	_brl_blitz_NullObjectError
_3552:
	movzx	eax,byte [esi+28]
	mov	eax,eax
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_245
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_3556
	call	_brl_blitz_NullObjectError
_3556:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3559
	call	_brl_blitz_NullObjectError
_3559:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_246
_248:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3564
	call	_brl_blitz_NullObjectError
_3564:
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
	je	_246
	mov	eax,ebp
	push	eax
	push	_3579
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3567
	call	_brl_blitz_NullObjectError
_3567:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-48],eax
	push	_3569
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_3571
	call	_brl_blitz_NullObjectError
_3571:
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3573
	call	_brl_blitz_NullObjectError
_3573:
	push	dword [ebx+8]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_3574
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_3576
	call	_brl_blitz_NullObjectError
_3576:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_3578
	call	_brl_blitz_NullObjectError
_3578:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_246:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_3562
	call	_brl_blitz_NullObjectError
_3562:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_248
_247:
	push	_3580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3582
	call	_brl_blitz_NullObjectError
_3582:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_3584
	call	_brl_blitz_NullObjectError
_3584:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_242:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3516
	call	_brl_blitz_NullObjectError
_3516:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_244
_243:
	call	dword [_bbOnDebugLeaveScope]
_3506:
	push	_3588
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_249
	call	_brl_filesystem_DeleteFile
	add	esp,4
	push	_3589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3591
	call	_brl_blitz_NullObjectError
_3591:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_3593
	call	_brl_blitz_NullObjectError
_3593:
	push	1
	push	1
	push	_249
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,16
	push	_3594
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TCompiler_Current]
	dec	dword [eax+4]
	jnz	_3598
	push	eax
	call	_bbGCFree
	add	esp,4
_3598:
	mov	dword [__bb_TCompiler_Current],ebx
	push	_3599
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_3601
	call	_brl_blitz_NullObjectError
_3601:
	movzx	eax,byte [ebx+68]
	cmp	eax,0
	je	_3602
	mov	eax,ebp
	push	eax
	push	_3605
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3603
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_250
	call	_bbWriteStdout
	add	esp,4
	push	_3604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_3602:
	mov	ebx,0
	jmp	_872
_872:
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
	push	_3644
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3611
	call	_brl_blitz_NullObjectError
_3611:
	mov	eax,dword [ebx+40]
	mov	dword [ebp-12],eax
	push	_3613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3615
	call	_brl_blitz_NullObjectError
_3615:
	mov	eax,dword [ebx+44]
	mov	dword [ebp-16],eax
	push	_3617
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3619
	call	_brl_blitz_NullObjectError
_3619:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3624
	push	eax
	call	_bbGCFree
	add	esp,4
_3624:
	mov	dword [esi+40],ebx
	push	_3625
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3627
	call	_brl_blitz_NullObjectError
_3627:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	_3628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3630
	call	_brl_blitz_NullObjectError
_3630:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_3635
	push	eax
	call	_bbGCFree
	add	esp,4
_3635:
	mov	dword [esi+44],ebx
	push	_3636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3638
	call	_brl_blitz_NullObjectError
_3638:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+40]
	dec	dword [eax+4]
	jnz	_3643
	push	eax
	call	_bbGCFree
	add	esp,4
_3643:
	mov	dword [esi+40],ebx
	mov	ebx,0
	jmp	_876
_876:
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
	push	_3793
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3648
	call	_brl_blitz_NullObjectError
_3648:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3651
	call	_brl_blitz_NullObjectError
_3651:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3653
	call	_brl_blitz_NullObjectError
_3653:
	mov	eax,dword [ebx+20]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_562
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_3657
	push	eax
	call	_bbGCFree
	add	esp,4
_3657:
	mov	dword [edi+20],ebx
	push	_3658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3660
	call	_brl_blitz_NullObjectError
_3660:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3663
	call	_brl_blitz_NullObjectError
_3663:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_3665
	call	_brl_blitz_ArrayBoundsError
_3665:
	shl	ebx,2
	add	esi,ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_3670
	push	eax
	call	_bbGCFree
	add	esp,4
_3670:
	mov	dword [esi+24],ebx
	push	_3671
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_251
_253:
	mov	eax,ebp
	push	eax
	push	_3780
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3720
	call	_brl_blitz_NullObjectError
_3720:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_3721
	mov	eax,ebp
	push	eax
	push	_3726
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3724
	call	_brl_blitz_NullObjectError
_3724:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_3725
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_251
_3721:
	push	_3727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3729
	call	_brl_blitz_NullObjectError
_3729:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3732
	call	_brl_blitz_NullObjectError
_3732:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_3734
	call	_brl_blitz_NullObjectError
_3734:
	push	_4
	push	_bbNullObject
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+44]
	dec	dword [eax+4]
	jnz	_3738
	push	eax
	call	_bbGCFree
	add	esp,4
_3738:
	mov	dword [esi+44],ebx
	push	_3739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3741
	call	_brl_blitz_NullObjectError
_3741:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_3743
	call	_brl_blitz_NullObjectError
_3743:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3745
	call	_brl_blitz_NullObjectError
_3745:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_3746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3748
	call	_brl_blitz_NullObjectError
_3748:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3750
	call	_brl_blitz_NullObjectError
_3750:
	push	0
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+76]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_3752
	call	_brl_blitz_NullObjectError
_3752:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,4
	push	eax
	push	dword [ebx+44]
	call	_bb_AddChild
	add	esp,8
	push	_3753
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3755
	call	_brl_blitz_NullObjectError
_3755:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3757
	call	_brl_blitz_NullObjectError
_3757:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3759
	call	_brl_blitz_NullObjectError
_3759:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	dword [ebx+52],eax
	je	_3760
	mov	eax,ebp
	push	eax
	push	_3764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3763
	call	_brl_blitz_NullObjectError
_3763:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_3760:
	push	_3765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_265
_267:
	mov	eax,ebp
	push	eax
	push	_3779
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3776
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3778
	call	_brl_blitz_NullObjectError
_3778:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_265:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3767
	call	_brl_blitz_NullObjectError
_3767:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_3774
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3769
	call	_brl_blitz_NullObjectError
_3769:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3771
	call	_brl_blitz_NullObjectError
_3771:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3773
	call	_brl_blitz_NullObjectError
_3773:
	mov	ebx,dword [ebx+52]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
_3774:
	cmp	eax,0
	jne	_267
_266:
	call	dword [_bbOnDebugLeaveScope]
_251:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3673
	call	_brl_blitz_NullObjectError
_3673:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3675
	call	_brl_blitz_NullObjectError
_3675:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3677
	call	_brl_blitz_NullObjectError
_3677:
	mov	ebx,dword [ebx+52]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+92]
	add	esp,4
	cmp	ebx,eax
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_3680
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3679
	call	_brl_blitz_NullObjectError
_3679:
	push	_254
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3680:
	cmp	eax,0
	je	_3684
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3683
	call	_brl_blitz_NullObjectError
_3683:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3684:
	cmp	eax,0
	je	_3688
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3687
	call	_brl_blitz_NullObjectError
_3687:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3688:
	cmp	eax,0
	je	_3692
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3691
	call	_brl_blitz_NullObjectError
_3691:
	push	_257
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3692:
	cmp	eax,0
	je	_3696
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3695
	call	_brl_blitz_NullObjectError
_3695:
	push	_258
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3696:
	cmp	eax,0
	je	_3700
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3699
	call	_brl_blitz_NullObjectError
_3699:
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3700:
	cmp	eax,0
	je	_3704
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3703
	call	_brl_blitz_NullObjectError
_3703:
	push	_260
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3704:
	cmp	eax,0
	je	_3708
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3707
	call	_brl_blitz_NullObjectError
_3707:
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3708:
	cmp	eax,0
	je	_3712
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3711
	call	_brl_blitz_NullObjectError
_3711:
	push	_262
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3712:
	cmp	eax,0
	je	_3716
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3715
	call	_brl_blitz_NullObjectError
_3715:
	push	_263
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_3716:
	cmp	eax,0
	jne	_253
_252:
	push	_3781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3783
	call	_brl_blitz_NullObjectError
_3783:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3786
	call	_brl_blitz_NullObjectError
_3786:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_3788
	call	_brl_blitz_NullObjectError
_3788:
	mov	eax,dword [ebx+20]
	mov	eax,dword [eax+20]
	sub	eax,1
	push	eax
	push	0
	push	dword [esi+20]
	push	_562
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+20]
	dec	dword [eax+4]
	jnz	_3792
	push	eax
	call	_bbGCFree
	add	esp,4
_3792:
	mov	dword [edi+20],ebx
	mov	ebx,0
	jmp	_879
_879:
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
	push	_3964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3794
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+20]
	cmp	dword [ebp-16],eax
	jl	_3795
	mov	eax,ebp
	push	eax
	push	_3799
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3798
	call	_brl_blitz_NullObjectError
_3798:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+80]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_883
_3795:
	mov	eax,ebp
	push	eax
	push	_3957
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3803
	call	_brl_blitz_NullObjectError
_3803:
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_3805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_3807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	dword [ebp-32],_bbNullObject
	push	_3810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3812
	call	_brl_blitz_NullObjectError
_3812:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-36],eax
	push	_3814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_268
_270:
	mov	eax,ebp
	push	eax
	push	_3945
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3815
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_3817
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_3819
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_3822
	call	_brl_blitz_ArrayBoundsError
_3822:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_3825
	call	_brl_blitz_NullObjectError
_3825:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_271
_273:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_3830
	call	_brl_blitz_NullObjectError
_3830:
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
	je	_271
	mov	eax,ebp
	push	eax
	push	_3940
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_3833
	call	_brl_blitz_NullObjectError
_3833:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_3835
	call	_brl_blitz_NullObjectError
_3835:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_3836
	mov	eax,ebp
	push	eax
	push	_3937
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3839
	call	_brl_blitz_NullObjectError
_3839:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_3841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3843
	call	_brl_blitz_NullObjectError
_3843:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_3844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_3846
	call	_brl_blitz_NullObjectError
_3846:
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_3847
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	push	_3849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	ebx,dword [ebp-16]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_3852
	call	_brl_blitz_ArrayBoundsError
_3852:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	eax,dword [eax+ebx*4+24]
	mov	dword [ebp-68],eax
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_3855
	call	_brl_blitz_NullObjectError
_3855:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-64],eax
	jmp	_274
_276:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3860
	call	_brl_blitz_NullObjectError
_3860:
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
	je	_274
	mov	eax,ebp
	push	eax
	push	_3884
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3863
	call	_brl_blitz_NullObjectError
_3863:
	push	dword [ebp-44]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_3870
	mov	edi,dword [ebp-52]
	cmp	edi,_bbNullObject
	jne	_3865
	call	_brl_blitz_NullObjectError
_3865:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3867
	call	_brl_blitz_NullObjectError
_3867:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_3869
	call	_brl_blitz_NullObjectError
_3869:
	push	dword [ebx+8]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+52]
	add	esp,12
_3870:
	cmp	eax,0
	je	_3878
	mov	eax,dword [ebp-48]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_3876
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_3873
	call	_brl_blitz_NullObjectError
_3873:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_3875
	call	_brl_blitz_NullObjectError
_3875:
	mov	eax,dword [esi+16]
	mov	edx,dword [eax+20]
	mov	eax,dword [ebx+16]
	cmp	edx,dword [eax+20]
	setg	al
	movzx	eax,al
_3876:
_3878:
	cmp	eax,0
	je	_3880
	mov	eax,ebp
	push	eax
	push	_3883
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	dword [ebp-48],eax
	push	_3882
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_3880:
	call	dword [_bbOnDebugLeaveScope]
_274:
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_3858
	call	_brl_blitz_NullObjectError
_3858:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_276
_275:
	push	_3887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],_bbNullObject
	je	_3888
	mov	eax,ebp
	push	eax
	push	_3918
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-28],_bbNullObject
	je	_3890
	mov	eax,ebp
	push	eax
	push	_3899
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3891
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3893
	call	_brl_blitz_NullObjectError
_3893:
	mov	ebx,dword [ebp-28]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_3898
	push	eax
	call	_bbGCFree
	add	esp,4
_3898:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_3890:
	push	_3900
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_3902
	call	_brl_blitz_NullObjectError
_3902:
	push	_bbNullObject
	push	dword [ebx+8]
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_3903
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	dword [ebp-60],_bbNullObject
	push	_3906
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_3908
	call	_brl_blitz_NullObjectError
_3908:
	push	dword [ebp-32]
	push	dword [ebp-24]
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,16
	mov	dword [ebp-36],eax
	push	_3909
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_3911
	call	_brl_blitz_NullObjectError
_3911:
	mov	ebx,dword [ebp-36]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_3916
	push	eax
	call	_bbGCFree
	add	esp,4
_3916:
	mov	dword [esi+8],ebx
	push	_3917
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-32]
	mov	dword [ebp-28],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3921
_3888:
	mov	eax,ebp
	push	eax
	push	_3936
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3922
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	cmp	eax,0
	je	_3923
	mov	eax,ebp
	push	eax
	push	_3935
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3924
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-12]
	cmp	edi,_bbNullObject
	jne	_3926
	call	_brl_blitz_NullObjectError
_3926:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3928
	call	_brl_blitz_NullObjectError
_3928:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_3930
	call	_brl_blitz_NullObjectError
_3930:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_3932
	call	_brl_blitz_NullObjectError
_3932:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_3934
	call	_brl_blitz_NullObjectError
_3934:
	push	_280
	push	dword [esi+16]
	push	_279
	push	dword [ebx+16]
	push	_278
	push	dword [ebp-44]
	push	_277
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_3923:
	call	dword [_bbOnDebugLeaveScope]
_3921:
	call	dword [_bbOnDebugLeaveScope]
_3836:
	call	dword [_bbOnDebugLeaveScope]
_271:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_3828
	call	_brl_blitz_NullObjectError
_3828:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_273
_272:
	push	_3941
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_3942
	mov	eax,ebp
	push	eax
	push	_3944
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3943
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_269
_3942:
	call	dword [_bbOnDebugLeaveScope]
_268:
	mov	eax,1
	cmp	eax,0
	jne	_270
_269:
	push	_3948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-32],_bbNullObject
	jne	_3949
	mov	eax,ebp
	push	eax
	push	_3953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_3952
	call	_brl_blitz_NullObjectError
_3952:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-32],eax
	call	dword [_bbOnDebugLeaveScope]
_3949:
	push	_3954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_3956
	call	_brl_blitz_NullObjectError
_3956:
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
	jmp	_883
_883:
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
	push	_4184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3965
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,1
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3970
	call	_brl_blitz_NullObjectError
_3970:
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
	je	_3968
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3973
	call	_brl_blitz_NullObjectError
_3973:
	push	_281
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
	je	_3971
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3976
	call	_brl_blitz_NullObjectError
_3976:
	push	_282
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
	je	_3974
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3979
	call	_brl_blitz_NullObjectError
_3979:
	push	_283
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
	je	_3977
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3982
	call	_brl_blitz_NullObjectError
_3982:
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
	je	_3980
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3985
	call	_brl_blitz_NullObjectError
_3985:
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
	je	_3983
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3988
	call	_brl_blitz_NullObjectError
_3988:
	push	_188
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
	je	_3986
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3991
	call	_brl_blitz_NullObjectError
_3991:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsInt
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3989
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3994
	call	_brl_blitz_NullObjectError
_3994:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsFLoat
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3992
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_3997
	call	_brl_blitz_NullObjectError
_3997:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsString
	add	esp,4
	mov	eax,eax
	cmp	ebx,eax
	je	_3995
	mov	eax,ebp
	push	eax
	push	_4025
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_3998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	push	_4000
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4002
	call	_brl_blitz_NullObjectError
_4002:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_4003
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_4004
	mov	eax,ebp
	push	eax
	push	_4006
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_886
_4004:
	push	_4007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4009
	call	_brl_blitz_NullObjectError
_4009:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+84]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_4010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_4011
	mov	eax,ebp
	push	eax
	push	_4013
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_886
_4011:
	push	_4014
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4016
	call	_brl_blitz_NullObjectError
_4016:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_4017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-8],_bbNullObject
	je	_4018
	mov	eax,ebp
	push	eax
	push	_4020
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_886
_4018:
	push	_4021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4023
	call	_brl_blitz_NullObjectError
_4023:
	push	_288
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_4024
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
	jmp	_3967
_3968:
	mov	eax,ebp
	push	eax
	push	_4038
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4032
	call	_brl_blitz_NullObjectError
_4032:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_4034
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4036
	call	_brl_blitz_NullObjectError
_4036:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_886
_3971:
	mov	eax,ebp
	push	eax
	push	_4050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4039
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_4041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4043
	call	_brl_blitz_NullObjectError
_4043:
	push	_356
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4044
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4046
	call	_brl_blitz_NullObjectError
_4046:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4049
	call	_brl_blitz_NullObjectError
_4049:
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
	jmp	_886
_3974:
	mov	eax,ebp
	push	eax
	push	_4062
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_4053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_4055
	call	_brl_blitz_NullObjectError
_4055:
	push	_185
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4056
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4058
	call	_brl_blitz_NullObjectError
_4058:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4061
	call	_brl_blitz_NullObjectError
_4061:
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
	jmp	_886
_3977:
	mov	eax,ebp
	push	eax
	push	_4080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_283
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_4065
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4067
	call	_brl_blitz_NullObjectError
_4067:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4068
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4070
	call	_brl_blitz_NullObjectError
_4070:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_4072
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_4074
	call	_brl_blitz_NullObjectError
_4074:
	push	dword [ebx+12]
	push	dword [ebp-24]
	call	_bb_AddChild
	add	esp,8
	push	_4075
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4077
	call	_brl_blitz_NullObjectError
_4077:
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_4079
	call	_brl_blitz_NullObjectError
_4079:
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
	jmp	_886
_3980:
	mov	eax,ebp
	push	eax
	push	_4114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4083
	call	_brl_blitz_NullObjectError
_4083:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_284
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_4086
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4088
	call	_brl_blitz_NullObjectError
_4088:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_4090
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_4092
	call	_brl_blitz_NullObjectError
_4092:
	push	_4
	push	_bbNullObject
	push	_285
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_4094
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-44],eax
	push	_4096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4098
	call	_brl_blitz_NullObjectError
_4098:
	push	_286
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_4101
	call	_brl_blitz_NullObjectError
_4101:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4103
	call	_brl_blitz_NullObjectError
_4103:
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
	push	_4104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_4106
	call	_brl_blitz_NullObjectError
_4106:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_4108
	call	_brl_blitz_NullObjectError
_4108:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_287
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_4109
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4111
	call	_brl_blitz_NullObjectError
_4111:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_4113
	call	_brl_blitz_NullObjectError
_4113:
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
	jmp	_886
_3983:
	mov	eax,ebp
	push	eax
	push	_4130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4118
	call	_brl_blitz_NullObjectError
_4118:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4121
	call	_brl_blitz_NullObjectError
_4121:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_4123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_4125
	call	_brl_blitz_NullObjectError
_4125:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_4127
	call	_brl_blitz_NullObjectError
_4127:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_4129
	call	_brl_blitz_NullObjectError
_4129:
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
	jmp	_886
_3986:
	mov	eax,ebp
	push	eax
	push	_4139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4133
	call	_brl_blitz_NullObjectError
_4133:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_188
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	push	_4136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4138
	call	_brl_blitz_NullObjectError
_4138:
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
	jmp	_886
_3989:
	mov	eax,ebp
	push	eax
	push	_4153
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4140
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_127
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-56],eax
	push	_4142
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_4144
	call	_brl_blitz_NullObjectError
_4144:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4146
	call	_brl_blitz_NullObjectError
_4146:
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
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4147
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4149
	call	_brl_blitz_NullObjectError
_4149:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4152
	call	_brl_blitz_NullObjectError
_4152:
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
	jmp	_886
_3992:
	mov	eax,ebp
	push	eax
	push	_4167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4154
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_125
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-60],eax
	push	_4156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_4158
	call	_brl_blitz_NullObjectError
_4158:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4160
	call	_brl_blitz_NullObjectError
_4160:
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
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4161
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4163
	call	_brl_blitz_NullObjectError
_4163:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4166
	call	_brl_blitz_NullObjectError
_4166:
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
	jmp	_886
_3995:
	mov	eax,ebp
	push	eax
	push	_4183
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_126
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-64],eax
	push	_4170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-64]
	cmp	edi,_bbNullObject
	jne	_4172
	call	_brl_blitz_NullObjectError
_4172:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_4174
	call	_brl_blitz_NullObjectError
_4174:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4176
	call	_brl_blitz_NullObjectError
_4176:
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
	push	_184
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+168]
	add	esp,12
	push	_4177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_4179
	call	_brl_blitz_NullObjectError
_4179:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4182
	call	_brl_blitz_NullObjectError
_4182:
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
	jmp	_886
_3967:
	mov	ebx,_bbNullObject
	jmp	_886
_886:
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
	push	_4967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4187
	call	_brl_blitz_NullObjectError
_4187:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4189
	call	_brl_blitz_NullObjectError
_4189:
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
	je	_4190
	mov	eax,ebp
	push	eax
	push	_4267
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4193
	call	_brl_blitz_NullObjectError
_4193:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_4195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4197
	call	_brl_blitz_NullObjectError
_4197:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_4200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_289
_291:
	mov	eax,ebp
	push	eax
	push	_4210
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4205
	call	_brl_blitz_NullObjectError
_4205:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4208
	call	_brl_blitz_NullObjectError
_4208:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_289:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4202
	call	_brl_blitz_NullObjectError
_4202:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_291
_290:
	push	_4211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_4213
	call	_brl_blitz_NullObjectError
_4213:
	mov	eax,dword [ebp-28]
	mov	dword [ebx+20],eax
	push	_4215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4217
	call	_brl_blitz_NullObjectError
_4217:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4220
	call	_brl_blitz_NullObjectError
_4220:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_4222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4224
	call	_brl_blitz_NullObjectError
_4224:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_4225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-24]
	cmp	edi,_bbNullObject
	jne	_4227
	call	_brl_blitz_NullObjectError
_4227:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_4229
	call	_brl_blitz_NullObjectError
_4229:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_4231
	call	_brl_blitz_NullObjectError
_4231:
	push	dword [ebx+12]
	push	dword [esi+8]
	push	edi
	mov	eax,dword [edi]
	call	dword [eax+72]
	add	esp,12
	mov	dword [ebp-36],eax
	push	_4233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_4235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4237
	call	_brl_blitz_NullObjectError
_4237:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4238
	mov	eax,ebp
	push	eax
	push	_4246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4239
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_4241
	call	_brl_blitz_NullObjectError
_4241:
	mov	dword [ebx+20],0
	push	_4243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4245
	call	_brl_blitz_NullObjectError
_4245:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-40],eax
	call	dword [_bbOnDebugLeaveScope]
_4238:
	push	_4247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4249
	call	_brl_blitz_NullObjectError
_4249:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4250
	mov	eax,ebp
	push	eax
	push	_4263
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4253
	call	_brl_blitz_NullObjectError
_4253:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4255
	call	_brl_blitz_NullObjectError
_4255:
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
	push	_4257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4259
	call	_brl_blitz_NullObjectError
_4259:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-24],eax
	push	_4260
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_4262
	call	_brl_blitz_NullObjectError
_4262:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
_4250:
	push	_4264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4266
	call	_brl_blitz_NullObjectError
_4266:
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
	jmp	_890
_4190:
	mov	eax,ebp
	push	eax
	push	_4960
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],0
	push	_4271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_4273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4276
	call	_brl_blitz_NullObjectError
_4276:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-216],eax
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_4279
	call	_brl_blitz_NullObjectError
_4279:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_292
_294:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4284
	call	_brl_blitz_NullObjectError
_4284:
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
	je	_292
	mov	eax,ebp
	push	eax
	push	_4294
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_4287
	call	_brl_blitz_NullObjectError
_4287:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4289
	call	_brl_blitz_NullObjectError
_4289:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4290
	mov	eax,ebp
	push	eax
	push	_4293
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-48],1
	push	_4292
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	call	dword [_bbOnDebugLeaveScope]
_4290:
	call	dword [_bbOnDebugLeaveScope]
_292:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4282
	call	_brl_blitz_NullObjectError
_4282:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_294
_293:
	push	_4295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_4296
	mov	eax,ebp
	push	eax
	push	_4298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_890
_4296:
	push	_4299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-52],eax
	push	_4301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4303
	call	_brl_blitz_NullObjectError
_4303:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-56],eax
	push	_4305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbEmptyString
	push	_4307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_167
	push	dword [ebp-56]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	je	_4308
	mov	eax,ebp
	push	eax
	push	_4312
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	_166
	push	dword [ebp-56]
	call	_bbStringFind
	add	esp,12
	push	eax
	push	3
	push	dword [ebp-56]
	call	_bbStringSlice
	add	esp,12
	mov	dword [ebp-72],eax
	push	_4311
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_295
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
_4308:
	push	_4313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4315
	call	_brl_blitz_NullObjectError
_4315:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],1
	push	_4318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-64],0
	push	_4320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4322
	call	_brl_blitz_NullObjectError
_4322:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4323
	mov	eax,ebp
	push	eax
	push	_4327
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4326
	call	_brl_blitz_NullObjectError
_4326:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4323:
	push	_4328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4330
	call	_brl_blitz_NullObjectError
_4330:
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
	je	_4333
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4332
	call	_brl_blitz_NullObjectError
_4332:
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
_4333:
	cmp	eax,0
	je	_4335
	mov	eax,ebp
	push	eax
	push	_4370
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_296
_298:
	mov	eax,ebp
	push	eax
	push	_4369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-8]
	mov	eax,eax
	cmp	eax,0
	jne	_4342
	mov	eax,ebp
	push	eax
	push	_4346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4345
	call	_brl_blitz_NullObjectError
_4345:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4342:
	push	_4347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-8],0
	push	_4348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4350
	call	_brl_blitz_NullObjectError
_4350:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4351
	mov	eax,ebp
	push	eax
	push	_4355
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4354
	call	_brl_blitz_NullObjectError
_4354:
	push	_299
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4351:
	push	_4356
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4358
	call	_brl_blitz_NullObjectError
_4358:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_4360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4362
	call	_brl_blitz_NullObjectError
_4362:
	push	dword [ebp-76]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_4363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_4365
	call	_brl_blitz_NullObjectError
_4365:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4367
	call	_brl_blitz_NullObjectError
_4367:
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
	push	_4368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-64],1
	call	dword [_bbOnDebugLeaveScope]
_296:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4338
	call	_brl_blitz_NullObjectError
_4338:
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
	jne	_4339
	movzx	eax,byte [ebp-8]
_4339:
	cmp	eax,0
	jne	_298
_297:
	call	dword [_bbOnDebugLeaveScope]
_4335:
	push	_4371
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4373
	call	_brl_blitz_NullObjectError
_4373:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4374
	mov	eax,ebp
	push	eax
	push	_4378
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4377
	call	_brl_blitz_NullObjectError
_4377:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_4374:
	push	_4379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-80],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4382
	call	_brl_blitz_NullObjectError
_4382:
	mov	edi,dword [ebx+16]
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
	je	_300
	mov	eax,ebp
	push	eax
	push	_4618
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4393
	call	_brl_blitz_NullObjectError
_4393:
	push	dword [ebp-60]
	push	dword [ebp-56]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4394
	mov	eax,ebp
	push	eax
	push	_4616
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_4396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4399
	call	_brl_blitz_NullObjectError
_4399:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4402
	call	_brl_blitz_NullObjectError
_4402:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_303
_305:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4407
	call	_brl_blitz_NullObjectError
_4407:
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
	je	_303
	mov	eax,ebp
	push	eax
	push	_4414
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-100]
	cmp	ebx,_bbNullObject
	jne	_4410
	call	_brl_blitz_NullObjectError
_4410:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4411
	mov	eax,ebp
	push	eax
	push	_4413
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_303
_4411:
	call	dword [_bbOnDebugLeaveScope]
_303:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4405
	call	_brl_blitz_NullObjectError
_4405:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_305
_304:
	push	_4415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4417
	call	_brl_blitz_NullObjectError
_4417:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_4419
	call	_brl_blitz_NullObjectError
_4419:
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_4421
	call	_brl_blitz_NullObjectError
_4421:
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
	je	_4422
	mov	eax,ebp
	push	eax
	push	_4442
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-104],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4426
	call	_brl_blitz_NullObjectError
_4426:
	mov	edi,dword [ebx+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4429
	call	_brl_blitz_NullObjectError
_4429:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_306
_308:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4434
	call	_brl_blitz_NullObjectError
_4434:
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
	je	_306
	mov	eax,ebp
	push	eax
	push	_4441
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_4437
	call	_brl_blitz_NullObjectError
_4437:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4438
	mov	eax,ebp
	push	eax
	push	_4440
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4439
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	call	dword [_bbOnDebugLeaveScope]
_4438:
	call	dword [_bbOnDebugLeaveScope]
_306:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4432
	call	_brl_blitz_NullObjectError
_4432:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_308
_307:
	call	dword [_bbOnDebugLeaveScope]
_4422:
	push	_4443
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	je	_4444
	mov	eax,ebp
	push	eax
	push	_4446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_301
_4444:
	push	_4447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4449
	call	_brl_blitz_NullObjectError
_4449:
	mov	byte [ebx+29],1
	push	_4451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_309
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_4453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4455
	call	_brl_blitz_NullObjectError
_4455:
	cmp	dword [ebx+36],_bbNullObject
	je	_4456
	mov	eax,ebp
	push	eax
	push	_4493
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-108],_bbNullObject
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4460
	call	_brl_blitz_NullObjectError
_4460:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4462
	call	_brl_blitz_NullObjectError
_4462:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-224],eax
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_4465
	call	_brl_blitz_NullObjectError
_4465:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-220],eax
	jmp	_310
_312:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_4470
	call	_brl_blitz_NullObjectError
_4470:
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
	je	_310
	mov	eax,ebp
	push	eax
	push	_4492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4471
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-108]
	mov	dword [ebp-208],eax
	cmp	dword [ebp-208],_bbNullObject
	jne	_4473
	call	_brl_blitz_NullObjectError
_4473:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_4475
	call	_brl_blitz_NullObjectError
_4475:
	mov	edi,dword [ebx+24]
	cmp	edi,_bbNullObject
	jne	_4477
	call	_brl_blitz_NullObjectError
_4477:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4479
	call	_brl_blitz_NullObjectError
_4479:
	mov	esi,dword [ebx+36]
	cmp	esi,_bbNullObject
	jne	_4481
	call	_brl_blitz_NullObjectError
_4481:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4483
	call	_brl_blitz_NullObjectError
_4483:
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
	jne	_4484
	mov	eax,ebp
	push	eax
	push	_4491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_4487
	call	_brl_blitz_NullObjectError
_4487:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_4489
	call	_brl_blitz_NullObjectError
_4489:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4490
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_311
_4484:
	call	dword [_bbOnDebugLeaveScope]
_310:
	mov	ebx,dword [ebp-220]
	cmp	ebx,_bbNullObject
	jne	_4468
	call	_brl_blitz_NullObjectError
_4468:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_312
_311:
	call	dword [_bbOnDebugLeaveScope]
_4456:
	push	_4494
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_4496
	call	_brl_blitz_NullObjectError
_4496:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4498
	call	_brl_blitz_NullObjectError
_4498:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_4499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4501
	call	_brl_blitz_NullObjectError
_4501:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_4503
	call	_brl_blitz_NullObjectError
_4503:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-88],eax
	push	_4505
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	je	_4506
	mov	eax,ebp
	push	eax
	push	_4510
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_4509
	call	_brl_blitz_NullObjectError
_4509:
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
_4506:
	push	_4511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-112],_bbNullObject
	mov	edi,dword [ebp-52]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4515
	call	_brl_blitz_NullObjectError
_4515:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_313
_315:
	cmp	ebx,_bbNullObject
	jne	_4520
	call	_brl_blitz_NullObjectError
_4520:
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
	je	_313
	mov	eax,ebp
	push	eax
	push	_4531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_4523
	call	_brl_blitz_NullObjectError
_4523:
	push	_4
	push	_bbNullObject
	push	_74
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_4525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_4527
	call	_brl_blitz_NullObjectError
_4527:
	push	dword [esi+12]
	push	dword [ebp-116]
	call	_bb_AddChild
	add	esp,8
	push	_4528
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-88]
	cmp	esi,_bbNullObject
	jne	_4530
	call	_brl_blitz_NullObjectError
_4530:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-88],eax
	call	dword [_bbOnDebugLeaveScope]
_313:
	cmp	ebx,_bbNullObject
	jne	_4518
	call	_brl_blitz_NullObjectError
_4518:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_315
_314:
	push	_4533
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4535
	call	_brl_blitz_NullObjectError
_4535:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4537
	call	_brl_blitz_NullObjectError
_4537:
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_4539
	call	_brl_blitz_NullObjectError
_4539:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_4541
	call	_brl_blitz_NullObjectError
_4541:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-92],eax
	push	_4543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_4545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4547
	call	_brl_blitz_NullObjectError
_4547:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4548
	mov	eax,ebp
	push	eax
	push	_4594
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4549
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_4551
	call	_brl_blitz_NullObjectError
_4551:
	mov	dword [ebx+20],0
	push	_4553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4555
	call	_brl_blitz_NullObjectError
_4555:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4557
	call	_brl_blitz_NullObjectError
_4557:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-96],eax
	push	_4558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_4560
	call	_brl_blitz_NullObjectError
_4560:
	push	dword [ebp-96]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_4562
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4565
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_4564
	call	_brl_blitz_NullObjectError
_4564:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_4565:
	cmp	eax,0
	je	_4567
	mov	eax,ebp
	push	eax
	push	_4592
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4568
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_4571
	call	_brl_blitz_NullObjectError
_4571:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4574
	call	_brl_blitz_NullObjectError
_4574:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_316
_318:
	cmp	ebx,_bbNullObject
	jne	_4579
	call	_brl_blitz_NullObjectError
_4579:
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
	je	_316
	mov	eax,ebp
	push	eax
	push	_4591
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_4582
	call	_brl_blitz_NullObjectError
_4582:
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4583
	mov	eax,ebp
	push	eax
	push	_4590
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4584
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-124]
	cmp	esi,_bbNullObject
	jne	_4586
	call	_brl_blitz_NullObjectError
_4586:
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
	jne	_4588
	call	_brl_blitz_NullObjectError
_4588:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+292]
	add	esp,4
	push	_4589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-84]
	push	dword [ebp-124]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4583:
	call	dword [_bbOnDebugLeaveScope]
_316:
	cmp	ebx,_bbNullObject
	jne	_4577
	call	_brl_blitz_NullObjectError
_4577:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_318
_317:
	call	dword [_bbOnDebugLeaveScope]
_4567:
	push	_4593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-120]
	mov	dword [ebp-84],eax
	call	dword [_bbOnDebugLeaveScope]
_4548:
	push	_4596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4598
	call	_brl_blitz_NullObjectError
_4598:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4599
	mov	eax,ebp
	push	eax
	push	_4612
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4600
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4602
	call	_brl_blitz_NullObjectError
_4602:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4604
	call	_brl_blitz_NullObjectError
_4604:
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
	push	_4606
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_4608
	call	_brl_blitz_NullObjectError
_4608:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-92],eax
	push	_4609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_4611
	call	_brl_blitz_NullObjectError
_4611:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-84],eax
	call	dword [_bbOnDebugLeaveScope]
_4599:
	push	_4613
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4615
	call	_brl_blitz_NullObjectError
_4615:
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
	jmp	_890
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
	push	_4619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-48],1
	jne	_4620
	mov	eax,ebp
	push	eax
	push	_4954
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],_bbNullObject
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4624
	call	_brl_blitz_NullObjectError
_4624:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4627
	call	_brl_blitz_NullObjectError
_4627:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_319
_321:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4632
	call	_brl_blitz_NullObjectError
_4632:
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
	je	_319
	mov	eax,ebp
	push	eax
	push	_4953
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4633
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4635
	call	_brl_blitz_NullObjectError
_4635:
	push	dword [ebp-56]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4636
	mov	eax,ebp
	push	eax
	push	_4951
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4637
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4639
	call	_brl_blitz_NullObjectError
_4639:
	mov	byte [ebx+29],1
	push	_4641
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_309
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-136],eax
	push	_4643
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4645
	call	_brl_blitz_NullObjectError
_4645:
	cmp	dword [ebx+36],_bbNullObject
	je	_4646
	mov	eax,ebp
	push	eax
	push	_4675
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-152],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4650
	call	_brl_blitz_NullObjectError
_4650:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4652
	call	_brl_blitz_NullObjectError
_4652:
	push	-1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-212],eax
	mov	ebx,dword [ebp-212]
	cmp	ebx,_bbNullObject
	jne	_4655
	call	_brl_blitz_NullObjectError
_4655:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_322
_324:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4660
	call	_brl_blitz_NullObjectError
_4660:
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
	je	_322
	mov	eax,ebp
	push	eax
	push	_4674
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4661
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_4663
	call	_brl_blitz_NullObjectError
_4663:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4665
	call	_brl_blitz_NullObjectError
_4665:
	push	dword [ebx+12]
	push	dword [esi+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4666
	mov	eax,ebp
	push	eax
	push	_4673
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4667
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4669
	call	_brl_blitz_NullObjectError
_4669:
	mov	esi,dword [ebp-152]
	cmp	esi,_bbNullObject
	jne	_4671
	call	_brl_blitz_NullObjectError
_4671:
	push	dword [esi+28]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_69
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_4672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_323
_4666:
	call	dword [_bbOnDebugLeaveScope]
_322:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4658
	call	_brl_blitz_NullObjectError
_4658:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_324
_323:
	call	dword [_bbOnDebugLeaveScope]
_4646:
	push	_4676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-136]
	cmp	esi,_bbNullObject
	jne	_4678
	call	_brl_blitz_NullObjectError
_4678:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4680
	call	_brl_blitz_NullObjectError
_4680:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_4681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4683
	call	_brl_blitz_NullObjectError
_4683:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	mov	dword [ebp-140],eax
	push	_4685
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_4687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],_bbNullObject
	je	_4688
	mov	eax,ebp
	push	eax
	push	_4692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4691
	call	_brl_blitz_NullObjectError
_4691:
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
_4688:
	push	_4693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-156],_bbNullObject
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4696
	call	_brl_blitz_NullObjectError
_4696:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-228],eax
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_4699
	call	_brl_blitz_NullObjectError
_4699:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-232],eax
	jmp	_325
_327:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_4704
	call	_brl_blitz_NullObjectError
_4704:
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
	je	_325
	mov	eax,ebp
	push	eax
	push	_4866
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4707
	call	_brl_blitz_NullObjectError
_4707:
	push	0
	push	_167
	push	dword [ebx+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,-1
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4710
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4709
	call	_brl_blitz_NullObjectError
_4709:
	push	_205
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_4710:
	cmp	eax,0
	je	_4712
	mov	eax,ebp
	push	eax
	push	_4720
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-140],_bbNullObject
	je	_4714
	mov	eax,ebp
	push	eax
	push	_4718
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4715
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4717
	call	_brl_blitz_NullObjectError
_4717:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-140],eax
	call	dword [_bbOnDebugLeaveScope]
_4714:
	push	_4719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_325
_4712:
	push	_4721
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-140]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_4724
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4723
	call	_brl_blitz_NullObjectError
_4723:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_4724:
	cmp	eax,0
	je	_4726
	mov	eax,ebp
	push	eax
	push	_4756
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4729
	call	_brl_blitz_NullObjectError
_4729:
	push	0
	push	_167
	push	dword [ebx+12]
	call	_bbStringFind
	add	esp,12
	cmp	eax,0
	jl	_4730
	mov	eax,ebp
	push	eax
	push	_4742
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_4733
	call	_brl_blitz_NullObjectError
_4733:
	mov	eax,dword [ebp-132]
	mov	dword [ebp-200],eax
	cmp	dword [ebp-200],_bbNullObject
	jne	_4735
	call	_brl_blitz_NullObjectError
_4735:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4737
	call	_brl_blitz_NullObjectError
_4737:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_4739
	call	_brl_blitz_NullObjectError
_4739:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4741
	call	_brl_blitz_NullObjectError
_4741:
	push	_118
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_330
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	sub	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_329
	push	_85
	push	_166
	push	_85
	push	_165
	push	_4
	push	_167
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
	push	_328
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_4743
_4730:
	mov	eax,ebp
	push	eax
	push	_4755
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	cmp	edi,_bbNullObject
	jne	_4746
	call	_brl_blitz_NullObjectError
_4746:
	mov	eax,dword [ebp-132]
	mov	dword [ebp-196],eax
	cmp	dword [ebp-196],_bbNullObject
	jne	_4748
	call	_brl_blitz_NullObjectError
_4748:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4750
	call	_brl_blitz_NullObjectError
_4750:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_4752
	call	_brl_blitz_NullObjectError
_4752:
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_4754
	call	_brl_blitz_NullObjectError
_4754:
	push	_118
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_330
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+112]
	add	esp,4
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_329
	mov	eax,dword [ebp-196]
	push	dword [eax+20]
	push	_328
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_4743:
	call	dword [_bbOnDebugLeaveScope]
_4726:
	push	_4757
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-160],_bbNullObject
	push	_4759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-140],_bbNullObject
	je	_4760
	mov	eax,ebp
	push	eax
	push	_4764
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4761
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4763
	call	_brl_blitz_NullObjectError
_4763:
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
_4760:
	push	_4765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4767
	call	_brl_blitz_NullObjectError
_4767:
	push	_4
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4768
	mov	eax,dword [ebp-140]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_4768:
	cmp	eax,0
	je	_4770
	mov	eax,ebp
	push	eax
	push	_4840
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	push	_4772
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TCompiler
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-164],eax
	push	_4774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-164]
	mov	dword [ebp-204],eax
	cmp	dword [ebp-204],_bbNullObject
	jne	_4776
	call	_brl_blitz_NullObjectError
_4776:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4778
	call	_brl_blitz_NullObjectError
_4778:
	mov	edi,dword [ebx+12]
	cmp	edi,_bbNullObject
	jne	_4780
	call	_brl_blitz_NullObjectError
_4780:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4782
	call	_brl_blitz_NullObjectError
_4782:
	mov	esi,dword [ebx+12]
	cmp	esi,_bbNullObject
	jne	_4784
	call	_brl_blitz_NullObjectError
_4784:
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4786
	call	_brl_blitz_NullObjectError
_4786:
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
	push	_4787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_4789
	call	_brl_blitz_NullObjectError
_4789:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_4790
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-168],_bbNullObject
	push	_4792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],_bbNullObject
	mov	ebx,dword [ebp-164]
	cmp	ebx,_bbNullObject
	jne	_4795
	call	_brl_blitz_NullObjectError
_4795:
	mov	ebx,dword [ebx+36]
	cmp	ebx,_bbNullObject
	jne	_4797
	call	_brl_blitz_NullObjectError
_4797:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4799
	call	_brl_blitz_NullObjectError
_4799:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4802
	call	_brl_blitz_NullObjectError
_4802:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_331
_333:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4807
	call	_brl_blitz_NullObjectError
_4807:
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
	je	_331
	mov	eax,ebp
	push	eax
	push	_4836
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_4810
	call	_brl_blitz_NullObjectError
_4810:
	push	_177
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4811
	mov	eax,ebp
	push	eax
	push	_4835
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-176],_bbNullObject
	mov	ebx,dword [ebp-172]
	cmp	ebx,_bbNullObject
	jne	_4815
	call	_brl_blitz_NullObjectError
_4815:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4818
	call	_brl_blitz_NullObjectError
_4818:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_334
_336:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4823
	call	_brl_blitz_NullObjectError
_4823:
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
	je	_334
	mov	eax,ebp
	push	eax
	push	_4833
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4824
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_4826
	call	_brl_blitz_NullObjectError
_4826:
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4827
	mov	eax,ebp
	push	eax
	push	_4832
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_4830
	call	_brl_blitz_NullObjectError
_4830:
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
	push	_4831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_335
_4827:
	call	dword [_bbOnDebugLeaveScope]
_334:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4821
	call	_brl_blitz_NullObjectError
_4821:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_336
_335:
	push	_4834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_332
_4811:
	call	dword [_bbOnDebugLeaveScope]
_331:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4805
	call	_brl_blitz_NullObjectError
_4805:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_333
_332:
	push	_4837
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4839
	call	_brl_blitz_NullObjectError
_4839:
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
	jmp	_4842
_4770:
	mov	eax,ebp
	push	eax
	push	_4865
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4843
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-12]
	cmp	eax,0
	je	_4844
	mov	eax,ebp
	push	eax
	push	_4848
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4847
	call	_brl_blitz_NullObjectError
_4847:
	push	_337
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4844:
	push	_4849
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_4851
	call	_brl_blitz_NullObjectError
_4851:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-180],eax
	push	_4853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_4855
	call	_brl_blitz_NullObjectError
_4855:
	mov	edi,dword [ebx+12]
	cmp	edi,_bbNullObject
	jne	_4857
	call	_brl_blitz_NullObjectError
_4857:
	mov	esi,dword [ebp-160]
	cmp	esi,_bbNullObject
	jne	_4859
	call	_brl_blitz_NullObjectError
_4859:
	mov	ebx,dword [ebp-160]
	cmp	ebx,_bbNullObject
	jne	_4861
	call	_brl_blitz_NullObjectError
_4861:
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
	push	_4862
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-140]
	cmp	ebx,_bbNullObject
	jne	_4864
	call	_brl_blitz_NullObjectError
_4864:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	mov	dword [ebp-140],eax
	call	dword [_bbOnDebugLeaveScope]
_4842:
	call	dword [_bbOnDebugLeaveScope]
_325:
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_4702
	call	_brl_blitz_NullObjectError
_4702:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_327
_326:
	push	_4867
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4869
	call	_brl_blitz_NullObjectError
_4869:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_4871
	call	_brl_blitz_NullObjectError
_4871:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_4873
	call	_brl_blitz_NullObjectError
_4873:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_4875
	call	_brl_blitz_NullObjectError
_4875:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-144],eax
	push	_4877
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-148],_bbNullObject
	push	_4879
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4881
	call	_brl_blitz_NullObjectError
_4881:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4882
	mov	eax,ebp
	push	eax
	push	_4928
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4883
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-144]
	cmp	ebx,_bbNullObject
	jne	_4885
	call	_brl_blitz_NullObjectError
_4885:
	mov	dword [ebx+20],0
	push	_4887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_4889
	call	_brl_blitz_NullObjectError
_4889:
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4891
	call	_brl_blitz_NullObjectError
_4891:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-148],eax
	push	_4892
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-132]
	cmp	ebx,_bbNullObject
	jne	_4894
	call	_brl_blitz_NullObjectError
_4894:
	push	dword [ebp-148]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-184],eax
	push	_4896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-184]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_4899
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_4898
	call	_brl_blitz_NullObjectError
_4898:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_4899:
	cmp	eax,0
	je	_4901
	mov	eax,ebp
	push	eax
	push	_4926
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4902
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-188],_bbNullObject
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_4905
	call	_brl_blitz_NullObjectError
_4905:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_4908
	call	_brl_blitz_NullObjectError
_4908:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_338
_340:
	cmp	ebx,_bbNullObject
	jne	_4913
	call	_brl_blitz_NullObjectError
_4913:
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
	je	_338
	mov	eax,ebp
	push	eax
	push	_4925
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4914
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_4916
	call	_brl_blitz_NullObjectError
_4916:
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4917
	mov	eax,ebp
	push	eax
	push	_4924
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_4920
	call	_brl_blitz_NullObjectError
_4920:
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
	jne	_4922
	call	_brl_blitz_NullObjectError
_4922:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+292]
	add	esp,4
	push	_4923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-136]
	push	dword [ebp-188]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_4917:
	call	dword [_bbOnDebugLeaveScope]
_338:
	cmp	ebx,_bbNullObject
	jne	_4911
	call	_brl_blitz_NullObjectError
_4911:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_340
_339:
	call	dword [_bbOnDebugLeaveScope]
_4901:
	push	_4927
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-184]
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_4882:
	push	_4929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4931
	call	_brl_blitz_NullObjectError
_4931:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_4932
	mov	eax,ebp
	push	eax
	push	_4945
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4933
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4935
	call	_brl_blitz_NullObjectError
_4935:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_4937
	call	_brl_blitz_NullObjectError
_4937:
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
	push	_4939
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_4941
	call	_brl_blitz_NullObjectError
_4941:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-144],eax
	push	_4942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_4944
	call	_brl_blitz_NullObjectError
_4944:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-136],eax
	call	dword [_bbOnDebugLeaveScope]
_4932:
	push	_4946
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_4948
	call	_brl_blitz_NullObjectError
_4948:
	mov	esi,dword [ebp-132]
	cmp	esi,_bbNullObject
	jne	_4950
	call	_brl_blitz_NullObjectError
_4950:
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
	jmp	_890
_4636:
	call	dword [_bbOnDebugLeaveScope]
_319:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_4630
	call	_brl_blitz_NullObjectError
_4630:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_321
_320:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_4955
_4620:
	mov	eax,ebp
	push	eax
	push	_4959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_4958
	call	_brl_blitz_NullObjectError
_4958:
	push	dword [ebp-60]
	push	dword [ebp-56]
	push	_341
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
_4955:
	call	dword [_bbOnDebugLeaveScope]
_4268:
	mov	ebx,_bbNullObject
	jmp	_890
_890:
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
	push	_6171
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4969
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4971
	call	_brl_blitz_NullObjectError
_4971:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_342
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4974
	push	_348
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4975
	push	_349
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4976
	push	_350
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4977
	push	_357
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4978
	push	_359
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4979
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4980
	push	_380
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4981
	push	_382
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4982
	push	_136
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4983
	push	_402
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_4984
	jmp	_4973
_4974:
	mov	eax,ebp
	push	eax
	push	_5144
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_4985
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4987
	call	_brl_blitz_NullObjectError
_4987:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_4988
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_342
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_4990
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_4992
	call	_brl_blitz_NullObjectError
_4992:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_4994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_4996
	call	_brl_blitz_NullObjectError
_4996:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-20],eax
	push	_4998
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5000
	call	_brl_blitz_NullObjectError
_5000:
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_5002
	call	_brl_blitz_NullObjectError
_5002:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_5004
	call	_brl_blitz_NullObjectError
_5004:
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
	push	_5005
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5007
	call	_brl_blitz_NullObjectError
_5007:
	push	_344
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5008
	mov	eax,ebp
	push	eax
	push	_5027
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5009
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5011
	call	_brl_blitz_NullObjectError
_5011:
	push	_344
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5012
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5014
	call	_brl_blitz_NullObjectError
_5014:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-24],eax
	push	_5016
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_181
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-28],eax
	push	_5018
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_5020
	call	_brl_blitz_NullObjectError
_5020:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5022
	call	_brl_blitz_NullObjectError
_5022:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5023
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_5025
	call	_brl_blitz_NullObjectError
_5025:
	push	dword [ebx+12]
	push	dword [ebp-28]
	call	_bb_AddChild
	add	esp,8
	push	_5026
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-12]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5028
_5008:
	mov	eax,ebp
	push	eax
	push	_5140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5029
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5031
	call	_brl_blitz_NullObjectError
_5031:
	push	dword [ebp-12]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5034
	call	_brl_blitz_NullObjectError
_5034:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5035
	mov	eax,ebp
	push	eax
	push	_5118
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5036
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_181
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_5038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_5040
	call	_brl_blitz_NullObjectError
_5040:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5042
	call	_brl_blitz_NullObjectError
_5042:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5043
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_5045
	call	_brl_blitz_NullObjectError
_5045:
	push	_4
	push	_bbNullObject
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	push	_5047
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_345
_347:
	mov	eax,ebp
	push	eax
	push	_5114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5050
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5052
	call	_brl_blitz_NullObjectError
_5052:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_5055
	call	_brl_blitz_NullObjectError
_5055:
	push	_4
	push	_bbNullObject
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-40],eax
	push	_5057
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_5059
	call	_brl_blitz_NullObjectError
_5059:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5061
	call	_brl_blitz_NullObjectError
_5061:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5062
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_5064
	call	_brl_blitz_NullObjectError
_5064:
	push	_4
	push	_bbNullObject
	push	_342
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_5066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5068
	call	_brl_blitz_NullObjectError
_5068:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_5070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_5072
	call	_brl_blitz_NullObjectError
_5072:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_5074
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5076
	call	_brl_blitz_NullObjectError
_5076:
	mov	esi,dword [ebp-48]
	cmp	esi,_bbNullObject
	jne	_5078
	call	_brl_blitz_NullObjectError
_5078:
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_5080
	call	_brl_blitz_NullObjectError
_5080:
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
	push	_5081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5083
	call	_brl_blitz_NullObjectError
_5083:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5084
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5086
	call	_brl_blitz_NullObjectError
_5086:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_5089
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5088
	call	_brl_blitz_NullObjectError
_5088:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
_5089:
	cmp	eax,0
	je	_5091
	mov	eax,ebp
	push	eax
	push	_5111
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5094
	call	_brl_blitz_NullObjectError
_5094:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5095
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_5097
	call	_brl_blitz_NullObjectError
_5097:
	push	_4
	push	_bbNullObject
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-56],eax
	push	_5099
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_5101
	call	_brl_blitz_NullObjectError
_5101:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5103
	call	_brl_blitz_NullObjectError
_5103:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5104
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_5106
	call	_brl_blitz_NullObjectError
_5106:
	push	_4
	push	_bbNullObject
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-60],eax
	push	_5108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5110
	call	_brl_blitz_NullObjectError
_5110:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5091:
	call	dword [_bbOnDebugLeaveScope]
_345:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5049
	call	_brl_blitz_NullObjectError
_5049:
	push	_255
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_347
_346:
	push	_5117
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	dword [ebp-12]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5119
_5035:
	mov	eax,ebp
	push	eax
	push	_5136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5122
	call	_brl_blitz_NullObjectError
_5122:
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5123
	mov	eax,ebp
	push	eax
	push	_5134
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5126
	call	_brl_blitz_NullObjectError
_5126:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_5129
	call	_brl_blitz_NullObjectError
_5129:
	push	_4
	push	_bbNullObject
	push	_256
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_5131
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5133
	call	_brl_blitz_NullObjectError
_5133:
	push	dword [ebp-64]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5123:
	call	dword [_bbOnDebugLeaveScope]
_5119:
	push	_5137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5139
	call	_brl_blitz_NullObjectError
_5139:
	push	_254
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5028:
	push	_5141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5143
	call	_brl_blitz_NullObjectError
_5143:
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
	jmp	_893
_4975:
	mov	eax,ebp
	push	eax
	push	_5186
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5147
	call	_brl_blitz_NullObjectError
_5147:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-68],eax
	push	_5149
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5151
	call	_brl_blitz_NullObjectError
_5151:
	mov	dword [ebx+24],2
	push	_5153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5155
	call	_brl_blitz_NullObjectError
_5155:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_348
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-72],eax
	push	_5158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5160
	call	_brl_blitz_NullObjectError
_5160:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_5162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_5164
	call	_brl_blitz_NullObjectError
_5164:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-80],eax
	push	_5166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5168
	call	_brl_blitz_NullObjectError
_5168:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_5170
	call	_brl_blitz_NullObjectError
_5170:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_5172
	call	_brl_blitz_NullObjectError
_5172:
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
	push	_5173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5175
	call	_brl_blitz_NullObjectError
_5175:
	push	dword [ebp-72]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5178
	call	_brl_blitz_NullObjectError
_5178:
	push	_258
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5181
	call	_brl_blitz_NullObjectError
_5181:
	mov	eax,dword [ebp-68]
	mov	dword [ebx+24],eax
	push	_5183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5185
	call	_brl_blitz_NullObjectError
_5185:
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
	jmp	_893
_4976:
	mov	eax,ebp
	push	eax
	push	_5228
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5189
	call	_brl_blitz_NullObjectError
_5189:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-84],eax
	push	_5191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5193
	call	_brl_blitz_NullObjectError
_5193:
	mov	dword [ebx+24],2
	push	_5195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5197
	call	_brl_blitz_NullObjectError
_5197:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_349
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_5200
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5202
	call	_brl_blitz_NullObjectError
_5202:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5203
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5205
	call	_brl_blitz_NullObjectError
_5205:
	push	_259
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5208
	call	_brl_blitz_NullObjectError
_5208:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-92],eax
	push	_5210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_5212
	call	_brl_blitz_NullObjectError
_5212:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-96],eax
	push	_5214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5216
	call	_brl_blitz_NullObjectError
_5216:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_5218
	call	_brl_blitz_NullObjectError
_5218:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_5220
	call	_brl_blitz_NullObjectError
_5220:
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
	push	_5221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5223
	call	_brl_blitz_NullObjectError
_5223:
	mov	eax,dword [ebp-84]
	mov	dword [ebx+24],eax
	push	_5225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5227
	call	_brl_blitz_NullObjectError
_5227:
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
	jmp	_893
_4977:
	mov	eax,ebp
	push	eax
	push	_5350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5231
	call	_brl_blitz_NullObjectError
_5231:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-100],eax
	push	_5233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5235
	call	_brl_blitz_NullObjectError
_5235:
	mov	dword [ebx+24],2
	push	_5237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5239
	call	_brl_blitz_NullObjectError
_5239:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_350
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-104],eax
	push	_5242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5244
	call	_brl_blitz_NullObjectError
_5244:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+92]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5248
	call	_brl_blitz_NullObjectError
_5248:
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-112],eax
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
	push	_351
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5254
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-116]
	cmp	esi,_bbNullObject
	jne	_5256
	call	_brl_blitz_NullObjectError
_5256:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5258
	call	_brl_blitz_NullObjectError
_5258:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_352
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_5259
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_5261
	call	_brl_blitz_NullObjectError
_5261:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_5263
	call	_brl_blitz_NullObjectError
_5263:
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
	push	_5264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5266
	call	_brl_blitz_NullObjectError
_5266:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5269
	call	_brl_blitz_NullObjectError
_5269:
	push	_4
	push	_bbNullObject
	push	_353
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5272
	call	_brl_blitz_NullObjectError
_5272:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5273
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5275
	call	_brl_blitz_NullObjectError
_5275:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5277
	call	_brl_blitz_NullObjectError
_5277:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5279
	call	_brl_blitz_NullObjectError
_5279:
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
	push	_5280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5282
	call	_brl_blitz_NullObjectError
_5282:
	push	_354
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5283
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5285
	call	_brl_blitz_NullObjectError
_5285:
	push	_4
	push	_bbNullObject
	push	_354
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5288
	call	_brl_blitz_NullObjectError
_5288:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5291
	call	_brl_blitz_NullObjectError
_5291:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5293
	call	_brl_blitz_NullObjectError
_5293:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5295
	call	_brl_blitz_NullObjectError
_5295:
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
	push	_5296
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5298
	call	_brl_blitz_NullObjectError
_5298:
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_5299
	mov	eax,ebp
	push	eax
	push	_5316
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5302
	call	_brl_blitz_NullObjectError
_5302:
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5305
	call	_brl_blitz_NullObjectError
_5305:
	push	_4
	push	_bbNullObject
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5308
	call	_brl_blitz_NullObjectError
_5308:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_5309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5311
	call	_brl_blitz_NullObjectError
_5311:
	mov	esi,dword [ebp-108]
	cmp	esi,_bbNullObject
	jne	_5313
	call	_brl_blitz_NullObjectError
_5313:
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_5315
	call	_brl_blitz_NullObjectError
_5315:
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
	jmp	_5317
_5299:
	mov	eax,ebp
	push	eax
	push	_5326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_5320
	call	_brl_blitz_NullObjectError
_5320:
	push	_4
	push	_bbNullObject
	push	_355
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_5321
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-116]
	cmp	ebx,_bbNullObject
	jne	_5323
	call	_brl_blitz_NullObjectError
_5323:
	push	_4
	push	_bbNullObject
	push	_127
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5325
	call	_brl_blitz_NullObjectError
_5325:
	push	_356
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_5317:
	push	_5327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5329
	call	_brl_blitz_NullObjectError
_5329:
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5330
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5332
	call	_brl_blitz_NullObjectError
_5332:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5335
	call	_brl_blitz_NullObjectError
_5335:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_5337
	call	_brl_blitz_ArrayBoundsError
_5337:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_5339
	call	_brl_blitz_NullObjectError
_5339:
	push	dword [ebp-112]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_5340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5342
	call	_brl_blitz_NullObjectError
_5342:
	push	_257
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5345
	call	_brl_blitz_NullObjectError
_5345:
	mov	eax,dword [ebp-100]
	mov	dword [ebx+24],eax
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
	push	dword [ebp-104]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_893
_4978:
	mov	eax,ebp
	push	eax
	push	_5367
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5353
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5355
	call	_brl_blitz_NullObjectError
_5355:
	cmp	dword [ebx+24],2
	je	_5356
	mov	eax,ebp
	push	eax
	push	_5360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5359
	call	_brl_blitz_NullObjectError
_5359:
	push	_358
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5356:
	push	_5361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5363
	call	_brl_blitz_NullObjectError
_5363:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5364
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5366
	call	_brl_blitz_NullObjectError
_5366:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	_357
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_893
_4979:
	mov	eax,ebp
	push	eax
	push	_5382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5370
	call	_brl_blitz_NullObjectError
_5370:
	cmp	dword [ebx+24],2
	je	_5371
	mov	eax,ebp
	push	eax
	push	_5375
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5374
	call	_brl_blitz_NullObjectError
_5374:
	push	_358
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5371:
	push	_5376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5378
	call	_brl_blitz_NullObjectError
_5378:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5379
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5381
	call	_brl_blitz_NullObjectError
_5381:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_VoidDatatype]
	push	_bbNullObject
	push	_359
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_893
_4980:
	mov	eax,ebp
	push	eax
	push	_5701
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5385
	call	_brl_blitz_NullObjectError
_5385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5386
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5388
	call	_brl_blitz_NullObjectError
_5388:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_196
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_197
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_198
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_199
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	push	_201
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5391
	jmp	_5390
_5391:
	mov	eax,ebp
	push	eax
	push	_5395
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5394
	call	_brl_blitz_NullObjectError
_5394:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5390
_5390:
	push	_5396
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_164
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_5398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5400
	call	_brl_blitz_NullObjectError
_5400:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-124],eax
	push	_5402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5404
	call	_brl_blitz_NullObjectError
_5404:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5407
	call	_brl_blitz_NullObjectError
_5407:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5410
	call	_brl_blitz_NullObjectError
_5410:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-128],eax
	push	_5412
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5414
	call	_brl_blitz_NullObjectError
_5414:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-132],0
	push	_5417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_360
_362:
	mov	eax,ebp
	push	eax
	push	_5427
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5422
	call	_brl_blitz_NullObjectError
_5422:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5423
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5425
	call	_brl_blitz_NullObjectError
_5425:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5426
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-132],1
	call	dword [_bbOnDebugLeaveScope]
_360:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5419
	call	_brl_blitz_NullObjectError
_5419:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_362
_361:
	push	_5428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-132]
	push	dword [ebp-128]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-136],eax
	push	_5430
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5432
	call	_brl_blitz_NullObjectError
_5432:
	mov	ebx,dword [ebp-136]
	inc	dword [ebx+4]
	mov	eax,dword [esi+64]
	dec	dword [eax+4]
	jnz	_5437
	push	eax
	call	_bbGCFree
	add	esp,4
_5437:
	mov	dword [esi+64],ebx
	push	_5438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5440
	call	_brl_blitz_NullObjectError
_5440:
	push	_87
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5443
	call	_brl_blitz_NullObjectError
_5443:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-140],eax
	push	_5445
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5447
	call	_brl_blitz_NullObjectError
_5447:
	push	1
	push	_5449
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_5453
	push	eax
	call	_bbGCFree
	add	esp,4
_5453:
	mov	dword [esi+20],ebx
	push	_5454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5456
	call	_brl_blitz_NullObjectError
_5456:
	mov	esi,dword [ebx+20]
	mov	ebx,0
	cmp	ebx,dword [esi+20]
	jb	_5459
	call	_brl_blitz_ArrayBoundsError
_5459:
	shl	ebx,2
	add	esi,ebx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_5464
	push	eax
	call	_bbGCFree
	add	esp,4
_5464:
	mov	dword [esi+24],ebx
	push	_5465
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-144],_bbEmptyString
	push	_5467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5469
	call	_brl_blitz_NullObjectError
_5469:
	mov	eax,dword [ebx+24]
	cmp	eax,3
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_5472
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5471
	call	_brl_blitz_NullObjectError
_5471:
	push	_4
	push	dword [ebx+28]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_5472:
	cmp	eax,0
	je	_5474
	mov	eax,ebp
	push	eax
	push	_5495
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5477
	call	_brl_blitz_NullObjectError
_5477:
	push	_295
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
	push	_5478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5480
	call	_brl_blitz_NullObjectError
_5480:
	push	0
	push	dword [ebx+28]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-152],eax
	push	_5482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5484
	call	_brl_blitz_NullObjectError
_5484:
	push	dword [ebp-152]
	push	_205
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	push	_5485
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5487
	call	_brl_blitz_NullObjectError
_5487:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-156],eax
	push	_5489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-156]
	cmp	ebx,_bbNullObject
	jne	_5491
	call	_brl_blitz_NullObjectError
_5491:
	push	_205
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-152]
	cmp	ebx,_bbNullObject
	jne	_5494
	call	_brl_blitz_NullObjectError
_5494:
	push	dword [ebp-156]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5474:
	push	_5496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_363
_365:
	mov	eax,ebp
	push	eax
	push	_5575
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5499
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5501
	call	_brl_blitz_NullObjectError
_5501:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bb_IsValidVarName
	add	esp,4
	mov	eax,eax
	cmp	eax,0
	jne	_5502
	mov	eax,ebp
	push	eax
	push	_5506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5505
	call	_brl_blitz_NullObjectError
_5505:
	push	_366
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5502:
	push	_5507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5509
	call	_brl_blitz_NullObjectError
_5509:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-160],eax
	push	_5511
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5513
	call	_brl_blitz_NullObjectError
_5513:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5514
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5516
	call	_brl_blitz_NullObjectError
_5516:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5519
	call	_brl_blitz_NullObjectError
_5519:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-164],eax
	push	_5521
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
	push	_5522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5524
	call	_brl_blitz_NullObjectError
_5524:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5525
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5527
	call	_brl_blitz_NullObjectError
_5527:
	push	_4
	push	_bbNullObject
	push	_74
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-168],eax
	push	_5529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-172],0
	push	_5531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_367
_369:
	mov	eax,ebp
	push	eax
	push	_5541
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5536
	call	_brl_blitz_NullObjectError
_5536:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5539
	call	_brl_blitz_NullObjectError
_5539:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-172],1
	call	dword [_bbOnDebugLeaveScope]
_367:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5533
	call	_brl_blitz_NullObjectError
_5533:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_369
_368:
	push	_5542
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_38
	push	dword [ebp-172]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_370
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
	push	_5543
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-172]
	push	dword [ebp-164]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-176],eax
	push	_5545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5547
	call	_brl_blitz_NullObjectError
_5547:
	push	dword [ebp-176]
	push	dword [ebp-160]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+104]
	add	esp,12
	push	_5548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-168]
	cmp	ebx,_bbNullObject
	jne	_5550
	call	_brl_blitz_NullObjectError
_5550:
	push	dword [ebp-160]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5551
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-176]
	cmp	ebx,_bbNullObject
	jne	_5553
	call	_brl_blitz_NullObjectError
_5553:
	push	dword [ebp-168]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_5554
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5556
	call	_brl_blitz_NullObjectError
_5556:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5557
	mov	eax,ebp
	push	eax
	push	_5564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5560
	call	_brl_blitz_NullObjectError
_5560:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5561
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5563
	call	_brl_blitz_NullObjectError
_5563:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5557:
	push	_5565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5567
	call	_brl_blitz_NullObjectError
_5567:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5568
	mov	eax,ebp
	push	eax
	push	_5569
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5570
_5568:
	mov	eax,ebp
	push	eax
	push	_5574
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5571
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5573
	call	_brl_blitz_NullObjectError
_5573:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5570:
	call	dword [_bbOnDebugLeaveScope]
_363:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5498
	call	_brl_blitz_NullObjectError
_5498:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_365
_364:
	push	_5577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5579
	call	_brl_blitz_NullObjectError
_5579:
	push	_88
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5582
	call	_brl_blitz_NullObjectError
_5582:
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
	push	_5583
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-136]
	cmp	ebx,_bbNullObject
	jne	_5585
	call	_brl_blitz_NullObjectError
_5585:
	push	dword [ebp-120]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_5586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5588
	call	_brl_blitz_NullObjectError
_5588:
	push	_356
	push	_245
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5591
	call	_brl_blitz_NullObjectError
_5591:
	push	_4
	push	_bbNullObject
	push	_177
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-148],eax
	push	_5593
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5595
	call	_brl_blitz_NullObjectError
_5595:
	push	dword [ebp-148]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5596
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5598
	call	_brl_blitz_NullObjectError
_5598:
	mov	ebx,dword [ebp-140]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_5603
	push	eax
	call	_bbGCFree
	add	esp,4
_5603:
	mov	dword [esi+20],ebx
	push	_5604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5606
	call	_brl_blitz_NullObjectError
_5606:
	push	_260
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5607
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5609
	call	_brl_blitz_NullObjectError
_5609:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_5611
	call	_brl_blitz_NullObjectError
_5611:
	push	dword [ebp-120]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	push	_5612
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5614
	call	_brl_blitz_NullObjectError
_5614:
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [esi+64]
	dec	dword [eax+4]
	jnz	_5619
	push	eax
	call	_bbGCFree
	add	esp,4
_5619:
	mov	dword [esi+64],ebx
	push	_5620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-180],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5623
	call	_brl_blitz_NullObjectError
_5623:
	mov	edi,dword [ebx+16]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5626
	call	_brl_blitz_NullObjectError
_5626:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_371
_373:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_5631
	call	_brl_blitz_NullObjectError
_5631:
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
	je	_371
	mov	eax,ebp
	push	eax
	push	_5697
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5632
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_5634
	call	_brl_blitz_NullObjectError
_5634:
	push	dword [ebp-144]
	push	dword [ebp-124]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5635
	mov	eax,ebp
	push	eax
	push	_5696
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-184],_bbNullObject
	mov	ebx,dword [ebp-180]
	cmp	ebx,_bbNullObject
	jne	_5639
	call	_brl_blitz_NullObjectError
_5639:
	mov	eax,dword [ebx+32]
	mov	dword [ebp-312],eax
	mov	ebx,dword [ebp-312]
	cmp	ebx,_bbNullObject
	jne	_5642
	call	_brl_blitz_NullObjectError
_5642:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-316],eax
	jmp	_374
_376:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_5647
	call	_brl_blitz_NullObjectError
_5647:
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
	je	_374
	mov	eax,ebp
	push	eax
	push	_5694
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_5650
	call	_brl_blitz_NullObjectError
_5650:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+264]
	add	esp,8
	mov	dword [ebp-188],eax
	push	_5652
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-188]
	cmp	esi,_bbNullObject
	jne	_5654
	call	_brl_blitz_NullObjectError
_5654:
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_5656
	call	_brl_blitz_NullObjectError
_5656:
	push	dword [ebx+12]
	push	_26
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+172]
	add	esp,12
	push	_5657
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-192],_bbNullObject
	mov	ebx,dword [ebp-188]
	cmp	ebx,_bbNullObject
	jne	_5660
	call	_brl_blitz_NullObjectError
_5660:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-304],eax
	mov	ebx,dword [ebp-304]
	cmp	ebx,_bbNullObject
	jne	_5663
	call	_brl_blitz_NullObjectError
_5663:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_377
_379:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5668
	call	_brl_blitz_NullObjectError
_5668:
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
	je	_377
	mov	eax,ebp
	push	eax
	push	_5685
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5671
	call	_brl_blitz_NullObjectError
_5671:
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
	je	_5674
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5673
	call	_brl_blitz_NullObjectError
_5673:
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
_5674:
	cmp	eax,0
	je	_5676
	mov	eax,ebp
	push	eax
	push	_5684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5677
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-192]
	cmp	ebx,_bbNullObject
	jne	_5679
	call	_brl_blitz_NullObjectError
_5679:
	mov	esi,dword [ebp-184]
	cmp	esi,_bbNullObject
	jne	_5681
	call	_brl_blitz_NullObjectError
_5681:
	mov	esi,dword [esi+36]
	cmp	esi,_bbNullObject
	jne	_5683
	call	_brl_blitz_NullObjectError
_5683:
	push	dword [esi+20]
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+172]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_5676:
	call	dword [_bbOnDebugLeaveScope]
_377:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_5666
	call	_brl_blitz_NullObjectError
_5666:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_379
_378:
	push	_5686
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-184]
	cmp	ebx,_bbNullObject
	jne	_5688
	call	_brl_blitz_NullObjectError
_5688:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+56]
	add	esp,4
	push	_5689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5691
	call	_brl_blitz_NullObjectError
_5691:
	mov	ebx,dword [ebx+40]
	cmp	ebx,_bbNullObject
	jne	_5693
	call	_brl_blitz_NullObjectError
_5693:
	push	dword [ebp-188]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+160]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_374:
	mov	ebx,dword [ebp-316]
	cmp	ebx,_bbNullObject
	jne	_5645
	call	_brl_blitz_NullObjectError
_5645:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_376
_375:
	push	_5695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_372
_5635:
	call	dword [_bbOnDebugLeaveScope]
_371:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_5629
	call	_brl_blitz_NullObjectError
_5629:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_373
_372:
	push	_5698
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5700
	call	_brl_blitz_NullObjectError
_5700:
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
	jmp	_893
_4981:
	mov	eax,ebp
	push	eax
	push	_5734
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5707
	call	_brl_blitz_NullObjectError
_5707:
	cmp	dword [ebx+64],_bbNullObject
	jne	_5708
	mov	eax,ebp
	push	eax
	push	_5712
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5711
	call	_brl_blitz_NullObjectError
_5711:
	push	_381
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5708:
	push	_5713
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5715
	call	_brl_blitz_NullObjectError
_5715:
	push	_380
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_380
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-196],eax
	push	_5718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5720
	call	_brl_blitz_NullObjectError
_5720:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-200],eax
	push	_5722
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5724
	call	_brl_blitz_NullObjectError
_5724:
	mov	edi,dword [ebx+64]
	cmp	edi,_bbNullObject
	jne	_5726
	call	_brl_blitz_NullObjectError
_5726:
	mov	esi,dword [ebp-200]
	cmp	esi,_bbNullObject
	jne	_5728
	call	_brl_blitz_NullObjectError
_5728:
	mov	ebx,dword [ebp-200]
	cmp	ebx,_bbNullObject
	jne	_5730
	call	_brl_blitz_NullObjectError
_5730:
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
	push	_5731
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5733
	call	_brl_blitz_NullObjectError
_5733:
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
	jmp	_893
_4982:
	mov	eax,ebp
	push	eax
	push	_5900
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5735
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5737
	call	_brl_blitz_NullObjectError
_5737:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-204],eax
	push	_5739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5741
	call	_brl_blitz_NullObjectError
_5741:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_382
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-208],eax
	push	_5744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5746
	call	_brl_blitz_NullObjectError
_5746:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-212],eax
	push	_5748
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5750
	call	_brl_blitz_NullObjectError
_5750:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-216],eax
	push	_5752
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5754
	call	_brl_blitz_NullObjectError
_5754:
	mov	esi,dword [ebp-216]
	cmp	esi,_bbNullObject
	jne	_5756
	call	_brl_blitz_NullObjectError
_5756:
	mov	ebx,dword [ebp-216]
	cmp	ebx,_bbNullObject
	jne	_5758
	call	_brl_blitz_NullObjectError
_5758:
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
	push	_5759
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5761
	call	_brl_blitz_NullObjectError
_5761:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5762
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_383
_385:
	mov	eax,ebp
	push	eax
	push	_5861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5765
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5767
	call	_brl_blitz_NullObjectError
_5767:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_5770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	_5771
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-220],eax
	push	_5773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_388:
	mov	eax,ebp
	push	eax
	push	_5821
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5774
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_5775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5777
	call	_brl_blitz_NullObjectError
_5777:
	push	_4
	push	_bbNullObject
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-228],eax
	push	_5779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_5781
	call	_brl_blitz_NullObjectError
_5781:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5783
	call	_brl_blitz_NullObjectError
_5783:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-228]
	cmp	ebx,_bbNullObject
	jne	_5786
	call	_brl_blitz_NullObjectError
_5786:
	push	_4
	push	_bbNullObject
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-232],eax
	push	_5788
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-232]
	cmp	ebx,_bbNullObject
	jne	_5790
	call	_brl_blitz_NullObjectError
_5790:
	push	_4
	push	_bbNullObject
	push	_343
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-236],eax
	push	_5792
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5794
	call	_brl_blitz_NullObjectError
_5794:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-240],eax
	push	_5796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_5798
	call	_brl_blitz_NullObjectError
_5798:
	mov	esi,dword [ebp-240]
	cmp	esi,_bbNullObject
	jne	_5800
	call	_brl_blitz_NullObjectError
_5800:
	mov	ebx,dword [ebp-240]
	cmp	ebx,_bbNullObject
	jne	_5802
	call	_brl_blitz_NullObjectError
_5802:
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
	push	_5803
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5805
	call	_brl_blitz_NullObjectError
_5805:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5806
	mov	eax,ebp
	push	eax
	push	_5811
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_5808
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5810
	call	_brl_blitz_NullObjectError
_5810:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5806:
	push	_5812
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-220]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [ebp-220]
	push	_630
	call	_bbArraySlice
	add	esp,16
	mov	dword [ebp-220],eax
	push	_5813
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-220]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	mov	eax,dword [ebp-220]
	cmp	ebx,dword [eax+20]
	jb	_5815
	call	_brl_blitz_ArrayBoundsError
_5815:
	mov	esi,dword [ebp-220]
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-232]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_5820
	push	eax
	call	_bbGCFree
	add	esp,4
_5820:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_386:
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_388
_387:
	push	_5823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_389
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-224],eax
	push	_5825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5827
	call	_brl_blitz_NullObjectError
_5827:
	push	dword [ebp-224]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_5828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_5830
	call	_brl_blitz_NullObjectError
_5830:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	cmp	eax,_bbNullObject
	je	_5831
	mov	eax,ebp
	push	eax
	push	_5860
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-244],_bbNullObject
	mov	ebx,dword [ebp-224]
	cmp	ebx,_bbNullObject
	jne	_5835
	call	_brl_blitz_NullObjectError
_5835:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-300],eax
	mov	ebx,dword [ebp-300]
	cmp	ebx,_bbNullObject
	jne	_5838
	call	_brl_blitz_NullObjectError
_5838:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-296],eax
	jmp	_390
_392:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_5843
	call	_brl_blitz_NullObjectError
_5843:
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
	je	_390
	mov	eax,ebp
	push	eax
	push	_5858
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5844
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-244]
	cmp	ebx,_bbNullObject
	jne	_5846
	call	_brl_blitz_NullObjectError
_5846:
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5847
	mov	eax,ebp
	push	eax
	push	_5857
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5848
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
	jmp	_393
_395:
	mov	eax,dword [ebx]
	mov	dword [ebp-248],eax
	add	ebx,4
	cmp	dword [ebp-248],_bbNullObject
	je	_393
	mov	eax,ebp
	push	eax
	push	_5855
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5854
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-244]
	push	dword [ebp-248]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_393:
	cmp	ebx,edi
	jne	_395
_394:
	call	dword [_bbOnDebugLeaveScope]
_5847:
	call	dword [_bbOnDebugLeaveScope]
_390:
	mov	ebx,dword [ebp-296]
	cmp	ebx,_bbNullObject
	jne	_5841
	call	_brl_blitz_NullObjectError
_5841:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_392
_391:
	call	dword [_bbOnDebugLeaveScope]
_5831:
	call	dword [_bbOnDebugLeaveScope]
_383:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5764
	call	_brl_blitz_NullObjectError
_5764:
	push	_261
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_385
_384:
	push	_5865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5867
	call	_brl_blitz_NullObjectError
_5867:
	push	_262
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5868
	mov	eax,ebp
	push	eax
	push	_5888
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5871
	call	_brl_blitz_NullObjectError
_5871:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-208]
	cmp	ebx,_bbNullObject
	jne	_5874
	call	_brl_blitz_NullObjectError
_5874:
	push	_4
	push	_bbNullObject
	push	_181
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-252],eax
	push	_5876
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_5878
	call	_brl_blitz_NullObjectError
_5878:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5880
	call	_brl_blitz_NullObjectError
_5880:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_5881
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-252]
	cmp	ebx,_bbNullObject
	jne	_5883
	call	_brl_blitz_NullObjectError
_5883:
	push	_4
	push	_bbNullObject
	push	_262
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-256],eax
	push	_5885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5887
	call	_brl_blitz_NullObjectError
_5887:
	push	dword [ebp-256]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_5868:
	push	_5890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5892
	call	_brl_blitz_NullObjectError
_5892:
	push	_263
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5895
	call	_brl_blitz_NullObjectError
_5895:
	mov	eax,dword [ebp-204]
	mov	dword [ebx+24],eax
	push	_5897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_5899
	call	_brl_blitz_NullObjectError
_5899:
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
	jmp	_893
_4983:
	mov	eax,ebp
	push	eax
	push	_6099
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
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
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-260],eax
	push	_5908
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_5910
	call	_brl_blitz_NullObjectError
_5910:
	mov	ebx,dword [ebp-260]
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_5915
	push	eax
	call	_bbGCFree
	add	esp,4
_5915:
	mov	dword [esi+28],ebx
	push	_5916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-264],eax
	push	_5918
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5920
	call	_brl_blitz_NullObjectError
_5920:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5921
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5923
	call	_brl_blitz_NullObjectError
_5923:
	push	_153
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_5924
	mov	eax,ebp
	push	eax
	push	_5931
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
	push	_153
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5928
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5930
	call	_brl_blitz_NullObjectError
_5930:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_5924:
	push	_5932
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5934
	call	_brl_blitz_NullObjectError
_5934:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_396
_398:
	mov	eax,ebp
	push	eax
	push	_6080
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5938
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5940
	call	_brl_blitz_NullObjectError
_5940:
	push	_83
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5941
	mov	eax,ebp
	push	eax
	push	_6076
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5942
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5944
	call	_brl_blitz_NullObjectError
_5944:
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
	je	_5947
	push	_162
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5948
	push	_163
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5949
	push	_63
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5950
	push	_164
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_5951
	jmp	_5946
_5947:
	mov	eax,ebp
	push	eax
	push	_5959
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5952
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5954
	call	_brl_blitz_NullObjectError
_5954:
	mov	dword [ebx+72],1
	push	_5956
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5958
	call	_brl_blitz_NullObjectError
_5958:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5946
_5948:
	mov	eax,ebp
	push	eax
	push	_5967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5962
	call	_brl_blitz_NullObjectError
_5962:
	mov	dword [ebx+72],3
	push	_5964
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5966
	call	_brl_blitz_NullObjectError
_5966:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5946
_5949:
	mov	eax,ebp
	push	eax
	push	_5975
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5970
	call	_brl_blitz_NullObjectError
_5970:
	mov	dword [ebx+72],2
	push	_5972
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5974
	call	_brl_blitz_NullObjectError
_5974:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5946
_5950:
	mov	eax,ebp
	push	eax
	push	_6017
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5976
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5978
	call	_brl_blitz_NullObjectError
_5978:
	push	_63
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5979
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5981
	call	_brl_blitz_NullObjectError
_5981:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-268],eax
	push	_5983
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5985
	call	_brl_blitz_NullObjectError
_5985:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5988
	call	_brl_blitz_NullObjectError
_5988:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_5989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5991
	call	_brl_blitz_NullObjectError
_5991:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-272],eax
	push	_5993
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5995
	call	_brl_blitz_NullObjectError
_5995:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_5996
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_399
_401:
	mov	eax,ebp
	push	eax
	push	_6005
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_5999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6001
	call	_brl_blitz_NullObjectError
_6001:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6002
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6004
	call	_brl_blitz_NullObjectError
_6004:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_399:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5998
	call	_brl_blitz_NullObjectError
_5998:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_401
_400:
	push	_6006
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6008
	call	_brl_blitz_NullObjectError
_6008:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6009
	mov	eax,ebp
	push	eax
	push	_6016
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6010
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6012
	call	_brl_blitz_NullObjectError
_6012:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6013
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6015
	call	_brl_blitz_NullObjectError
_6015:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6009:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5946
_5951:
	mov	eax,ebp
	push	eax
	push	_6074
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6021
	call	_brl_blitz_NullObjectError
_6021:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6022
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6024
	call	_brl_blitz_NullObjectError
_6024:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_195
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_196
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_197
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_198
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_199
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_200
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	push	_201
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6027
	jmp	_6026
_6027:
	mov	eax,ebp
	push	eax
	push	_6031
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6028
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6030
	call	_brl_blitz_NullObjectError
_6030:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6026
_6026:
	push	_6032
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6034
	call	_brl_blitz_NullObjectError
_6034:
	mov	ebx,dword [ebx+52]
	cmp	ebx,_bbNullObject
	jne	_6036
	call	_brl_blitz_NullObjectError
_6036:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6039
	call	_brl_blitz_NullObjectError
_6039:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_6041
	call	_brl_blitz_NullObjectError
_6041:
	push	_bbStringClass
	push	dword [esi+8]
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_6043
	mov	eax,_bbEmptyString
_6043:
	push	_167
	push	eax
	push	_166
	push	dword [ebp-260]
	push	_165
	call	_bbStringConcat
	add	esp,8
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
	jnz	_6047
	push	eax
	call	_bbGCFree
	add	esp,4
_6047:
	mov	dword [ebx+8],esi
	push	_6048
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6050
	call	_brl_blitz_NullObjectError
_6050:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+132]
	add	esp,4
	push	_6051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6053
	call	_brl_blitz_NullObjectError
_6053:
	mov	dword [ebx+24],3
	push	_6055
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6057
	call	_brl_blitz_NullObjectError
_6057:
	mov	eax,dword [ebx+72]
	mov	dword [ebp-276],eax
	push	_6059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6061
	call	_brl_blitz_NullObjectError
_6061:
	mov	dword [ebx+72],1
	push	_6063
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6065
	call	_brl_blitz_NullObjectError
_6065:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+88]
	add	esp,4
	push	_6066
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6068
	call	_brl_blitz_NullObjectError
_6068:
	mov	dword [ebx+24],0
	push	_6070
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6072
	call	_brl_blitz_NullObjectError
_6072:
	mov	eax,dword [ebp-276]
	mov	dword [ebx+72],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_5946
_5946:
	call	dword [_bbOnDebugLeaveScope]
_5941:
	push	_6077
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6079
	call	_brl_blitz_NullObjectError
_6079:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_396:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_5937
	call	_brl_blitz_NullObjectError
_5937:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_398
_397:
	push	_6081
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6083
	call	_brl_blitz_NullObjectError
_6083:
	mov	ebx,_4
	inc	dword [ebx+4]
	mov	eax,dword [esi+28]
	dec	dword [eax+4]
	jnz	_6088
	push	eax
	call	_bbGCFree
	add	esp,4
_6088:
	mov	dword [esi+28],ebx
	push	_6089
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6091
	call	_brl_blitz_NullObjectError
_6091:
	push	_160
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6092
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6094
	call	_brl_blitz_NullObjectError
_6094:
	mov	dword [ebx+72],3
	push	_6096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6098
	call	_brl_blitz_NullObjectError
_6098:
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
	jmp	_893
_4984:
	mov	eax,ebp
	push	eax
	push	_6170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6100
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6102
	call	_brl_blitz_NullObjectError
_6102:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6103
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6105
	call	_brl_blitz_NullObjectError
_6105:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-280],eax
	push	_6107
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6109
	call	_brl_blitz_NullObjectError
_6109:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6112
	call	_brl_blitz_NullObjectError
_6112:
	push	dword [ebp-280]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,8
	mov	eax,eax
	cmp	eax,0
	jne	_6113
	mov	eax,ebp
	push	eax
	push	_6117
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6114
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6116
	call	_brl_blitz_NullObjectError
_6116:
	push	_118
	push	dword [ebp-280]
	push	_403
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
_6113:
	push	_6118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_402
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-284],eax
	push	_6120
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-284]
	cmp	ebx,_bbNullObject
	jne	_6122
	call	_brl_blitz_NullObjectError
_6122:
	push	dword [ebp-280]
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6123
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-280]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-288],eax
	push	_6125
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6127
	call	_brl_blitz_NullObjectError
_6127:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6128
	mov	eax,ebp
	push	eax
	push	_6166
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6129
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_406:
	mov	eax,ebp
	push	eax
	push	_6163
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6130
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6132
	call	_brl_blitz_NullObjectError
_6132:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6135
	call	_brl_blitz_NullObjectError
_6135:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-292],eax
	push	_6137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-288]
	cmp	ebx,_bbNullObject
	jne	_6139
	call	_brl_blitz_NullObjectError
_6139:
	add	dword [ebx+20],1
	push	_6141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6143
	call	_brl_blitz_NullObjectError
_6143:
	mov	dword [ebp-308],ebx
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_6146
	call	_brl_blitz_NullObjectError
_6146:
	mov	esi,dword [ebp-292]
	cmp	esi,_bbNullObject
	jne	_6148
	call	_brl_blitz_NullObjectError
_6148:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6150
	call	_brl_blitz_NullObjectError
_6150:
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
	jnz	_6154
	push	eax
	call	_bbGCFree
	add	esp,4
_6154:
	mov	eax,dword [ebp-308]
	mov	dword [eax+12],ebx
	push	_6155
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-284]
	cmp	esi,_bbNullObject
	jne	_6157
	call	_brl_blitz_NullObjectError
_6157:
	mov	ebx,dword [ebp-292]
	cmp	ebx,_bbNullObject
	jne	_6159
	call	_brl_blitz_NullObjectError
_6159:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_407
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6162
	call	_brl_blitz_NullObjectError
_6162:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_404:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6165
	call	_brl_blitz_NullObjectError
_6165:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_406
_405:
	call	dword [_bbOnDebugLeaveScope]
_6128:
	push	_6167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6169
	call	_brl_blitz_NullObjectError
_6169:
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
	jmp	_893
_4973:
	mov	ebx,_bbNullObject
	jmp	_893
_893:
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
	push	_6632
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6172
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6174
	call	_brl_blitz_NullObjectError
_6174:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	ebx,eax
	push	_408
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6177
	push	_140
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6178
	jmp	_6176
_6177:
	mov	eax,ebp
	push	eax
	push	_6303
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_408
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_6181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	push	_6183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_411:
_409:
	mov	eax,ebp
	push	eax
	push	_6299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6184
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6186
	call	_brl_blitz_NullObjectError
_6186:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-20],eax
	push	_6188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-20]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_6189
	mov	eax,ebp
	push	eax
	push	_6283
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6192
	call	_brl_blitz_NullObjectError
_6192:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6195
	call	_brl_blitz_NullObjectError
_6195:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6198
	call	_brl_blitz_NullObjectError
_6198:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6200
	call	_brl_blitz_NullObjectError
_6200:
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
	jne	_6201
	mov	eax,ebp
	push	eax
	push	_6205
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6204
	call	_brl_blitz_NullObjectError
_6204:
	push	_412
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6201:
	push	_6206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6208
	call	_brl_blitz_NullObjectError
_6208:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-24],eax
	push	_6210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6212
	call	_brl_blitz_NullObjectError
_6212:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],0
	push	_6215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_413
_415:
	mov	eax,ebp
	push	eax
	push	_6225
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6218
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6220
	call	_brl_blitz_NullObjectError
_6220:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6223
	call	_brl_blitz_NullObjectError
_6223:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6224
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-28],1
	call	dword [_bbOnDebugLeaveScope]
_413:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6217
	call	_brl_blitz_NullObjectError
_6217:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_415
_414:
	push	_6226
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-24]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-32],eax
	push	_6228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6230
	call	_brl_blitz_NullObjectError
_6230:
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
	push	_6231
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6233
	call	_brl_blitz_NullObjectError
_6233:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_6234
	movzx	eax,byte [ebp-4]
_6234:
	cmp	eax,0
	je	_6236
	mov	eax,ebp
	push	eax
	push	_6277
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6239
	call	_brl_blitz_NullObjectError
_6239:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6242
	call	_brl_blitz_NullObjectError
_6242:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_6244
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_416
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-40],eax
	push	_6246
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_6248
	call	_brl_blitz_NullObjectError
_6248:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6250
	call	_brl_blitz_NullObjectError
_6250:
	push	dword [ebp-20]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6252
	call	_brl_blitz_NullObjectError
_6252:
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
	push	_6253
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	cmp	ebx,_bbNullObject
	jne	_6255
	call	_brl_blitz_NullObjectError
_6255:
	push	_4
	push	_bbNullObject
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_6257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-32]
	cmp	edi,_bbNullObject
	jne	_6259
	call	_brl_blitz_NullObjectError
_6259:
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_6261
	call	_brl_blitz_NullObjectError
_6261:
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_6263
	call	_brl_blitz_NullObjectError
_6263:
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
	push	_6264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_181
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-48],eax
	push	_6266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_6268
	call	_brl_blitz_NullObjectError
_6268:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6270
	call	_brl_blitz_NullObjectError
_6270:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	push	dword [ebp-48]
	call	_bb_AddChild
	add	esp,8
	push	_6272
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6274
	call	_brl_blitz_NullObjectError
_6274:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_6276
	call	_brl_blitz_NullObjectError
_6276:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6236:
	push	_6280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6282
	call	_brl_blitz_NullObjectError
_6282:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6285
_6189:
	mov	eax,ebp
	push	eax
	push	_6289
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6286
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6288
	call	_brl_blitz_NullObjectError
_6288:
	push	_417
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6285:
	push	_6290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6292
	call	_brl_blitz_NullObjectError
_6292:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6293
	mov	eax,ebp
	push	eax
	push	_6295
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_409
_6293:
	mov	eax,ebp
	push	eax
	push	_6298
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6297
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_410
_410:
	push	_6300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6302
	call	_brl_blitz_NullObjectError
_6302:
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
	jmp	_897
_6178:
	mov	eax,ebp
	push	eax
	push	_6423
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_408
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-52],eax
	push	_6307
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	push	_6309
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_420:
_418:
	mov	eax,ebp
	push	eax
	push	_6419
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6312
	call	_brl_blitz_NullObjectError
_6312:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	dword [ebp-60],eax
	push	_6314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-60]
	call	_bb_IsValidVarName
	add	esp,4
	cmp	eax,0
	je	_6315
	mov	eax,ebp
	push	eax
	push	_6404
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6318
	call	_brl_blitz_NullObjectError
_6318:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6319
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6321
	call	_brl_blitz_NullObjectError
_6321:
	push	_91
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6324
	call	_brl_blitz_NullObjectError
_6324:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6326
	call	_brl_blitz_NullObjectError
_6326:
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
	jne	_6327
	mov	eax,ebp
	push	eax
	push	_6331
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6328
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6330
	call	_brl_blitz_NullObjectError
_6330:
	push	_412
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6327:
	push	_6332
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6334
	call	_brl_blitz_NullObjectError
_6334:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-64],eax
	push	_6336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6338
	call	_brl_blitz_NullObjectError
_6338:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6339
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_6341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_421
_423:
	mov	eax,ebp
	push	eax
	push	_6351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6344
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6346
	call	_brl_blitz_NullObjectError
_6346:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6349
	call	_brl_blitz_NullObjectError
_6349:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6350
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-68],1
	call	dword [_bbOnDebugLeaveScope]
_421:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6343
	call	_brl_blitz_NullObjectError
_6343:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_423
_422:
	push	_6352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-68]
	push	dword [ebp-64]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-72],eax
	push	_6354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6356
	call	_brl_blitz_NullObjectError
_6356:
	push	_104
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	je	_6357
	movzx	eax,byte [ebp-4]
_6357:
	cmp	eax,0
	je	_6359
	mov	eax,ebp
	push	eax
	push	_6400
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6362
	call	_brl_blitz_NullObjectError
_6362:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6363
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6365
	call	_brl_blitz_NullObjectError
_6365:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-76],eax
	push	_6367
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_416
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_6369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6371
	call	_brl_blitz_NullObjectError
_6371:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6373
	call	_brl_blitz_NullObjectError
_6373:
	push	dword [ebp-60]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+108]
	add	esp,8
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6375
	call	_brl_blitz_NullObjectError
_6375:
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
	push	_6376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6378
	call	_brl_blitz_NullObjectError
_6378:
	push	_4
	push	_bbNullObject
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-84],eax
	push	_6380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-72]
	cmp	edi,_bbNullObject
	jne	_6382
	call	_brl_blitz_NullObjectError
_6382:
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_6384
	call	_brl_blitz_NullObjectError
_6384:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_6386
	call	_brl_blitz_NullObjectError
_6386:
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
	push	_6387
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_181
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-88],eax
	push	_6389
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_6391
	call	_brl_blitz_NullObjectError
_6391:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6393
	call	_brl_blitz_NullObjectError
_6393:
	push	dword [esi+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_264
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-80]
	push	dword [ebp-88]
	call	_bb_AddChild
	add	esp,8
	push	_6395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6397
	call	_brl_blitz_NullObjectError
_6397:
	mov	ebx,dword [ebx+44]
	cmp	ebx,_bbNullObject
	jne	_6399
	call	_brl_blitz_NullObjectError
_6399:
	push	dword [ebp-88]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6359:
	push	_6401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6403
	call	_brl_blitz_NullObjectError
_6403:
	push	dword [ebp-60]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	mov	dword [ebp-56],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6405
_6315:
	mov	eax,ebp
	push	eax
	push	_6409
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6408
	call	_brl_blitz_NullObjectError
_6408:
	push	_417
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_6405:
	push	_6410
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6412
	call	_brl_blitz_NullObjectError
_6412:
	push	_86
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6413
	mov	eax,ebp
	push	eax
	push	_6415
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_418
_6413:
	mov	eax,ebp
	push	eax
	push	_6418
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6417
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_419
_419:
	push	_6420
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6422
	call	_brl_blitz_NullObjectError
_6422:
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
	jmp	_897
_6176:
	push	_6424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-92],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6427
	call	_brl_blitz_NullObjectError
_6427:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+112]
	add	esp,4
	mov	dword [ebp-128],eax
	mov	ebx,dword [ebp-128]
	cmp	ebx,_bbNullObject
	jne	_6430
	call	_brl_blitz_NullObjectError
_6430:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_424
_426:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6435
	call	_brl_blitz_NullObjectError
_6435:
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
	je	_424
	mov	eax,ebp
	push	eax
	push	_6631
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6438
	call	_brl_blitz_NullObjectError
_6438:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6440
	call	_brl_blitz_NullObjectError
_6440:
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
	jne	_6441
	mov	eax,ebp
	push	eax
	push	_6629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-96],_bbNullObject
	push	_6444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6446
	call	_brl_blitz_NullObjectError
_6446:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-100],_bbNullObject
	push	_6449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_427
_429:
	mov	eax,ebp
	push	eax
	push	_6461
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6458
	call	_brl_blitz_NullObjectError
_6458:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6460
	call	_brl_blitz_NullObjectError
_6460:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_427:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6451
	call	_brl_blitz_NullObjectError
_6451:
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
	je	_6452
	movzx	eax,byte [ebp-4]
_6452:
	cmp	eax,0
	je	_6454
	mov	eax,dword [ebp-100]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
_6454:
	cmp	eax,0
	jne	_429
_428:
	push	_6462
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-132],eax
	cmp	dword [ebp-132],_bbNullObject
	jne	_6464
	call	_brl_blitz_NullObjectError
_6464:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	edi,eax
	cmp	edi,_bbNullObject
	jne	_6466
	call	_brl_blitz_NullObjectError
_6466:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6468
	call	_brl_blitz_NullObjectError
_6468:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6470
	call	_brl_blitz_NullObjectError
_6470:
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
	push	_6472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6473
	mov	eax,ebp
	push	eax
	push	_6494
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6474
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6476
	call	_brl_blitz_NullObjectError
_6476:
	mov	esi,dword [ebp-104]
	cmp	esi,_bbNullObject
	jne	_6479
	call	_brl_blitz_NullObjectError
_6479:
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
	jnz	_6483
	push	eax
	call	_bbGCFree
	add	esp,4
_6483:
	mov	dword [ebx+12],esi
	push	_6484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6486
	call	_brl_blitz_NullObjectError
_6486:
	push	_bb_TIdentifierVariable
	push	dword [ebx+16]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-92],eax
	push	_6487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-92],_bbNullObject
	jne	_6488
	mov	eax,ebp
	push	eax
	push	_6490
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_897
_6488:
	push	_6491
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6493
	call	_brl_blitz_NullObjectError
_6493:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_6473:
	push	_6495
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-100]
	cmp	eax,_bbNullObject
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_6496
	mov	eax,dword [ebp-104]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_6496:
	cmp	eax,0
	je	_6500
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6499
	call	_brl_blitz_NullObjectError
_6499:
	mov	eax,dword [ebx+20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_6500:
	cmp	eax,0
	je	_6502
	mov	eax,ebp
	push	eax
	push	_6506
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6503
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6505
	call	_brl_blitz_NullObjectError
_6505:
	push	_brl_linkedlist_TList
	push	dword [ebx+20]
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-100],eax
	call	dword [_bbOnDebugLeaveScope]
_6502:
	push	_6507
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6509
	call	_brl_blitz_NullObjectError
_6509:
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
	je	_6510
	movzx	eax,byte [ebp-4]
_6510:
	cmp	eax,0
	je	_6512
	mov	eax,ebp
	push	eax
	push	_6572
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6513
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6515
	call	_brl_blitz_NullObjectError
_6515:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6516
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6518
	call	_brl_blitz_NullObjectError
_6518:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-112],eax
	push	_6520
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-96],_bbNullObject
	je	_6521
	mov	eax,ebp
	push	eax
	push	_6525
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6522
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6524
	call	_brl_blitz_NullObjectError
_6524:
	push	_4
	push	_bbNullObject
	push	_416
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6526
_6521:
	mov	eax,ebp
	push	eax
	push	_6528
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6527
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_416
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6526:
	push	_6529
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6530
	mov	eax,ebp
	push	eax
	push	_6536
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6531
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-96]
	cmp	esi,_bbNullObject
	jne	_6533
	call	_brl_blitz_NullObjectError
_6533:
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6535
	call	_brl_blitz_NullObjectError
_6535:
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
	jmp	_6537
_6530:
	mov	eax,ebp
	push	eax
	push	_6543
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6540
	call	_brl_blitz_NullObjectError
_6540:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6542
	call	_brl_blitz_NullObjectError
_6542:
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
_6537:
	push	_6544
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6546
	call	_brl_blitz_NullObjectError
_6546:
	push	_4
	push	_bbNullObject
	push	_184
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-116],eax
	push	_6548
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6550
	call	_brl_blitz_NullObjectError
_6550:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6552
	call	_brl_blitz_NullObjectError
_6552:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6554
	call	_brl_blitz_NullObjectError
_6554:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6556
	call	_brl_blitz_NullObjectError
_6556:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-120],eax
	push	_6558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6559
	mov	eax,ebp
	push	eax
	push	_6564
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-120]
	cmp	ebx,_bbNullObject
	jne	_6562
	call	_brl_blitz_NullObjectError
_6562:
	mov	dword [ebx+20],0
	call	dword [_bbOnDebugLeaveScope]
_6559:
	push	_6565
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-120]
	cmp	edi,_bbNullObject
	jne	_6567
	call	_brl_blitz_NullObjectError
_6567:
	mov	esi,dword [ebp-112]
	cmp	esi,_bbNullObject
	jne	_6569
	call	_brl_blitz_NullObjectError
_6569:
	mov	ebx,dword [ebp-112]
	cmp	ebx,_bbNullObject
	jne	_6571
	call	_brl_blitz_NullObjectError
_6571:
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
	jmp	_6574
_6512:
	mov	eax,ebp
	push	eax
	push	_6608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6575
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-104],_bbNullObject
	je	_6576
	mov	eax,ebp
	push	eax
	push	_6602
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6577
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6578
	mov	eax,ebp
	push	eax
	push	_6596
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6579
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6581
	call	_brl_blitz_NullObjectError
_6581:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-96],eax
	push	_6582
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-124],_bbNullObject
	mov	edi,dword [ebp-100]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6586
	call	_brl_blitz_NullObjectError
_6586:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_430
_432:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6591
	call	_brl_blitz_NullObjectError
_6591:
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
	je	_430
	mov	eax,ebp
	push	eax
	push	_6595
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6592
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-96]
	cmp	ebx,_bbNullObject
	jne	_6594
	call	_brl_blitz_NullObjectError
_6594:
	push	dword [ebp-124]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+164]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_430:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6589
	call	_brl_blitz_NullObjectError
_6589:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_432
_431:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6597
_6578:
	mov	eax,ebp
	push	eax
	push	_6601
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6598
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-104]
	cmp	ebx,_bbNullObject
	jne	_6600
	call	_brl_blitz_NullObjectError
_6600:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6597:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6603
_6576:
	mov	eax,ebp
	push	eax
	push	_6607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6604
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6606
	call	_brl_blitz_NullObjectError
_6606:
	push	dword [ebp-100]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-96],eax
	call	dword [_bbOnDebugLeaveScope]
_6603:
	call	dword [_bbOnDebugLeaveScope]
_6574:
	push	_6609
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_6611
	call	_brl_blitz_NullObjectError
_6611:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6613
	call	_brl_blitz_NullObjectError
_6613:
	mov	esi,dword [ebp-92]
	cmp	esi,_bbNullObject
	jne	_6615
	call	_brl_blitz_NullObjectError
_6615:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6617
	call	_brl_blitz_NullObjectError
_6617:
	push	dword [esi+20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	dword [ebp-108],eax
	push	_6619
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-100],_bbNullObject
	je	_6620
	mov	eax,ebp
	push	eax
	push	_6625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6621
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-108]
	cmp	ebx,_bbNullObject
	jne	_6623
	call	_brl_blitz_NullObjectError
_6623:
	mov	dword [ebx+20],0
	call	dword [_bbOnDebugLeaveScope]
_6620:
	push	_6626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6628
	call	_brl_blitz_NullObjectError
_6628:
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
	jmp	_897
_6441:
	call	dword [_bbOnDebugLeaveScope]
_424:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6433
	call	_brl_blitz_NullObjectError
_6433:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_426
_425:
	mov	ebx,_bbNullObject
	jmp	_897
_897:
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
	push	_6882
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6636
	call	_brl_blitz_NullObjectError
_6636:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6637
	mov	eax,ebp
	push	eax
	push	_6874
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_433
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_6640
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6642
	call	_brl_blitz_NullObjectError
_6642:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6644
	call	_brl_blitz_NullObjectError
_6644:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_285
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6645
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6647
	call	_brl_blitz_NullObjectError
_6647:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6648
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	push	_6650
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	eax,dword [__bb_TCompiler_Templates]
	mov	dword [ebp-80],eax
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_6654
	call	_brl_blitz_NullObjectError
_6654:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_434
_436:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6659
	call	_brl_blitz_NullObjectError
_6659:
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
	je	_434
	mov	eax,ebp
	push	eax
	push	_6671
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6660
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_6662
	call	_brl_blitz_NullObjectError
_6662:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6664
	call	_brl_blitz_NullObjectError
_6664:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6666
	call	_brl_blitz_NullObjectError
_6666:
	push	dword [esi+16]
	push	dword [ebx+20]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6667
	mov	eax,ebp
	push	eax
	push	_6670
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6668
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-52]
	mov	dword [ebp-24],eax
	push	_6669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_435
_6667:
	call	dword [_bbOnDebugLeaveScope]
_434:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6657
	call	_brl_blitz_NullObjectError
_6657:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_436
_435:
	push	_6672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-24],_bbNullObject
	jne	_6673
	mov	eax,ebp
	push	eax
	push	_6684
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6676
	call	_brl_blitz_NullObjectError
_6676:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6678
	call	_brl_blitz_NullObjectError
_6678:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_6680
	call	_brl_blitz_NullObjectError
_6680:
	push	dword [esi+16]
	push	_437
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_6681
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6683
	call	_brl_blitz_NullObjectError
_6683:
	push	_bbNullObject
	push	_bbNullObject
	push	dword [__bb_TDatatype_IntDatatype]
	push	_bbNullObject
	push	_438
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
	jmp	_902
_6673:
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
	mov	dword [ebp-28],eax
	push	_6689
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_6691
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	push	_6693
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_6695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	push	_6697
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6699
	call	_brl_blitz_NullObjectError
_6699:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-44],eax
	push	_6701
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6703
	call	_brl_blitz_NullObjectError
_6703:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	push	_6704
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-48],_bbNullObject
	push	_6706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6708
	call	_brl_blitz_NullObjectError
_6708:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_6710
	call	_brl_blitz_NullObjectError
_6710:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_6713
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6712
	call	_brl_blitz_NullObjectError
_6712:
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
_6713:
	cmp	eax,0
	je	_6715
	mov	eax,ebp
	push	eax
	push	_6719
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6718
	call	_brl_blitz_NullObjectError
_6718:
	push	_bbNullObject
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+100]
	add	esp,8
	mov	dword [ebp-48],eax
	call	dword [_bbOnDebugLeaveScope]
_6715:
	push	_6720
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6723
	call	_brl_blitz_NullObjectError
_6723:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6725
	call	_brl_blitz_NullObjectError
_6725:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,8
	mov	edi,eax
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6728
	call	_brl_blitz_NullObjectError
_6728:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_439
_441:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6733
	call	_brl_blitz_NullObjectError
_6733:
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
	je	_439
	mov	eax,ebp
	push	eax
	push	_6748
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_6736
	call	_brl_blitz_NullObjectError
_6736:
	push	dword [ebp-44]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6737
	mov	eax,ebp
	push	eax
	push	_6747
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6738
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],1
	push	_6739
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-56]
	mov	dword [ebp-32],eax
	push	_6740
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_6742
	call	_brl_blitz_NullObjectError
_6742:
	push	dword [ebp-48]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,8
	mov	dword [ebp-36],eax
	push	_6743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_6745
	call	_brl_blitz_NullObjectError
_6745:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-40],eax
	push	_6746
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_440
_6737:
	call	dword [_bbOnDebugLeaveScope]
_439:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6731
	call	_brl_blitz_NullObjectError
_6731:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_441
_440:
	push	_6749
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	mov	eax,eax
	cmp	eax,0
	jne	_6750
	mov	eax,ebp
	push	eax
	push	_6819
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6751
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6753
	call	_brl_blitz_NullObjectError
_6753:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+132]
	add	esp,4
	push	_6754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6757
	call	_brl_blitz_NullObjectError
_6757:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6759
	call	_brl_blitz_NullObjectError
_6759:
	push	dword [ebx+72]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	mov	dword [ebp-84],eax
	mov	ebx,dword [ebp-84]
	cmp	ebx,_bbNullObject
	jne	_6762
	call	_brl_blitz_NullObjectError
_6762:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_442
_444:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6767
	call	_brl_blitz_NullObjectError
_6767:
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
	je	_442
	mov	eax,ebp
	push	eax
	push	_6817
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6768
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_6770
	call	_brl_blitz_NullObjectError
_6770:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_6772
	call	_brl_blitz_NullObjectError
_6772:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,4
	push	_6773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6775
	call	_brl_blitz_NullObjectError
_6775:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	mov	dword [ebp-64],eax
	push	_6777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6779
	call	_brl_blitz_NullObjectError
_6779:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6782
	call	_brl_blitz_NullObjectError
_6782:
	push	_167
	push	dword [ebp-44]
	push	_166
	push	dword [esi+20]
	push	_165
	call	_bbStringConcat
	add	esp,8
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
	jnz	_6786
	push	eax
	call	_bbGCFree
	add	esp,4
_6786:
	mov	dword [ebx+48],esi
	push	_6787
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6789
	call	_brl_blitz_NullObjectError
_6789:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6791
	call	_brl_blitz_NullObjectError
_6791:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+84]
	add	esp,8
	mov	dword [ebp-68],eax
	push	_6793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-68],_bbNullObject
	je	_6794
	mov	eax,ebp
	push	eax
	push	_6808
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_6797
	call	_brl_blitz_NullObjectError
_6797:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-36],eax
	push	_6798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_6800
	call	_brl_blitz_NullObjectError
_6800:
	mov	eax,dword [ebx+8]
	mov	dword [ebp-40],eax
	push	_6801
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6803
	call	_brl_blitz_NullObjectError
_6803:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_6804
	mov	eax,ebp
	push	eax
	push	_6806
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6805
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_902
_6804:
	push	_6807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_443
_6794:
	push	_6809
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6811
	call	_brl_blitz_NullObjectError
_6811:
	mov	esi,ebx
	mov	eax,dword [ebp-64]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+48]
	dec	dword [eax+4]
	jnz	_6816
	push	eax
	call	_bbGCFree
	add	esp,4
_6816:
	mov	dword [esi+48],ebx
	call	dword [_bbOnDebugLeaveScope]
_442:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6765
	call	_brl_blitz_NullObjectError
_6765:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_444
_443:
	call	dword [_bbOnDebugLeaveScope]
_6750:
	push	_6820
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	movzx	eax,byte [ebp-4]
	cmp	eax,0
	jne	_6821
	mov	eax,ebp
	push	eax
	push	_6827
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6824
	call	_brl_blitz_NullObjectError
_6824:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6826
	call	_brl_blitz_NullObjectError
_6826:
	push	_118
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+136]
	add	esp,4
	push	eax
	push	_445
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
_6821:
	push	_6828
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6830
	call	_brl_blitz_NullObjectError
_6830:
	push	_84
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+136]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6831
	mov	eax,ebp
	push	eax
	push	_6863
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6834
	call	_brl_blitz_NullObjectError
_6834:
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_6836
	call	_brl_blitz_NullObjectError
_6836:
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
	push	_6838
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6840
	call	_brl_blitz_NullObjectError
_6840:
	cmp	dword [ebx+16],_bbNullObject
	jne	_6841
	mov	eax,ebp
	push	eax
	push	_6846
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6842
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6844
	call	_brl_blitz_NullObjectError
_6844:
	push	dword [ebp-20]
	push	dword [ebx+12]
	call	_bb_AddChild
	add	esp,8
	push	_6845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_902
_6841:
	mov	eax,ebp
	push	eax
	push	_6862
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6850
	call	_brl_blitz_NullObjectError
_6850:
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_6852
	call	_brl_blitz_NullObjectError
_6852:
	push	dword [ebx+12]
	push	_4
	push	_bbNullObject
	push	_287
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_6853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-72]
	cmp	esi,_bbNullObject
	jne	_6855
	call	_brl_blitz_NullObjectError
_6855:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_6860
	push	eax
	call	_bbGCFree
	add	esp,4
_6860:
	mov	dword [esi+12],ebx
	push	_6861
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_902
_6831:
	mov	eax,ebp
	push	eax
	push	_6873
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6867
	call	_brl_blitz_NullObjectError
_6867:
	push	_4
	push	_bbNullObject
	push	_287
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-76],eax
	push	_6869
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-36]
	push	dword [ebp-76]
	call	_bb_AddChild
	add	esp,8
	push	_6870
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TRecursive
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6872
	call	_brl_blitz_NullObjectError
_6872:
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
	jmp	_902
_6637:
	mov	eax,ebp
	push	eax
	push	_6881
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6880
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_902
_902:
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
	push	_6936
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6885
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_linkedlist_CreateList
	mov	dword [ebp-12],eax
	push	_6887
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	push	_6889
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_448:
	mov	eax,ebp
	push	eax
	push	_6920
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6890
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6892
	call	_brl_blitz_NullObjectError
_6892:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6893
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6895
	call	_brl_blitz_NullObjectError
_6895:
	push	0
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-20],eax
	push	_6897
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6899
	call	_brl_blitz_NullObjectError
_6899:
	mov	dword [ebp-24],ebx
	mov	edi,dword [__bb_TDatatype_IntDatatype]
	cmp	edi,_bbNullObject
	jne	_6902
	call	_brl_blitz_NullObjectError
_6902:
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_6904
	call	_brl_blitz_NullObjectError
_6904:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6906
	call	_brl_blitz_NullObjectError
_6906:
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
	jnz	_6910
	push	eax
	call	_bbGCFree
	add	esp,4
_6910:
	mov	eax,dword [ebp-24]
	mov	dword [eax+12],ebx
	push	_6911
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_6913
	call	_brl_blitz_NullObjectError
_6913:
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6915
	call	_brl_blitz_NullObjectError
_6915:
	push	dword [ebx+12]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	push	_6916
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6918
	call	_brl_blitz_NullObjectError
_6918:
	push	_90
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,8
	push	_6919
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-16],1
	call	dword [_bbOnDebugLeaveScope]
_446:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6922
	call	_brl_blitz_NullObjectError
_6922:
	push	_89
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	cmp	eax,0
	jne	_448
_447:
	push	_6923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_6926
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_6925
	call	_brl_blitz_NullObjectError
_6925:
	mov	eax,dword [ebp-16]
	cmp	eax,dword [ebx+20]
	setne	al
	movzx	eax,al
_6926:
	cmp	eax,0
	je	_6928
	mov	eax,ebp
	push	eax
	push	_6934
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6929
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6931
	call	_brl_blitz_NullObjectError
_6931:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_6933
	call	_brl_blitz_NullObjectError
_6933:
	push	_118
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_450
	push	dword [ebp-16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_449
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_6928:
	push	_6935
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_906
_906:
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
	push	_6998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6937
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6940
	call	_brl_blitz_NullObjectError
_6940:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6943
	call	_brl_blitz_NullObjectError
_6943:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_6945
	call	_brl_blitz_ArrayBoundsError
_6945:
	mov	edi,dword [esi+ebx*4+24]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_6948
	call	_brl_blitz_NullObjectError
_6948:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_451
_453:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6953
	call	_brl_blitz_NullObjectError
_6953:
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
	je	_451
	mov	eax,ebp
	push	eax
	push	_6965
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6954
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_6956
	call	_brl_blitz_NullObjectError
_6956:
	push	dword [ebx+12]
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_6957
	mov	eax,ebp
	push	eax
	push	_6964
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6958
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6960
	call	_brl_blitz_NullObjectError
_6960:
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_6962
	call	_brl_blitz_NullObjectError
_6962:
	push	dword [esi+12]
	push	_454
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	push	_6963
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_911
_6957:
	call	dword [_bbOnDebugLeaveScope]
_451:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_6951
	call	_brl_blitz_NullObjectError
_6951:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_453
_452:
	push	_6966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TIdentifierVariable
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_6968
	call	_brl_blitz_NullObjectError
_6968:
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	mov	dword [ebp-16],eax
	push	_6970
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6972
	call	_brl_blitz_NullObjectError
_6972:
	mov	esi,dword [ebx+20]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_6975
	call	_brl_blitz_NullObjectError
_6975:
	mov	eax,dword [ebx+20]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_6977
	call	_brl_blitz_ArrayBoundsError
_6977:
	mov	ebx,dword [esi+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_6979
	call	_brl_blitz_NullObjectError
_6979:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_6980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	push	_6982
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6984
	call	_brl_blitz_NullObjectError
_6984:
	cmp	dword [ebx+20],0
	jne	_6985
	mov	eax,ebp
	push	eax
	push	_6987
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_241
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_6988
_6985:
	mov	eax,ebp
	push	eax
	push	_6990
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6989
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_240
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_6988:
	push	_6991
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_6993
	call	_brl_blitz_NullObjectError
_6993:
	push	dword [ebp-8]
	push	_26
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_6994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_6996
	call	_brl_blitz_NullObjectError
_6996:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+64]
	add	esp,8
	push	_6997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	jmp	_911
_911:
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
	push	_7044
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_6999
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7002
	call	_brl_blitz_NullObjectError
_7002:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-28]
	add	eax,24
	mov	dword [ebp-24],eax
	mov	edx,dword [ebp-24]
	mov	eax,dword [ebp-28]
	add	edx,dword [eax+16]
	mov	dword [ebp-32],edx
	jmp	_455
_457:
	mov	eax,dword [ebp-24]
	mov	eax,dword [eax]
	mov	dword [ebp-12],eax
	add	dword [ebp-24],4
	cmp	dword [ebp-12],_bbNullObject
	je	_455
	mov	eax,ebp
	push	eax
	push	_7024
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7007
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7011
	call	_brl_blitz_NullObjectError
_7011:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_458
_460:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7016
	call	_brl_blitz_NullObjectError
_7016:
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
	je	_458
	mov	eax,ebp
	push	eax
	push	_7023
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7019
	call	_brl_blitz_NullObjectError
_7019:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7020
	mov	eax,ebp
	push	eax
	push	_7022
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7021
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_915
_7020:
	call	dword [_bbOnDebugLeaveScope]
_458:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7014
	call	_brl_blitz_NullObjectError
_7014:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_460
_459:
	call	dword [_bbOnDebugLeaveScope]
_455:
	mov	eax,dword [ebp-32]
	cmp	dword [ebp-24],eax
	jne	_457
_456:
	push	_7025
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7028
	call	_brl_blitz_NullObjectError
_7028:
	mov	edi,dword [ebx+12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7031
	call	_brl_blitz_NullObjectError
_7031:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_461
_463:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7036
	call	_brl_blitz_NullObjectError
_7036:
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
	je	_461
	mov	eax,ebp
	push	eax
	push	_7043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_7039
	call	_brl_blitz_NullObjectError
_7039:
	push	dword [ebp-8]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7040
	mov	eax,ebp
	push	eax
	push	_7042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_915
_7040:
	call	dword [_bbOnDebugLeaveScope]
_461:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7034
	call	_brl_blitz_NullObjectError
_7034:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_463
_462:
	mov	ebx,_bbNullObject
	jmp	_915
_915:
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
	push	_7077
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7047
	call	_brl_blitz_NullObjectError
_7047:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_7049
	call	_brl_blitz_NullObjectError
_7049:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+124]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_7051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7054
	call	_brl_blitz_NullObjectError
_7054:
	mov	eax,dword [ebx+20]
	mov	dword [ebp-24],eax
	mov	eax,dword [ebp-24]
	add	eax,24
	mov	dword [ebp-20],eax
	mov	edx,dword [ebp-20]
	mov	eax,dword [ebp-24]
	add	edx,dword [eax+16]
	mov	dword [ebp-28],edx
	jmp	_464
_466:
	mov	eax,dword [ebp-20]
	mov	eax,dword [eax]
	mov	dword [ebp-12],eax
	add	dword [ebp-20],4
	cmp	dword [ebp-12],_bbNullObject
	je	_464
	mov	eax,ebp
	push	eax
	push	_7074
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7063
	call	_brl_blitz_NullObjectError
_7063:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_467
_469:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7068
	call	_brl_blitz_NullObjectError
_7068:
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
	je	_467
	mov	eax,ebp
	push	eax
	push	_7072
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7069
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7071
	call	_brl_blitz_NullObjectError
_7071:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_467:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7066
	call	_brl_blitz_NullObjectError
_7066:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_469
_468:
	call	dword [_bbOnDebugLeaveScope]
_464:
	mov	eax,dword [ebp-28]
	cmp	dword [ebp-20],eax
	jne	_466
_465:
	push	_7076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_918
_918:
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
	push	_7081
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7078
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7080
	call	_brl_blitz_NullObjectError
_7080:
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
	jmp	_922
_922:
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
	push	_7116
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7082
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
	jne	_7083
	push	_126
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7083:
	cmp	eax,0
	jne	_7085
	push	_125
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7085:
	cmp	eax,0
	jne	_7087
	push	_129
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7087:
	cmp	eax,0
	jne	_7089
	push	_183
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7089:
	cmp	eax,0
	jne	_7091
	push	_182
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7091:
	cmp	eax,0
	jne	_7093
	push	_186
	push	dword [ebp-8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7093:
	cmp	eax,0
	je	_7095
	mov	eax,ebp
	push	eax
	push	_7097
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7096
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_926
_7095:
	push	_7098
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	edi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7102
	call	_brl_blitz_NullObjectError
_7102:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_470
_472:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7107
	call	_brl_blitz_NullObjectError
_7107:
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
	je	_470
	mov	eax,ebp
	push	eax
	push	_7114
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7108
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7110
	call	_brl_blitz_NullObjectError
_7110:
	push	dword [ebp-8]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7111
	mov	eax,ebp
	push	eax
	push	_7113
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7112
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_926
_7111:
	call	dword [_bbOnDebugLeaveScope]
_470:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7105
	call	_brl_blitz_NullObjectError
_7105:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_472
_471:
	push	_7115
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-12],0
	jmp	_926
_926:
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
	push	_7131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7118
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7120
	call	_brl_blitz_NullObjectError
_7120:
	push	dword [ebp-8]
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7121
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
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_930
_7121:
	push	ebp
	push	_7130
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7129
	call	_brl_blitz_NullObjectError
_7129:
	push	_474
	push	_83
	push	dword [ebp-8]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_473
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_7126:
	mov	ebx,_bbEmptyString
	jmp	_930
_930:
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
	push	_7189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7135
	call	_brl_blitz_NullObjectError
_7135:
	cmp	dword [ebx+52],_bbNullObject
	je	_7136
	push	ebp
	push	_7149
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7137
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7139
	call	_brl_blitz_NullObjectError
_7139:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7142
	call	_brl_blitz_NullObjectError
_7142:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7144
	call	_brl_blitz_NullObjectError
_7144:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_7148
	push	eax
	call	_bbGCFree
	add	esp,4
_7148:
	mov	dword [ebx+52],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7150
_7136:
	push	ebp
	push	_7152
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_7150:
	push	_7153
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7155
	call	_brl_blitz_NullObjectError
_7155:
	cmp	dword [ebx+52],_bbNullObject
	jne	_7156
	push	ebp
	push	_7160
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
	push	_475
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7161
_7156:
	push	ebp
	push	_7185
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7162
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7164
	call	_brl_blitz_NullObjectError
_7164:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7167
	call	_brl_blitz_NullObjectError
_7167:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7169
	call	_brl_blitz_NullObjectError
_7169:
	push	_bbStringClass
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_7171
	mov	eax,_bbEmptyString
_7171:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_7175
	push	eax
	call	_bbGCFree
	add	esp,4
_7175:
	mov	dword [ebx+48],esi
	push	_7176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7178
	call	_brl_blitz_NullObjectError
_7178:
	push	_83
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7179
	push	ebp
	push	_7184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7182
	call	_brl_blitz_NullObjectError
_7182:
	add	dword [ebx+56],1
	call	dword [_bbOnDebugLeaveScope]
_7179:
	call	dword [_bbOnDebugLeaveScope]
_7161:
	push	_7186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7188
	call	_brl_blitz_NullObjectError
_7188:
	mov	ebx,dword [ebx+48]
	jmp	_933
_933:
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
	push	_7246
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7192
	call	_brl_blitz_NullObjectError
_7192:
	cmp	dword [ebx+52],_bbNullObject
	je	_7193
	push	ebp
	push	_7206
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7196
	call	_brl_blitz_NullObjectError
_7196:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7199
	call	_brl_blitz_NullObjectError
_7199:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7201
	call	_brl_blitz_NullObjectError
_7201:
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,4
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+52]
	dec	dword [eax+4]
	jnz	_7205
	push	eax
	call	_bbGCFree
	add	esp,4
_7205:
	mov	dword [ebx+52],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7207
_7193:
	push	ebp
	push	_7209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
_7207:
	push	_7210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7212
	call	_brl_blitz_NullObjectError
_7212:
	cmp	dword [ebx+52],_bbNullObject
	jne	_7213
	push	ebp
	push	_7217
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
	push	_476
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7218
_7213:
	push	ebp
	push	_7242
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7221
	call	_brl_blitz_NullObjectError
_7221:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7224
	call	_brl_blitz_NullObjectError
_7224:
	mov	esi,dword [esi+52]
	cmp	esi,_bbNullObject
	jne	_7226
	call	_brl_blitz_NullObjectError
_7226:
	push	_bbStringClass
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+48]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_7228
	mov	eax,_bbEmptyString
_7228:
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+48]
	dec	dword [eax+4]
	jnz	_7232
	push	eax
	call	_bbGCFree
	add	esp,4
_7232:
	mov	dword [ebx+48],esi
	push	_7233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7235
	call	_brl_blitz_NullObjectError
_7235:
	push	_83
	push	dword [ebx+48]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7236
	push	ebp
	push	_7241
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7239
	call	_brl_blitz_NullObjectError
_7239:
	sub	dword [ebx+56],1
	call	dword [_bbOnDebugLeaveScope]
_7236:
	call	dword [_bbOnDebugLeaveScope]
_7218:
	push	_7243
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7245
	call	_brl_blitz_NullObjectError
_7245:
	mov	ebx,dword [ebx+48]
	jmp	_936
_936:
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
	push	_7250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7249
	call	_brl_blitz_NullObjectError
_7249:
	mov	ebx,dword [ebx+48]
	jmp	_939
_939:
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
	push	_7282
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7251
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7253
	call	_brl_blitz_NullObjectError
_7253:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7255
	call	_brl_blitz_NullObjectError
_7255:
	push	_480
	push	_474
	push	_83
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_479
	push	dword [ebx+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_478
	push	dword [ebp-8]
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
	mov	dword [ebp-12],eax
	push	_7257
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7259
	call	_brl_blitz_NullObjectError
_7259:
	mov	esi,dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7262
	call	_brl_blitz_NullObjectError
_7262:
	mov	ebx,dword [ebx+56]
	add	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_7264
	call	_brl_blitz_ArrayBoundsError
_7264:
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
	push	_481
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
	push	_7265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_482
	push	dword [ebp-12]
	call	_brl_stream_SaveString
	add	esp,8
	push	_7266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_bbWriteStdout
	add	esp,4
	push	_7267
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7269
	call	_brl_blitz_NullObjectError
_7269:
	mov	byte [ebx+68],1
	push	_7271
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	jmp	_483
_485:
	push	ebp
	push	_7281
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7278
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7280
	call	_brl_blitz_NullObjectError
_7280:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+128]
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_483:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7273
	call	_brl_blitz_NullObjectError
_7273:
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
	je	_7276
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7275
	call	_brl_blitz_NullObjectError
_7275:
	mov	eax,dword [ebx+52]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_7276:
	cmp	eax,0
	jne	_485
_484:
	mov	ebx,0
	jmp	_943
_943:
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
	push	_7301
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7286
	call	_brl_blitz_NullObjectError
_7286:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7288
	call	_brl_blitz_NullObjectError
_7288:
	push	_480
	push	_474
	push	_83
	push	dword [esi+48]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_479
	push	dword [ebx+56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_478
	push	dword [ebp-8]
	push	_486
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
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
	push	_7290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7292
	call	_brl_blitz_NullObjectError
_7292:
	mov	esi,dword [ebx+32]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7295
	call	_brl_blitz_NullObjectError
_7295:
	mov	ebx,dword [ebx+56]
	add	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_7297
	call	_brl_blitz_ArrayBoundsError
_7297:
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
	push	_481
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
	push	_7298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_482
	push	dword [ebp-12]
	call	_brl_stream_SaveString
	add	esp,8
	push	_7299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_bbWriteStdout
	add	esp,4
	push	_7300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_947
_947:
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
	push	_7307
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
	push	_7306
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_950
_950:
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
_953:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_7310
	push	eax
	call	_bbGCFree
	add	esp,4
_7310:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_7312
	push	eax
	call	_bbGCFree
	add	esp,4
_7312:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_7314
	push	eax
	call	_bbGCFree
	add	esp,4
_7314:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_7316
	push	eax
	call	_bbGCFree
	add	esp,4
_7316:
	mov	eax,0
	jmp	_7308
_7308:
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
	push	_7350
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7317
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7319
	call	_brl_blitz_NullObjectError
_7319:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_7324
	push	eax
	call	_bbGCFree
	add	esp,4
_7324:
	mov	dword [esi+8],ebx
	push	_7325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7327
	call	_brl_blitz_NullObjectError
_7327:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7332
	push	eax
	call	_bbGCFree
	add	esp,4
_7332:
	mov	dword [esi+16],ebx
	push	_7333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7335
	call	_brl_blitz_NullObjectError
_7335:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_7340
	push	eax
	call	_bbGCFree
	add	esp,4
_7340:
	mov	dword [esi+12],ebx
	push	_7341
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7343
	call	_brl_blitz_NullObjectError
_7343:
	mov	ebx,dword [ebp-20]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_7348
	push	eax
	call	_bbGCFree
	add	esp,4
_7348:
	mov	dword [esi+20],ebx
	push	_7349
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_960
_960:
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
	push	_7354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7353
	call	_brl_blitz_NullObjectError
_7353:
	mov	ebx,dword [ebx+8]
	jmp	_963
_963:
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
	push	_7358
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7357
	call	_brl_blitz_NullObjectError
_7357:
	mov	ebx,dword [ebx+12]
	jmp	_966
_966:
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
	push	_7362
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
	push	_7361
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_969
_969:
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
_972:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_7365
	push	eax
	call	_bbGCFree
	add	esp,4
_7365:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_7367
	push	eax
	call	_bbGCFree
	add	esp,4
_7367:
	mov	eax,0
	jmp	_7363
_7363:
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
	push	_7741
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7368
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_IntDatatype]
	dec	dword [eax+4]
	jnz	_7372
	push	eax
	call	_bbGCFree
	add	esp,4
_7372:
	mov	dword [__bb_TDatatype_IntDatatype],ebx
	push	_7373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_IntDatatype]
	cmp	esi,_bbNullObject
	jne	_7375
	call	_brl_blitz_NullObjectError
_7375:
	mov	ebx,_127
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7380
	push	eax
	call	_bbGCFree
	add	esp,4
_7380:
	mov	dword [esi+16],ebx
	push	_7381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7383
	call	_brl_blitz_NullObjectError
_7383:
	mov	dword [ebx+12],3
	push	_7385
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_FloatDatatype]
	dec	dword [eax+4]
	jnz	_7389
	push	eax
	call	_bbGCFree
	add	esp,4
_7389:
	mov	dword [__bb_TDatatype_FloatDatatype],ebx
	push	_7390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_FloatDatatype]
	cmp	esi,_bbNullObject
	jne	_7392
	call	_brl_blitz_NullObjectError
_7392:
	mov	ebx,_125
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7397
	push	eax
	call	_bbGCFree
	add	esp,4
_7397:
	mov	dword [esi+16],ebx
	push	_7398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7400
	call	_brl_blitz_NullObjectError
_7400:
	mov	dword [ebx+12],4
	push	_7402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_StringDatatype]
	dec	dword [eax+4]
	jnz	_7406
	push	eax
	call	_bbGCFree
	add	esp,4
_7406:
	mov	dword [__bb_TDatatype_StringDatatype],ebx
	push	_7407
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_StringDatatype]
	cmp	esi,_bbNullObject
	jne	_7409
	call	_brl_blitz_NullObjectError
_7409:
	mov	ebx,_126
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7414
	push	eax
	call	_bbGCFree
	add	esp,4
_7414:
	mov	dword [esi+16],ebx
	push	_7415
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7417
	call	_brl_blitz_NullObjectError
_7417:
	mov	dword [ebx+12],7
	push	_7419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ByteDatatype]
	dec	dword [eax+4]
	jnz	_7423
	push	eax
	call	_bbGCFree
	add	esp,4
_7423:
	mov	dword [__bb_TDatatype_ByteDatatype],ebx
	push	_7424
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_ByteDatatype]
	cmp	esi,_bbNullObject
	jne	_7426
	call	_brl_blitz_NullObjectError
_7426:
	mov	ebx,_129
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7431
	push	eax
	call	_bbGCFree
	add	esp,4
_7431:
	mov	dword [esi+16],ebx
	push	_7432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7434
	call	_brl_blitz_NullObjectError
_7434:
	mov	dword [ebx+12],1
	push	_7436
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_LongDatatype]
	dec	dword [eax+4]
	jnz	_7440
	push	eax
	call	_bbGCFree
	add	esp,4
_7440:
	mov	dword [__bb_TDatatype_LongDatatype],ebx
	push	_7441
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_LongDatatype]
	cmp	esi,_bbNullObject
	jne	_7443
	call	_brl_blitz_NullObjectError
_7443:
	mov	ebx,_183
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7448
	push	eax
	call	_bbGCFree
	add	esp,4
_7448:
	mov	dword [esi+16],ebx
	push	_7449
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7451
	call	_brl_blitz_NullObjectError
_7451:
	mov	dword [ebx+12],5
	push	_7453
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_DoubleDatatype]
	dec	dword [eax+4]
	jnz	_7457
	push	eax
	call	_bbGCFree
	add	esp,4
_7457:
	mov	dword [__bb_TDatatype_DoubleDatatype],ebx
	push	_7458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_DoubleDatatype]
	cmp	esi,_bbNullObject
	jne	_7460
	call	_brl_blitz_NullObjectError
_7460:
	mov	ebx,_186
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7465
	push	eax
	call	_bbGCFree
	add	esp,4
_7465:
	mov	dword [esi+16],ebx
	push	_7466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7468
	call	_brl_blitz_NullObjectError
_7468:
	mov	dword [ebx+12],6
	push	_7470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_ShortDatatype]
	dec	dword [eax+4]
	jnz	_7474
	push	eax
	call	_bbGCFree
	add	esp,4
_7474:
	mov	dword [__bb_TDatatype_ShortDatatype],ebx
	push	_7475
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_ShortDatatype]
	cmp	esi,_bbNullObject
	jne	_7477
	call	_brl_blitz_NullObjectError
_7477:
	mov	ebx,_182
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7482
	push	eax
	call	_bbGCFree
	add	esp,4
_7482:
	mov	dword [esi+16],ebx
	push	_7483
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7485
	call	_brl_blitz_NullObjectError
_7485:
	mov	dword [ebx+12],2
	push	_7487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_VoidDatatype]
	dec	dword [eax+4]
	jnz	_7491
	push	eax
	call	_bbGCFree
	add	esp,4
_7491:
	mov	dword [__bb_TDatatype_VoidDatatype],ebx
	push	_7492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	cmp	esi,_bbNullObject
	jne	_7494
	call	_brl_blitz_NullObjectError
_7494:
	mov	ebx,_487
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7499
	push	eax
	call	_bbGCFree
	add	esp,4
_7499:
	mov	dword [esi+16],ebx
	push	_7500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_VoidDatatype]
	cmp	ebx,_bbNullObject
	jne	_7502
	call	_brl_blitz_NullObjectError
_7502:
	mov	dword [ebx+12],-1
	push	_7504
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TDatatype_NullDatatype]
	dec	dword [eax+4]
	jnz	_7508
	push	eax
	call	_bbGCFree
	add	esp,4
_7508:
	mov	dword [__bb_TDatatype_NullDatatype],ebx
	push	_7509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TDatatype_NullDatatype]
	cmp	esi,_bbNullObject
	jne	_7511
	call	_brl_blitz_NullObjectError
_7511:
	mov	ebx,_188
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7516
	push	eax
	call	_bbGCFree
	add	esp,4
_7516:
	mov	dword [esi+16],ebx
	push	_7517
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_7519
	call	_brl_blitz_NullObjectError
_7519:
	mov	dword [ebx+12],10
	push	_7521
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7523
	call	_brl_blitz_NullObjectError
_7523:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7525
	call	_brl_blitz_NullObjectError
_7525:
	push	dword [__bb_TDatatype_FloatDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
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
	push	dword [__bb_TDatatype_NullDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7556
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7558
	call	_brl_blitz_NullObjectError
_7558:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7560
	call	_brl_blitz_NullObjectError
_7560:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7586
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7588
	call	_brl_blitz_NullObjectError
_7588:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7590
	call	_brl_blitz_NullObjectError
_7590:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_FloatDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7616
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7618
	call	_brl_blitz_NullObjectError
_7618:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7620
	call	_brl_blitz_NullObjectError
_7620:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_FloatDatatype]
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7646
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7648
	call	_brl_blitz_NullObjectError
_7648:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7650
	call	_brl_blitz_NullObjectError
_7650:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_FloatDatatype]
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7676
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7678
	call	_brl_blitz_NullObjectError
_7678:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7680
	call	_brl_blitz_NullObjectError
_7680:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_FloatDatatype]
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_ShortDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7706
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7708
	call	_brl_blitz_NullObjectError
_7708:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7710
	call	_brl_blitz_NullObjectError
_7710:
	push	dword [__bb_TDatatype_IntDatatype]
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
	push	dword [__bb_TDatatype_FloatDatatype]
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
	push	dword [__bb_TDatatype_StringDatatype]
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
	push	dword [__bb_TDatatype_ByteDatatype]
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
	push	dword [__bb_TDatatype_LongDatatype]
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
	push	dword [__bb_TDatatype_DoubleDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_7736
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_NullDatatype]
	cmp	ebx,_bbNullObject
	jne	_7738
	call	_brl_blitz_NullObjectError
_7738:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_7740
	call	_brl_blitz_NullObjectError
_7740:
	push	dword [__bb_TDatatype_IntDatatype]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_974
_974:
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
	push	_7830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	_bbStringToLower
	add	esp,4
	mov	dword [ebp-4],eax
	push	_7743
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	esi,dword [__bb_TDatatype_IntDatatype]
	cmp	esi,_bbNullObject
	jne	_7748
	call	_brl_blitz_NullObjectError
_7748:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7746
	mov	esi,dword [__bb_TDatatype_FloatDatatype]
	cmp	esi,_bbNullObject
	jne	_7751
	call	_brl_blitz_NullObjectError
_7751:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7749
	mov	esi,dword [__bb_TDatatype_StringDatatype]
	cmp	esi,_bbNullObject
	jne	_7754
	call	_brl_blitz_NullObjectError
_7754:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7752
	mov	esi,dword [__bb_TDatatype_VoidDatatype]
	cmp	esi,_bbNullObject
	jne	_7757
	call	_brl_blitz_NullObjectError
_7757:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7755
	mov	esi,dword [__bb_TDatatype_ByteDatatype]
	cmp	esi,_bbNullObject
	jne	_7760
	call	_brl_blitz_NullObjectError
_7760:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7758
	mov	esi,dword [__bb_TDatatype_LongDatatype]
	cmp	esi,_bbNullObject
	jne	_7763
	call	_brl_blitz_NullObjectError
_7763:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7761
	mov	esi,dword [__bb_TDatatype_ShortDatatype]
	cmp	esi,_bbNullObject
	jne	_7766
	call	_brl_blitz_NullObjectError
_7766:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7764
	mov	esi,dword [__bb_TDatatype_DoubleDatatype]
	cmp	esi,_bbNullObject
	jne	_7769
	call	_brl_blitz_NullObjectError
_7769:
	push	dword [esi+16]
	call	_bbStringToLower
	add	esp,4
	push	eax
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_7767
	mov	eax,ebp
	push	eax
	push	_7797
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7770
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [__bb_TDatatype_UserDefinedDatatypes]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7774
	call	_brl_blitz_NullObjectError
_7774:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_488
_490:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7779
	call	_brl_blitz_NullObjectError
_7779:
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
	je	_488
	mov	eax,ebp
	push	eax
	push	_7788
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7780
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7782
	call	_brl_blitz_NullObjectError
_7782:
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
	jne	_7783
	mov	eax,ebp
	push	eax
	push	_7787
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7784
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7786
	call	_brl_blitz_NullObjectError
_7786:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7783:
	call	dword [_bbOnDebugLeaveScope]
_488:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_7777
	call	_brl_blitz_NullObjectError
_7777:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_490
_489:
	push	_7789
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_TCompiler_Current],_bbNullObject
	jne	_7790
	mov	eax,ebp
	push	eax
	push	_7792
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7791
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_491
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_7790:
	push	_7793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TCompiler_Current]
	cmp	ebx,_bbNullObject
	jne	_7795
	call	_brl_blitz_NullObjectError
_7795:
	push	_118
	push	dword [ebp-4]
	push	_492
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
	push	_7796
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	call	dword [_bbOnDebugLeaveScope]
	jmp	_7745
_7746:
	mov	eax,ebp
	push	eax
	push	_7801
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7798
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_IntDatatype]
	cmp	ebx,_bbNullObject
	jne	_7800
	call	_brl_blitz_NullObjectError
_7800:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7749:
	mov	eax,ebp
	push	eax
	push	_7805
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7802
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_FloatDatatype]
	cmp	ebx,_bbNullObject
	jne	_7804
	call	_brl_blitz_NullObjectError
_7804:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7752:
	mov	eax,ebp
	push	eax
	push	_7809
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7806
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_StringDatatype]
	cmp	ebx,_bbNullObject
	jne	_7808
	call	_brl_blitz_NullObjectError
_7808:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7755:
	mov	eax,ebp
	push	eax
	push	_7813
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7810
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_VoidDatatype]
	cmp	ebx,_bbNullObject
	jne	_7812
	call	_brl_blitz_NullObjectError
_7812:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7758:
	mov	eax,ebp
	push	eax
	push	_7817
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7814
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ByteDatatype]
	cmp	ebx,_bbNullObject
	jne	_7816
	call	_brl_blitz_NullObjectError
_7816:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7761:
	mov	eax,ebp
	push	eax
	push	_7821
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7818
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_LongDatatype]
	cmp	ebx,_bbNullObject
	jne	_7820
	call	_brl_blitz_NullObjectError
_7820:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7764:
	mov	eax,ebp
	push	eax
	push	_7825
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7822
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_ShortDatatype]
	cmp	ebx,_bbNullObject
	jne	_7824
	call	_brl_blitz_NullObjectError
_7824:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7767:
	mov	eax,ebp
	push	eax
	push	_7829
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7826
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TDatatype_DoubleDatatype]
	cmp	ebx,_bbNullObject
	jne	_7828
	call	_brl_blitz_NullObjectError
_7828:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_978
_7745:
	mov	ebx,_bbNullObject
	jmp	_978
_978:
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
	push	_7854
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7831
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7833
	call	_brl_blitz_NullObjectError
_7833:
	push	_136
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	dword [ebp-8],eax
	push	_7835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7837
	call	_brl_blitz_NullObjectError
_7837:
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	call	_bbStringToInt
	add	esp,4
	mov	dword [ebp-12],eax
	push	_7839
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-8]
	call	dword [_bb_TDatatype+52]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_7841
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7843
	call	_brl_blitz_NullObjectError
_7843:
	mov	eax,dword [ebp-12]
	mov	dword [ebx+20],eax
	push	_7845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_7847
	call	_brl_blitz_NullObjectError
_7847:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7852
	push	eax
	call	_bbGCFree
	add	esp,4
_7852:
	mov	dword [esi+16],ebx
	push	_7853
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	jmp	_981
_981:
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
	push	_7895
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7856
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TDatatype
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-12],eax
	push	_7858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7860
	call	_brl_blitz_NullObjectError
_7860:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7863
	call	_brl_blitz_NullObjectError
_7863:
	mov	ebx,dword [ebx+16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_7867
	push	eax
	call	_bbGCFree
	add	esp,4
_7867:
	mov	dword [esi+16],ebx
	push	_7868
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7870
	call	_brl_blitz_NullObjectError
_7870:
	mov	eax,dword [ebp-8]
	mov	dword [ebx+20],eax
	push	_7872
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7874
	call	_brl_blitz_NullObjectError
_7874:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7877
	call	_brl_blitz_NullObjectError
_7877:
	mov	eax,dword [esi+12]
	mov	dword [ebx+12],eax
	push	_7878
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7880
	call	_brl_blitz_NullObjectError
_7880:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7883
	call	_brl_blitz_NullObjectError
_7883:
	mov	ebx,dword [ebx+24]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_7887
	push	eax
	call	_bbGCFree
	add	esp,4
_7887:
	mov	dword [esi+24],ebx
	push	_7888
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_7890
	call	_brl_blitz_NullObjectError
_7890:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7893
	call	_brl_blitz_NullObjectError
_7893:
	movzx	eax,byte [esi+8]
	mov	eax,eax
	mov	byte [ebx+8],al
	push	_7894
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	jmp	_985
_985:
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
	push	_7906
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7896
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_7898
	call	_brl_blitz_NullObjectError
_7898:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7900
	call	_brl_blitz_NullObjectError
_7900:
	push	dword [ebx+16]
	push	_136
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7901
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7903
	call	_brl_blitz_NullObjectError
_7903:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7905
	call	_brl_blitz_NullObjectError
_7905:
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
	jmp	_989
_989:
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
	push	_8030
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7907
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7909
	call	_brl_blitz_NullObjectError
_7909:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_7912
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7911
	call	_brl_blitz_NullObjectError
_7911:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_7912:
	cmp	eax,0
	je	_7914
	mov	eax,ebp
	push	eax
	push	_7925
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7915
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7917
	call	_brl_blitz_NullObjectError
_7917:
	movzx	eax,byte [ebx+8]
	cmp	eax,0
	jne	_7920
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7919
	call	_brl_blitz_NullObjectError
_7919:
	movzx	eax,byte [ebx+8]
_7920:
	cmp	eax,0
	je	_7922
	mov	eax,ebp
	push	eax
	push	_7924
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7923
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_993
_7922:
	call	dword [_bbOnDebugLeaveScope]
_7914:
	push	_7926
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_7928
	call	_brl_blitz_NullObjectError
_7928:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7930
	call	_brl_blitz_NullObjectError
_7930:
	mov	eax,dword [esi+20]
	cmp	eax,dword [ebx+20]
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_7933
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7932
	call	_brl_blitz_NullObjectError
_7932:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_7933:
	cmp	eax,0
	je	_7937
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7936
	call	_brl_blitz_NullObjectError
_7936:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	setne	al
	movzx	eax,al
_7937:
	cmp	eax,0
	je	_7939
	mov	eax,ebp
	push	eax
	push	_7947
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7940
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TCompiler_Current]
	cmp	edi,_bbNullObject
	jne	_7942
	call	_brl_blitz_NullObjectError
_7942:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_7944
	call	_brl_blitz_NullObjectError
_7944:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7946
	call	_brl_blitz_NullObjectError
_7946:
	push	_118
	push	dword [ebx+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_279
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_493
	call	_bbStringConcat
	add	esp,8
	push	eax
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
_7939:
	push	_7948
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_494
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-12],eax
	push	_7950
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7952
	call	_brl_blitz_NullObjectError
_7952:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7954
	call	_brl_blitz_NullObjectError
_7954:
	push	dword [ebx+16]
	push	_354
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7955
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_7957
	call	_brl_blitz_NullObjectError
_7957:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7959
	call	_brl_blitz_NullObjectError
_7959:
	push	dword [ebx+16]
	push	_495
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_7960
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
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
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7965
	mov	eax,ebp
	push	eax
	push	_7967
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7966
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_993
_7965:
	push	_7968
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_7971
	call	_brl_blitz_NullObjectError
_7971:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-20],eax
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_7974
	call	_brl_blitz_NullObjectError
_7974:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_496
_498:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7979
	call	_brl_blitz_NullObjectError
_7979:
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
	je	_496
	mov	eax,ebp
	push	eax
	push	_8000
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7980
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_7982
	call	_brl_blitz_NullObjectError
_7982:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7984
	call	_brl_blitz_NullObjectError
_7984:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_7985
	mov	eax,ebp
	push	eax
	push	_7999
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7986
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_7988
	call	_brl_blitz_NullObjectError
_7988:
	movzx	eax,byte [ebx+8]
	cmp	eax,0
	jne	_7991
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_7990
	call	_brl_blitz_NullObjectError
_7990:
	movzx	eax,byte [ebx+8]
_7991:
	cmp	eax,0
	je	_7993
	mov	eax,ebp
	push	eax
	push	_7995
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7994
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_993
_7993:
	mov	eax,ebp
	push	eax
	push	_7998
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_7997
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_993
_7985:
	call	dword [_bbOnDebugLeaveScope]
_496:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_7977
	call	_brl_blitz_NullObjectError
_7977:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_498
_497:
	push	_8001
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8003
	call	_brl_blitz_NullObjectError
_8003:
	mov	eax,dword [ebx+20]
	cmp	eax,0
	je	_8006
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8005
	call	_brl_blitz_NullObjectError
_8005:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_8006:
	cmp	eax,0
	jne	_8014
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8009
	call	_brl_blitz_NullObjectError
_8009:
	push	_188
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_8012
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8011
	call	_brl_blitz_NullObjectError
_8011:
	mov	eax,dword [ebx+20]
_8012:
_8014:
	cmp	eax,0
	je	_8016
	mov	eax,ebp
	push	eax
	push	_8018
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8017
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	jmp	_993
_8016:
	push	_8019
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [__bb_TCompiler_Current]
	mov	dword [ebp-24],eax
	cmp	dword [ebp-24],_bbNullObject
	jne	_8021
	call	_brl_blitz_NullObjectError
_8021:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-28],eax
	cmp	dword [ebp-28],_bbNullObject
	jne	_8023
	call	_brl_blitz_NullObjectError
_8023:
	mov	edi,dword [ebp-4]
	cmp	edi,_bbNullObject
	jne	_8025
	call	_brl_blitz_NullObjectError
_8025:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8027
	call	_brl_blitz_NullObjectError
_8027:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8029
	call	_brl_blitz_NullObjectError
_8029:
	push	_502
	push	dword [ebx+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_500
	push	dword [esi+16]
	push	_501
	push	dword [edi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_500
	mov	eax,dword [ebp-28]
	push	dword [eax+16]
	push	_499
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_993
_993:
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
	push	_8043
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8031
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8033
	call	_brl_blitz_NullObjectError
_8033:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_8035
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],_bbNullObject
	je	_8036
	push	ebp
	push	_8039
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8037
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	push	dword [ebp-16]
	call	_bb_AddChild
	add	esp,8
	push	_8038
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_998
_8036:
	push	ebp
	push	_8042
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8041
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_998
_998:
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
	push	_8050
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8045
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8047
	call	_brl_blitz_NullObjectError
_8047:
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_8049
	call	_brl_blitz_NullObjectError
_8049:
	push	_38
	push	dword [esi+20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_370
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
	jmp	_1001
_1001:
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
	push	_8062
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8051
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_8053
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],1
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8056
	call	_brl_blitz_NullObjectError
_8056:
	mov	ebx,dword [ebx+20]
	jmp	_8057
_505:
	push	ebp
	push	_8060
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8059
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_506
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-8],eax
	call	dword [_bbOnDebugLeaveScope]
_503:
	add	dword [ebp-12],1
_8057:
	cmp	dword [ebp-12],ebx
	jle	_505
_504:
	push	_8061
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	jmp	_1004
_1004:
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
	push	_8068
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
	push	_8067
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_1007
_1007:
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
_1010:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_8071
	push	eax
	call	_bbGCFree
	add	esp,4
_8071:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_8073
	push	eax
	call	_bbGCFree
	add	esp,4
_8073:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_8075
	push	eax
	call	_bbGCFree
	add	esp,4
_8075:
	mov	eax,0
	jmp	_8069
_8069:
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
	push	_8101
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8076
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8078
	call	_brl_blitz_NullObjectError
_8078:
	mov	edi,ebx
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_8081
	call	_brl_blitz_NullObjectError
_8081:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8083
	call	_brl_blitz_NullObjectError
_8083:
	mov	eax,dword [ebx+16]
	mov	eax,dword [eax+20]
	add	eax,1
	push	eax
	push	0
	push	dword [esi+16]
	push	_546
	call	_bbArraySlice
	add	esp,16
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [edi+16]
	dec	dword [eax+4]
	jnz	_8087
	push	eax
	call	_bbGCFree
	add	esp,4
_8087:
	mov	dword [edi+16],ebx
	push	_8088
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8090
	call	_brl_blitz_NullObjectError
_8090:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8093
	call	_brl_blitz_NullObjectError
_8093:
	mov	eax,dword [ebx+16]
	mov	ebx,dword [eax+20]
	sub	ebx,1
	cmp	ebx,dword [esi+20]
	jb	_8095
	call	_brl_blitz_ArrayBoundsError
_8095:
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_8100
	push	eax
	call	_bbGCFree
	add	esp,4
_8100:
	mov	dword [esi+24],ebx
	mov	ebx,0
	jmp	_1014
_1014:
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
	push	_8140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8102
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8105
	call	_brl_blitz_NullObjectError
_8105:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	add	eax,24
	mov	dword [ebp-36],eax
	mov	edx,dword [ebp-36]
	mov	eax,dword [ebp-40]
	add	edx,dword [eax+16]
	mov	dword [ebp-44],edx
	jmp	_507
_509:
	mov	eax,dword [ebp-36]
	mov	eax,dword [eax]
	mov	dword [ebp-16],eax
	add	dword [ebp-36],4
	cmp	dword [ebp-16],_bbNullObject
	je	_507
	mov	eax,ebp
	push	eax
	push	_8138
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8110
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_8112
	call	_brl_blitz_NullObjectError
_8112:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8114
	call	_brl_blitz_NullObjectError
_8114:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8115
	mov	eax,ebp
	push	eax
	push	_8137
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8116
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8119
	call	_brl_blitz_NullObjectError
_8119:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-28],eax
	mov	eax,dword [ebp-28]
	add	eax,24
	mov	edi,eax
	mov	edx,edi
	mov	eax,dword [ebp-28]
	add	edx,dword [eax+16]
	mov	dword [ebp-32],edx
	jmp	_510
_512:
	mov	eax,dword [edi]
	mov	dword [ebp-20],eax
	add	edi,4
	cmp	dword [ebp-20],_bbNullObject
	je	_510
	mov	eax,ebp
	push	eax
	push	_8136
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-20]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_8125
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_8125:
	cmp	eax,0
	je	_8131
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8128
	call	_brl_blitz_NullObjectError
_8128:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8130
	call	_brl_blitz_NullObjectError
_8130:
	push	dword [ebx+16]
	push	dword [esi+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	sete	al
	movzx	eax,al
_8131:
	cmp	eax,0
	je	_8133
	mov	eax,ebp
	push	eax
	push	_8135
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8134
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],1
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1019
_8133:
	call	dword [_bbOnDebugLeaveScope]
_510:
	cmp	edi,dword [ebp-32]
	jne	_512
_511:
	call	dword [_bbOnDebugLeaveScope]
_8115:
	call	dword [_bbOnDebugLeaveScope]
_507:
	mov	eax,dword [ebp-44]
	cmp	dword [ebp-36],eax
	jne	_509
_508:
	push	_8139
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-24],0
	jmp	_1019
_1019:
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
	push	_8254
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8143
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8146
	call	_brl_blitz_NullObjectError
_8146:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-52],eax
	mov	eax,dword [ebp-52]
	add	eax,24
	mov	dword [ebp-48],eax
	mov	edx,dword [ebp-48]
	mov	eax,dword [ebp-52]
	add	edx,dword [eax+16]
	mov	dword [ebp-60],edx
	jmp	_513
_515:
	mov	eax,dword [ebp-48]
	mov	eax,dword [eax]
	mov	dword [ebp-20],eax
	add	dword [ebp-48],4
	cmp	dword [ebp-20],_bbNullObject
	je	_513
	mov	eax,ebp
	push	eax
	push	_8240
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8151
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	cmp	ebx,_bbNullObject
	jne	_8153
	call	_brl_blitz_NullObjectError
_8153:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8155
	call	_brl_blitz_NullObjectError
_8155:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8157
	call	_brl_blitz_NullObjectError
_8157:
	push	dword [esi+16]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8158
	mov	eax,ebp
	push	eax
	push	_8239
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8159
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_8162
	call	_brl_blitz_NullObjectError
_8162:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-40],eax
	mov	eax,dword [ebp-40]
	add	eax,24
	mov	edi,eax
	mov	edx,edi
	mov	eax,dword [ebp-40]
	add	edx,dword [eax+16]
	mov	dword [ebp-44],edx
	jmp	_516
_518:
	mov	eax,dword [edi]
	mov	dword [ebp-24],eax
	add	edi,4
	cmp	dword [ebp-24],_bbNullObject
	je	_516
	mov	eax,ebp
	push	eax
	push	_8238
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8167
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_8169
	call	_brl_blitz_NullObjectError
_8169:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8171
	call	_brl_blitz_NullObjectError
_8171:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8173
	call	_brl_blitz_NullObjectError
_8173:
	push	dword [esi+16]
	push	dword [ebx+16]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8174
	mov	eax,ebp
	push	eax
	push	_8235
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_8177
	call	_brl_blitz_NullObjectError
_8177:
	push	_4
	push	_bbNullObject
	push	_285
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-28],eax
	push	_8179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_8181
	call	_brl_blitz_NullObjectError
_8181:
	push	_4
	push	_bbNullObject
	push	_287
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	push	_8183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	push	_8185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8187
	call	_brl_blitz_NullObjectError
_8187:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8189
	call	_brl_blitz_NullObjectError
_8189:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8191
	call	_brl_blitz_NullObjectError
_8191:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8193
	call	_brl_blitz_NullObjectError
_8193:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jle	_8194
	mov	eax,ebp
	push	eax
	push	_8196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_8197
_8194:
	mov	eax,ebp
	push	eax
	push	_8213
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8200
	call	_brl_blitz_NullObjectError
_8200:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8202
	call	_brl_blitz_NullObjectError
_8202:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8204
	call	_brl_blitz_NullObjectError
_8204:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8206
	call	_brl_blitz_NullObjectError
_8206:
	mov	eax,dword [esi+12]
	cmp	dword [ebx+12],eax
	jge	_8207
	mov	eax,ebp
	push	eax
	push	_8209
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8208
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_8210
_8207:
	mov	eax,ebp
	push	eax
	push	_8212
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	mov	dword [ebp-36],eax
	call	dword [_bbOnDebugLeaveScope]
_8210:
	call	dword [_bbOnDebugLeaveScope]
_8197:
	push	_8214
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8216
	call	_brl_blitz_NullObjectError
_8216:
	mov	edi,dword [ebx+8]
	cmp	edi,_bbNullObject
	jne	_8218
	call	_brl_blitz_NullObjectError
_8218:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_8220
	call	_brl_blitz_NullObjectError
_8220:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8222
	call	_brl_blitz_NullObjectError
_8222:
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
	push	_8223
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8225
	call	_brl_blitz_NullObjectError
_8225:
	mov	edi,dword [ebx+8]
	cmp	edi,_bbNullObject
	jne	_8227
	call	_brl_blitz_NullObjectError
_8227:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8229
	call	_brl_blitz_NullObjectError
_8229:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8231
	call	_brl_blitz_NullObjectError
_8231:
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
	push	_8232
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_8234
	call	_brl_blitz_NullObjectError
_8234:
	mov	ebx,dword [ebx+8]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1025
_8174:
	call	dword [_bbOnDebugLeaveScope]
_516:
	cmp	edi,dword [ebp-44]
	jne	_518
_517:
	call	dword [_bbOnDebugLeaveScope]
_8158:
	call	dword [_bbOnDebugLeaveScope]
_513:
	mov	eax,dword [ebp-60]
	cmp	dword [ebp-48],eax
	jne	_515
_514:
	push	_8241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [__bb_TCompiler_Current]
	cmp	edi,_bbNullObject
	jne	_8243
	call	_brl_blitz_NullObjectError
_8243:
	mov	eax,dword [ebp-4]
	mov	dword [ebp-56],eax
	cmp	dword [ebp-56],_bbNullObject
	jne	_8245
	call	_brl_blitz_NullObjectError
_8245:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_8247
	call	_brl_blitz_NullObjectError
_8247:
	mov	ebx,dword [ebx+8]
	cmp	ebx,_bbNullObject
	jne	_8249
	call	_brl_blitz_NullObjectError
_8249:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_8251
	call	_brl_blitz_NullObjectError
_8251:
	mov	esi,dword [esi+8]
	cmp	esi,_bbNullObject
	jne	_8253
	call	_brl_blitz_NullObjectError
_8253:
	push	_280
	push	dword [esi+16]
	push	_279
	push	dword [ebx+16]
	push	_520
	mov	eax,dword [ebp-56]
	push	dword [eax+12]
	push	_519
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
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
	jmp	_1025
_1025:
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
	push	_8389
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8255
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	5
	push	_8256
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TOperator_Priority]
	dec	dword [eax+4]
	jnz	_8260
	push	eax
	call	_bbGCFree
	add	esp,4
_8260:
	mov	dword [__bb_TOperator_Priority],ebx
	push	_8261
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	mov	eax,dword [__bb_TOperator_Priority]
	mov	edi,dword [eax+20]
	jmp	_8263
_523:
	mov	eax,ebp
	push	eax
	push	_8273
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8265
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_8267
	call	_brl_blitz_ArrayBoundsError
_8267:
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
	jnz	_8272
	push	eax
	call	_bbGCFree
	add	esp,4
_8272:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_521:
	add	dword [ebp-4],1
_8263:
	cmp	dword [ebp-4],edi
	jl	_523
_522:
	push	_8274
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_524
	push	_524
	push	0
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_8290
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_526
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8298
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_527
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_528
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8314
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_529
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_546
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
	push	_530
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_546
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
	push	_531
	push	1
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	7
	push	_546
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
	push	_533
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_534
	push	2
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_284
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_535
	push	3
	call	dword [_bb_TOperator+64]
	add	esp,16
	push	_8381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	_546
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
	push	_536
	push	4
	call	dword [_bb_TOperator+64]
	add	esp,16
	mov	ebx,0
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
	push	_8421
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TOperator
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-20],eax
	push	_8392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8394
	call	_brl_blitz_NullObjectError
_8394:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_8399
	push	eax
	call	_bbGCFree
	add	esp,4
_8399:
	mov	dword [esi+8],ebx
	push	_8400
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8402
	call	_brl_blitz_NullObjectError
_8402:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_8407
	push	eax
	call	_bbGCFree
	add	esp,4
_8407:
	mov	dword [esi+12],ebx
	push	_8408
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_8410
	call	_brl_blitz_NullObjectError
_8410:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_8415
	push	eax
	call	_bbGCFree
	add	esp,4
_8415:
	mov	dword [esi+16],ebx
	push	_8416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [__bb_TOperator_Priority]
	cmp	ebx,dword [eax+20]
	jb	_8418
	call	_brl_blitz_ArrayBoundsError
_8418:
	mov	eax,dword [__bb_TOperator_Priority]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_8420
	call	_brl_blitz_NullObjectError
_8420:
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_1033
_1033:
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
	push	_8449
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8422
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
	jmp	_537
_539:
	mov	eax,dword [ebp-16]
	mov	eax,dword [eax]
	mov	dword [ebp-8],eax
	add	dword [ebp-16],4
	cmp	dword [ebp-8],_bbNullObject
	je	_537
	mov	eax,ebp
	push	eax
	push	_8446
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [ebp-8]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_8432
	call	_brl_blitz_NullObjectError
_8432:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_540
_542:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_8437
	call	_brl_blitz_NullObjectError
_8437:
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
	je	_540
	mov	eax,ebp
	push	eax
	push	_8444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8438
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_8440
	call	_brl_blitz_NullObjectError
_8440:
	push	dword [ebp-4]
	push	dword [ebx+12]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_8441
	mov	eax,ebp
	push	eax
	push	_8443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_8442
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_1036
_8441:
	call	dword [_bbOnDebugLeaveScope]
_540:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_8435
	call	_brl_blitz_NullObjectError
_8435:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_542
_541:
	call	dword [_bbOnDebugLeaveScope]
_537:
	mov	eax,dword [ebp-24]
	cmp	dword [ebp-16],eax
	jne	_539
_538:
	push	_8448
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_1036
_1036:
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
_1061:
	dd	0
_1060:
	db	"TCompiler_CPB",0
	align	4
_1059:
	dd	1
	dd	_1060
	dd	0
_544:
	db	"TIdentifier",0
_545:
	db	"Datatype",0
_546:
	db	":TDatatype",0
_547:
	db	"Name",0
_548:
	db	"$",0
_549:
	db	"New",0
_550:
	db	"()i",0
_551:
	db	"Delete",0
_552:
	db	"Create",0
_553:
	db	"($,:TDatatype):TIdentifier",0
_554:
	db	"ToNode",0
_555:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_543:
	dd	2
	dd	_544
	dd	3
	dd	_545
	dd	_546
	dd	8
	dd	3
	dd	_547
	dd	_548
	dd	12
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_552
	dd	_553
	dd	48
	dd	6
	dd	_554
	dd	_555
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_543
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
_557:
	db	"TIdentifierFunction",0
_558:
	db	"Gen",0
_559:
	db	"b",0
_560:
	db	"RealName",0
_561:
	db	"ParamList",0
_562:
	db	":brl.linkedlist.TList",0
_563:
	db	"UserFunc",0
_564:
	db	"Used",0
_565:
	db	"Childs",0
_566:
	db	"OWner",0
_567:
	db	":TTypeTemplate",0
_568:
	db	"Datatypes",0
_569:
	db	"use",0
_570:
	db	"()b",0
_571:
	db	"AddParameter",0
_572:
	db	"($,:TDatatype,$)i",0
_573:
	db	"GenName",0
_574:
	db	"Copy",0
_575:
	db	"():TIdentifierFunction",0
	align	4
_556:
	dd	2
	dd	_557
	dd	3
	dd	_558
	dd	_559
	dd	16
	dd	3
	dd	_560
	dd	_548
	dd	20
	dd	3
	dd	_561
	dd	_562
	dd	24
	dd	3
	dd	_563
	dd	_559
	dd	28
	dd	3
	dd	_564
	dd	_559
	dd	29
	dd	3
	dd	_565
	dd	_562
	dd	32
	dd	3
	dd	_566
	dd	_567
	dd	36
	dd	3
	dd	_568
	dd	_548
	dd	40
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_569
	dd	_570
	dd	56
	dd	6
	dd	_571
	dd	_572
	dd	60
	dd	6
	dd	_573
	dd	_550
	dd	64
	dd	6
	dd	_574
	dd	_575
	dd	68
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_556
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
_577:
	db	"TIdentifierVariable",0
_578:
	db	"Info",0
_579:
	db	":Object",0
	align	4
_576:
	dd	2
	dd	_577
	dd	3
	dd	_578
	dd	_579
	dd	16
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_576
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
_581:
	db	"TTypeField",0
_582:
	db	"ISPRIVATE",0
	align	4
_583:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	49
_584:
	db	"ISPROTECTED",0
	align	4
_585:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	50
_586:
	db	"ISPUBLIC",0
	align	4
_587:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	51
_588:
	db	"Mode",0
_589:
	db	"i",0
_590:
	db	"Create2",0
_591:
	db	"($,:TDatatype,i):TIdentifier",0
	align	4
_580:
	dd	2
	dd	_581
	dd	1
	dd	_582
	dd	_559
	dd	_583
	dd	1
	dd	_584
	dd	_559
	dd	_585
	dd	1
	dd	_586
	dd	_559
	dd	_587
	dd	3
	dd	_588
	dd	_589
	dd	20
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_590
	dd	_591
	dd	56
	dd	0
	align	4
_bb_TTypeField:
	dd	_bb_TIdentifierVariable
	dd	_bbObjectFree
	dd	_580
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
_593:
	db	"TTypeMethod",0
_594:
	db	"ISNORMAL",0
	align	4
_595:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	48
_596:
	db	"ISOVERRIDE",0
_597:
	db	"ISVIRTUAL",0
_598:
	db	"ISABSTRACT",0
_599:
	db	"ISFINAL",0
	align	4
_600:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	52
_601:
	db	"ISSTATIC",0
	align	4
_602:
	dd	_bbStringClass
	dd	2147483646
	dd	1
	dw	53
_603:
	db	"State",0
_604:
	db	"Func",0
_605:
	db	":TIdentifierFunction",0
_606:
	db	"From",0
_607:
	db	"VirtualID",0
_608:
	db	"($,:TTypeTemplate,b,b,i):TTypeMethod",0
	align	4
_592:
	dd	2
	dd	_593
	dd	1
	dd	_594
	dd	_559
	dd	_595
	dd	1
	dd	_596
	dd	_559
	dd	_583
	dd	1
	dd	_597
	dd	_559
	dd	_585
	dd	1
	dd	_598
	dd	_559
	dd	_587
	dd	1
	dd	_599
	dd	_559
	dd	_600
	dd	1
	dd	_601
	dd	_559
	dd	_602
	dd	1
	dd	_582
	dd	_559
	dd	_583
	dd	1
	dd	_584
	dd	_559
	dd	_585
	dd	1
	dd	_586
	dd	_559
	dd	_587
	dd	3
	dd	_588
	dd	_589
	dd	8
	dd	3
	dd	_603
	dd	_559
	dd	12
	dd	3
	dd	_604
	dd	_605
	dd	16
	dd	3
	dd	_547
	dd	_548
	dd	20
	dd	3
	dd	_606
	dd	_567
	dd	24
	dd	3
	dd	_607
	dd	_589
	dd	28
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_552
	dd	_608
	dd	48
	dd	0
	align	4
_bb_TTypeMethod:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_592
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
_1039:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_Identifier.bmx",0
	align	4
_1038:
	dd	_1039
	dd	153
	dd	2
	align	4
__bb_TTypeTemplate_ObjectTemplate:
	dd	_bbNullObject
_610:
	db	"TTypeTemplate",0
_611:
	db	"Fields",0
_612:
	db	"Methods",0
_613:
	db	"SuperType",0
_614:
	db	"LastID",0
_615:
	db	"VIDMap",0
_616:
	db	":brl.map.TMap",0
_617:
	db	"Init",0
_618:
	db	"GetFields",0
_619:
	db	"(i):brl.linkedlist.TList",0
_620:
	db	"GetMethods",0
_621:
	db	"AddField",0
_622:
	db	"($,:TDatatype,:bah.libxml.TxmlNode,i)i",0
_623:
	db	"AddMethod",0
_624:
	db	"(:TIdentifierFunction,$,:TDatatype,b,i):TTypeMethod",0
_625:
	db	"():bah.libxml.TxmlNode",0
	align	4
_609:
	dd	2
	dd	_610
	dd	3
	dd	_588
	dd	_589
	dd	8
	dd	3
	dd	_611
	dd	_562
	dd	12
	dd	3
	dd	_612
	dd	_562
	dd	16
	dd	3
	dd	_547
	dd	_548
	dd	20
	dd	3
	dd	_613
	dd	_567
	dd	24
	dd	3
	dd	_545
	dd	_546
	dd	28
	dd	3
	dd	_614
	dd	_589
	dd	32
	dd	3
	dd	_615
	dd	_616
	dd	36
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	7
	dd	_617
	dd	_550
	dd	48
	dd	6
	dd	_618
	dd	_619
	dd	52
	dd	6
	dd	_620
	dd	_619
	dd	56
	dd	6
	dd	_621
	dd	_622
	dd	60
	dd	6
	dd	_623
	dd	_624
	dd	64
	dd	6
	dd	_554
	dd	_625
	dd	68
	dd	0
	align	4
_bb_TTypeTemplate:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_609
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
_627:
	db	"TParameter",0
_628:
	db	"Pre",0
_629:
	db	"Node",0
_630:
	db	":bah.libxml.TxmlNode",0
_631:
	db	"($,:TDatatype,$):TParameter",0
	align	4
_626:
	dd	2
	dd	_627
	dd	3
	dd	_547
	dd	_548
	dd	8
	dd	3
	dd	_545
	dd	_546
	dd	12
	dd	3
	dd	_628
	dd	_548
	dd	16
	dd	3
	dd	_629
	dd	_630
	dd	20
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_552
	dd	_631
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_626
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
_1041:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_CPB.bmx",0
	align	4
_1040:
	dd	_1041
	dd	7
	dd	2
	align	4
__bb_TCompiler_Current:
	dd	_bbNullObject
	align	4
_1042:
	dd	_1041
	dd	8
	dd	2
	align	4
_1044:
	dd	0
	align	4
__bb_TCompiler_Templates:
	dd	_bbNullObject
_633:
	db	"TCompiler",0
_634:
	db	"Token",0
_635:
	db	"GlobalVarIdentifier",0
_636:
	db	"FunctionIdentifier",0
_637:
	db	"LocalVarIdentifier",0
_638:
	db	"[]:brl.linkedlist.TList",0
_639:
	db	"CurrentMode",0
_640:
	db	"CurrentType",0
_641:
	db	"Lines",0
_642:
	db	"[]$",0
_643:
	db	"XMLFile",0
_644:
	db	":bah.libxml.TxmlDoc",0
_645:
	db	"CurrentRoot",0
_646:
	db	"CurrentLineNode",0
_647:
	db	"CurrentToken",0
_648:
	db	"CurrentLink",0
_649:
	db	":brl.linkedlist.TLink",0
_650:
	db	"CurrentLine",0
_651:
	db	"LastFunc",0
_652:
	db	"FUnctionDatatype",0
_653:
	db	"AnyError",0
_654:
	db	"ScopeMode",0
_655:
	db	"LoadFunction",0
_656:
	db	"($)i",0
_657:
	db	"LoadHeaders",0
_658:
	db	"Tokenizer",0
_659:
	db	"Analyser",0
_660:
	db	"Parser",0
_661:
	db	"(b)i",0
_662:
	db	"InternBlock",0
_663:
	db	"(:bah.libxml.TxmlNode)i",0
_664:
	db	"Block",0
_665:
	db	"Expression",0
_666:
	db	"(i):TRecursive",0
_667:
	db	"Factor",0
_668:
	db	"():TRecursive",0
_669:
	db	"Funk",0
_670:
	db	"(:bah.libxml.TxmlNode):TRecursive",0
_671:
	db	"Keyword",0
_672:
	db	"Variable",0
_673:
	db	"(b):TRecursive",0
_674:
	db	"ParseType",0
_675:
	db	"(:TRecursive,:brl.linkedlist.TList):TRecursive",0
_676:
	db	"ParseArray",0
_677:
	db	"(:TDatatype):brl.linkedlist.TList",0
_678:
	db	"RegisterVariable",0
_679:
	db	"($,:TDatatype):bah.libxml.TxmlNode",0
_680:
	db	"GetVariable",0
_681:
	db	"($):TIdentifierVariable",0
_682:
	db	"GetVariablelist",0
_683:
	db	"():brl.linkedlist.TList",0
_684:
	db	"IsToken",0
_685:
	db	"($)b",0
_686:
	db	"ValidDatatype",0
_687:
	db	"Match",0
_688:
	db	"($)$",0
_689:
	db	"GetNext",0
_690:
	db	"()$",0
_691:
	db	"GetBefore",0
_692:
	db	"GetCurrent",0
_693:
	db	"Error",0
_694:
	db	"Warning",0
	align	4
_632:
	dd	2
	dd	_633
	dd	3
	dd	_634
	dd	_562
	dd	8
	dd	3
	dd	_635
	dd	_562
	dd	12
	dd	3
	dd	_636
	dd	_562
	dd	16
	dd	3
	dd	_637
	dd	_638
	dd	20
	dd	3
	dd	_639
	dd	_589
	dd	24
	dd	3
	dd	_640
	dd	_548
	dd	28
	dd	3
	dd	_641
	dd	_642
	dd	32
	dd	3
	dd	_643
	dd	_644
	dd	36
	dd	3
	dd	_645
	dd	_630
	dd	40
	dd	3
	dd	_646
	dd	_630
	dd	44
	dd	3
	dd	_647
	dd	_548
	dd	48
	dd	3
	dd	_648
	dd	_649
	dd	52
	dd	3
	dd	_650
	dd	_589
	dd	56
	dd	3
	dd	_651
	dd	_630
	dd	60
	dd	3
	dd	_652
	dd	_546
	dd	64
	dd	3
	dd	_653
	dd	_559
	dd	68
	dd	3
	dd	_654
	dd	_589
	dd	72
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_655
	dd	_656
	dd	48
	dd	6
	dd	_657
	dd	_656
	dd	52
	dd	6
	dd	_658
	dd	_656
	dd	56
	dd	6
	dd	_659
	dd	_550
	dd	60
	dd	6
	dd	_660
	dd	_661
	dd	64
	dd	6
	dd	_662
	dd	_663
	dd	68
	dd	6
	dd	_664
	dd	_550
	dd	72
	dd	6
	dd	_665
	dd	_666
	dd	76
	dd	6
	dd	_667
	dd	_668
	dd	80
	dd	6
	dd	_669
	dd	_670
	dd	84
	dd	6
	dd	_671
	dd	_668
	dd	88
	dd	6
	dd	_672
	dd	_673
	dd	92
	dd	6
	dd	_674
	dd	_675
	dd	96
	dd	6
	dd	_676
	dd	_677
	dd	100
	dd	6
	dd	_678
	dd	_679
	dd	104
	dd	6
	dd	_680
	dd	_681
	dd	108
	dd	6
	dd	_682
	dd	_683
	dd	112
	dd	6
	dd	_684
	dd	_685
	dd	116
	dd	6
	dd	_686
	dd	_685
	dd	120
	dd	6
	dd	_687
	dd	_688
	dd	124
	dd	6
	dd	_689
	dd	_690
	dd	128
	dd	6
	dd	_691
	dd	_690
	dd	132
	dd	6
	dd	_692
	dd	_690
	dd	136
	dd	6
	dd	_693
	dd	_656
	dd	140
	dd	6
	dd	_694
	dd	_656
	dd	144
	dd	0
	align	4
_bb_TCompiler:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_632
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
_696:
	db	"TRecursive",0
_697:
	db	"Positions",0
_698:
	db	"(:bah.libxml.TxmlNode,:TDatatype,:Object,:brl.linkedlist.TList):TRecursive",0
_699:
	db	"GetDatatype",0
_700:
	db	"():TDatatype",0
_701:
	db	"GetNode",0
	align	4
_695:
	dd	2
	dd	_696
	dd	3
	dd	_545
	dd	_546
	dd	8
	dd	3
	dd	_629
	dd	_630
	dd	12
	dd	3
	dd	_578
	dd	_579
	dd	16
	dd	3
	dd	_697
	dd	_579
	dd	20
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_552
	dd	_698
	dd	48
	dd	6
	dd	_699
	dd	_700
	dd	52
	dd	6
	dd	_701
	dd	_625
	dd	56
	dd	0
	align	4
_bb_TRecursive:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_695
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
_1046:
	dd	_1041
	dd	1722
	dd	2
	align	4
__bb_TDatatype_IntDatatype:
	dd	_bbNullObject
	align	4
_1047:
	dd	_1041
	dd	1723
	dd	2
	align	4
__bb_TDatatype_FloatDatatype:
	dd	_bbNullObject
	align	4
_1048:
	dd	_1041
	dd	1724
	dd	2
	align	4
__bb_TDatatype_StringDatatype:
	dd	_bbNullObject
	align	4
_1049:
	dd	_1041
	dd	1725
	dd	2
	align	4
__bb_TDatatype_ByteDatatype:
	dd	_bbNullObject
	align	4
_1050:
	dd	_1041
	dd	1726
	dd	2
	align	4
__bb_TDatatype_LongDatatype:
	dd	_bbNullObject
	align	4
_1051:
	dd	_1041
	dd	1727
	dd	2
	align	4
__bb_TDatatype_DoubleDatatype:
	dd	_bbNullObject
	align	4
_1052:
	dd	_1041
	dd	1728
	dd	2
	align	4
__bb_TDatatype_ShortDatatype:
	dd	_bbNullObject
	align	4
_1053:
	dd	_1041
	dd	1729
	dd	2
	align	4
__bb_TDatatype_VoidDatatype:
	dd	_bbNullObject
	align	4
_1054:
	dd	_1041
	dd	1730
	dd	2
	align	4
__bb_TDatatype_NullDatatype:
	dd	_bbNullObject
	align	4
_1055:
	dd	_1041
	dd	1731
	dd	2
	align	4
__bb_TDatatype_UserDefinedDatatypes:
	dd	_bbNullObject
_703:
	db	"TDatatype",0
_704:
	db	"IsNotPrimitive",0
_705:
	db	"Prio",0
_706:
	db	"IsArray",0
_707:
	db	"CanCastTo",0
_708:
	db	"($,i):TDatatype",0
_709:
	db	"CreateByNode",0
_710:
	db	"(:bah.libxml.TxmlNode):TDatatype",0
_711:
	db	"(i):TDatatype",0
_712:
	db	"Add2Node",0
_713:
	db	"Cast",0
_714:
	db	"(:TDatatype):bah.libxml.TxmlNode",0
_715:
	db	"CastNode",0
_716:
	db	"(:TDatatype,:bah.libxml.TxmlNode):bah.libxml.TxmlNode",0
_717:
	db	"ToString",0
_718:
	db	"GetArrayString",0
	align	4
_702:
	dd	2
	dd	_703
	dd	3
	dd	_704
	dd	_559
	dd	8
	dd	3
	dd	_705
	dd	_589
	dd	12
	dd	3
	dd	_547
	dd	_548
	dd	16
	dd	3
	dd	_706
	dd	_589
	dd	20
	dd	3
	dd	_707
	dd	_562
	dd	24
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	7
	dd	_617
	dd	_550
	dd	48
	dd	7
	dd	_552
	dd	_708
	dd	52
	dd	7
	dd	_709
	dd	_710
	dd	56
	dd	6
	dd	_574
	dd	_711
	dd	60
	dd	6
	dd	_712
	dd	_663
	dd	64
	dd	6
	dd	_713
	dd	_714
	dd	68
	dd	6
	dd	_715
	dd	_716
	dd	72
	dd	6
	dd	_717
	dd	_690
	dd	24
	dd	6
	dd	_718
	dd	_690
	dd	76
	dd	0
	align	4
_bb_TDatatype:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_702
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
_1058:
	dd	_1041
	dd	1929
	dd	2
	align	4
__bb_TOperator_Priority:
	dd	_bbEmptyArray
_720:
	db	"TOperator",0
_721:
	db	"Operator",0
_722:
	db	"[]:TDatatype",0
_723:
	db	"AddDatatype",0
_724:
	db	"(:TDatatype)i",0
_725:
	db	"CanMatch",0
_726:
	db	"(:TDatatype,:TDatatype)b",0
_727:
	db	"ParseDatatype",0
_728:
	db	"(:TRecursive,:TRecursive,:bah.libxml.TxmlNode):TDatatype",0
_729:
	db	"NewOperator",0
_730:
	db	"(i,$,$,[]:TDatatype)i",0
_731:
	db	"GetByName",0
_732:
	db	"($):TOperator",0
	align	4
_719:
	dd	2
	dd	_720
	dd	3
	dd	_547
	dd	_548
	dd	8
	dd	3
	dd	_721
	dd	_548
	dd	12
	dd	3
	dd	_545
	dd	_722
	dd	16
	dd	6
	dd	_549
	dd	_550
	dd	16
	dd	6
	dd	_551
	dd	_550
	dd	20
	dd	6
	dd	_723
	dd	_724
	dd	48
	dd	6
	dd	_725
	dd	_726
	dd	52
	dd	6
	dd	_727
	dd	_728
	dd	56
	dd	7
	dd	_617
	dd	_550
	dd	60
	dd	7
	dd	_729
	dd	_730
	dd	64
	dd	7
	dd	_731
	dd	_732
	dd	68
	dd	0
	align	4
_bb_TOperator:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_719
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
_1067:
	db	"Self",0
_1068:
	db	":TIdentifier",0
	align	4
_1066:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1068
	dd	-4
	dd	0
	align	4
_1065:
	dd	3
	dd	0
	dd	0
_1092:
	db	"N",0
_1093:
	db	"Typ",0
	align	4
_1091:
	dd	1
	dd	_552
	dd	2
	dd	_1067
	dd	_1068
	dd	-4
	dd	2
	dd	_1092
	dd	_548
	dd	-8
	dd	2
	dd	_1093
	dd	_546
	dd	-12
	dd	0
	align	4
_1074:
	dd	_1039
	dd	8
	dd	3
	align	4
_1082:
	dd	_1039
	dd	9
	dd	3
	align	4
_1090:
	dd	_1039
	dd	10
	dd	3
_1178:
	db	"Infos",0
	align	4
_1177:
	dd	1
	dd	_554
	dd	2
	dd	_1067
	dd	_1068
	dd	-8
	dd	2
	dd	_1178
	dd	_562
	dd	-12
	dd	0
	align	4
_1094:
	dd	_1039
	dd	13
	dd	3
_1164:
	db	"Info2",0
_1165:
	db	"node",0
_1166:
	db	"List2",0
	align	4
_1163:
	dd	3
	dd	0
	dd	2
	dd	_1164
	dd	_559
	dd	-4
	dd	2
	dd	_1165
	dd	_630
	dd	-16
	dd	2
	dd	_589
	dd	_589
	dd	-20
	dd	2
	dd	_1166
	dd	_562
	dd	-24
	dd	0
	align	4
_1102:
	dd	_1039
	dd	14
	dd	4
	align	4
_1104:
	dd	_1039
	dd	16
	dd	4
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_1106:
	dd	_1039
	dd	19
	dd	4
	align	4
_1111:
	dd	_1039
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
_1120:
	dd	_1039
	dd	21
	dd	4
	align	4
_1122:
	dd	_1039
	dd	23
	dd	4
	align	4
_1124:
	dd	_1039
	dd	24
	dd	4
_1138:
	db	"Tmp",0
	align	4
_1137:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-28
	dd	0
	align	4
_1134:
	dd	_1039
	dd	25
	dd	5
	align	4
_1139:
	dd	_1039
	dd	27
	dd	4
	align	4
_1153:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-32
	dd	0
	align	4
_1149:
	dd	_1039
	dd	28
	dd	5
	align	4
_1150:
	dd	_1039
	dd	29
	dd	5
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_1154:
	dd	_1039
	dd	55
	dd	4
	align	4
_1161:
	dd	3
	dd	0
	dd	0
	align	4
_1160:
	dd	_1039
	dd	55
	dd	32
	align	4
_1162:
	dd	_1039
	dd	56
	dd	4
	align	4
_1176:
	dd	3
	dd	0
	dd	2
	dd	_1165
	dd	_630
	dd	-36
	dd	0
	align	4
_1168:
	dd	_1039
	dd	58
	dd	4
	align	4
_1170:
	dd	_1039
	dd	59
	dd	4
	align	4
_1175:
	dd	_1039
	dd	60
	dd	4
	align	4
_1185:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_605
	dd	-4
	dd	0
	align	4
_1184:
	dd	3
	dd	0
	dd	0
	align	4
_1201:
	dd	1
	dd	_569
	dd	2
	dd	_1067
	dd	_605
	dd	-4
	dd	0
	align	4
_1197:
	dd	_1039
	dd	76
	dd	3
_1212:
	db	"DataType",0
_1213:
	db	"P",0
_1214:
	db	":TParameter",0
	align	4
_1211:
	dd	1
	dd	_571
	dd	2
	dd	_1067
	dd	_605
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_1212
	dd	_546
	dd	-12
	dd	2
	dd	_628
	dd	_548
	dd	-16
	dd	2
	dd	_1213
	dd	_1214
	dd	-20
	dd	0
	align	4
_1202:
	dd	_1039
	dd	79
	dd	3
	align	4
_1206:
	dd	_1039
	dd	80
	dd	3
	align	4
_1280:
	dd	1
	dd	_573
	dd	2
	dd	_1067
	dd	_605
	dd	-4
	dd	0
	align	4
_1215:
	dd	_1039
	dd	83
	dd	3
	align	4
_1279:
	dd	3
	dd	0
	dd	0
	align	4
_1219:
	dd	_1039
	dd	84
	dd	4
	align	4
_1223:
	dd	_1039
	dd	85
	dd	4
	align	4
_1233:
	dd	_1039
	dd	86
	dd	4
	align	4
_1241:
	dd	_1039
	dd	87
	dd	4
_1278:
	db	"Param",0
	align	4
_1277:
	dd	3
	dd	0
	dd	2
	dd	_1278
	dd	_1214
	dd	-8
	dd	0
	align	4
_1253:
	dd	_1039
	dd	88
	dd	5
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
	align	4
_1265:
	dd	_1039
	dd	89
	dd	5
	align	4
_1308:
	dd	1
	dd	_574
	dd	2
	dd	_1067
	dd	_605
	dd	-4
	dd	2
	dd	_574
	dd	_605
	dd	-8
	dd	0
	align	4
_1281:
	dd	_1039
	dd	94
	dd	3
	align	4
_1289:
	dd	_1039
	dd	95
	dd	3
	align	4
_1301:
	dd	_1039
	dd	96
	dd	3
	align	4
_1307:
	dd	_1039
	dd	98
	dd	3
_1312:
	db	":TIdentifierVariable",0
	align	4
_1311:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1312
	dd	-4
	dd	0
	align	4
_1310:
	dd	3
	dd	0
	dd	0
_1318:
	db	":TTypeField",0
	align	4
_1317:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1318
	dd	-4
	dd	0
	align	4
_1316:
	dd	3
	dd	0
	dd	0
	align	4
_1341:
	dd	1
	dd	_590
	dd	2
	dd	_1067
	dd	_1318
	dd	-4
	dd	2
	dd	_1092
	dd	_548
	dd	-8
	dd	2
	dd	_1093
	dd	_546
	dd	-12
	dd	2
	dd	_588
	dd	_589
	dd	-16
	dd	0
	align	4
_1320:
	dd	_1039
	dd	116
	dd	3
	align	4
_1328:
	dd	_1039
	dd	117
	dd	3
	align	4
_1336:
	dd	_1039
	dd	118
	dd	3
	align	4
_1340:
	dd	_1039
	dd	119
	dd	3
_1347:
	db	":TTypeMethod",0
	align	4
_1346:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1347
	dd	-4
	dd	0
	align	4
_1345:
	dd	3
	dd	0
	dd	0
_1385:
	db	"F",0
	align	4
_1384:
	dd	1
	dd	_552
	dd	2
	dd	_1067
	dd	_1347
	dd	-12
	dd	2
	dd	_1092
	dd	_548
	dd	-16
	dd	2
	dd	_1385
	dd	_567
	dd	-20
	dd	2
	dd	_603
	dd	_559
	dd	-4
	dd	2
	dd	_588
	dd	_559
	dd	-8
	dd	2
	dd	_607
	dd	_589
	dd	-24
	dd	0
	align	4
_1355:
	dd	_1039
	dd	142
	dd	3
	align	4
_1363:
	dd	_1039
	dd	143
	dd	3
	align	4
_1371:
	dd	_1039
	dd	144
	dd	3
	align	4
_1375:
	dd	_1039
	dd	145
	dd	3
	align	4
_1379:
	dd	_1039
	dd	146
	dd	3
	align	4
_1383:
	dd	_1039
	dd	147
	dd	3
	align	4
_1406:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_567
	dd	-4
	dd	0
	align	4
_1405:
	dd	3
	dd	0
	dd	0
	align	4
_1392:
	dd	_1039
	dd	173
	dd	3
	align	4
_1404:
	dd	3
	dd	0
	dd	0
	align	4
_1396:
	dd	_1039
	dd	173
	dd	26
	align	4
_1462:
	dd	1
	dd	_617
	dd	0
	align	4
_1420:
	dd	_1039
	dd	156
	dd	3
	align	4
_1425:
	dd	_1039
	dd	157
	dd	3
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	111,98,106,101,99,116
	align	4
_1433:
	dd	_1039
	dd	158
	dd	3
	align	4
_1441:
	dd	_1039
	dd	159
	dd	3
	align	4
_1451:
	dd	_1039
	dd	160
	dd	3
	align	4
_1457:
	dd	_1039
	dd	161
	dd	3
_1524:
	db	"List",0
	align	4
_1523:
	dd	1
	dd	_618
	dd	2
	dd	_1067
	dd	_567
	dd	-4
	dd	2
	dd	_588
	dd	_589
	dd	-8
	dd	2
	dd	_1524
	dd	_562
	dd	-12
	dd	0
	align	4
_1463:
	dd	_1039
	dd	176
	dd	3
	align	4
_1466:
	dd	3
	dd	0
	dd	0
	align	4
_1465:
	dd	_1039
	dd	176
	dd	18
	align	4
_1467:
	dd	_1039
	dd	177
	dd	3
	align	4
_1469:
	dd	_1039
	dd	178
	dd	3
	align	4
_1491:
	dd	3
	dd	0
	dd	2
	dd	_1385
	dd	_1318
	dd	-16
	dd	0
	align	4
_1481:
	dd	_1039
	dd	179
	dd	4
	align	4
_1490:
	dd	3
	dd	0
	dd	0
	align	4
_1487:
	dd	_1039
	dd	180
	dd	5
	align	4
_1492:
	dd	_1039
	dd	183
	dd	3
	align	4
_1521:
	dd	3
	dd	0
	dd	0
	align	4
_1496:
	dd	_1039
	dd	184
	dd	4
	align	4
_1520:
	dd	3
	dd	0
	dd	2
	dd	_1385
	dd	_1318
	dd	-20
	dd	0
	align	4
_1510:
	dd	_1039
	dd	185
	dd	5
	align	4
_1519:
	dd	3
	dd	0
	dd	0
	align	4
_1516:
	dd	_1039
	dd	186
	dd	6
	align	4
_1522:
	dd	_1039
	dd	190
	dd	3
	align	4
_1585:
	dd	1
	dd	_620
	dd	2
	dd	_1067
	dd	_567
	dd	-4
	dd	2
	dd	_588
	dd	_589
	dd	-8
	dd	2
	dd	_1524
	dd	_562
	dd	-12
	dd	0
	align	4
_1525:
	dd	_1039
	dd	194
	dd	3
	align	4
_1527:
	dd	_1039
	dd	195
	dd	3
	align	4
_1549:
	dd	3
	dd	0
	dd	2
	dd	_1385
	dd	_1347
	dd	-16
	dd	0
	align	4
_1539:
	dd	_1039
	dd	196
	dd	4
	align	4
_1548:
	dd	3
	dd	0
	dd	0
	align	4
_1545:
	dd	_1039
	dd	197
	dd	5
	align	4
_1550:
	dd	_1039
	dd	200
	dd	3
	align	4
_1583:
	dd	3
	dd	0
	dd	0
	align	4
_1556:
	dd	_1039
	dd	201
	dd	4
	align	4
_1582:
	dd	3
	dd	0
	dd	2
	dd	_1385
	dd	_1347
	dd	-20
	dd	0
	align	4
_1570:
	dd	_1039
	dd	202
	dd	5
	align	4
_1581:
	dd	3
	dd	0
	dd	0
	align	4
_1578:
	dd	_1039
	dd	203
	dd	6
	align	4
_1584:
	dd	_1039
	dd	207
	dd	3
_1604:
	db	"Vari",0
	align	4
_1603:
	dd	1
	dd	_621
	dd	2
	dd	_1067
	dd	_567
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_545
	dd	_546
	dd	-12
	dd	2
	dd	_628
	dd	_630
	dd	-16
	dd	2
	dd	_588
	dd	_589
	dd	-20
	dd	2
	dd	_1604
	dd	_1068
	dd	-24
	dd	0
	align	4
_1586:
	dd	_1039
	dd	210
	dd	3
	align	4
_1590:
	dd	_1039
	dd	211
	dd	3
	align	4
_1598:
	dd	_1039
	dd	212
	dd	3
_1746:
	db	"CurID",0
_1659:
	db	"M",0
	align	4
_1745:
	dd	1
	dd	_623
	dd	2
	dd	_1067
	dd	_567
	dd	-8
	dd	2
	dd	_604
	dd	_605
	dd	-12
	dd	2
	dd	_547
	dd	_548
	dd	-16
	dd	2
	dd	_545
	dd	_546
	dd	-20
	dd	2
	dd	_603
	dd	_559
	dd	-4
	dd	2
	dd	_588
	dd	_589
	dd	-24
	dd	2
	dd	_1746
	dd	_589
	dd	-28
	dd	2
	dd	_1659
	dd	_1347
	dd	-32
	dd	0
	align	4
_1605:
	dd	_1039
	dd	218
	dd	3
	align	4
_1658:
	dd	3
	dd	0
	dd	2
	dd	_1659
	dd	_1347
	dd	-36
	dd	0
	align	4
_1617:
	dd	_1039
	dd	219
	dd	4
	align	4
_1622:
	dd	3
	dd	0
	dd	0
	align	4
_1621:
	dd	_1039
	dd	219
	dd	19
	align	4
_1623:
	dd	_1039
	dd	220
	dd	4
	align	4
_1657:
	dd	3
	dd	0
	dd	0
	align	4
_1651:
	dd	_1039
	dd	221
	dd	5
	align	4
_1652:
	dd	_1039
	dd	222
	dd	5
	align	4
_1660:
	dd	_1039
	dd	225
	dd	3
	align	4
_1662:
	dd	_1039
	dd	227
	dd	3
	align	4
_1717:
	dd	3
	dd	0
	dd	2
	dd	_1093
	dd	_546
	dd	-40
	dd	0
	align	4
_1676:
	dd	_1039
	dd	232
	dd	4
_1716:
	db	"Count",0
	align	4
_1715:
	dd	3
	dd	0
	dd	2
	dd	_1716
	dd	_589
	dd	-44
	dd	0
	align	4
_1696:
	dd	_1039
	dd	233
	dd	5
	align	4
_1704:
	dd	_1039
	dd	234
	dd	5
	align	4
_1709:
	dd	_1039
	dd	235
	dd	5
	align	4
_1710:
	dd	_1039
	dd	236
	dd	5
	align	4
_1718:
	dd	_1039
	dd	239
	dd	3
	align	4
_1726:
	dd	3
	dd	0
	dd	0
	align	4
_1720:
	dd	_1039
	dd	240
	dd	4
	align	4
_185:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_1725:
	dd	_1039
	dd	241
	dd	4
	align	4
_1727:
	dd	_1039
	dd	244
	dd	3
	align	4
_1731:
	dd	_1039
	dd	245
	dd	3
	align	4
_1739:
	dd	_1039
	dd	246
	dd	3
	align	4
_1744:
	dd	_1039
	dd	247
	dd	3
_1896:
	db	"ExtendName",0
	align	4
_1895:
	dd	1
	dd	_554
	dd	2
	dd	_1067
	dd	_567
	dd	-4
	dd	2
	dd	_629
	dd	_630
	dd	-8
	dd	2
	dd	_1896
	dd	_548
	dd	-12
	dd	2
	dd	_589
	dd	_589
	dd	-16
	dd	0
	align	4
_1747:
	dd	_1039
	dd	250
	dd	3
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,116,121,112,101
	align	4
_1749:
	dd	_1039
	dd	251
	dd	3
	align	4
_1754:
	dd	_1039
	dd	252
	dd	3
	align	4
_1756:
	dd	_1039
	dd	253
	dd	3
	align	4
_1765:
	dd	3
	dd	0
	dd	0
	align	4
_1760:
	dd	_1039
	dd	253
	dd	16
	align	4
_1766:
	dd	_1039
	dd	254
	dd	3
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,120,116,101,110,100
	align	4
_1769:
	dd	_1039
	dd	255
	dd	3
	align	4
_1771:
	dd	_1039
	dd	256
	dd	3
	align	4
_1801:
	dd	3
	dd	0
	dd	2
	dd	_1604
	dd	_1312
	dd	-20
	dd	2
	dd	_1138
	dd	_630
	dd	-24
	dd	0
	align	4
_1783:
	dd	_1039
	dd	257
	dd	4
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,101,108,100
	align	4
_1787:
	dd	_1039
	dd	258
	dd	4
	align	4
_1792:
	dd	_1039
	dd	259
	dd	4
	align	4
_1797:
	dd	_1039
	dd	260
	dd	4
	align	4
_1800:
	dd	_1039
	dd	261
	dd	4
	align	4
_1802:
	dd	_1039
	dd	263
	dd	3
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	102,105,101,108,100,99,111,117,110,116
	align	4
_1805:
	dd	_1039
	dd	264
	dd	3
	align	4
_1806:
	dd	_1039
	dd	265
	dd	3
_1890:
	db	"Meth",0
	align	4
_1889:
	dd	3
	dd	0
	dd	2
	dd	_1890
	dd	_1347
	dd	-28
	dd	2
	dd	_1138
	dd	_630
	dd	-32
	dd	0
	align	4
_1818:
	dd	_1039
	dd	266
	dd	4
	align	4
_68:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,101,116,104,111,100
	align	4
_1822:
	dd	_1039
	dd	267
	dd	4
	align	4
_1833:
	dd	_1039
	dd	269
	dd	4
	align	4
_69:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	118,116,97,98,108,101
	align	4
_1838:
	dd	_1039
	dd	270
	dd	4
	align	4
_1887:
	dd	3
	dd	0
	dd	0
	align	4
_1842:
	dd	_1039
	dd	271
	dd	5
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	114,101,97,108,110,97,109,101
	align	4
_1849:
	dd	_1039
	dd	272
	dd	5
	align	4
_1856:
	dd	_1039
	dd	273
	dd	5
_1885:
	db	"Par",0
_1886:
	db	"Node2",0
	align	4
_1884:
	dd	3
	dd	0
	dd	2
	dd	_1885
	dd	_1214
	dd	-36
	dd	2
	dd	_1886
	dd	_630
	dd	-40
	dd	0
	align	4
_1870:
	dd	_1039
	dd	274
	dd	6
	align	4
_74:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	112,97,114,97,109
	align	4
_1874:
	dd	_1039
	dd	275
	dd	6
	align	4
_1879:
	dd	_1039
	dd	276
	dd	6
	align	4
_1888:
	dd	_1039
	dd	279
	dd	4
	align	4
_1891:
	dd	_1039
	dd	281
	dd	3
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	109,101,116,104,111,100,99,111,117,110,116
	align	4
_1894:
	dd	_1039
	dd	282
	dd	3
	align	4
_1902:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1214
	dd	-4
	dd	0
	align	4
_1901:
	dd	3
	dd	0
	dd	0
	align	4
_1937:
	dd	1
	dd	_552
	dd	2
	dd	_1067
	dd	_1214
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_545
	dd	_546
	dd	-12
	dd	2
	dd	_628
	dd	_548
	dd	-16
	dd	0
	align	4
_1912:
	dd	_1039
	dd	292
	dd	3
	align	4
_1920:
	dd	_1039
	dd	293
	dd	3
	align	4
_1928:
	dd	_1039
	dd	294
	dd	3
	align	4
_1936:
	dd	_1039
	dd	295
	dd	3
_1954:
	db	":TCompiler",0
	align	4
_1953:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
_1941:
	db	":brl.linkedlist.TList",0
	align	4
_1952:
	dd	3
	dd	0
	dd	0
_2058:
	db	"FilePath",0
_2059:
	db	"File",0
_2060:
	db	"Root",0
	align	4
_2057:
	dd	1
	dd	_655
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_2058
	dd	_548
	dd	-8
	dd	2
	dd	_2059
	dd	_644
	dd	-12
	dd	2
	dd	_2060
	dd	_630
	dd	-16
	dd	0
	align	4
_1982:
	dd	_1041
	dd	18
	dd	3
	align	4
_1984:
	dd	_1041
	dd	19
	dd	3
	align	4
_1988:
	dd	_1041
	dd	20
	dd	3
	align	4
_2056:
	dd	3
	dd	0
	dd	2
	dd	_1165
	dd	_630
	dd	-20
	dd	2
	dd	_547
	dd	_548
	dd	-24
	dd	2
	dd	_545
	dd	_546
	dd	-28
	dd	2
	dd	_604
	dd	_605
	dd	-32
	dd	0
	align	4
_2000:
	dd	_1041
	dd	21
	dd	4
	align	4
_2004:
	dd	_1041
	dd	22
	dd	4
	align	4
_2006:
	dd	_1041
	dd	23
	dd	4
	align	4
_2008:
	dd	_1041
	dd	24
	dd	4
	align	4
_2011:
	dd	_1041
	dd	25
	dd	4
	align	4
_2047:
	dd	3
	dd	0
	dd	0
	align	4
_2015:
	dd	_1041
	dd	26
	dd	5
_2045:
	db	"Child",0
_2046:
	db	"Data",0
	align	4
_2044:
	dd	3
	dd	0
	dd	2
	dd	_2045
	dd	_630
	dd	-36
	dd	2
	dd	_628
	dd	_548
	dd	-40
	dd	2
	dd	_2046
	dd	_546
	dd	-44
	dd	0
	align	4
_2027:
	dd	_1041
	dd	27
	dd	6
	align	4
_2029:
	dd	_1041
	dd	28
	dd	6
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,114,101
	align	4
_2036:
	dd	3
	dd	0
	dd	0
	align	4
_2033:
	dd	_1041
	dd	29
	dd	7
	align	4
_2037:
	dd	_1041
	dd	31
	dd	6
	align	4
_2039:
	dd	_1041
	dd	32
	dd	6
	align	4
_2048:
	dd	_1041
	dd	35
	dd	4
	align	4
_2051:
	dd	_1041
	dd	36
	dd	4
_2062:
	db	"Path",0
	align	4
_2061:
	dd	1
	dd	_657
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_2062
	dd	_548
	dd	-8
	dd	0
_2300:
	db	"Text",0
_2301:
	db	"SplitToken",0
_2302:
	db	"InRem",0
_2303:
	db	"l",0
	align	4
_2299:
	dd	1
	dd	_658
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	2
	dd	_2300
	dd	_548
	dd	-12
	dd	2
	dd	_2301
	dd	_642
	dd	-16
	dd	2
	dd	_2302
	dd	_559
	dd	-4
	dd	2
	dd	_2303
	dd	_649
	dd	-20
	dd	0
	align	4
_2063:
	dd	_1041
	dd	43
	dd	3
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_2064:
	dd	_1041
	dd	44
	dd	3
	align	4
_2072:
	dd	_1041
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
_2100:
	dd	_1041
	dd	46
	dd	3
	align	4
_2108:
	dd	_1041
	dd	47
	dd	3
	align	4
_2110:
	dd	_1041
	dd	48
	dd	3
_2270:
	db	"Line",0
_2271:
	db	"LastFound",0
	align	4
_2269:
	dd	3
	dd	0
	dd	2
	dd	_2270
	dd	_548
	dd	-24
	dd	2
	dd	_2271
	dd	_589
	dd	-28
	dd	0
	align	4
_2118:
	dd	_1041
	dd	49
	dd	4
	align	4
_2120:
	dd	_1041
	dd	50
	dd	4
	align	4
_111:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	114,101,109
	align	4
_2123:
	dd	3
	dd	0
	dd	0
	align	4
_2122:
	dd	_1041
	dd	51
	dd	5
	align	4
_2124:
	dd	_1041
	dd	53
	dd	4
	align	4
_2136:
	dd	3
	dd	0
	dd	0
	align	4
_2126:
	dd	_1041
	dd	54
	dd	5
	align	4
_2131:
	dd	_1041
	dd	55
	dd	5
	align	4
_112:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,110,100,114,101,109
	align	4
_2134:
	dd	3
	dd	0
	dd	0
	align	4
_2133:
	dd	_1041
	dd	56
	dd	6
	align	4
_2135:
	dd	_1041
	dd	58
	dd	5
	align	4
_2137:
	dd	_1041
	dd	60
	dd	4
	align	4
_2138:
	dd	_1041
	dd	61
	dd	4
	align	4
_2263:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-32
	dd	0
	align	4
_2142:
	dd	_1041
	dd	62
	dd	5
	align	4
_2150:
	dd	3
	dd	0
	dd	0
	align	4
_2144:
	dd	_1041
	dd	63
	dd	6
	align	4
_2149:
	dd	_1041
	dd	64
	dd	6
	align	4
_2151:
	dd	_1041
	dd	66
	dd	5
	align	4
_2154:
	dd	3
	dd	0
	dd	0
	align	4
_2153:
	dd	_1041
	dd	66
	dd	31
	align	4
_2155:
	dd	_1041
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
_2162:
	dd	3
	dd	0
	dd	0
	align	4
_2161:
	dd	_1041
	dd	68
	dd	6
	align	4
_2163:
	dd	_1041
	dd	70
	dd	5
	align	4
_2164:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	34
	align	4
_2186:
	dd	3
	dd	0
	dd	0
	align	4
_2166:
	dd	_1041
	dd	71
	dd	6
	align	4
_2171:
	dd	_1041
	dd	72
	dd	6
	align	4
_2172:
	dd	_1041
	dd	73
	dd	6
	align	4
_2185:
	dd	3
	dd	0
	dd	0
	align	4
_2175:
	dd	_1041
	dd	74
	dd	7
	align	4
_2184:
	dd	3
	dd	0
	dd	0
	align	4
_2177:
	dd	_1041
	dd	75
	dd	8
	align	4
_2182:
	dd	_1041
	dd	76
	dd	8
	align	4
_2183:
	dd	_1041
	dd	77
	dd	8
	align	4
_2187:
	dd	_1041
	dd	82
	dd	5
_2262:
	db	"SplitTok",0
	align	4
_2261:
	dd	3
	dd	0
	dd	2
	dd	_2262
	dd	_548
	dd	-36
	dd	0
	align	4
_2193:
	dd	_1041
	dd	83
	dd	6
	align	4
_2260:
	dd	3
	dd	0
	dd	0
	align	4
_2195:
	dd	_1041
	dd	84
	dd	7
	align	4
_2205:
	dd	3
	dd	0
	dd	0
	align	4
_2199:
	dd	_1041
	dd	85
	dd	8
	align	4
_2204:
	dd	3
	dd	0
	dd	0
	align	4
_2203:
	dd	_1041
	dd	85
	dd	102
	align	4
_2206:
	dd	_1041
	dd	87
	dd	7
	align	4
_2211:
	dd	_1041
	dd	88
	dd	7
	align	4
_2256:
	dd	3
	dd	0
	dd	0
	align	4
_2215:
	dd	_1041
	dd	90
	dd	8
	align	4
_2223:
	dd	3
	dd	0
	dd	0
	align	4
_2217:
	dd	_1041
	dd	91
	dd	9
	align	4
_2222:
	dd	_1041
	dd	92
	dd	9
	align	4
_125:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,108,111,97,116
	align	4
_2224:
	dd	_1041
	dd	94
	dd	8
	align	4
_2232:
	dd	3
	dd	0
	dd	0
	align	4
_2226:
	dd	_1041
	dd	95
	dd	9
	align	4
_2231:
	dd	_1041
	dd	96
	dd	9
	align	4
_126:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,114,105,110,103
	align	4
_2233:
	dd	_1041
	dd	98
	dd	8
	align	4
_2241:
	dd	3
	dd	0
	dd	0
	align	4
_2235:
	dd	_1041
	dd	99
	dd	9
	align	4
_2240:
	dd	_1041
	dd	100
	dd	9
	align	4
_127:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_2242:
	dd	_1041
	dd	102
	dd	8
	align	4
_128:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	33
	align	4
_2250:
	dd	3
	dd	0
	dd	0
	align	4
_2244:
	dd	_1041
	dd	103
	dd	9
	align	4
_2249:
	dd	_1041
	dd	104
	dd	9
	align	4
_129:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	98,121,116,101
	align	4
_2251:
	dd	_1041
	dd	106
	dd	8
	align	4
_2257:
	dd	_1041
	dd	109
	dd	7
	align	4
_2258:
	dd	_1041
	dd	110
	dd	7
	align	4
_2259:
	dd	_1041
	dd	111
	dd	7
	align	4
_2264:
	dd	_1041
	dd	115
	dd	4
	align	4
_2272:
	dd	_1041
	dd	117
	dd	3
	align	4
_2278:
	dd	_1041
	dd	118
	dd	3
	align	4
_2298:
	dd	3
	dd	0
	dd	0
	align	4
_2279:
	dd	_1041
	dd	119
	dd	4
	align	4
_2294:
	dd	3
	dd	0
	dd	0
	align	4
_2291:
	dd	_1041
	dd	119
	dd	68
	align	4
_2295:
	dd	_1041
	dd	120
	dd	4
_3365:
	db	"TmpCompiler",0
_3366:
	db	"[]:Object",0
_3367:
	db	"intype",0
_2400:
	db	"Template",0
	align	4
_3364:
	dd	1
	dd	_659
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	2
	dd	_3365
	dd	_1954
	dd	-12
	dd	2
	dd	_1138
	dd	_3366
	dd	-16
	dd	2
	dd	_3367
	dd	_548
	dd	-20
	dd	2
	dd	_2400
	dd	_567
	dd	-24
	dd	0
	align	4
_2304:
	dd	_1041
	dd	125
	dd	3
	align	4
_2306:
	dd	_1041
	dd	126
	dd	3
	align	4
_2311:
	dd	_1041
	dd	127
	dd	3
	align	4
_2314:
	dd	_1041
	dd	128
	dd	3
	align	4
_2320:
	dd	_1041
	dd	131
	dd	3
	align	4
_2401:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-28
	dd	2
	dd	_2300
	dd	_548
	dd	-32
	dd	0
	align	4
_2324:
	dd	_1041
	dd	132
	dd	4
	align	4
_2330:
	dd	_1041
	dd	133
	dd	4
	align	4
_136:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_2399:
	dd	3
	dd	0
	dd	2
	dd	_2400
	dd	_567
	dd	-36
	dd	2
	dd	_545
	dd	_546
	dd	-40
	dd	0
	align	4
_2334:
	dd	_1041
	dd	135
	dd	6
	align	4
_2335:
	dd	_1041
	dd	136
	dd	6
	align	4
_2337:
	dd	_1041
	dd	137
	dd	6
	align	4
_2349:
	dd	_1041
	dd	138
	dd	6
	align	4
_2351:
	dd	_1041
	dd	139
	dd	6
	align	4
_2359:
	dd	_1041
	dd	140
	dd	6
	align	4
_2369:
	dd	_1041
	dd	141
	dd	6
	align	4
_2373:
	dd	_1041
	dd	142
	dd	6
	align	4
_2377:
	dd	_1041
	dd	143
	dd	6
	align	4
_2382:
	dd	_1041
	dd	146
	dd	6
	align	4
_2387:
	dd	_1041
	dd	148
	dd	6
	align	4
_2390:
	dd	_1041
	dd	149
	dd	6
	align	4
_2393:
	dd	_1041
	dd	151
	dd	6
	align	4
_2396:
	dd	_1041
	dd	152
	dd	6
	align	4
_2402:
	dd	_1041
	dd	156
	dd	3
	align	4
_2843:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-44
	dd	2
	dd	_2300
	dd	_548
	dd	-48
	dd	0
	align	4
_2406:
	dd	_1041
	dd	157
	dd	4
	align	4
_2412:
	dd	_1041
	dd	158
	dd	4
	align	4
_140:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,108,111,98,97,108
	align	4
_2498:
	dd	3
	dd	0
	dd	0
	align	4
_2417:
	dd	_1041
	dd	188
	dd	6
_2492:
	db	"name",0
_2493:
	db	"Id",0
	align	4
_2491:
	dd	3
	dd	0
	dd	2
	dd	_2492
	dd	_548
	dd	-52
	dd	2
	dd	_545
	dd	_546
	dd	-56
	dd	2
	dd	_2493
	dd	_1312
	dd	-60
	dd	0
	align	4
_2418:
	dd	_1041
	dd	162
	dd	7
	align	4
_2419:
	dd	_1041
	dd	163
	dd	7
	align	4
_2425:
	dd	_1041
	dd	164
	dd	7
	align	4
_2427:
	dd	_1041
	dd	165
	dd	7
	align	4
_2428:
	dd	_1041
	dd	166
	dd	7
	align	4
_2440:
	dd	3
	dd	0
	dd	0
	align	4
_2434:
	dd	_1041
	dd	167
	dd	8
	align	4
_2435:
	dd	_1041
	dd	168
	dd	8
	align	4
_2441:
	dd	_1041
	dd	170
	dd	7
	align	4
_2442:
	dd	_1041
	dd	171
	dd	7
	align	4
_2453:
	dd	3
	dd	0
	dd	0
	align	4
_2447:
	dd	_1041
	dd	172
	dd	8
	align	4
_2448:
	dd	_1041
	dd	173
	dd	8
	align	4
_2449:
	dd	_1041
	dd	174
	dd	8
	align	4
_2454:
	dd	_1041
	dd	176
	dd	7
	align	4
_2456:
	dd	_1041
	dd	177
	dd	7
	align	4
_2459:
	dd	_1041
	dd	178
	dd	7
	align	4
_2464:
	dd	_1041
	dd	179
	dd	7
	align	4
_2489:
	dd	3
	dd	0
	dd	0
	align	4
_2470:
	dd	_1041
	dd	180
	dd	8
	align	4
_2488:
	dd	3
	dd	0
	dd	0
	align	4
_2473:
	dd	_1041
	dd	181
	dd	9
	align	4
_2487:
	dd	3
	dd	0
	dd	0
	align	4
_2485:
	dd	_1041
	dd	182
	dd	10
	align	4
_2486:
	dd	_1041
	dd	183
	dd	10
	align	4
_2490:
	dd	_1041
	dd	187
	dd	7
	align	4
_2842:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-64
	dd	2
	dd	_2400
	dd	_567
	dd	-68
	dd	0
	align	4
_2499:
	dd	_1041
	dd	190
	dd	6
	align	4
_2500:
	dd	_1041
	dd	192
	dd	6
	align	4
_2506:
	dd	_1041
	dd	193
	dd	6
	align	4
_2508:
	dd	_1041
	dd	194
	dd	6
_2525:
	db	"Temp",0
	align	4
_2524:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_567
	dd	-72
	dd	0
	align	4
_2518:
	dd	_1041
	dd	195
	dd	7
	align	4
_2523:
	dd	3
	dd	0
	dd	0
	align	4
_2522:
	dd	_1041
	dd	196
	dd	8
	align	4
_2526:
	dd	_1041
	dd	199
	dd	6
	align	4
_2527:
	dd	_1041
	dd	200
	dd	6
	align	4
_153:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,120,116,101,110,100,115
_2584:
	db	"superName",0
	align	4
_2583:
	dd	3
	dd	0
	dd	2
	dd	_2584
	dd	_548
	dd	-76
	dd	0
	align	4
_2533:
	dd	_1041
	dd	201
	dd	7
	align	4
_2534:
	dd	_1041
	dd	202
	dd	7
	align	4
_2540:
	dd	_1041
	dd	203
	dd	7
	align	4
_2582:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_567
	dd	-80
	dd	0
	align	4
_2550:
	dd	_1041
	dd	204
	dd	8
	align	4
_2581:
	dd	3
	dd	0
	dd	0
	align	4
_2554:
	dd	_1041
	dd	205
	dd	9
	align	4
_2562:
	dd	_1041
	dd	206
	dd	9
	align	4
_2571:
	dd	_1041
	dd	207
	dd	9
	align	4
_2580:
	dd	_1041
	dd	209
	dd	9
	align	4
_2612:
	dd	3
	dd	0
	dd	0
	align	4
_2586:
	dd	_1041
	dd	213
	dd	7
	align	4
_2594:
	dd	_1041
	dd	214
	dd	7
	align	4
_2603:
	dd	_1041
	dd	215
	dd	7
	align	4
_2613:
	dd	_1041
	dd	217
	dd	6
	align	4
_2837:
	dd	3
	dd	0
	dd	0
	align	4
_2618:
	dd	_1041
	dd	218
	dd	7
	align	4
_161:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	112,114,105,118,97,116,101
	align	4
_2629:
	dd	3
	dd	0
	dd	0
	align	4
_2624:
	dd	_1041
	dd	219
	dd	8
	align	4
_2628:
	dd	_1041
	dd	220
	dd	8
	align	4
_2630:
	dd	_1041
	dd	222
	dd	7
	align	4
_162:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	112,117,98,108,105,99
	align	4
_2641:
	dd	3
	dd	0
	dd	0
	align	4
_2636:
	dd	_1041
	dd	223
	dd	8
	align	4
_2640:
	dd	_1041
	dd	224
	dd	8
	align	4
_2642:
	dd	_1041
	dd	226
	dd	7
	align	4
_163:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	112,114,111,116,101,99,116,101,100
	align	4
_2653:
	dd	3
	dd	0
	dd	0
	align	4
_2648:
	dd	_1041
	dd	227
	dd	8
	align	4
_2652:
	dd	_1041
	dd	228
	dd	8
	align	4
_2654:
	dd	_1041
	dd	230
	dd	7
	align	4
_164:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	102,117,110,99,116,105,111,110
	align	4
_2672:
	dd	3
	dd	0
	dd	0
	align	4
_2660:
	dd	_1041
	dd	231
	dd	8
	align	4
_167:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	95,95,105,110,116,101,114,110,109,101,116,104,111,100,95,95
	align	4
_166:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	95,95
	align	4
_165:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	95,95,95
	align	4
_2673:
	dd	_1041
	dd	275
	dd	7
_2835:
	db	"PreNode",0
	align	4
_2834:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-84
	dd	2
	dd	_545
	dd	_546
	dd	-88
	dd	2
	dd	_2300
	dd	_548
	dd	-92
	dd	2
	dd	_2835
	dd	_630
	dd	-96
	dd	0
	align	4
_2679:
	dd	_1041
	dd	276
	dd	8
	align	4
_2680:
	dd	_1041
	dd	277
	dd	8
	align	4
_2686:
	dd	_1041
	dd	278
	dd	8
	align	4
_2687:
	dd	_1041
	dd	279
	dd	8
	align	4
_2688:
	dd	_1041
	dd	280
	dd	8
	align	4
_2694:
	dd	_1041
	dd	281
	dd	8
	align	4
_2695:
	dd	_1041
	dd	282
	dd	8
	align	4
_2706:
	dd	3
	dd	0
	dd	0
	align	4
_2700:
	dd	_1041
	dd	283
	dd	9
	align	4
_2701:
	dd	_1041
	dd	284
	dd	9
	align	4
_2702:
	dd	_1041
	dd	285
	dd	9
	align	4
_2707:
	dd	_1041
	dd	287
	dd	8
	align	4
_2710:
	dd	_1041
	dd	288
	dd	8
_2787:
	db	"Compiler",0
	align	4
_2786:
	dd	3
	dd	0
	dd	2
	dd	_2787
	dd	_1954
	dd	-100
	dd	0
	align	4
_2716:
	dd	_1041
	dd	289
	dd	9
	align	4
_2717:
	dd	_1041
	dd	290
	dd	9
	align	4
_2728:
	dd	3
	dd	0
	dd	0
	align	4
_2722:
	dd	_1041
	dd	291
	dd	10
	align	4
_2727:
	dd	_1041
	dd	292
	dd	10
	align	4
_2729:
	dd	_1041
	dd	294
	dd	9
	align	4
_2731:
	dd	_1041
	dd	295
	dd	9
	align	4
_2738:
	dd	_1041
	dd	296
	dd	9
	align	4
_2741:
	dd	_1041
	dd	298
	dd	9
	align	4
_2785:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-104
	dd	0
	align	4
_2757:
	dd	_1041
	dd	299
	dd	10
	align	4
_177:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,111,100,101
	align	4
_2784:
	dd	3
	dd	0
	dd	0
	align	4
_2761:
	dd	_1041
	dd	300
	dd	11
	align	4
_2782:
	dd	3
	dd	0
	dd	2
	dd	_1886
	dd	_630
	dd	-108
	dd	0
	align	4
_2773:
	dd	_1041
	dd	301
	dd	12
	align	4
_181:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,105,110,101
	align	4
_2781:
	dd	3
	dd	0
	dd	0
	align	4
_2777:
	dd	_1041
	dd	302
	dd	13
	align	4
_2780:
	dd	_1041
	dd	303
	dd	13
	align	4
_2783:
	dd	_1041
	dd	306
	dd	11
	align	4
_2828:
	dd	3
	dd	0
	dd	0
	align	4
_2789:
	dd	_1041
	dd	310
	dd	9
	align	4
_182:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,104,111,114,116
	align	4
_183:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,111,110,103
	align	4
_186:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,111,117,98,108,101
	align	4
_2798:
	dd	3
	dd	0
	dd	0
	align	4
_2797:
	dd	_1041
	dd	323
	dd	11
	align	4
_188:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,117,108,108
	align	4
_2810:
	dd	3
	dd	0
	dd	0
	align	4
_2799:
	dd	_1041
	dd	312
	dd	11
	align	4
_2800:
	dd	_1041
	dd	313
	dd	11
	align	4
_184:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_2803:
	dd	_1041
	dd	314
	dd	11
	align	4
_2822:
	dd	3
	dd	0
	dd	0
	align	4
_2811:
	dd	_1041
	dd	316
	dd	11
	align	4
_2812:
	dd	_1041
	dd	317
	dd	11
	align	4
_187:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,48
	align	4
_2815:
	dd	_1041
	dd	318
	dd	11
	align	4
_2827:
	dd	3
	dd	0
	dd	0
	align	4
_2823:
	dd	_1041
	dd	320
	dd	11
	align	4
_2824:
	dd	_1041
	dd	321
	dd	11
	align	4
_2829:
	dd	_1041
	dd	326
	dd	8
	align	4
_2836:
	dd	_1041
	dd	328
	dd	7
	align	4
_160:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	101,110,100,116,121,112,101
	align	4
_2838:
	dd	_1041
	dd	330
	dd	6
	align	4
_2844:
	dd	_1041
	dd	333
	dd	3
	align	4
_2846:
	dd	_1041
	dd	334
	dd	3
	align	4
_2848:
	dd	_1041
	dd	335
	dd	3
	align	4
_3241:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-112
	dd	2
	dd	_2300
	dd	_548
	dd	-116
	dd	0
	align	4
_2852:
	dd	_1041
	dd	336
	dd	4
	align	4
_2858:
	dd	_1041
	dd	337
	dd	4
	align	4
_2896:
	dd	3
	dd	0
	dd	0
	align	4
_2867:
	dd	_1041
	dd	339
	dd	6
	align	4
_2868:
	dd	_1041
	dd	340
	dd	6
	align	4
_2873:
	dd	_1041
	dd	342
	dd	6
	align	4
_2891:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_567
	dd	-120
	dd	0
	align	4
_2883:
	dd	_1041
	dd	343
	dd	7
	align	4
_2890:
	dd	3
	dd	0
	dd	0
	align	4
_2887:
	dd	_1041
	dd	344
	dd	8
	align	4
_2888:
	dd	_1041
	dd	345
	dd	8
	align	4
_2889:
	dd	_1041
	dd	346
	dd	8
	align	4
_2892:
	dd	_1041
	dd	349
	dd	6
	align	4
_2895:
	dd	3
	dd	0
	dd	0
	align	4
_2894:
	dd	_1041
	dd	349
	dd	23
	align	4
_2903:
	dd	3
	dd	0
	dd	0
	align	4
_2897:
	dd	_1041
	dd	351
	dd	6
	align	4
_2898:
	dd	_1041
	dd	352
	dd	6
	align	4
_2899:
	dd	_1041
	dd	353
	dd	6
	align	4
_2911:
	dd	3
	dd	0
	dd	0
	align	4
_2904:
	dd	_1041
	dd	355
	dd	6
	align	4
_2910:
	dd	3
	dd	0
	dd	0
	align	4
_2906:
	dd	_1041
	dd	355
	dd	20
	align	4
_2919:
	dd	3
	dd	0
	dd	0
	align	4
_2912:
	dd	_1041
	dd	357
	dd	6
	align	4
_2918:
	dd	3
	dd	0
	dd	0
	align	4
_2914:
	dd	_1041
	dd	357
	dd	20
	align	4
_2927:
	dd	3
	dd	0
	dd	0
	align	4
_2920:
	dd	_1041
	dd	359
	dd	6
	align	4
_2926:
	dd	3
	dd	0
	dd	0
	align	4
_2922:
	dd	_1041
	dd	359
	dd	20
_3239:
	db	"IsArray2",0
_3240:
	db	"SelTemplate",0
	align	4
_3238:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-124
	dd	2
	dd	_545
	dd	_546
	dd	-128
	dd	2
	dd	_603
	dd	_559
	dd	-4
	dd	2
	dd	_2493
	dd	_605
	dd	-132
	dd	2
	dd	_3239
	dd	_589
	dd	-136
	dd	2
	dd	_3240
	dd	_567
	dd	-140
	dd	0
	align	4
_2928:
	dd	_1041
	dd	361
	dd	6
	align	4
_2929:
	dd	_1041
	dd	362
	dd	6
	align	4
_195:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,105,114,116,117,97,108
	align	4
_196:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	111,118,101,114,114,105,100,101
	align	4
_197:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,98,115,116,114,97,99,116
	align	4
_198:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,116,97,116,105,99
	align	4
_199:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,105,110,97,108
	align	4
_200:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,116,116,101,114
	align	4
_201:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	103,101,116,116,101,114
	align	4
_2938:
	dd	3
	dd	0
	dd	0
	align	4
_2937:
	dd	_1041
	dd	365
	dd	8
	align	4
_2939:
	dd	_1041
	dd	367
	dd	6
	align	4
_2945:
	dd	_1041
	dd	368
	dd	6
	align	4
_2947:
	dd	_1041
	dd	369
	dd	6
	align	4
_2948:
	dd	_1041
	dd	370
	dd	6
	align	4
_2950:
	dd	_1041
	dd	371
	dd	6
	align	4
_2966:
	dd	3
	dd	0
	dd	0
	align	4
_2964:
	dd	_1041
	dd	373
	dd	8
	align	4
_2965:
	dd	_1041
	dd	374
	dd	8
	align	4
_2969:
	dd	3
	dd	0
	dd	0
	align	4
_2967:
	dd	_1041
	dd	376
	dd	8
	align	4
_2968:
	dd	_1041
	dd	377
	dd	8
	align	4
_2972:
	dd	3
	dd	0
	dd	0
	align	4
_2970:
	dd	_1041
	dd	379
	dd	8
	align	4
_2971:
	dd	_1041
	dd	380
	dd	8
	align	4
_2975:
	dd	3
	dd	0
	dd	0
	align	4
_2973:
	dd	_1041
	dd	382
	dd	8
	align	4
_2974:
	dd	_1041
	dd	383
	dd	8
	align	4
_2978:
	dd	3
	dd	0
	dd	0
	align	4
_2976:
	dd	_1041
	dd	385
	dd	8
	align	4
_2977:
	dd	_1041
	dd	386
	dd	8
	align	4
_2979:
	dd	3
	dd	0
	dd	0
	align	4
_2980:
	dd	3
	dd	0
	dd	0
	align	4
_2981:
	dd	_1041
	dd	393
	dd	6
	align	4
_2994:
	dd	3
	dd	0
	dd	0
	align	4
_2987:
	dd	_1041
	dd	394
	dd	7
	align	4
_2988:
	dd	_1041
	dd	395
	dd	7
	align	4
_2993:
	dd	_1041
	dd	396
	dd	7
	align	4
_2995:
	dd	_1041
	dd	398
	dd	6
	align	4
_2997:
	dd	_1041
	dd	400
	dd	6
	align	4
_3000:
	dd	_1041
	dd	401
	dd	6
	align	4
_3007:
	dd	3
	dd	0
	dd	0
	align	4
_3002:
	dd	_1041
	dd	401
	dd	20
	align	4
_3008:
	dd	_1041
	dd	403
	dd	6
	align	4
_3010:
	dd	_1041
	dd	404
	dd	6
	align	4
_3018:
	dd	3
	dd	0
	dd	0
	align	4
_3015:
	dd	_1041
	dd	405
	dd	7
	align	4
_3016:
	dd	_1041
	dd	406
	dd	7
	align	4
_3017:
	dd	_1041
	dd	407
	dd	7
	align	4
_3019:
	dd	_1041
	dd	409
	dd	6
	align	4
_3020:
	dd	_1041
	dd	410
	dd	6
	align	4
_3024:
	dd	_1041
	dd	411
	dd	6
	align	4
_3026:
	dd	_1041
	dd	412
	dd	6
	align	4
_3051:
	dd	3
	dd	0
	dd	2
	dd	_1093
	dd	_548
	dd	-144
	dd	0
	align	4
_3028:
	dd	_1041
	dd	414
	dd	7
	align	4
_3030:
	dd	_1041
	dd	415
	dd	7
	align	4
_205:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,105,115
	align	4
_3033:
	dd	_1041
	dd	417
	dd	7
	align	4
_3050:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_567
	dd	-148
	dd	0
	align	4
_3043:
	dd	_1041
	dd	418
	dd	8
	align	4
_3049:
	dd	3
	dd	0
	dd	0
	align	4
_3047:
	dd	_1041
	dd	419
	dd	9
	align	4
_3048:
	dd	_1041
	dd	420
	dd	9
	align	4
_3052:
	dd	_1041
	dd	424
	dd	6
	align	4
_3149:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-152
	dd	2
	dd	_1093
	dd	_546
	dd	-156
	dd	2
	dd	_628
	dd	_548
	dd	-160
	dd	2
	dd	_706
	dd	_589
	dd	-164
	dd	0
	align	4
_3057:
	dd	_1041
	dd	425
	dd	7
	align	4
_3063:
	dd	_1041
	dd	426
	dd	7
	align	4
_3064:
	dd	_1041
	dd	427
	dd	7
	align	4
_3067:
	dd	_1041
	dd	428
	dd	7
	align	4
_3080:
	dd	3
	dd	0
	dd	0
	align	4
_3073:
	dd	_1041
	dd	429
	dd	8
	align	4
_3074:
	dd	_1041
	dd	430
	dd	8
	align	4
_3079:
	dd	_1041
	dd	431
	dd	8
	align	4
_3081:
	dd	_1041
	dd	435
	dd	7
	align	4
_3083:
	dd	_1041
	dd	436
	dd	7
	align	4
_3091:
	dd	3
	dd	0
	dd	0
	align	4
_3088:
	dd	_1041
	dd	437
	dd	8
	align	4
_3089:
	dd	_1041
	dd	438
	dd	8
	align	4
_3090:
	dd	_1041
	dd	439
	dd	8
	align	4
_3092:
	dd	_1041
	dd	442
	dd	7
	align	4
_3096:
	dd	_1041
	dd	443
	dd	7
	align	4
_3136:
	dd	3
	dd	0
	dd	0
	align	4
_3102:
	dd	_1041
	dd	444
	dd	8
	align	4
_3135:
	dd	3
	dd	0
	dd	0
	align	4
_3105:
	dd	_1041
	dd	445
	dd	9
	align	4
_3127:
	dd	3
	dd	0
	dd	0
	align	4
_3117:
	dd	_1041
	dd	446
	dd	10
	align	4
_3125:
	dd	3
	dd	0
	dd	0
	align	4
_3123:
	dd	_1041
	dd	447
	dd	11
	align	4
_3124:
	dd	_1041
	dd	448
	dd	11
	align	4
_3126:
	dd	_1041
	dd	450
	dd	10
	align	4
_3134:
	dd	3
	dd	0
	dd	0
	align	4
_3129:
	dd	_1041
	dd	452
	dd	10
	align	4
_3137:
	dd	_1041
	dd	457
	dd	7
	align	4
_3140:
	dd	_1041
	dd	458
	dd	7
	align	4
_3147:
	dd	3
	dd	0
	dd	0
	align	4
_3146:
	dd	_1041
	dd	458
	dd	35
	align	4
_3148:
	dd	_1041
	dd	459
	dd	7
	align	4
_3150:
	dd	_1041
	dd	461
	dd	6
	align	4
_3154:
	dd	_1041
	dd	462
	dd	6
_3227:
	db	"TmpLink",0
	align	4
_3226:
	dd	3
	dd	0
	dd	2
	dd	_3227
	dd	_649
	dd	-168
	dd	0
	align	4
_3156:
	dd	_1041
	dd	463
	dd	7
	align	4
_3164:
	dd	_1041
	dd	464
	dd	7
	align	4
_3225:
	dd	3
	dd	0
	dd	0
	align	4
_3165:
	dd	_1041
	dd	465
	dd	8
	align	4
_3221:
	dd	3
	dd	0
	dd	0
	align	4
_3181:
	dd	_1041
	dd	466
	dd	9
	align	4
_3190:
	dd	3
	dd	0
	dd	0
	align	4
_3187:
	dd	_1041
	dd	467
	dd	10
	align	4
_3191:
	dd	_1041
	dd	469
	dd	9
	align	4
_3201:
	dd	_1041
	dd	470
	dd	9
	align	4
_3209:
	dd	_1041
	dd	471
	dd	9
	align	4
_3222:
	dd	_1041
	dd	473
	dd	8
	align	4
_3232:
	dd	3
	dd	0
	dd	0
	align	4
_3229:
	dd	_1041
	dd	476
	dd	7
	align	4
_3233:
	dd	_1041
	dd	478
	dd	6
	align	4
_3242:
	dd	_1041
	dd	482
	dd	3
	align	4
_3358:
	dd	3
	dd	0
	dd	2
	dd	_2400
	dd	_567
	dd	-172
	dd	2
	dd	_1093
	dd	_567
	dd	-176
	dd	0
	align	4
_3252:
	dd	_1041
	dd	483
	dd	4
	align	4
_3256:
	dd	_1041
	dd	484
	dd	4
	align	4
_3357:
	dd	3
	dd	0
	dd	0
	align	4
_3257:
	dd	_1041
	dd	485
	dd	5
	align	4
_3353:
	dd	3
	dd	0
	dd	2
	dd	_1890
	dd	_1347
	dd	-180
	dd	0
	align	4
_3269:
	dd	_1041
	dd	486
	dd	6
	align	4
_3352:
	dd	3
	dd	0
	dd	2
	dd	_604
	dd	_605
	dd	-184
	dd	0
	align	4
_3273:
	dd	_1041
	dd	487
	dd	7
	align	4
_3279:
	dd	_1041
	dd	488
	dd	7
	align	4
_3295:
	dd	_1041
	dd	489
	dd	7
	align	4
_3302:
	dd	_1041
	dd	490
	dd	7
	align	4
_3318:
	dd	_1041
	dd	491
	dd	7
	align	4
_3321:
	dd	_1041
	dd	492
	dd	7
	align	4
_3329:
	dd	_1041
	dd	493
	dd	7
	align	4
_3334:
	dd	_1041
	dd	497
	dd	7
	align	4
_3354:
	dd	_1041
	dd	500
	dd	5
	align	4
_3359:
	dd	_1041
	dd	503
	dd	3
_3607:
	db	"DoDefs",0
_3608:
	db	"RootNode",0
	align	4
_3606:
	dd	1
	dd	_660
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	2
	dd	_3607
	dd	_559
	dd	-4
	dd	2
	dd	_1138
	dd	_1954
	dd	-12
	dd	2
	dd	_3608
	dd	_630
	dd	-16
	dd	0
	align	4
_3368:
	dd	_1041
	dd	518
	dd	3
	align	4
_3370:
	dd	_1041
	dd	519
	dd	3
	align	4
_3375:
	dd	_1041
	dd	520
	dd	3
	align	4
_230:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	49,46,48
	align	4
_3383:
	dd	_1041
	dd	521
	dd	3
	align	4
_231:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	67,80,66
	align	4
_3385:
	dd	_1041
	dd	522
	dd	3
	align	4
_233:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	48,46,50
	align	4
_232:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	118,101,114,115,105,111,110
	align	4
_3388:
	dd	_1041
	dd	523
	dd	3
	align	4
_3393:
	dd	_1041
	dd	524
	dd	3
_3455:
	db	"GlobalNode",0
	align	4
_3454:
	dd	3
	dd	0
	dd	2
	dd	_3455
	dd	_630
	dd	-20
	dd	0
	align	4
_3395:
	dd	_1041
	dd	525
	dd	4
	align	4
_3408:
	dd	3
	dd	0
	dd	2
	dd	_2400
	dd	_567
	dd	-24
	dd	0
	align	4
_3405:
	dd	_1041
	dd	526
	dd	5
	align	4
_3409:
	dd	_1041
	dd	528
	dd	4
	align	4
_3413:
	dd	_1041
	dd	530
	dd	4
_3453:
	db	"vari",0
	align	4
_3452:
	dd	3
	dd	0
	dd	2
	dd	_3453
	dd	_1312
	dd	-28
	dd	2
	dd	_629
	dd	_630
	dd	-32
	dd	0
	align	4
_3425:
	dd	_1041
	dd	531
	dd	5
	align	4
_3427:
	dd	_1041
	dd	532
	dd	5
	align	4
_3436:
	dd	3
	dd	0
	dd	0
	align	4
_3433:
	dd	_1041
	dd	533
	dd	6
	align	4
_240:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	100,101,102,97,114,114,97,121
	align	4
_3441:
	dd	3
	dd	0
	dd	0
	align	4
_3438:
	dd	_1041
	dd	535
	dd	6
	align	4
_241:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	100,101,102,118,97,114
	align	4
_3442:
	dd	_1041
	dd	537
	dd	5
	align	4
_3447:
	dd	_1041
	dd	538
	dd	5
	align	4
_3456:
	dd	_1041
	dd	541
	dd	3
	align	4
_3466:
	dd	_1041
	dd	542
	dd	3
	align	4
_3476:
	dd	_1041
	dd	543
	dd	3
	align	4
_3488:
	dd	_1041
	dd	544
	dd	3
	align	4
_3502:
	dd	_1041
	dd	546
	dd	3
	align	4
_3505:
	dd	_1041
	dd	550
	dd	3
	align	4
_3587:
	dd	3
	dd	0
	dd	0
	align	4
_3507:
	dd	_1041
	dd	551
	dd	4
_3586:
	db	"func",0
	align	4
_3585:
	dd	3
	dd	0
	dd	2
	dd	_3586
	dd	_605
	dd	-36
	dd	2
	dd	_629
	dd	_630
	dd	-40
	dd	0
	align	4
_3519:
	dd	_1041
	dd	553
	dd	5
	align	4
_3528:
	dd	3
	dd	0
	dd	0
	align	4
_3527:
	dd	_1041
	dd	553
	dd	46
	align	4
_3529:
	dd	_1041
	dd	554
	dd	5
	align	4
_3533:
	dd	_1041
	dd	555
	dd	5
	align	4
_3538:
	dd	_1041
	dd	556
	dd	5
	align	4
_3543:
	dd	_1041
	dd	557
	dd	5
	align	4
_3548:
	dd	_1041
	dd	558
	dd	5
	align	4
_245:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	117,115,101,114,102,117,110,99
	align	4
_3553:
	dd	_1041
	dd	560
	dd	5
	align	4
_3579:
	dd	3
	dd	0
	dd	2
	dd	_1885
	dd	_1214
	dd	-44
	dd	2
	dd	_1886
	dd	_630
	dd	-48
	dd	0
	align	4
_3565:
	dd	_1041
	dd	561
	dd	6
	align	4
_3569:
	dd	_1041
	dd	562
	dd	6
	align	4
_3574:
	dd	_1041
	dd	563
	dd	6
	align	4
_3580:
	dd	_1041
	dd	565
	dd	5
	align	4
_3588:
	dd	_1041
	dd	570
	dd	3
	align	4
_249:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	116,109,112,47,88,77,76,67,111,100,101,46,120,109,108
	align	4
_3589:
	dd	_1041
	dd	571
	dd	3
	align	4
_3594:
	dd	_1041
	dd	572
	dd	3
	align	4
_3599:
	dd	_1041
	dd	574
	dd	3
	align	4
_3605:
	dd	3
	dd	0
	dd	0
	align	4
_3603:
	dd	_1041
	dd	575
	dd	4
	align	4
_250:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	69,114,114,111,114,33
	align	4
_3604:
	dd	_1041
	dd	576
	dd	4
_3645:
	db	"CurLine",0
	align	4
_3644:
	dd	1
	dd	_662
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_629
	dd	_630
	dd	-8
	dd	2
	dd	_2060
	dd	_630
	dd	-12
	dd	2
	dd	_3645
	dd	_630
	dd	-16
	dd	0
	align	4
_3609:
	dd	_1041
	dd	580
	dd	3
	align	4
_3613:
	dd	_1041
	dd	581
	dd	3
	align	4
_3617:
	dd	_1041
	dd	582
	dd	3
	align	4
_3625:
	dd	_1041
	dd	584
	dd	3
	align	4
_3628:
	dd	_1041
	dd	586
	dd	3
	align	4
_3636:
	dd	_1041
	dd	587
	dd	3
	align	4
_3793:
	dd	1
	dd	_664
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
	align	4
_3646:
	dd	_1041
	dd	590
	dd	3
	align	4
_3658:
	dd	_1041
	dd	591
	dd	3
	align	4
_3671:
	dd	_1041
	dd	592
	dd	3
	align	4
_3780:
	dd	3
	dd	0
	dd	0
	align	4
_3718:
	dd	_1041
	dd	593
	dd	4
	align	4
_3726:
	dd	3
	dd	0
	dd	0
	align	4
_3722:
	dd	_1041
	dd	594
	dd	5
	align	4
_3725:
	dd	_1041
	dd	595
	dd	5
	align	4
_3727:
	dd	_1041
	dd	597
	dd	4
	align	4
_3739:
	dd	_1041
	dd	598
	dd	4
	align	4
_264:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	110,117,109,98,101,114
	align	4
_3746:
	dd	_1041
	dd	599
	dd	4
	align	4
_3753:
	dd	_1041
	dd	600
	dd	4
	align	4
_3764:
	dd	3
	dd	0
	dd	0
	align	4
_3761:
	dd	_1041
	dd	600
	dd	42
	align	4
_3765:
	dd	_1041
	dd	601
	dd	4
	align	4
_3779:
	dd	3
	dd	0
	dd	0
	align	4
_3776:
	dd	_1041
	dd	602
	dd	5
	align	4
_254:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,110,100,105,102
	align	4
_255:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	101,108,115,101,105,102
	align	4
_256:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	101,108,115,101
	align	4
_257:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,101,120,116
	align	4
_258:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	119,101,110,100
	align	4
_259:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	117,110,116,105,108
	align	4
_260:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	101,110,100,102,117,110,99,116,105,111,110
	align	4
_261:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,101
	align	4
_262:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	100,101,102,97,117,108,116
	align	4
_263:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	101,110,100,115,101,108,101,99,116
	align	4
_3781:
	dd	_1041
	dd	605
	dd	3
	align	4
_3964:
	dd	1
	dd	_665
	dd	2
	dd	_1067
	dd	_1954
	dd	-12
	dd	2
	dd	_705
	dd	_589
	dd	-16
	dd	0
	align	4
_3794:
	dd	_1041
	dd	608
	dd	3
	align	4
_3799:
	dd	3
	dd	0
	dd	0
	align	4
_3796:
	dd	_1041
	dd	609
	dd	4
_3958:
	db	"Rec1",0
_3959:
	db	":Trecursive",0
_3960:
	db	"Rec2",0
_3961:
	db	":TRecursive",0
_3962:
	db	"ReturnNode",0
_3963:
	db	"Ret",0
	align	4
_3957:
	dd	3
	dd	0
	dd	2
	dd	_3958
	dd	_3959
	dd	-20
	dd	2
	dd	_3960
	dd	_3961
	dd	-24
	dd	2
	dd	_3962
	dd	_630
	dd	-28
	dd	2
	dd	_629
	dd	_630
	dd	-32
	dd	2
	dd	_3963
	dd	_546
	dd	-36
	dd	0
	align	4
_3801:
	dd	_1041
	dd	612
	dd	4
	align	4
_3805:
	dd	_1041
	dd	613
	dd	4
	align	4
_3807:
	dd	_1041
	dd	614
	dd	4
	align	4
_3810:
	dd	_1041
	dd	615
	dd	4
	align	4
_3814:
	dd	_1041
	dd	617
	dd	4
_3946:
	db	"Found",0
_3947:
	db	"Matches",0
	align	4
_3945:
	dd	3
	dd	0
	dd	2
	dd	_3946
	dd	_559
	dd	-4
	dd	2
	dd	_3947
	dd	_559
	dd	-8
	dd	0
	align	4
_3815:
	dd	_1041
	dd	618
	dd	5
	align	4
_3817:
	dd	_1041
	dd	619
	dd	5
	align	4
_3819:
	dd	_1041
	dd	620
	dd	5
_3885:
	db	"Op",0
_3886:
	db	":TOperator",0
	align	4
_3940:
	dd	3
	dd	0
	dd	2
	dd	_3885
	dd	_3886
	dd	-40
	dd	0
	align	4
_3831:
	dd	_1041
	dd	621
	dd	6
_3938:
	db	"CurrentOperator",0
_3939:
	db	"Sel",0
	align	4
_3937:
	dd	3
	dd	0
	dd	2
	dd	_3938
	dd	_548
	dd	-44
	dd	2
	dd	_3939
	dd	_3886
	dd	-48
	dd	0
	align	4
_3837:
	dd	_1041
	dd	622
	dd	7
	align	4
_3841:
	dd	_1041
	dd	623
	dd	7
	align	4
_3844:
	dd	_1041
	dd	624
	dd	7
	align	4
_3847:
	dd	_1041
	dd	625
	dd	7
	align	4
_3849:
	dd	_1041
	dd	626
	dd	7
	align	4
_3884:
	dd	3
	dd	0
	dd	2
	dd	_3885
	dd	_3886
	dd	-52
	dd	0
	align	4
_3861:
	dd	_1041
	dd	627
	dd	8
	align	4
_3883:
	dd	3
	dd	0
	dd	0
	align	4
_3881:
	dd	_1041
	dd	629
	dd	9
	align	4
_3882:
	dd	_1041
	dd	630
	dd	9
	align	4
_3887:
	dd	_1041
	dd	633
	dd	7
_3919:
	db	"LLeft",0
_3920:
	db	"RRight",0
	align	4
_3918:
	dd	3
	dd	0
	dd	2
	dd	_3919
	dd	_630
	dd	-56
	dd	2
	dd	_3920
	dd	_630
	dd	-60
	dd	0
	align	4
_3889:
	dd	_1041
	dd	634
	dd	8
	align	4
_3899:
	dd	3
	dd	0
	dd	0
	align	4
_3891:
	dd	_1041
	dd	634
	dd	22
	align	4
_3900:
	dd	_1041
	dd	636
	dd	8
	align	4
_3903:
	dd	_1041
	dd	637
	dd	8
	align	4
_3906:
	dd	_1041
	dd	638
	dd	8
	align	4
_3909:
	dd	_1041
	dd	639
	dd	8
	align	4
_3917:
	dd	_1041
	dd	643
	dd	8
	align	4
_3936:
	dd	3
	dd	0
	dd	0
	align	4
_3922:
	dd	_1041
	dd	645
	dd	8
	align	4
_3935:
	dd	3
	dd	0
	dd	0
	align	4
_3924:
	dd	_1041
	dd	645
	dd	19
	align	4
_280:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,93
	align	4
_279:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	39,44,32,39
	align	4
_278:
	dd	_bbStringClass
	dd	2147483647
	dd	19
	dw	39,32,119,105,116,104,32,100,97,116,97,116,121,112,101,115
	dw	32,91,39
	align	4
_277:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,79,112,101,114
	dw	97,116,111,114,32,39
	align	4
_3941:
	dd	_1041
	dd	649
	dd	5
	align	4
_3944:
	dd	3
	dd	0
	dd	0
	align	4
_3943:
	dd	_1041
	dd	649
	dd	23
	align	4
_3948:
	dd	_1041
	dd	651
	dd	4
	align	4
_3953:
	dd	3
	dd	0
	dd	0
	align	4
_3950:
	dd	_1041
	dd	652
	dd	5
	align	4
_3954:
	dd	_1041
	dd	654
	dd	4
	align	4
_4184:
	dd	1
	dd	_667
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
	align	4
_3965:
	dd	_1041
	dd	659
	dd	3
	align	4
_281:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,114,117,101
	align	4
_282:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	102,97,108,115,101
	align	4
_283:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,111,116
_4026:
	db	"Rec",0
	align	4
_4025:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-8
	dd	0
	align	4
_3998:
	dd	_1041
	dd	715
	dd	5
	align	4
_4000:
	dd	_1041
	dd	716
	dd	5
	align	4
_4003:
	dd	_1041
	dd	717
	dd	5
	align	4
_4006:
	dd	3
	dd	0
	dd	0
	align	4
_4005:
	dd	_1041
	dd	717
	dd	17
	align	4
_4007:
	dd	_1041
	dd	718
	dd	5
	align	4
_4010:
	dd	_1041
	dd	719
	dd	5
	align	4
_4013:
	dd	3
	dd	0
	dd	0
	align	4
_4012:
	dd	_1041
	dd	719
	dd	17
	align	4
_4014:
	dd	_1041
	dd	720
	dd	5
	align	4
_4017:
	dd	_1041
	dd	721
	dd	5
	align	4
_4020:
	dd	3
	dd	0
	dd	0
	align	4
_4019:
	dd	_1041
	dd	721
	dd	17
	align	4
_4021:
	dd	_1041
	dd	722
	dd	5
	align	4
_288:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	85,110,107,110,111,119,110,32,84,111,107,101,110
	align	4
_4024:
	dd	_1041
	dd	723
	dd	5
	align	4
_4038:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-12
	dd	0
	align	4
_4027:
	dd	_1041
	dd	661
	dd	5
	align	4
_4030:
	dd	_1041
	dd	662
	dd	5
	align	4
_4034:
	dd	_1041
	dd	663
	dd	5
	align	4
_4037:
	dd	_1041
	dd	664
	dd	5
	align	4
_4050:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-16
	dd	0
	align	4
_4039:
	dd	_1041
	dd	666
	dd	5
	align	4
_4041:
	dd	_1041
	dd	667
	dd	5
	align	4
_356:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_4044:
	dd	_1041
	dd	668
	dd	5
	align	4
_4047:
	dd	_1041
	dd	669
	dd	5
	align	4
_4062:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-20
	dd	0
	align	4
_4051:
	dd	_1041
	dd	671
	dd	5
	align	4
_4053:
	dd	_1041
	dd	672
	dd	5
	align	4
_4056:
	dd	_1041
	dd	673
	dd	5
	align	4
_4059:
	dd	_1041
	dd	674
	dd	5
	align	4
_4080:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-24
	dd	2
	dd	_4026
	dd	_3961
	dd	-28
	dd	0
	align	4
_4063:
	dd	_1041
	dd	676
	dd	5
	align	4
_4065:
	dd	_1041
	dd	677
	dd	5
	align	4
_4068:
	dd	_1041
	dd	678
	dd	5
	align	4
_4072:
	dd	_1041
	dd	679
	dd	5
	align	4
_4075:
	dd	_1041
	dd	680
	dd	5
_4115:
	db	"Node3",0
	align	4
_4114:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-32
	dd	2
	dd	_4026
	dd	_3961
	dd	-36
	dd	2
	dd	_1886
	dd	_630
	dd	-40
	dd	2
	dd	_4115
	dd	_630
	dd	-44
	dd	0
	align	4
_4081:
	dd	_1041
	dd	682
	dd	5
	align	4
_4084:
	dd	_1041
	dd	683
	dd	5
	align	4
_284:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_4086:
	dd	_1041
	dd	684
	dd	5
	align	4
_4090:
	dd	_1041
	dd	685
	dd	5
	align	4
_285:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_4094:
	dd	_1041
	dd	686
	dd	5
	align	4
_4096:
	dd	_1041
	dd	687
	dd	5
	align	4
_286:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	45,49
	align	4
_4099:
	dd	_1041
	dd	688
	dd	5
	align	4
_4104:
	dd	_1041
	dd	689
	dd	5
	align	4
_287:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_4109:
	dd	_1041
	dd	690
	dd	5
	align	4
_4130:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-48
	dd	0
	align	4
_4116:
	dd	_1041
	dd	692
	dd	5
	align	4
_4119:
	dd	_1041
	dd	693
	dd	5
	align	4
_4123:
	dd	_1041
	dd	694
	dd	5
	align	4
_4139:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-52
	dd	0
	align	4
_4131:
	dd	_1041
	dd	696
	dd	5
	align	4
_4134:
	dd	_1041
	dd	697
	dd	5
	align	4
_4136:
	dd	_1041
	dd	698
	dd	5
	align	4
_4153:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-56
	dd	0
	align	4
_4140:
	dd	_1041
	dd	700
	dd	5
	align	4
_4142:
	dd	_1041
	dd	701
	dd	5
	align	4
_4147:
	dd	_1041
	dd	702
	dd	5
	align	4
_4150:
	dd	_1041
	dd	703
	dd	5
	align	4
_4167:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-60
	dd	0
	align	4
_4154:
	dd	_1041
	dd	705
	dd	5
	align	4
_4156:
	dd	_1041
	dd	706
	dd	5
	align	4
_4161:
	dd	_1041
	dd	707
	dd	5
	align	4
_4164:
	dd	_1041
	dd	708
	dd	5
	align	4
_4183:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-64
	dd	0
	align	4
_4168:
	dd	_1041
	dd	710
	dd	5
	align	4
_4170:
	dd	_1041
	dd	711
	dd	5
	align	4
_4177:
	dd	_1041
	dd	712
	dd	5
	align	4
_4180:
	dd	_1041
	dd	713
	dd	5
_4968:
	db	"PreParam",0
	align	4
_4967:
	dd	1
	dd	_669
	dd	2
	dd	_1067
	dd	_1954
	dd	-16
	dd	2
	dd	_4968
	dd	_630
	dd	-20
	dd	0
	align	4
_4185:
	dd	_1041
	dd	727
	dd	3
	align	4
_4267:
	dd	3
	dd	0
	dd	2
	dd	_545
	dd	_546
	dd	-24
	dd	2
	dd	_706
	dd	_589
	dd	-28
	dd	2
	dd	_4026
	dd	_3961
	dd	-32
	dd	2
	dd	_629
	dd	_630
	dd	-36
	dd	2
	dd	_697
	dd	_562
	dd	-40
	dd	0
	align	4
_4191:
	dd	_1041
	dd	728
	dd	4
	align	4
_4195:
	dd	_1041
	dd	729
	dd	4
	align	4
_4198:
	dd	_1041
	dd	730
	dd	4
	align	4
_4200:
	dd	_1041
	dd	731
	dd	4
	align	4
_4210:
	dd	3
	dd	0
	dd	0
	align	4
_4203:
	dd	_1041
	dd	732
	dd	5
	align	4
_4206:
	dd	_1041
	dd	733
	dd	5
	align	4
_4209:
	dd	_1041
	dd	734
	dd	5
	align	4
_4211:
	dd	_1041
	dd	736
	dd	4
	align	4
_4215:
	dd	_1041
	dd	737
	dd	4
	align	4
_4218:
	dd	_1041
	dd	738
	dd	4
	align	4
_4222:
	dd	_1041
	dd	739
	dd	4
	align	4
_4225:
	dd	_1041
	dd	740
	dd	4
	align	4
_4233:
	dd	_1041
	dd	741
	dd	4
	align	4
_4235:
	dd	_1041
	dd	742
	dd	4
	align	4
_4246:
	dd	3
	dd	0
	dd	0
	align	4
_4239:
	dd	_1041
	dd	743
	dd	5
	align	4
_4243:
	dd	_1041
	dd	745
	dd	5
	align	4
_4247:
	dd	_1041
	dd	747
	dd	4
	align	4
_4263:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-44
	dd	0
	align	4
_4251:
	dd	_1041
	dd	748
	dd	5
	align	4
_4257:
	dd	_1041
	dd	749
	dd	5
	align	4
_4260:
	dd	_1041
	dd	750
	dd	5
	align	4
_4264:
	dd	_1041
	dd	753
	dd	4
_4961:
	db	"FuncCount",0
_4962:
	db	"Break",0
_4963:
	db	"Recs",0
_4964:
	db	"FunkName",0
_4965:
	db	"Start",0
_4966:
	db	"ParameterCount",0
	align	4
_4960:
	dd	3
	dd	0
	dd	2
	dd	_4961
	dd	_589
	dd	-48
	dd	2
	dd	_4962
	dd	_559
	dd	-4
	dd	2
	dd	_4963
	dd	_562
	dd	-52
	dd	2
	dd	_4964
	dd	_548
	dd	-56
	dd	2
	dd	_568
	dd	_548
	dd	-60
	dd	2
	dd	_4965
	dd	_559
	dd	-8
	dd	2
	dd	_4966
	dd	_589
	dd	-64
	dd	0
	align	4
_4269:
	dd	_1041
	dd	755
	dd	4
	align	4
_4271:
	dd	_1041
	dd	756
	dd	4
	align	4
_4273:
	dd	_1041
	dd	757
	dd	4
	align	4
_4294:
	dd	3
	dd	0
	dd	2
	dd	_604
	dd	_605
	dd	-68
	dd	0
	align	4
_4285:
	dd	_1041
	dd	758
	dd	5
	align	4
_4293:
	dd	3
	dd	0
	dd	0
	align	4
_4291:
	dd	_1041
	dd	759
	dd	6
	align	4
_4292:
	dd	_1041
	dd	760
	dd	6
	align	4
_4295:
	dd	_1041
	dd	763
	dd	4
	align	4
_4298:
	dd	3
	dd	0
	dd	0
	align	4
_4297:
	dd	_1041
	dd	763
	dd	18
	align	4
_4299:
	dd	_1041
	dd	765
	dd	4
	align	4
_4301:
	dd	_1041
	dd	766
	dd	4
	align	4
_4305:
	dd	_1041
	dd	767
	dd	4
	align	4
_4307:
	dd	_1041
	dd	768
	dd	4
	align	4
_4312:
	dd	3
	dd	0
	dd	2
	dd	_1093
	dd	_548
	dd	-72
	dd	0
	align	4
_4309:
	dd	_1041
	dd	769
	dd	5
	align	4
_4311:
	dd	_1041
	dd	770
	dd	5
	align	4
_295:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	95,95,100,105,109,95,48,95
	align	4
_4313:
	dd	_1041
	dd	773
	dd	4
	align	4
_4316:
	dd	_1041
	dd	774
	dd	4
	align	4
_4318:
	dd	_1041
	dd	775
	dd	4
	align	4
_4320:
	dd	_1041
	dd	776
	dd	4
	align	4
_4327:
	dd	3
	dd	0
	dd	0
	align	4
_4324:
	dd	_1041
	dd	776
	dd	29
	align	4
_4328:
	dd	_1041
	dd	777
	dd	4
	align	4
_4370:
	dd	3
	dd	0
	dd	0
	align	4
_4336:
	dd	_1041
	dd	778
	dd	5
	align	4
_4369:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-76
	dd	0
	align	4
_4341:
	dd	_1041
	dd	779
	dd	6
	align	4
_4346:
	dd	3
	dd	0
	dd	0
	align	4
_4343:
	dd	_1041
	dd	779
	dd	26
	align	4
_4347:
	dd	_1041
	dd	780
	dd	6
	align	4
_4348:
	dd	_1041
	dd	781
	dd	6
	align	4
_4355:
	dd	3
	dd	0
	dd	0
	align	4
_4352:
	dd	_1041
	dd	781
	dd	31
	align	4
_299:
	dd	_bbStringClass
	dd	2147483647
	dd	54
	dw	77,121,70,117,110,99,116,105,111,110,40,44,44,41,32,100
	dw	111,101,115,32,110,111,116,32,119,111,114,107,44,32,97,110
	dw	100,32,105,115,32,110,111,116,32,103,111,105,110,103,32,116
	dw	111,32,119,111,114,107
	align	4
_4356:
	dd	_1041
	dd	782
	dd	6
	align	4
_4360:
	dd	_1041
	dd	783
	dd	6
	align	4
_4363:
	dd	_1041
	dd	785
	dd	6
	align	4
_4368:
	dd	_1041
	dd	786
	dd	6
	align	4
_4371:
	dd	_1041
	dd	789
	dd	4
	align	4
_4378:
	dd	3
	dd	0
	dd	0
	align	4
_4375:
	dd	_1041
	dd	789
	dd	29
	align	4
_4379:
	dd	_1041
	dd	790
	dd	4
	align	4
_4618:
	dd	3
	dd	0
	dd	2
	dd	_604
	dd	_605
	dd	-80
	dd	0
	align	4
_4391:
	dd	_1041
	dd	791
	dd	5
_4617:
	db	"Link",0
	align	4
_4616:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-84
	dd	2
	dd	_4617
	dd	_649
	dd	-88
	dd	2
	dd	_545
	dd	_546
	dd	-92
	dd	2
	dd	_697
	dd	_562
	dd	-96
	dd	0
	align	4
_4395:
	dd	_1041
	dd	793
	dd	6
	align	4
_4396:
	dd	_1041
	dd	794
	dd	6
	align	4
_4414:
	dd	3
	dd	0
	dd	2
	dd	_1885
	dd	_1214
	dd	-100
	dd	0
	align	4
_4408:
	dd	_1041
	dd	795
	dd	7
	align	4
_4413:
	dd	3
	dd	0
	dd	0
	align	4
_4412:
	dd	_1041
	dd	795
	dd	27
	align	4
_4415:
	dd	_1041
	dd	797
	dd	6
	align	4
_4442:
	dd	3
	dd	0
	dd	0
	align	4
_4423:
	dd	_1041
	dd	798
	dd	7
	align	4
_4441:
	dd	3
	dd	0
	dd	2
	dd	_1885
	dd	_1214
	dd	-104
	dd	0
	align	4
_4435:
	dd	_1041
	dd	799
	dd	8
	align	4
_4440:
	dd	3
	dd	0
	dd	0
	align	4
_4439:
	dd	_1041
	dd	800
	dd	9
	align	4
_4443:
	dd	_1041
	dd	804
	dd	6
	align	4
_4446:
	dd	3
	dd	0
	dd	0
	align	4
_4445:
	dd	_1041
	dd	804
	dd	20
	align	4
_4447:
	dd	_1041
	dd	805
	dd	6
	align	4
_4451:
	dd	_1041
	dd	806
	dd	6
	align	4
_309:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,108,108
	align	4
_4453:
	dd	_1041
	dd	807
	dd	6
	align	4
_4493:
	dd	3
	dd	0
	dd	0
	align	4
_4457:
	dd	_1041
	dd	808
	dd	7
	align	4
_4492:
	dd	3
	dd	0
	dd	2
	dd	_1890
	dd	_1347
	dd	-108
	dd	0
	align	4
_4471:
	dd	_1041
	dd	809
	dd	8
	align	4
_4491:
	dd	3
	dd	0
	dd	0
	align	4
_4485:
	dd	_1041
	dd	810
	dd	9
	align	4
_4490:
	dd	_1041
	dd	811
	dd	9
	align	4
_4494:
	dd	_1041
	dd	815
	dd	6
	align	4
_4499:
	dd	_1041
	dd	816
	dd	6
	align	4
_4505:
	dd	_1041
	dd	817
	dd	6
	align	4
_4510:
	dd	3
	dd	0
	dd	0
	align	4
_4507:
	dd	_1041
	dd	818
	dd	7
	align	4
_4511:
	dd	_1041
	dd	820
	dd	6
_4532:
	db	"ParamNode",0
	align	4
_4531:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-112
	dd	2
	dd	_4532
	dd	_630
	dd	-116
	dd	0
	align	4
_4521:
	dd	_1041
	dd	821
	dd	7
	align	4
_4525:
	dd	_1041
	dd	824
	dd	7
	align	4
_4528:
	dd	_1041
	dd	825
	dd	7
	align	4
_4533:
	dd	_1041
	dd	827
	dd	6
	align	4
_4543:
	dd	_1041
	dd	828
	dd	6
	align	4
_4545:
	dd	_1041
	dd	829
	dd	6
_4595:
	db	"XNode",0
	align	4
_4594:
	dd	3
	dd	0
	dd	2
	dd	_4595
	dd	_630
	dd	-120
	dd	0
	align	4
_4549:
	dd	_1041
	dd	830
	dd	7
	align	4
_4553:
	dd	_1041
	dd	832
	dd	7
	align	4
_4558:
	dd	_1041
	dd	834
	dd	7
	align	4
_4562:
	dd	_1041
	dd	835
	dd	7
	align	4
_4592:
	dd	3
	dd	0
	dd	0
	align	4
_4568:
	dd	_1041
	dd	837
	dd	8
	align	4
_4591:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-124
	dd	0
	align	4
_4580:
	dd	_1041
	dd	838
	dd	9
	align	4
_4590:
	dd	3
	dd	0
	dd	0
	align	4
_4584:
	dd	_1041
	dd	839
	dd	10
	align	4
_4589:
	dd	_1041
	dd	840
	dd	10
	align	4
_4593:
	dd	_1041
	dd	844
	dd	7
	align	4
_4596:
	dd	_1041
	dd	846
	dd	6
	align	4
_4612:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-128
	dd	0
	align	4
_4600:
	dd	_1041
	dd	847
	dd	7
	align	4
_4606:
	dd	_1041
	dd	848
	dd	7
	align	4
_4609:
	dd	_1041
	dd	849
	dd	7
	align	4
_4613:
	dd	_1041
	dd	851
	dd	6
	align	4
_4619:
	dd	_1041
	dd	854
	dd	4
	align	4
_4954:
	dd	3
	dd	0
	dd	0
	align	4
_4621:
	dd	_1041
	dd	855
	dd	5
	align	4
_4953:
	dd	3
	dd	0
	dd	2
	dd	_604
	dd	_605
	dd	-132
	dd	0
	align	4
_4633:
	dd	_1041
	dd	856
	dd	6
_4952:
	db	"MustBeOptional",0
	align	4
_4951:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-136
	dd	2
	dd	_4617
	dd	_649
	dd	-140
	dd	2
	dd	_4952
	dd	_559
	dd	-12
	dd	2
	dd	_545
	dd	_546
	dd	-144
	dd	2
	dd	_697
	dd	_562
	dd	-148
	dd	0
	align	4
_4637:
	dd	_1041
	dd	858
	dd	7
	align	4
_4641:
	dd	_1041
	dd	859
	dd	7
	align	4
_4643:
	dd	_1041
	dd	860
	dd	7
	align	4
_4675:
	dd	3
	dd	0
	dd	0
	align	4
_4647:
	dd	_1041
	dd	861
	dd	9
	align	4
_4674:
	dd	3
	dd	0
	dd	2
	dd	_1890
	dd	_1347
	dd	-152
	dd	0
	align	4
_4661:
	dd	_1041
	dd	862
	dd	9
	align	4
_4673:
	dd	3
	dd	0
	dd	0
	align	4
_4667:
	dd	_1041
	dd	863
	dd	10
	align	4
_4672:
	dd	_1041
	dd	864
	dd	10
	align	4
_4676:
	dd	_1041
	dd	868
	dd	7
	align	4
_4681:
	dd	_1041
	dd	869
	dd	7
	align	4
_4685:
	dd	_1041
	dd	870
	dd	7
	align	4
_4687:
	dd	_1041
	dd	871
	dd	7
	align	4
_4692:
	dd	3
	dd	0
	dd	0
	align	4
_4689:
	dd	_1041
	dd	872
	dd	8
	align	4
_4693:
	dd	_1041
	dd	874
	dd	7
	align	4
_4866:
	dd	3
	dd	0
	dd	2
	dd	_1885
	dd	_1214
	dd	-156
	dd	2
	dd	_4026
	dd	_3961
	dd	-160
	dd	0
	align	4
_4705:
	dd	_1041
	dd	875
	dd	8
	align	4
_4720:
	dd	3
	dd	0
	dd	0
	align	4
_4713:
	dd	_1041
	dd	877
	dd	9
	align	4
_4718:
	dd	3
	dd	0
	dd	0
	align	4
_4715:
	dd	_1041
	dd	877
	dd	17
	align	4
_4719:
	dd	_1041
	dd	878
	dd	9
	align	4
_4721:
	dd	_1041
	dd	880
	dd	8
	align	4
_4756:
	dd	3
	dd	0
	dd	0
	align	4
_4727:
	dd	_1041
	dd	882
	dd	9
	align	4
_4742:
	dd	3
	dd	0
	dd	0
	align	4
_4731:
	dd	_1041
	dd	883
	dd	10
	align	4
_330:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	39,32,103,105,118,101,110,58,32,39
	align	4
_329:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,32,101,120,112,101,99,116,101,100,58,32,39
	align	4
_328:
	dd	_bbStringClass
	dd	2147483647
	dd	39
	dw	80,97,114,97,109,101,116,101,114,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,97,116,32,70,117,110,99
	dw	116,105,111,110,58,32,39
	align	4
_4755:
	dd	3
	dd	0
	dd	0
	align	4
_4744:
	dd	_1041
	dd	885
	dd	10
	align	4
_4757:
	dd	_1041
	dd	889
	dd	8
	align	4
_4759:
	dd	_1041
	dd	890
	dd	8
	align	4
_4764:
	dd	3
	dd	0
	dd	0
	align	4
_4761:
	dd	_1041
	dd	890
	dd	21
	align	4
_4765:
	dd	_1041
	dd	892
	dd	8
_4841:
	db	":Tcompiler",0
	align	4
_4840:
	dd	3
	dd	0
	dd	2
	dd	_2787
	dd	_4841
	dd	-164
	dd	2
	dd	_2835
	dd	_630
	dd	-168
	dd	0
	align	4
_4771:
	dd	_1041
	dd	894
	dd	9
	align	4
_4772:
	dd	_1041
	dd	895
	dd	9
	align	4
_4774:
	dd	_1041
	dd	897
	dd	9
	align	4
_4787:
	dd	_1041
	dd	898
	dd	9
	align	4
_4790:
	dd	_1041
	dd	900
	dd	9
	align	4
_4792:
	dd	_1041
	dd	901
	dd	9
	align	4
_4836:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-172
	dd	0
	align	4
_4808:
	dd	_1041
	dd	902
	dd	10
	align	4
_4835:
	dd	3
	dd	0
	dd	0
	align	4
_4812:
	dd	_1041
	dd	903
	dd	11
	align	4
_4833:
	dd	3
	dd	0
	dd	2
	dd	_1886
	dd	_630
	dd	-176
	dd	0
	align	4
_4824:
	dd	_1041
	dd	904
	dd	12
	align	4
_4832:
	dd	3
	dd	0
	dd	0
	align	4
_4828:
	dd	_1041
	dd	905
	dd	13
	align	4
_4831:
	dd	_1041
	dd	906
	dd	13
	align	4
_4834:
	dd	_1041
	dd	909
	dd	11
	align	4
_4837:
	dd	_1041
	dd	913
	dd	9
	align	4
_4865:
	dd	3
	dd	0
	dd	2
	dd	_4532
	dd	_630
	dd	-180
	dd	0
	align	4
_4843:
	dd	_1041
	dd	915
	dd	9
	align	4
_4848:
	dd	3
	dd	0
	dd	0
	align	4
_4845:
	dd	_1041
	dd	915
	dd	32
	align	4
_337:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	69,120,112,101,99,116,105,110,103,32,39,44,39
	align	4
_4849:
	dd	_1041
	dd	916
	dd	9
	align	4
_4853:
	dd	_1041
	dd	917
	dd	9
	align	4
_4862:
	dd	_1041
	dd	918
	dd	9
	align	4
_4867:
	dd	_1041
	dd	921
	dd	7
	align	4
_4877:
	dd	_1041
	dd	922
	dd	7
	align	4
_4879:
	dd	_1041
	dd	923
	dd	7
	align	4
_4928:
	dd	3
	dd	0
	dd	2
	dd	_4595
	dd	_630
	dd	-184
	dd	0
	align	4
_4883:
	dd	_1041
	dd	924
	dd	8
	align	4
_4887:
	dd	_1041
	dd	926
	dd	8
	align	4
_4892:
	dd	_1041
	dd	928
	dd	8
	align	4
_4896:
	dd	_1041
	dd	929
	dd	8
	align	4
_4926:
	dd	3
	dd	0
	dd	0
	align	4
_4902:
	dd	_1041
	dd	931
	dd	9
	align	4
_4925:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-188
	dd	0
	align	4
_4914:
	dd	_1041
	dd	932
	dd	10
	align	4
_4924:
	dd	3
	dd	0
	dd	0
	align	4
_4918:
	dd	_1041
	dd	933
	dd	11
	align	4
_4923:
	dd	_1041
	dd	934
	dd	11
	align	4
_4927:
	dd	_1041
	dd	938
	dd	8
	align	4
_4929:
	dd	_1041
	dd	940
	dd	7
	align	4
_4945:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-192
	dd	0
	align	4
_4933:
	dd	_1041
	dd	941
	dd	8
	align	4
_4939:
	dd	_1041
	dd	942
	dd	8
	align	4
_4942:
	dd	_1041
	dd	943
	dd	8
	align	4
_4946:
	dd	_1041
	dd	945
	dd	7
	align	4
_4959:
	dd	3
	dd	0
	dd	0
	align	4
_4956:
	dd	_1041
	dd	950
	dd	5
	align	4
_341:
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
_6171:
	dd	1
	dd	_671
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	0
	align	4
_4969:
	dd	_1041
	dd	956
	dd	3
	align	4
_342:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	105,102
	align	4
_348:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	119,104,105,108,101
	align	4
_349:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,112,101,97,116
	align	4
_350:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	102,111,114
	align	4
_357:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	98,114,101,97,107
	align	4
_359:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,110,116,105,110,117,101
	align	4
_380:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	114,101,116,117,114,110
	align	4
_382:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	115,101,108,101,99,116
	align	4
_402:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	110,101,119
	align	4
_5144:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-12
	dd	2
	dd	_4026
	dd	_3961
	dd	-16
	dd	2
	dd	_1886
	dd	_630
	dd	-20
	dd	0
	align	4
_4985:
	dd	_1041
	dd	960
	dd	5
	align	4
_4988:
	dd	_1041
	dd	961
	dd	5
	align	4
_4990:
	dd	_1041
	dd	962
	dd	5
	align	4
_4994:
	dd	_1041
	dd	963
	dd	5
	align	4
_343:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	99,111,110,100,105,116,105,111,110
	align	4
_4998:
	dd	_1041
	dd	964
	dd	5
	align	4
_5005:
	dd	_1041
	dd	965
	dd	5
	align	4
_344:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,104,101,110
	align	4
_5027:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-24
	dd	2
	dd	_1886
	dd	_630
	dd	-28
	dd	0
	align	4
_5009:
	dd	_1041
	dd	966
	dd	6
	align	4
_5012:
	dd	_1041
	dd	967
	dd	6
	align	4
_5016:
	dd	_1041
	dd	968
	dd	6
	align	4
_5018:
	dd	_1041
	dd	969
	dd	6
	align	4
_5023:
	dd	_1041
	dd	970
	dd	6
	align	4
_5026:
	dd	_1041
	dd	971
	dd	6
	align	4
_5140:
	dd	3
	dd	0
	dd	0
	align	4
_5029:
	dd	_1041
	dd	973
	dd	6
	align	4
_5032:
	dd	_1041
	dd	974
	dd	6
_5112:
	db	"NodeLine",0
_5113:
	db	"NodeElse",0
	align	4
_5118:
	dd	3
	dd	0
	dd	2
	dd	_5112
	dd	_630
	dd	-32
	dd	2
	dd	_5113
	dd	_630
	dd	-36
	dd	0
	align	4
_5036:
	dd	_1041
	dd	975
	dd	7
	align	4
_5038:
	dd	_1041
	dd	976
	dd	7
	align	4
_5043:
	dd	_1041
	dd	977
	dd	7
	align	4
_5047:
	dd	_1041
	dd	978
	dd	7
_5115:
	db	"NodeLine2",0
_5116:
	db	"NodeIf",0
	align	4
_5114:
	dd	3
	dd	0
	dd	2
	dd	_5115
	dd	_630
	dd	-40
	dd	2
	dd	_5116
	dd	_630
	dd	-44
	dd	2
	dd	_4026
	dd	_3961
	dd	-48
	dd	2
	dd	_1886
	dd	_630
	dd	-52
	dd	0
	align	4
_5050:
	dd	_1041
	dd	979
	dd	8
	align	4
_5053:
	dd	_1041
	dd	980
	dd	8
	align	4
_5057:
	dd	_1041
	dd	981
	dd	8
	align	4
_5062:
	dd	_1041
	dd	982
	dd	8
	align	4
_5066:
	dd	_1041
	dd	983
	dd	8
	align	4
_5070:
	dd	_1041
	dd	984
	dd	8
	align	4
_5074:
	dd	_1041
	dd	985
	dd	8
	align	4
_5081:
	dd	_1041
	dd	986
	dd	8
	align	4
_5084:
	dd	_1041
	dd	987
	dd	8
	align	4
_5111:
	dd	3
	dd	0
	dd	2
	dd	_5112
	dd	_630
	dd	-56
	dd	2
	dd	_5113
	dd	_630
	dd	-60
	dd	0
	align	4
_5092:
	dd	_1041
	dd	988
	dd	9
	align	4
_5095:
	dd	_1041
	dd	989
	dd	9
	align	4
_5099:
	dd	_1041
	dd	990
	dd	9
	align	4
_5104:
	dd	_1041
	dd	991
	dd	9
	align	4
_5108:
	dd	_1041
	dd	992
	dd	9
	align	4
_5117:
	dd	_1041
	dd	995
	dd	7
	align	4
_5136:
	dd	3
	dd	0
	dd	0
	align	4
_5120:
	dd	_1041
	dd	996
	dd	6
_5135:
	db	"ElseNode",0
	align	4
_5134:
	dd	3
	dd	0
	dd	2
	dd	_5135
	dd	_630
	dd	-64
	dd	0
	align	4
_5124:
	dd	_1041
	dd	997
	dd	7
	align	4
_5127:
	dd	_1041
	dd	998
	dd	7
	align	4
_5131:
	dd	_1041
	dd	999
	dd	7
	align	4
_5137:
	dd	_1041
	dd	1002
	dd	6
	align	4
_5141:
	dd	_1041
	dd	1005
	dd	5
	align	4
_5186:
	dd	3
	dd	0
	dd	2
	dd	_588
	dd	_589
	dd	-68
	dd	2
	dd	_629
	dd	_630
	dd	-72
	dd	2
	dd	_4026
	dd	_3961
	dd	-76
	dd	2
	dd	_1886
	dd	_630
	dd	-80
	dd	0
	align	4
_5145:
	dd	_1041
	dd	1007
	dd	5
	align	4
_5149:
	dd	_1041
	dd	1008
	dd	5
	align	4
_5153:
	dd	_1041
	dd	1009
	dd	5
	align	4
_5156:
	dd	_1041
	dd	1010
	dd	5
	align	4
_5158:
	dd	_1041
	dd	1011
	dd	5
	align	4
_5162:
	dd	_1041
	dd	1012
	dd	5
	align	4
_5166:
	dd	_1041
	dd	1014
	dd	5
	align	4
_5173:
	dd	_1041
	dd	1015
	dd	5
	align	4
_5176:
	dd	_1041
	dd	1016
	dd	5
	align	4
_5179:
	dd	_1041
	dd	1017
	dd	5
	align	4
_5183:
	dd	_1041
	dd	1018
	dd	5
	align	4
_5228:
	dd	3
	dd	0
	dd	2
	dd	_588
	dd	_589
	dd	-84
	dd	2
	dd	_629
	dd	_630
	dd	-88
	dd	2
	dd	_4026
	dd	_3961
	dd	-92
	dd	2
	dd	_1886
	dd	_630
	dd	-96
	dd	0
	align	4
_5187:
	dd	_1041
	dd	1020
	dd	5
	align	4
_5191:
	dd	_1041
	dd	1021
	dd	5
	align	4
_5195:
	dd	_1041
	dd	1022
	dd	5
	align	4
_5198:
	dd	_1041
	dd	1023
	dd	5
	align	4
_5200:
	dd	_1041
	dd	1024
	dd	5
	align	4
_5203:
	dd	_1041
	dd	1025
	dd	5
	align	4
_5206:
	dd	_1041
	dd	1026
	dd	5
	align	4
_5210:
	dd	_1041
	dd	1027
	dd	5
	align	4
_5214:
	dd	_1041
	dd	1029
	dd	5
	align	4
_5221:
	dd	_1041
	dd	1030
	dd	5
	align	4
_5225:
	dd	_1041
	dd	1031
	dd	5
_5351:
	db	"variable",0
_5352:
	db	"TmpNode",0
	align	4
_5350:
	dd	3
	dd	0
	dd	2
	dd	_588
	dd	_589
	dd	-100
	dd	2
	dd	_629
	dd	_630
	dd	-104
	dd	2
	dd	_4026
	dd	_3959
	dd	-108
	dd	2
	dd	_5351
	dd	_1312
	dd	-112
	dd	2
	dd	_5352
	dd	_630
	dd	-116
	dd	0
	align	4
_5229:
	dd	_1041
	dd	1033
	dd	5
	align	4
_5233:
	dd	_1041
	dd	1034
	dd	5
	align	4
_5237:
	dd	_1041
	dd	1035
	dd	5
	align	4
_5240:
	dd	_1041
	dd	1036
	dd	5
	align	4
_5242:
	dd	_1041
	dd	1037
	dd	5
	align	4
_5246:
	dd	_1041
	dd	1038
	dd	5
	align	4
_5250:
	dd	_1041
	dd	1046
	dd	5
	align	4
_351:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	102,111,114,118,97,114
	align	4
_5254:
	dd	_1041
	dd	1047
	dd	5
	align	4
_352:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	100,101,99,108,97,114,97,116,105,111,110
	align	4
_5259:
	dd	_1041
	dd	1048
	dd	5
	align	4
_5264:
	dd	_1041
	dd	1050
	dd	5
	align	4
_5267:
	dd	_1041
	dd	1051
	dd	5
	align	4
_353:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	115,116,97,114,116
	align	4
_5270:
	dd	_1041
	dd	1052
	dd	5
	align	4
_5273:
	dd	_1041
	dd	1053
	dd	5
	align	4
_5280:
	dd	_1041
	dd	1056
	dd	5
	align	4
_354:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	116,111
	align	4
_5283:
	dd	_1041
	dd	1057
	dd	5
	align	4
_5286:
	dd	_1041
	dd	1058
	dd	5
	align	4
_5289:
	dd	_1041
	dd	1059
	dd	5
	align	4
_5296:
	dd	_1041
	dd	1061
	dd	5
	align	4
_355:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	115,116,101,112
	align	4
_5316:
	dd	3
	dd	0
	dd	0
	align	4
_5300:
	dd	_1041
	dd	1062
	dd	6
	align	4
_5303:
	dd	_1041
	dd	1063
	dd	6
	align	4
_5306:
	dd	_1041
	dd	1064
	dd	6
	align	4
_5309:
	dd	_1041
	dd	1065
	dd	6
	align	4
_5326:
	dd	3
	dd	0
	dd	0
	align	4
_5318:
	dd	_1041
	dd	1067
	dd	6
	align	4
_5321:
	dd	_1041
	dd	1068
	dd	6
	align	4
_5327:
	dd	_1041
	dd	1071
	dd	5
	align	4
_5330:
	dd	_1041
	dd	1072
	dd	5
	align	4
_5340:
	dd	_1041
	dd	1074
	dd	5
	align	4
_5343:
	dd	_1041
	dd	1075
	dd	5
	align	4
_5347:
	dd	_1041
	dd	1076
	dd	5
	align	4
_5367:
	dd	3
	dd	0
	dd	0
	align	4
_5353:
	dd	_1041
	dd	1078
	dd	5
	align	4
_5360:
	dd	3
	dd	0
	dd	0
	align	4
_5357:
	dd	_1041
	dd	1078
	dd	28
	align	4
_358:
	dd	_bbStringClass
	dd	2147483647
	dd	17
	dw	77,117,115,116,32,98,101,32,105,110,32,97,32,108,111,111
	dw	112
	align	4
_5361:
	dd	_1041
	dd	1079
	dd	5
	align	4
_5364:
	dd	_1041
	dd	1080
	dd	5
	align	4
_5382:
	dd	3
	dd	0
	dd	0
	align	4
_5368:
	dd	_1041
	dd	1082
	dd	5
	align	4
_5375:
	dd	3
	dd	0
	dd	0
	align	4
_5372:
	dd	_1041
	dd	1082
	dd	28
	align	4
_5376:
	dd	_1041
	dd	1083
	dd	5
	align	4
_5379:
	dd	_1041
	dd	1084
	dd	5
_5702:
	db	"FuncNode",0
_5576:
	db	"DatatypeName",0
_5703:
	db	"isArray",0
_5704:
	db	"CodeNode",0
	align	4
_5701:
	dd	3
	dd	0
	dd	2
	dd	_5702
	dd	_630
	dd	-120
	dd	2
	dd	_4964
	dd	_548
	dd	-124
	dd	2
	dd	_5576
	dd	_548
	dd	-128
	dd	2
	dd	_5703
	dd	_589
	dd	-132
	dd	2
	dd	_545
	dd	_546
	dd	-136
	dd	2
	dd	_1138
	dd	_638
	dd	-140
	dd	2
	dd	_568
	dd	_548
	dd	-144
	dd	2
	dd	_5704
	dd	_630
	dd	-148
	dd	0
	align	4
_5383:
	dd	_1041
	dd	1086
	dd	5
	align	4
_5386:
	dd	_1041
	dd	1087
	dd	5
	align	4
_5395:
	dd	3
	dd	0
	dd	0
	align	4
_5392:
	dd	_1041
	dd	1089
	dd	7
	align	4
_5396:
	dd	_1041
	dd	1091
	dd	5
	align	4
_5398:
	dd	_1041
	dd	1092
	dd	5
	align	4
_5402:
	dd	_1041
	dd	1093
	dd	5
	align	4
_5405:
	dd	_1041
	dd	1094
	dd	5
	align	4
_5408:
	dd	_1041
	dd	1095
	dd	5
	align	4
_5412:
	dd	_1041
	dd	1096
	dd	5
	align	4
_5415:
	dd	_1041
	dd	1097
	dd	5
	align	4
_5417:
	dd	_1041
	dd	1098
	dd	5
	align	4
_5427:
	dd	3
	dd	0
	dd	0
	align	4
_5420:
	dd	_1041
	dd	1099
	dd	6
	align	4
_5423:
	dd	_1041
	dd	1100
	dd	6
	align	4
_5426:
	dd	_1041
	dd	1101
	dd	6
	align	4
_5428:
	dd	_1041
	dd	1103
	dd	5
	align	4
_5430:
	dd	_1041
	dd	1104
	dd	5
	align	4
_5438:
	dd	_1041
	dd	1106
	dd	5
	align	4
_5441:
	dd	_1041
	dd	1108
	dd	5
	align	4
_5445:
	dd	_1041
	dd	1109
	dd	5
_5449:
	db	":brl.linkedlist.TList",0
	align	4
_5454:
	dd	_1041
	dd	1110
	dd	5
	align	4
_5465:
	dd	_1041
	dd	1111
	dd	5
	align	4
_5467:
	dd	_1041
	dd	1113
	dd	5
	align	4
_5495:
	dd	3
	dd	0
	dd	2
	dd	_545
	dd	_546
	dd	-152
	dd	2
	dd	_2045
	dd	_630
	dd	-156
	dd	0
	align	4
_5475:
	dd	_1041
	dd	1114
	dd	6
	align	4
_5478:
	dd	_1041
	dd	1115
	dd	6
	align	4
_5482:
	dd	_1041
	dd	1116
	dd	6
	align	4
_5485:
	dd	_1041
	dd	1117
	dd	6
	align	4
_5489:
	dd	_1041
	dd	1118
	dd	6
	align	4
_5492:
	dd	_1041
	dd	1119
	dd	6
	align	4
_5496:
	dd	_1041
	dd	1121
	dd	5
	align	4
_5575:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-160
	dd	2
	dd	_5576
	dd	_548
	dd	-164
	dd	2
	dd	_2045
	dd	_630
	dd	-168
	dd	2
	dd	_706
	dd	_589
	dd	-172
	dd	2
	dd	_545
	dd	_546
	dd	-176
	dd	0
	align	4
_5499:
	dd	_1041
	dd	1122
	dd	6
	align	4
_5506:
	dd	3
	dd	0
	dd	0
	align	4
_5503:
	dd	_1041
	dd	1122
	dd	49
	align	4
_366:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,118,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_5507:
	dd	_1041
	dd	1123
	dd	6
	align	4
_5511:
	dd	_1041
	dd	1124
	dd	6
	align	4
_5514:
	dd	_1041
	dd	1125
	dd	6
	align	4
_5517:
	dd	_1041
	dd	1126
	dd	6
	align	4
_5521:
	dd	_1041
	dd	1128
	dd	6
	align	4
_5522:
	dd	_1041
	dd	1129
	dd	6
	align	4
_5525:
	dd	_1041
	dd	1131
	dd	6
	align	4
_5529:
	dd	_1041
	dd	1132
	dd	6
	align	4
_5531:
	dd	_1041
	dd	1134
	dd	6
	align	4
_5541:
	dd	3
	dd	0
	dd	0
	align	4
_5534:
	dd	_1041
	dd	1135
	dd	7
	align	4
_5537:
	dd	_1041
	dd	1136
	dd	7
	align	4
_5540:
	dd	_1041
	dd	1137
	dd	7
	align	4
_5542:
	dd	_1041
	dd	1139
	dd	6
	align	4
_370:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	95,95,100,105,109,95
	align	4
_5543:
	dd	_1041
	dd	1140
	dd	6
	align	4
_5545:
	dd	_1041
	dd	1141
	dd	6
	align	4
_5548:
	dd	_1041
	dd	1142
	dd	6
	align	4
_5551:
	dd	_1041
	dd	1143
	dd	6
	align	4
_5554:
	dd	_1041
	dd	1145
	dd	6
	align	4
_5564:
	dd	3
	dd	0
	dd	0
	align	4
_5558:
	dd	_1041
	dd	1146
	dd	7
	align	4
_5561:
	dd	_1041
	dd	1147
	dd	7
	align	4
_5565:
	dd	_1041
	dd	1150
	dd	6
	align	4
_5569:
	dd	3
	dd	0
	dd	0
	align	4
_5574:
	dd	3
	dd	0
	dd	0
	align	4
_5571:
	dd	_1041
	dd	1152
	dd	7
	align	4
_5577:
	dd	_1041
	dd	1155
	dd	5
	align	4
_5580:
	dd	_1041
	dd	1156
	dd	5
	align	4
_5583:
	dd	_1041
	dd	1157
	dd	5
	align	4
_5586:
	dd	_1041
	dd	1158
	dd	5
	align	4
_5589:
	dd	_1041
	dd	1159
	dd	5
	align	4
_5593:
	dd	_1041
	dd	1160
	dd	5
	align	4
_5596:
	dd	_1041
	dd	1161
	dd	5
	align	4
_5604:
	dd	_1041
	dd	1162
	dd	5
	align	4
_5607:
	dd	_1041
	dd	1163
	dd	5
	align	4
_5612:
	dd	_1041
	dd	1164
	dd	5
	align	4
_5620:
	dd	_1041
	dd	1165
	dd	5
	align	4
_5697:
	dd	3
	dd	0
	dd	2
	dd	_604
	dd	_605
	dd	-180
	dd	0
	align	4
_5632:
	dd	_1041
	dd	1166
	dd	6
	align	4
_5696:
	dd	3
	dd	0
	dd	0
	align	4
_5636:
	dd	_1041
	dd	1167
	dd	7
	align	4
_5694:
	dd	3
	dd	0
	dd	2
	dd	_2045
	dd	_605
	dd	-184
	dd	2
	dd	_4595
	dd	_630
	dd	-188
	dd	0
	align	4
_5648:
	dd	_1041
	dd	1168
	dd	8
	align	4
_5652:
	dd	_1041
	dd	1169
	dd	8
	align	4
_5657:
	dd	_1041
	dd	1170
	dd	8
	align	4
_5685:
	dd	3
	dd	0
	dd	2
	dd	_1278
	dd	_630
	dd	-192
	dd	0
	align	4
_5669:
	dd	_1041
	dd	1171
	dd	9
	align	4
_5684:
	dd	3
	dd	0
	dd	0
	align	4
_5677:
	dd	_1041
	dd	1172
	dd	10
	align	4
_5686:
	dd	_1041
	dd	1176
	dd	8
	align	4
_5689:
	dd	_1041
	dd	1177
	dd	8
	align	4
_5695:
	dd	_1041
	dd	1179
	dd	7
	align	4
_5698:
	dd	_1041
	dd	1182
	dd	5
	align	4
_5734:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-196
	dd	2
	dd	_4026
	dd	_3959
	dd	-200
	dd	0
	align	4
_5705:
	dd	_1041
	dd	1184
	dd	5
	align	4
_5712:
	dd	3
	dd	0
	dd	0
	align	4
_5709:
	dd	_1041
	dd	1184
	dd	35
	align	4
_381:
	dd	_bbStringClass
	dd	2147483647
	dd	28
	dw	82,101,116,117,114,110,32,109,117,115,116,32,98,101,32,105
	dw	110,32,97,32,70,117,110,99,116,105,111,110
	align	4
_5713:
	dd	_1041
	dd	1185
	dd	5
	align	4
_5716:
	dd	_1041
	dd	1186
	dd	5
	align	4
_5718:
	dd	_1041
	dd	1187
	dd	5
	align	4
_5722:
	dd	_1041
	dd	1189
	dd	5
	align	4
_5731:
	dd	_1041
	dd	1190
	dd	5
	align	4
_5900:
	dd	3
	dd	0
	dd	2
	dd	_588
	dd	_589
	dd	-204
	dd	2
	dd	_629
	dd	_630
	dd	-208
	dd	2
	dd	_1886
	dd	_630
	dd	-212
	dd	2
	dd	_4026
	dd	_3961
	dd	-216
	dd	0
	align	4
_5735:
	dd	_1041
	dd	1192
	dd	5
	align	4
_5739:
	dd	_1041
	dd	1194
	dd	5
	align	4
_5742:
	dd	_1041
	dd	1195
	dd	5
	align	4
_5744:
	dd	_1041
	dd	1197
	dd	5
	align	4
_5748:
	dd	_1041
	dd	1198
	dd	5
	align	4
_5752:
	dd	_1041
	dd	1200
	dd	5
	align	4
_5759:
	dd	_1041
	dd	1201
	dd	5
	align	4
_5762:
	dd	_1041
	dd	1202
	dd	5
_5862:
	db	"Do",0
_5863:
	db	"Cases",0
_5864:
	db	"[]:bah.libxml.TxmlNode",0
	align	4
_5861:
	dd	3
	dd	0
	dd	2
	dd	_5862
	dd	_559
	dd	-4
	dd	2
	dd	_5863
	dd	_5864
	dd	-220
	dd	2
	dd	_5352
	dd	_630
	dd	-224
	dd	0
	align	4
_5765:
	dd	_1041
	dd	1203
	dd	6
	align	4
_5768:
	dd	_1041
	dd	1204
	dd	6
	align	4
_5770:
	dd	_1041
	dd	1205
	dd	6
_5771:
	db	":bah.libxml.TxmlNode",0
	align	4
_5773:
	dd	_1041
	dd	1221
	dd	6
_5822:
	db	"NodeCase",0
	align	4
_5821:
	dd	3
	dd	0
	dd	2
	dd	_5112
	dd	_630
	dd	-228
	dd	2
	dd	_5822
	dd	_630
	dd	-232
	dd	2
	dd	_1886
	dd	_630
	dd	-236
	dd	2
	dd	_4026
	dd	_3961
	dd	-240
	dd	0
	align	4
_5774:
	dd	_1041
	dd	1207
	dd	7
	align	4
_5775:
	dd	_1041
	dd	1208
	dd	7
	align	4
_5779:
	dd	_1041
	dd	1209
	dd	7
	align	4
_5784:
	dd	_1041
	dd	1211
	dd	7
	align	4
_5788:
	dd	_1041
	dd	1212
	dd	7
	align	4
_5792:
	dd	_1041
	dd	1213
	dd	7
	align	4
_5796:
	dd	_1041
	dd	1216
	dd	7
	align	4
_5803:
	dd	_1041
	dd	1218
	dd	7
	align	4
_5811:
	dd	3
	dd	0
	dd	0
	align	4
_5807:
	dd	_1041
	dd	1218
	dd	32
	align	4
_5808:
	dd	_1041
	dd	1218
	dd	40
	align	4
_5812:
	dd	_1041
	dd	1219
	dd	7
	align	4
_5813:
	dd	_1041
	dd	1220
	dd	7
	align	4
_5823:
	dd	_1041
	dd	1222
	dd	6
	align	4
_389:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	116,109,112
	align	4
_5825:
	dd	_1041
	dd	1223
	dd	6
	align	4
_5828:
	dd	_1041
	dd	1224
	dd	6
	align	4
_5860:
	dd	3
	dd	0
	dd	0
	align	4
_5832:
	dd	_1041
	dd	1225
	dd	7
_5859:
	db	"tmp",0
	align	4
_5858:
	dd	3
	dd	0
	dd	2
	dd	_5859
	dd	_630
	dd	-244
	dd	0
	align	4
_5844:
	dd	_1041
	dd	1226
	dd	8
	align	4
_5857:
	dd	3
	dd	0
	dd	0
	align	4
_5848:
	dd	_1041
	dd	1227
	dd	9
_5856:
	db	"Tmp2",0
	align	4
_5855:
	dd	3
	dd	0
	dd	2
	dd	_5856
	dd	_630
	dd	-248
	dd	0
	align	4
_5854:
	dd	_1041
	dd	1228
	dd	10
	align	4
_5865:
	dd	_1041
	dd	1236
	dd	5
_5889:
	db	"NodeDefault",0
	align	4
_5888:
	dd	3
	dd	0
	dd	2
	dd	_5112
	dd	_630
	dd	-252
	dd	2
	dd	_5889
	dd	_630
	dd	-256
	dd	0
	align	4
_5869:
	dd	_1041
	dd	1237
	dd	6
	align	4
_5872:
	dd	_1041
	dd	1238
	dd	6
	align	4
_5876:
	dd	_1041
	dd	1239
	dd	6
	align	4
_5881:
	dd	_1041
	dd	1240
	dd	6
	align	4
_5885:
	dd	_1041
	dd	1241
	dd	6
	align	4
_5890:
	dd	_1041
	dd	1243
	dd	5
	align	4
_5893:
	dd	_1041
	dd	1244
	dd	5
	align	4
_5897:
	dd	_1041
	dd	1245
	dd	5
	align	4
_6099:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-260
	dd	2
	dd	_545
	dd	_546
	dd	-264
	dd	0
	align	4
_5901:
	dd	_1041
	dd	1248
	dd	5
	align	4
_5904:
	dd	_1041
	dd	1249
	dd	5
	align	4
_5908:
	dd	_1041
	dd	1250
	dd	5
	align	4
_5916:
	dd	_1041
	dd	1251
	dd	5
	align	4
_5918:
	dd	_1041
	dd	1253
	dd	5
	align	4
_5921:
	dd	_1041
	dd	1254
	dd	5
	align	4
_5931:
	dd	3
	dd	0
	dd	0
	align	4
_5925:
	dd	_1041
	dd	1256
	dd	6
	align	4
_5928:
	dd	_1041
	dd	1257
	dd	6
	align	4
_5932:
	dd	_1041
	dd	1261
	dd	5
	align	4
_5935:
	dd	_1041
	dd	1262
	dd	5
	align	4
_6080:
	dd	3
	dd	0
	dd	0
	align	4
_5938:
	dd	_1041
	dd	1263
	dd	6
	align	4
_6076:
	dd	3
	dd	0
	dd	0
	align	4
_5942:
	dd	_1041
	dd	1264
	dd	7
	align	4
_5959:
	dd	3
	dd	0
	dd	0
	align	4
_5952:
	dd	_1041
	dd	1266
	dd	9
	align	4
_5956:
	dd	_1041
	dd	1267
	dd	9
	align	4
_5967:
	dd	3
	dd	0
	dd	0
	align	4
_5960:
	dd	_1041
	dd	1269
	dd	9
	align	4
_5964:
	dd	_1041
	dd	1270
	dd	9
	align	4
_5975:
	dd	3
	dd	0
	dd	0
	align	4
_5968:
	dd	_1041
	dd	1272
	dd	9
	align	4
_5972:
	dd	_1041
	dd	1273
	dd	9
_6018:
	db	"FieldName",0
	align	4
_6017:
	dd	3
	dd	0
	dd	2
	dd	_6018
	dd	_548
	dd	-268
	dd	2
	dd	_545
	dd	_546
	dd	-272
	dd	0
	align	4
_5976:
	dd	_1041
	dd	1275
	dd	9
	align	4
_5979:
	dd	_1041
	dd	1276
	dd	9
	align	4
_5983:
	dd	_1041
	dd	1277
	dd	9
	align	4
_5986:
	dd	_1041
	dd	1278
	dd	9
	align	4
_5989:
	dd	_1041
	dd	1279
	dd	9
	align	4
_5993:
	dd	_1041
	dd	1280
	dd	9
	align	4
_5996:
	dd	_1041
	dd	1281
	dd	9
	align	4
_6005:
	dd	3
	dd	0
	dd	0
	align	4
_5999:
	dd	_1041
	dd	1282
	dd	10
	align	4
_6002:
	dd	_1041
	dd	1283
	dd	10
	align	4
_6006:
	dd	_1041
	dd	1285
	dd	9
	align	4
_6016:
	dd	3
	dd	0
	dd	0
	align	4
_6010:
	dd	_1041
	dd	1286
	dd	10
	align	4
_6013:
	dd	_1041
	dd	1287
	dd	10
_6075:
	db	"TmpMode",0
	align	4
_6074:
	dd	3
	dd	0
	dd	2
	dd	_6075
	dd	_589
	dd	-276
	dd	0
	align	4
_6019:
	dd	_1041
	dd	1290
	dd	9
	align	4
_6022:
	dd	_1041
	dd	1291
	dd	9
	align	4
_6031:
	dd	3
	dd	0
	dd	0
	align	4
_6028:
	dd	_1041
	dd	1293
	dd	11
	align	4
_6032:
	dd	_1041
	dd	1295
	dd	9
	align	4
_6048:
	dd	_1041
	dd	1296
	dd	9
	align	4
_6051:
	dd	_1041
	dd	1297
	dd	9
	align	4
_6055:
	dd	_1041
	dd	1298
	dd	9
	align	4
_6059:
	dd	_1041
	dd	1299
	dd	9
	align	4
_6063:
	dd	_1041
	dd	1300
	dd	9
	align	4
_6066:
	dd	_1041
	dd	1301
	dd	9
	align	4
_6070:
	dd	_1041
	dd	1302
	dd	9
	align	4
_6077:
	dd	_1041
	dd	1305
	dd	6
	align	4
_6081:
	dd	_1041
	dd	1307
	dd	5
	align	4
_6089:
	dd	_1041
	dd	1308
	dd	5
	align	4
_6092:
	dd	_1041
	dd	1309
	dd	5
	align	4
_6096:
	dd	_1041
	dd	1310
	dd	5
	align	4
_6170:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-280
	dd	2
	dd	_629
	dd	_630
	dd	-284
	dd	2
	dd	_545
	dd	_546
	dd	-288
	dd	0
	align	4
_6100:
	dd	_1041
	dd	1312
	dd	5
	align	4
_6103:
	dd	_1041
	dd	1313
	dd	5
	align	4
_6107:
	dd	_1041
	dd	1314
	dd	5
	align	4
_6110:
	dd	_1041
	dd	1315
	dd	5
	align	4
_6117:
	dd	3
	dd	0
	dd	0
	align	4
_6114:
	dd	_1041
	dd	1315
	dd	34
	align	4
_403:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	85,110,107,110,111,119,110,32,84,121,112,101,32,39
	align	4
_6118:
	dd	_1041
	dd	1316
	dd	5
	align	4
_6120:
	dd	_1041
	dd	1317
	dd	5
	align	4
_6123:
	dd	_1041
	dd	1318
	dd	5
	align	4
_6125:
	dd	_1041
	dd	1319
	dd	5
	align	4
_6166:
	dd	3
	dd	0
	dd	0
	align	4
_6129:
	dd	_1041
	dd	1328
	dd	6
	align	4
_6163:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-292
	dd	0
	align	4
_6130:
	dd	_1041
	dd	1322
	dd	7
	align	4
_6133:
	dd	_1041
	dd	1323
	dd	7
	align	4
_6137:
	dd	_1041
	dd	1324
	dd	7
	align	4
_6141:
	dd	_1041
	dd	1325
	dd	7
	align	4
_6155:
	dd	_1041
	dd	1326
	dd	7
	align	4
_407:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_6160:
	dd	_1041
	dd	1327
	dd	7
	align	4
_6167:
	dd	_1041
	dd	1330
	dd	5
_6633:
	db	"DoSet",0
	align	4
_6632:
	dd	1
	dd	_672
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	2
	dd	_6633
	dd	_559
	dd	-4
	dd	0
	align	4
_6172:
	dd	_1041
	dd	1335
	dd	3
	align	4
_408:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	108,111,99,97,108
_6304:
	db	"LastVar",0
	align	4
_6303:
	dd	3
	dd	0
	dd	2
	dd	_1165
	dd	_630
	dd	-12
	dd	2
	dd	_6304
	dd	_1312
	dd	-16
	dd	0
	align	4
_6179:
	dd	_1041
	dd	1337
	dd	5
	align	4
_6181:
	dd	_1041
	dd	1338
	dd	5
	align	4
_6183:
	dd	_1041
	dd	1380
	dd	5
	align	4
_6299:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-20
	dd	0
	align	4
_6184:
	dd	_1041
	dd	1340
	dd	6
	align	4
_6188:
	dd	_1041
	dd	1341
	dd	6
_6284:
	db	"DimCount",0
	align	4
_6283:
	dd	3
	dd	0
	dd	2
	dd	_5576
	dd	_548
	dd	-24
	dd	2
	dd	_6284
	dd	_589
	dd	-28
	dd	2
	dd	_545
	dd	_546
	dd	-32
	dd	0
	align	4
_6190:
	dd	_1041
	dd	1342
	dd	7
	align	4
_6193:
	dd	_1041
	dd	1343
	dd	7
	align	4
_6196:
	dd	_1041
	dd	1344
	dd	7
	align	4
_6205:
	dd	3
	dd	0
	dd	0
	align	4
_6202:
	dd	_1041
	dd	1344
	dd	49
	align	4
_412:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	85,110,107,110,111,119,110,32,68,97,116,97,116,121,112,101
	align	4
_6206:
	dd	_1041
	dd	1345
	dd	7
	align	4
_6210:
	dd	_1041
	dd	1346
	dd	7
	align	4
_6213:
	dd	_1041
	dd	1347
	dd	7
	align	4
_6215:
	dd	_1041
	dd	1348
	dd	7
	align	4
_6225:
	dd	3
	dd	0
	dd	0
	align	4
_6218:
	dd	_1041
	dd	1349
	dd	8
	align	4
_6221:
	dd	_1041
	dd	1350
	dd	8
	align	4
_6224:
	dd	_1041
	dd	1351
	dd	8
	align	4
_6226:
	dd	_1041
	dd	1353
	dd	7
	align	4
_6228:
	dd	_1041
	dd	1354
	dd	7
	align	4
_6231:
	dd	_1041
	dd	1356
	dd	7
_6278:
	db	"NodeValue",0
_6279:
	db	"LineNode",0
	align	4
_6277:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-36
	dd	2
	dd	_1886
	dd	_630
	dd	-40
	dd	2
	dd	_6278
	dd	_630
	dd	-44
	dd	2
	dd	_6279
	dd	_630
	dd	-48
	dd	0
	align	4
_6237:
	dd	_1041
	dd	1357
	dd	8
	align	4
_6240:
	dd	_1041
	dd	1358
	dd	8
	align	4
_6244:
	dd	_1041
	dd	1359
	dd	8
	align	4
_416:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,101,116
	align	4
_6246:
	dd	_1041
	dd	1360
	dd	8
	align	4
_6253:
	dd	_1041
	dd	1361
	dd	8
	align	4
_6257:
	dd	_1041
	dd	1363
	dd	8
	align	4
_6264:
	dd	_1041
	dd	1365
	dd	8
	align	4
_6266:
	dd	_1041
	dd	1366
	dd	8
	align	4
_6271:
	dd	_1041
	dd	1367
	dd	8
	align	4
_6272:
	dd	_1041
	dd	1368
	dd	8
	align	4
_6280:
	dd	_1041
	dd	1371
	dd	7
	align	4
_6289:
	dd	3
	dd	0
	dd	0
	align	4
_6286:
	dd	_1041
	dd	1373
	dd	7
	align	4
_417:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	73,110,118,97,108,105,100,32,86,97,114,105,97,98,108,101
	dw	32,110,97,109,101
	align	4
_6290:
	dd	_1041
	dd	1375
	dd	6
	align	4
_6295:
	dd	3
	dd	0
	dd	0
	align	4
_6294:
	dd	_1041
	dd	1376
	dd	7
	align	4
_6298:
	dd	3
	dd	0
	dd	0
	align	4
_6297:
	dd	_1041
	dd	1378
	dd	7
	align	4
_6300:
	dd	_1041
	dd	1381
	dd	5
	align	4
_6423:
	dd	3
	dd	0
	dd	2
	dd	_1165
	dd	_630
	dd	-52
	dd	2
	dd	_6304
	dd	_1312
	dd	-56
	dd	0
	align	4
_6305:
	dd	_1041
	dd	1383
	dd	5
	align	4
_6307:
	dd	_1041
	dd	1384
	dd	5
	align	4
_6309:
	dd	_1041
	dd	1424
	dd	5
	align	4
_6419:
	dd	3
	dd	0
	dd	2
	dd	_547
	dd	_548
	dd	-60
	dd	0
	align	4
_6310:
	dd	_1041
	dd	1386
	dd	6
	align	4
_6314:
	dd	_1041
	dd	1387
	dd	6
	align	4
_6404:
	dd	3
	dd	0
	dd	2
	dd	_5576
	dd	_548
	dd	-64
	dd	2
	dd	_6284
	dd	_589
	dd	-68
	dd	2
	dd	_545
	dd	_546
	dd	-72
	dd	0
	align	4
_6316:
	dd	_1041
	dd	1388
	dd	7
	align	4
_6319:
	dd	_1041
	dd	1389
	dd	7
	align	4
_6322:
	dd	_1041
	dd	1390
	dd	7
	align	4
_6331:
	dd	3
	dd	0
	dd	0
	align	4
_6328:
	dd	_1041
	dd	1390
	dd	49
	align	4
_6332:
	dd	_1041
	dd	1391
	dd	7
	align	4
_6336:
	dd	_1041
	dd	1393
	dd	7
	align	4
_6339:
	dd	_1041
	dd	1394
	dd	7
	align	4
_6341:
	dd	_1041
	dd	1395
	dd	7
	align	4
_6351:
	dd	3
	dd	0
	dd	0
	align	4
_6344:
	dd	_1041
	dd	1396
	dd	8
	align	4
_6347:
	dd	_1041
	dd	1397
	dd	8
	align	4
_6350:
	dd	_1041
	dd	1398
	dd	8
	align	4
_6352:
	dd	_1041
	dd	1400
	dd	7
	align	4
_6354:
	dd	_1041
	dd	1401
	dd	7
	align	4
_6400:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-76
	dd	2
	dd	_1886
	dd	_630
	dd	-80
	dd	2
	dd	_6278
	dd	_630
	dd	-84
	dd	2
	dd	_6279
	dd	_630
	dd	-88
	dd	0
	align	4
_6360:
	dd	_1041
	dd	1402
	dd	8
	align	4
_6363:
	dd	_1041
	dd	1403
	dd	8
	align	4
_6367:
	dd	_1041
	dd	1404
	dd	8
	align	4
_6369:
	dd	_1041
	dd	1405
	dd	8
	align	4
_6376:
	dd	_1041
	dd	1406
	dd	8
	align	4
_6380:
	dd	_1041
	dd	1408
	dd	8
	align	4
_6387:
	dd	_1041
	dd	1410
	dd	8
	align	4
_6389:
	dd	_1041
	dd	1411
	dd	8
	align	4
_6394:
	dd	_1041
	dd	1412
	dd	8
	align	4
_6395:
	dd	_1041
	dd	1413
	dd	8
	align	4
_6401:
	dd	_1041
	dd	1415
	dd	7
	align	4
_6409:
	dd	3
	dd	0
	dd	0
	align	4
_6406:
	dd	_1041
	dd	1417
	dd	7
	align	4
_6410:
	dd	_1041
	dd	1419
	dd	6
	align	4
_6415:
	dd	3
	dd	0
	dd	0
	align	4
_6414:
	dd	_1041
	dd	1420
	dd	7
	align	4
_6418:
	dd	3
	dd	0
	dd	0
	align	4
_6417:
	dd	_1041
	dd	1422
	dd	7
	align	4
_6420:
	dd	_1041
	dd	1425
	dd	5
	align	4
_6424:
	dd	_1041
	dd	1429
	dd	3
	align	4
_6631:
	dd	3
	dd	0
	dd	2
	dd	_672
	dd	_1312
	dd	-92
	dd	0
	align	4
_6436:
	dd	_1041
	dd	1430
	dd	4
_6630:
	db	"RecAccess",0
	align	4
_6629:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-96
	dd	2
	dd	_697
	dd	_562
	dd	-100
	dd	2
	dd	_6630
	dd	_3961
	dd	-104
	dd	2
	dd	_1138
	dd	_546
	dd	-108
	dd	0
	align	4
_6442:
	dd	_1041
	dd	1431
	dd	5
	align	4
_6444:
	dd	_1041
	dd	1432
	dd	5
	align	4
_6447:
	dd	_1041
	dd	1433
	dd	5
	align	4
_6449:
	dd	_1041
	dd	1434
	dd	5
	align	4
_6461:
	dd	3
	dd	0
	dd	0
	align	4
_6456:
	dd	_1041
	dd	1435
	dd	6
	align	4
_6462:
	dd	_1041
	dd	1437
	dd	5
	align	4
_6472:
	dd	_1041
	dd	1439
	dd	5
	align	4
_6494:
	dd	3
	dd	0
	dd	0
	align	4
_6474:
	dd	_1041
	dd	1440
	dd	6
	align	4
_6484:
	dd	_1041
	dd	1441
	dd	6
	align	4
_6487:
	dd	_1041
	dd	1442
	dd	6
	align	4
_6490:
	dd	3
	dd	0
	dd	0
	align	4
_6489:
	dd	_1041
	dd	1443
	dd	7
	align	4
_6491:
	dd	_1041
	dd	1445
	dd	6
	align	4
_6495:
	dd	_1041
	dd	1451
	dd	5
	align	4
_6506:
	dd	3
	dd	0
	dd	0
	align	4
_6503:
	dd	_1041
	dd	1452
	dd	6
	align	4
_6507:
	dd	_1041
	dd	1455
	dd	5
_6573:
	db	"Value",0
	align	4
_6572:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-112
	dd	2
	dd	_6573
	dd	_630
	dd	-116
	dd	2
	dd	_1138
	dd	_546
	dd	-120
	dd	0
	align	4
_6513:
	dd	_1041
	dd	1456
	dd	6
	align	4
_6516:
	dd	_1041
	dd	1457
	dd	6
	align	4
_6520:
	dd	_1041
	dd	1458
	dd	6
	align	4
_6525:
	dd	3
	dd	0
	dd	0
	align	4
_6522:
	dd	_1041
	dd	1459
	dd	7
	align	4
_6528:
	dd	3
	dd	0
	dd	0
	align	4
_6527:
	dd	_1041
	dd	1461
	dd	7
	align	4
_6529:
	dd	_1041
	dd	1463
	dd	6
	align	4
_6536:
	dd	3
	dd	0
	dd	0
	align	4
_6531:
	dd	_1041
	dd	1464
	dd	7
	align	4
_6543:
	dd	3
	dd	0
	dd	0
	align	4
_6538:
	dd	_1041
	dd	1466
	dd	7
	align	4
_6544:
	dd	_1041
	dd	1468
	dd	6
	align	4
_6548:
	dd	_1041
	dd	1469
	dd	6
	align	4
_6558:
	dd	_1041
	dd	1470
	dd	6
	align	4
_6564:
	dd	3
	dd	0
	dd	0
	align	4
_6560:
	dd	_1041
	dd	1470
	dd	25
	align	4
_6565:
	dd	_1041
	dd	1471
	dd	6
	align	4
_6608:
	dd	3
	dd	0
	dd	0
	align	4
_6575:
	dd	_1041
	dd	1474
	dd	6
	align	4
_6602:
	dd	3
	dd	0
	dd	0
	align	4
_6577:
	dd	_1041
	dd	1475
	dd	7
	align	4
_6596:
	dd	3
	dd	0
	dd	0
	align	4
_6579:
	dd	_1041
	dd	1476
	dd	8
	align	4
_6582:
	dd	_1041
	dd	1477
	dd	8
	align	4
_6595:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-124
	dd	0
	align	4
_6592:
	dd	_1041
	dd	1478
	dd	9
	align	4
_6601:
	dd	3
	dd	0
	dd	0
	align	4
_6598:
	dd	_1041
	dd	1481
	dd	8
	align	4
_6607:
	dd	3
	dd	0
	dd	0
	align	4
_6604:
	dd	_1041
	dd	1484
	dd	7
	align	4
_6609:
	dd	_1041
	dd	1487
	dd	5
	align	4
_6619:
	dd	_1041
	dd	1488
	dd	5
	align	4
_6625:
	dd	3
	dd	0
	dd	0
	align	4
_6621:
	dd	_1041
	dd	1488
	dd	24
	align	4
_6626:
	dd	_1041
	dd	1489
	dd	5
_6883:
	db	"RecIdent",0
_6884:
	db	"Pos",0
	align	4
_6882:
	dd	1
	dd	_674
	dd	2
	dd	_1067
	dd	_1954
	dd	-8
	dd	2
	dd	_6883
	dd	_3961
	dd	-12
	dd	2
	dd	_6884
	dd	_562
	dd	-16
	dd	0
	align	4
_6634:
	dd	_1041
	dd	1495
	dd	3
_6875:
	db	"Member",0
_6876:
	db	"ValNode",0
_6877:
	db	"ValDatatype",0
_6878:
	db	"MemberName",0
	align	4
_6874:
	dd	3
	dd	0
	dd	2
	dd	_629
	dd	_630
	dd	-20
	dd	2
	dd	_2400
	dd	_567
	dd	-24
	dd	2
	dd	_6875
	dd	_548
	dd	-28
	dd	2
	dd	_3946
	dd	_559
	dd	-4
	dd	2
	dd	_672
	dd	_1312
	dd	-32
	dd	2
	dd	_6876
	dd	_630
	dd	-36
	dd	2
	dd	_6877
	dd	_546
	dd	-40
	dd	2
	dd	_6878
	dd	_548
	dd	-44
	dd	2
	dd	_697
	dd	_562
	dd	-48
	dd	0
	align	4
_6638:
	dd	_1041
	dd	1496
	dd	4
	align	4
_433:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	97,99,99,101,115,115
	align	4
_6640:
	dd	_1041
	dd	1497
	dd	4
	align	4
_6645:
	dd	_1041
	dd	1499
	dd	4
	align	4
_6648:
	dd	_1041
	dd	1500
	dd	4
	align	4
_6650:
	dd	_1041
	dd	1501
	dd	4
	align	4
_6671:
	dd	3
	dd	0
	dd	2
	dd	_2525
	dd	_567
	dd	-52
	dd	0
	align	4
_6660:
	dd	_1041
	dd	1502
	dd	5
	align	4
_6670:
	dd	3
	dd	0
	dd	0
	align	4
_6668:
	dd	_1041
	dd	1503
	dd	6
	align	4
_6669:
	dd	_1041
	dd	1504
	dd	6
	align	4
_6672:
	dd	_1041
	dd	1507
	dd	4
	align	4
_6684:
	dd	3
	dd	0
	dd	0
	align	4
_6674:
	dd	_1041
	dd	1508
	dd	5
	align	4
_437:
	dd	_bbStringClass
	dd	2147483647
	dd	21
	dw	84,121,112,101,32,100,111,101,115,32,110,111,116,32,101,120
	dw	105,115,116,58,32
	align	4
_6681:
	dd	_1041
	dd	1509
	dd	5
	align	4
_438:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	117,110,107,110,111,119,110
	align	4
_6685:
	dd	_1041
	dd	1512
	dd	4
	align	4
_6689:
	dd	_1041
	dd	1513
	dd	4
	align	4
_6691:
	dd	_1041
	dd	1514
	dd	4
	align	4
_6693:
	dd	_1041
	dd	1515
	dd	4
	align	4
_6695:
	dd	_1041
	dd	1516
	dd	4
	align	4
_6697:
	dd	_1041
	dd	1517
	dd	4
	align	4
_6701:
	dd	_1041
	dd	1518
	dd	4
	align	4
_6704:
	dd	_1041
	dd	1520
	dd	4
	align	4
_6706:
	dd	_1041
	dd	1521
	dd	4
	align	4
_6719:
	dd	3
	dd	0
	dd	0
	align	4
_6716:
	dd	_1041
	dd	1522
	dd	5
	align	4
_6720:
	dd	_1041
	dd	1524
	dd	4
	align	4
_6748:
	dd	3
	dd	0
	dd	2
	dd	_1604
	dd	_1312
	dd	-56
	dd	0
	align	4
_6734:
	dd	_1041
	dd	1525
	dd	5
	align	4
_6747:
	dd	3
	dd	0
	dd	0
	align	4
_6738:
	dd	_1041
	dd	1526
	dd	6
	align	4
_6739:
	dd	_1041
	dd	1527
	dd	6
	align	4
_6740:
	dd	_1041
	dd	1528
	dd	6
	align	4
_6743:
	dd	_1041
	dd	1529
	dd	6
	align	4
_6746:
	dd	_1041
	dd	1530
	dd	6
	align	4
_6749:
	dd	_1041
	dd	1534
	dd	4
	align	4
_6819:
	dd	3
	dd	0
	dd	0
	align	4
_6751:
	dd	_1041
	dd	1535
	dd	5
	align	4
_6754:
	dd	_1041
	dd	1536
	dd	5
_6818:
	db	"MethMeth",0
	align	4
_6817:
	dd	3
	dd	0
	dd	2
	dd	_6818
	dd	_1347
	dd	-60
	dd	2
	dd	_1138
	dd	_548
	dd	-64
	dd	2
	dd	_4026
	dd	_3961
	dd	-68
	dd	0
	align	4
_6768:
	dd	_1041
	dd	1537
	dd	6
	align	4
_6773:
	dd	_1041
	dd	1538
	dd	6
	align	4
_6777:
	dd	_1041
	dd	1539
	dd	6
	align	4
_6787:
	dd	_1041
	dd	1540
	dd	6
	align	4
_6793:
	dd	_1041
	dd	1541
	dd	6
	align	4
_6808:
	dd	3
	dd	0
	dd	0
	align	4
_6795:
	dd	_1041
	dd	1542
	dd	7
	align	4
_6798:
	dd	_1041
	dd	1543
	dd	7
	align	4
_6801:
	dd	_1041
	dd	1544
	dd	7
	align	4
_6806:
	dd	3
	dd	0
	dd	0
	align	4
_6805:
	dd	_1041
	dd	1544
	dd	33
	align	4
_6807:
	dd	_1041
	dd	1545
	dd	7
	align	4
_6809:
	dd	_1041
	dd	1547
	dd	6
	align	4
_6820:
	dd	_1041
	dd	1550
	dd	4
	align	4
_6827:
	dd	3
	dd	0
	dd	0
	align	4
_6822:
	dd	_1041
	dd	1550
	dd	17
	align	4
_445:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,111,117,108,100,110,39,116,32,102,105,110,100,32,109,101
	dw	109,98,101,114,32,39
	align	4
_6828:
	dd	_1041
	dd	1554
	dd	4
	align	4
_6863:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-72
	dd	0
	align	4
_6832:
	dd	_1041
	dd	1555
	dd	5
	align	4
_6838:
	dd	_1041
	dd	1556
	dd	5
	align	4
_6846:
	dd	3
	dd	0
	dd	0
	align	4
_6842:
	dd	_1041
	dd	1557
	dd	6
	align	4
_6845:
	dd	_1041
	dd	1558
	dd	6
	align	4
_6862:
	dd	3
	dd	0
	dd	0
	align	4
_6848:
	dd	_1041
	dd	1560
	dd	6
	align	4
_6853:
	dd	_1041
	dd	1561
	dd	6
	align	4
_6861:
	dd	_1041
	dd	1562
	dd	6
	align	4
_6873:
	dd	3
	dd	0
	dd	2
	dd	_1138
	dd	_630
	dd	-76
	dd	0
	align	4
_6865:
	dd	_1041
	dd	1565
	dd	5
	align	4
_6869:
	dd	_1041
	dd	1566
	dd	5
	align	4
_6870:
	dd	_1041
	dd	1567
	dd	5
	align	4
_6881:
	dd	3
	dd	0
	dd	0
	align	4
_6880:
	dd	_1041
	dd	1570
	dd	4
	align	4
_6936:
	dd	1
	dd	_676
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_545
	dd	_546
	dd	-8
	dd	2
	dd	_697
	dd	_562
	dd	-12
	dd	2
	dd	_706
	dd	_589
	dd	-16
	dd	0
	align	4
_6885:
	dd	_1041
	dd	1575
	dd	3
	align	4
_6887:
	dd	_1041
	dd	1577
	dd	3
	align	4
_6889:
	dd	_1041
	dd	1586
	dd	3
	align	4
_6920:
	dd	3
	dd	0
	dd	2
	dd	_4026
	dd	_3961
	dd	-20
	dd	0
	align	4
_6890:
	dd	_1041
	dd	1579
	dd	4
	align	4
_6893:
	dd	_1041
	dd	1580
	dd	4
	align	4
_6897:
	dd	_1041
	dd	1582
	dd	4
	align	4
_6911:
	dd	_1041
	dd	1583
	dd	4
	align	4
_6916:
	dd	_1041
	dd	1584
	dd	4
	align	4
_6919:
	dd	_1041
	dd	1585
	dd	4
	align	4
_6923:
	dd	_1041
	dd	1587
	dd	3
	align	4
_6934:
	dd	3
	dd	0
	dd	0
	align	4
_6929:
	dd	_1041
	dd	1587
	dd	45
	align	4
_450:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	39,44,32,101,120,112,101,99,116,105,110,103,32,39
	align	4
_449:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	85,110,97,108,108,111,119,101,100,32,100,105,109,101,110,115
	dw	105,111,110,32,99,111,117,110,116,32,39
	align	4
_6935:
	dd	_1041
	dd	1588
	dd	3
	align	4
_6998:
	dd	1
	dd	_678
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_545
	dd	_546
	dd	-12
	dd	2
	dd	_672
	dd	_1068
	dd	-16
	dd	2
	dd	_629
	dd	_630
	dd	-20
	dd	0
	align	4
_6937:
	dd	_1041
	dd	1592
	dd	3
	align	4
_6965:
	dd	3
	dd	0
	dd	2
	dd	_672
	dd	_1312
	dd	-24
	dd	0
	align	4
_6954:
	dd	_1041
	dd	1593
	dd	4
	align	4
_6964:
	dd	3
	dd	0
	dd	0
	align	4
_6958:
	dd	_1041
	dd	1594
	dd	5
	align	4
_454:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	86,97,114,105,97,98,108,101,32,97,108,114,101,97,100,121
	dw	32,100,101,102,105,110,101,100,58,32
	align	4
_6963:
	dd	_1041
	dd	1595
	dd	5
	align	4
_6966:
	dd	_1041
	dd	1598
	dd	3
	align	4
_6970:
	dd	_1041
	dd	1599
	dd	3
	align	4
_6980:
	dd	_1041
	dd	1600
	dd	3
	align	4
_6982:
	dd	_1041
	dd	1601
	dd	3
	align	4
_6987:
	dd	3
	dd	0
	dd	0
	align	4
_6986:
	dd	_1041
	dd	1602
	dd	4
	align	4
_6990:
	dd	3
	dd	0
	dd	0
	align	4
_6989:
	dd	_1041
	dd	1604
	dd	4
	align	4
_6991:
	dd	_1041
	dd	1606
	dd	3
	align	4
_6994:
	dd	_1041
	dd	1607
	dd	3
	align	4
_6997:
	dd	_1041
	dd	1608
	dd	3
	align	4
_7044:
	dd	1
	dd	_680
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	0
	align	4
_6999:
	dd	_1041
	dd	1612
	dd	3
	align	4
_7024:
	dd	3
	dd	0
	dd	2
	dd	_1524
	dd	_562
	dd	-12
	dd	0
	align	4
_7007:
	dd	_1041
	dd	1613
	dd	4
	align	4
_7023:
	dd	3
	dd	0
	dd	2
	dd	_1604
	dd	_1312
	dd	-16
	dd	0
	align	4
_7017:
	dd	_1041
	dd	1614
	dd	5
	align	4
_7022:
	dd	3
	dd	0
	dd	0
	align	4
_7021:
	dd	_1041
	dd	1614
	dd	28
	align	4
_7025:
	dd	_1041
	dd	1617
	dd	3
	align	4
_7043:
	dd	3
	dd	0
	dd	2
	dd	_1604
	dd	_1312
	dd	-20
	dd	0
	align	4
_7037:
	dd	_1041
	dd	1618
	dd	4
	align	4
_7042:
	dd	3
	dd	0
	dd	0
	align	4
_7041:
	dd	_1041
	dd	1618
	dd	27
	align	4
_7077:
	dd	1
	dd	_682
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_1524
	dd	_562
	dd	-8
	dd	0
	align	4
_7045:
	dd	_1041
	dd	1622
	dd	3
	align	4
_7051:
	dd	_1041
	dd	1623
	dd	3
_7075:
	db	"LList",0
	align	4
_7074:
	dd	3
	dd	0
	dd	2
	dd	_7075
	dd	_562
	dd	-12
	dd	0
	align	4
_7059:
	dd	_1041
	dd	1624
	dd	4
_7073:
	db	":TidentifierVariable",0
	align	4
_7072:
	dd	3
	dd	0
	dd	2
	dd	_1604
	dd	_7073
	dd	-16
	dd	0
	align	4
_7069:
	dd	_1041
	dd	1625
	dd	5
	align	4
_7076:
	dd	_1041
	dd	1628
	dd	3
	align	4
_7081:
	dd	1
	dd	_684
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	0
	align	4
_7078:
	dd	_1041
	dd	1631
	dd	3
_7117:
	db	"typ",0
	align	4
_7116:
	dd	1
	dd	_686
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_7117
	dd	_548
	dd	-8
	dd	0
	align	4
_7082:
	dd	_1041
	dd	1634
	dd	3
	align	4
_7097:
	dd	3
	dd	0
	dd	0
	align	4
_7096:
	dd	_1041
	dd	1634
	dd	111
	align	4
_7098:
	dd	_1041
	dd	1635
	dd	3
	align	4
_7114:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-16
	dd	0
	align	4
_7108:
	dd	_1041
	dd	1636
	dd	4
	align	4
_7113:
	dd	3
	dd	0
	dd	0
	align	4
_7112:
	dd	_1041
	dd	1636
	dd	21
	align	4
_7115:
	dd	_1041
	dd	1638
	dd	3
_7132:
	db	"Tok",0
	align	4
_7131:
	dd	1
	dd	_687
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_7132
	dd	_548
	dd	-8
	dd	0
	align	4
_7118:
	dd	_1041
	dd	1641
	dd	3
	align	4
_7125:
	dd	3
	dd	0
	dd	0
	align	4
_7122:
	dd	_1041
	dd	1642
	dd	4
	align	4
_7130:
	dd	3
	dd	0
	dd	0
	align	4
_7127:
	dd	_1041
	dd	1644
	dd	4
	align	4
_474:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	78,69,87,76,73,78,69
	align	4
_473:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	85,110,101,120,112,101,99,116,101,100,32,84,111,107,101,110
	dw	44,32,101,120,112,101,99,116,105,110,103,58,32
	align	4
_7189:
	dd	1
	dd	_689
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
	align	4
_7133:
	dd	_1041
	dd	1648
	dd	3
	align	4
_7149:
	dd	3
	dd	0
	dd	0
	align	4
_7137:
	dd	_1041
	dd	1648
	dd	18
	align	4
_7152:
	dd	3
	dd	0
	dd	0
	align	4
_7151:
	dd	_1041
	dd	1648
	dd	58
	align	4
_7153:
	dd	_1041
	dd	1649
	dd	3
	align	4
_7160:
	dd	3
	dd	0
	dd	0
	align	4
_7157:
	dd	_1041
	dd	1650
	dd	4
	align	4
_475:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	85,110,101,120,112,101,99,116,101,100,32,69,110,100,32,111
	dw	102,32,70,105,108,101
	align	4
_7185:
	dd	3
	dd	0
	dd	0
	align	4
_7162:
	dd	_1041
	dd	1652
	dd	4
	align	4
_7176:
	dd	_1041
	dd	1653
	dd	4
	align	4
_7184:
	dd	3
	dd	0
	dd	0
	align	4
_7180:
	dd	_1041
	dd	1654
	dd	5
	align	4
_7186:
	dd	_1041
	dd	1657
	dd	3
	align	4
_7246:
	dd	1
	dd	_691
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
	align	4
_7190:
	dd	_1041
	dd	1660
	dd	3
	align	4
_7206:
	dd	3
	dd	0
	dd	0
	align	4
_7194:
	dd	_1041
	dd	1660
	dd	18
	align	4
_7209:
	dd	3
	dd	0
	dd	0
	align	4
_7208:
	dd	_1041
	dd	1660
	dd	58
	align	4
_7210:
	dd	_1041
	dd	1661
	dd	3
	align	4
_7217:
	dd	3
	dd	0
	dd	0
	align	4
_7214:
	dd	_1041
	dd	1662
	dd	4
	align	4
_476:
	dd	_bbStringClass
	dd	2147483647
	dd	24
	dw	85,110,101,120,112,101,99,116,101,100,32,66,101,103,105,110
	dw	32,111,102,32,70,105,108,101
	align	4
_7242:
	dd	3
	dd	0
	dd	0
	align	4
_7219:
	dd	_1041
	dd	1664
	dd	4
	align	4
_7233:
	dd	_1041
	dd	1665
	dd	4
	align	4
_7241:
	dd	3
	dd	0
	dd	0
	align	4
_7237:
	dd	_1041
	dd	1666
	dd	5
	align	4
_7243:
	dd	_1041
	dd	1669
	dd	3
	align	4
_7250:
	dd	1
	dd	_692
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	0
	align	4
_7247:
	dd	_1041
	dd	1672
	dd	3
_7283:
	db	"Err",0
	align	4
_7282:
	dd	1
	dd	_693
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_2300
	dd	_548
	dd	-8
	dd	2
	dd	_7283
	dd	_548
	dd	-12
	dd	0
	align	4
_7251:
	dd	_1041
	dd	1678
	dd	3
	align	4
_480:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	39,32,45,45,45,10
	align	4
_479:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	39,44,32,97,116,32,84,111,107,101,110,32,39
	align	4
_478:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	32,105,110,32,108,105,110,101,32,39
	align	4
_477:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	45,45,45,32,69,114,114,111,114,58,32
	align	4
_7257:
	dd	_1041
	dd	1679
	dd	3
	align	4
_481:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	9,32,108,105,110,101,58,32,32
	align	4
_7265:
	dd	_1041
	dd	1680
	dd	3
	align	4
_482:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	116,109,112,47,101,114,114,111,114,46,116,120,116
	align	4
_7266:
	dd	_1041
	dd	1681
	dd	3
	align	4
_7267:
	dd	_1041
	dd	1683
	dd	3
	align	4
_7271:
	dd	_1041
	dd	1684
	dd	3
	align	4
_7281:
	dd	3
	dd	0
	dd	0
	align	4
_7278:
	dd	_1041
	dd	1685
	dd	4
	align	4
_7301:
	dd	1
	dd	_694
	dd	2
	dd	_1067
	dd	_1954
	dd	-4
	dd	2
	dd	_2300
	dd	_548
	dd	-8
	dd	2
	dd	_7283
	dd	_548
	dd	-12
	dd	0
	align	4
_7284:
	dd	_1041
	dd	1691
	dd	3
	align	4
_486:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	45,45,45,32,87,97,114,110,105,110,103,58,32
	align	4
_7290:
	dd	_1041
	dd	1692
	dd	3
	align	4
_7298:
	dd	_1041
	dd	1693
	dd	3
	align	4
_7299:
	dd	_1041
	dd	1694
	dd	3
	align	4
_7300:
	dd	_1041
	dd	1695
	dd	3
	align	4
_7307:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_3961
	dd	-4
	dd	0
	align	4
_7306:
	dd	3
	dd	0
	dd	0
	align	4
_7350:
	dd	1
	dd	_552
	dd	2
	dd	_1067
	dd	_3961
	dd	-4
	dd	2
	dd	_629
	dd	_630
	dd	-8
	dd	2
	dd	_1093
	dd	_546
	dd	-12
	dd	2
	dd	_578
	dd	_579
	dd	-16
	dd	2
	dd	_697
	dd	_562
	dd	-20
	dd	0
	align	4
_7317:
	dd	_1041
	dd	1706
	dd	3
	align	4
_7325:
	dd	_1041
	dd	1707
	dd	3
	align	4
_7333:
	dd	_1041
	dd	1708
	dd	3
	align	4
_7341:
	dd	_1041
	dd	1709
	dd	3
	align	4
_7349:
	dd	_1041
	dd	1710
	dd	3
	align	4
_7354:
	dd	1
	dd	_699
	dd	2
	dd	_1067
	dd	_3961
	dd	-4
	dd	0
	align	4
_7351:
	dd	_1041
	dd	1713
	dd	3
	align	4
_7358:
	dd	1
	dd	_701
	dd	2
	dd	_1067
	dd	_3961
	dd	-4
	dd	0
	align	4
_7355:
	dd	_1041
	dd	1716
	dd	3
	align	4
_7362:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	0
	align	4
_7361:
	dd	3
	dd	0
	dd	0
	align	4
_7741:
	dd	1
	dd	_617
	dd	0
	align	4
_7368:
	dd	_1041
	dd	1740
	dd	3
	align	4
_7373:
	dd	_1041
	dd	1741
	dd	3
	align	4
_7381:
	dd	_1041
	dd	1742
	dd	3
	align	4
_7385:
	dd	_1041
	dd	1744
	dd	3
	align	4
_7390:
	dd	_1041
	dd	1745
	dd	3
	align	4
_7398:
	dd	_1041
	dd	1746
	dd	3
	align	4
_7402:
	dd	_1041
	dd	1748
	dd	3
	align	4
_7407:
	dd	_1041
	dd	1749
	dd	3
	align	4
_7415:
	dd	_1041
	dd	1750
	dd	3
	align	4
_7419:
	dd	_1041
	dd	1752
	dd	3
	align	4
_7424:
	dd	_1041
	dd	1753
	dd	3
	align	4
_7432:
	dd	_1041
	dd	1754
	dd	3
	align	4
_7436:
	dd	_1041
	dd	1756
	dd	3
	align	4
_7441:
	dd	_1041
	dd	1757
	dd	3
	align	4
_7449:
	dd	_1041
	dd	1758
	dd	3
	align	4
_7453:
	dd	_1041
	dd	1760
	dd	3
	align	4
_7458:
	dd	_1041
	dd	1761
	dd	3
	align	4
_7466:
	dd	_1041
	dd	1762
	dd	3
	align	4
_7470:
	dd	_1041
	dd	1764
	dd	3
	align	4
_7475:
	dd	_1041
	dd	1765
	dd	3
	align	4
_7483:
	dd	_1041
	dd	1766
	dd	3
	align	4
_7487:
	dd	_1041
	dd	1768
	dd	3
	align	4
_7492:
	dd	_1041
	dd	1769
	dd	3
	align	4
_487:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	118,111,105,100
	align	4
_7500:
	dd	_1041
	dd	1770
	dd	3
	align	4
_7504:
	dd	_1041
	dd	1772
	dd	3
	align	4
_7509:
	dd	_1041
	dd	1773
	dd	3
	align	4
_7517:
	dd	_1041
	dd	1774
	dd	3
	align	4
_7521:
	dd	_1041
	dd	1776
	dd	3
	align	4
_7526:
	dd	_1041
	dd	1777
	dd	3
	align	4
_7531:
	dd	_1041
	dd	1778
	dd	3
	align	4
_7536:
	dd	_1041
	dd	1779
	dd	3
	align	4
_7541:
	dd	_1041
	dd	1780
	dd	3
	align	4
_7546:
	dd	_1041
	dd	1781
	dd	3
	align	4
_7551:
	dd	_1041
	dd	1782
	dd	3
	align	4
_7556:
	dd	_1041
	dd	1784
	dd	3
	align	4
_7561:
	dd	_1041
	dd	1785
	dd	3
	align	4
_7566:
	dd	_1041
	dd	1786
	dd	3
	align	4
_7571:
	dd	_1041
	dd	1787
	dd	3
	align	4
_7576:
	dd	_1041
	dd	1788
	dd	3
	align	4
_7581:
	dd	_1041
	dd	1789
	dd	3
	align	4
_7586:
	dd	_1041
	dd	1791
	dd	3
	align	4
_7591:
	dd	_1041
	dd	1792
	dd	3
	align	4
_7596:
	dd	_1041
	dd	1793
	dd	3
	align	4
_7601:
	dd	_1041
	dd	1794
	dd	3
	align	4
_7606:
	dd	_1041
	dd	1795
	dd	3
	align	4
_7611:
	dd	_1041
	dd	1796
	dd	3
	align	4
_7616:
	dd	_1041
	dd	1798
	dd	3
	align	4
_7621:
	dd	_1041
	dd	1799
	dd	3
	align	4
_7626:
	dd	_1041
	dd	1800
	dd	3
	align	4
_7631:
	dd	_1041
	dd	1801
	dd	3
	align	4
_7636:
	dd	_1041
	dd	1802
	dd	3
	align	4
_7641:
	dd	_1041
	dd	1803
	dd	3
	align	4
_7646:
	dd	_1041
	dd	1805
	dd	3
	align	4
_7651:
	dd	_1041
	dd	1806
	dd	3
	align	4
_7656:
	dd	_1041
	dd	1807
	dd	3
	align	4
_7661:
	dd	_1041
	dd	1808
	dd	3
	align	4
_7666:
	dd	_1041
	dd	1809
	dd	3
	align	4
_7671:
	dd	_1041
	dd	1810
	dd	3
	align	4
_7676:
	dd	_1041
	dd	1812
	dd	3
	align	4
_7681:
	dd	_1041
	dd	1813
	dd	3
	align	4
_7686:
	dd	_1041
	dd	1814
	dd	3
	align	4
_7691:
	dd	_1041
	dd	1815
	dd	3
	align	4
_7696:
	dd	_1041
	dd	1816
	dd	3
	align	4
_7701:
	dd	_1041
	dd	1817
	dd	3
	align	4
_7706:
	dd	_1041
	dd	1819
	dd	3
	align	4
_7711:
	dd	_1041
	dd	1820
	dd	3
	align	4
_7716:
	dd	_1041
	dd	1821
	dd	3
	align	4
_7721:
	dd	_1041
	dd	1822
	dd	3
	align	4
_7726:
	dd	_1041
	dd	1823
	dd	3
	align	4
_7731:
	dd	_1041
	dd	1824
	dd	3
	align	4
_7736:
	dd	_1041
	dd	1826
	dd	3
	align	4
_7830:
	dd	1
	dd	_552
	dd	2
	dd	_547
	dd	_548
	dd	-4
	dd	2
	dd	_706
	dd	_589
	dd	-8
	dd	0
	align	4
_7742:
	dd	_1041
	dd	1830
	dd	3
	align	4
_7743:
	dd	_1041
	dd	1831
	dd	3
	align	4
_7797:
	dd	3
	dd	0
	dd	0
	align	4
_7770:
	dd	_1041
	dd	1849
	dd	5
	align	4
_7788:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-12
	dd	0
	align	4
_7780:
	dd	_1041
	dd	1850
	dd	6
	align	4
_7787:
	dd	3
	dd	0
	dd	0
	align	4
_7784:
	dd	_1041
	dd	1850
	dd	44
	align	4
_7789:
	dd	_1041
	dd	1852
	dd	5
	align	4
_7792:
	dd	3
	dd	0
	dd	0
	align	4
_7791:
	dd	_1041
	dd	1852
	dd	31
	align	4
_491:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	73,110,116,101,114,110,97,108,32,101,114,114,111,114
	align	4
_7793:
	dd	_1041
	dd	1853
	dd	5
	align	4
_492:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	67,97,110,110,111,116,32,102,105,110,100,32,68,97,116,97
	dw	116,121,112,101,32,39
	align	4
_7796:
	dd	_1041
	dd	1854
	dd	5
	align	4
_7801:
	dd	3
	dd	0
	dd	0
	align	4
_7798:
	dd	_1041
	dd	1833
	dd	5
	align	4
_7805:
	dd	3
	dd	0
	dd	0
	align	4
_7802:
	dd	_1041
	dd	1835
	dd	5
	align	4
_7809:
	dd	3
	dd	0
	dd	0
	align	4
_7806:
	dd	_1041
	dd	1837
	dd	5
	align	4
_7813:
	dd	3
	dd	0
	dd	0
	align	4
_7810:
	dd	_1041
	dd	1839
	dd	5
	align	4
_7817:
	dd	3
	dd	0
	dd	0
	align	4
_7814:
	dd	_1041
	dd	1841
	dd	5
	align	4
_7821:
	dd	3
	dd	0
	dd	0
	align	4
_7818:
	dd	_1041
	dd	1843
	dd	5
	align	4
_7825:
	dd	3
	dd	0
	dd	0
	align	4
_7822:
	dd	_1041
	dd	1845
	dd	5
	align	4
_7829:
	dd	3
	dd	0
	dd	0
	align	4
_7826:
	dd	_1041
	dd	1847
	dd	5
_7855:
	db	"DimCOunt",0
	align	4
_7854:
	dd	1
	dd	_709
	dd	2
	dd	_629
	dd	_630
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_7855
	dd	_589
	dd	-12
	dd	2
	dd	_1093
	dd	_546
	dd	-16
	dd	0
	align	4
_7831:
	dd	_1041
	dd	1858
	dd	3
	align	4
_7835:
	dd	_1041
	dd	1859
	dd	3
	align	4
_7839:
	dd	_1041
	dd	1860
	dd	3
	align	4
_7841:
	dd	_1041
	dd	1861
	dd	3
	align	4
_7845:
	dd	_1041
	dd	1862
	dd	3
	align	4
_7853:
	dd	_1041
	dd	1863
	dd	3
	align	4
_7895:
	dd	1
	dd	_574
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	2
	dd	_706
	dd	_589
	dd	-8
	dd	2
	dd	_3963
	dd	_546
	dd	-12
	dd	0
	align	4
_7856:
	dd	_1041
	dd	1867
	dd	3
	align	4
_7858:
	dd	_1041
	dd	1868
	dd	3
	align	4
_7868:
	dd	_1041
	dd	1869
	dd	3
	align	4
_7872:
	dd	_1041
	dd	1870
	dd	3
	align	4
_7878:
	dd	_1041
	dd	1871
	dd	3
	align	4
_7888:
	dd	_1041
	dd	1872
	dd	3
	align	4
_7894:
	dd	_1041
	dd	1873
	dd	3
	align	4
_7906:
	dd	1
	dd	_712
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	2
	dd	_629
	dd	_630
	dd	-8
	dd	0
	align	4
_7896:
	dd	_1041
	dd	1876
	dd	3
	align	4
_7901:
	dd	_1041
	dd	1877
	dd	3
	align	4
_8030:
	dd	1
	dd	_713
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	2
	dd	_545
	dd	_546
	dd	-8
	dd	2
	dd	_629
	dd	_630
	dd	-12
	dd	0
	align	4
_7907:
	dd	_1041
	dd	1880
	dd	3
	align	4
_7925:
	dd	3
	dd	0
	dd	0
	align	4
_7915:
	dd	_1041
	dd	1881
	dd	4
	align	4
_7924:
	dd	3
	dd	0
	dd	0
	align	4
_7923:
	dd	_1041
	dd	1882
	dd	5
	align	4
_7926:
	dd	_1041
	dd	1885
	dd	3
	align	4
_7947:
	dd	3
	dd	0
	dd	0
	align	4
_7940:
	dd	_1041
	dd	1885
	dd	85
	align	4
_493:
	dd	_bbStringClass
	dd	2147483647
	dd	26
	dw	68,105,109,101,110,115,105,111,110,32,99,111,117,110,116,32
	dw	109,105,115,109,97,116,99,104,32,39
	align	4
_7948:
	dd	_1041
	dd	1886
	dd	3
	align	4
_494:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	99,97,115,116
	align	4
_7950:
	dd	_1041
	dd	1887
	dd	3
	align	4
_7955:
	dd	_1041
	dd	1888
	dd	3
	align	4
_495:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	102,114,111,109
	align	4
_7960:
	dd	_1041
	dd	1889
	dd	3
	align	4
_7967:
	dd	3
	dd	0
	dd	0
	align	4
_7966:
	dd	_1041
	dd	1889
	dd	30
	align	4
_7968:
	dd	_1041
	dd	1890
	dd	3
	align	4
_8000:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-16
	dd	0
	align	4
_7980:
	dd	_1041
	dd	1891
	dd	4
	align	4
_7999:
	dd	3
	dd	0
	dd	0
	align	4
_7986:
	dd	_1041
	dd	1892
	dd	5
	align	4
_7995:
	dd	3
	dd	0
	dd	0
	align	4
_7994:
	dd	_1041
	dd	1893
	dd	6
	align	4
_7998:
	dd	3
	dd	0
	dd	0
	align	4
_7997:
	dd	_1041
	dd	1895
	dd	6
	align	4
_8001:
	dd	_1041
	dd	1900
	dd	3
	align	4
_8018:
	dd	3
	dd	0
	dd	0
	align	4
_8017:
	dd	_1041
	dd	1901
	dd	4
	align	4
_8019:
	dd	_1041
	dd	1904
	dd	3
	align	4
_502:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	39,41
	align	4
_500:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	39,32,40,100,105,109,101,110,115,105,111,110,115,58,32,39
	align	4
_501:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	39,41,32,116,111,32,39
	align	4
_499:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	67,97,110,110,111,116,32,99,97,115,116,32,39
_8044:
	db	"caster",0
	align	4
_8043:
	dd	1
	dd	_715
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	2
	dd	_545
	dd	_546
	dd	-8
	dd	2
	dd	_629
	dd	_630
	dd	-12
	dd	2
	dd	_8044
	dd	_630
	dd	-16
	dd	0
	align	4
_8031:
	dd	_1041
	dd	1907
	dd	3
	align	4
_8035:
	dd	_1041
	dd	1908
	dd	3
	align	4
_8039:
	dd	3
	dd	0
	dd	0
	align	4
_8037:
	dd	_1041
	dd	1909
	dd	4
	align	4
_8038:
	dd	_1041
	dd	1910
	dd	4
	align	4
_8042:
	dd	3
	dd	0
	dd	0
	align	4
_8041:
	dd	_1041
	dd	1912
	dd	4
	align	4
_8050:
	dd	1
	dd	_717
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	0
	align	4
_8045:
	dd	_1041
	dd	1916
	dd	3
_8063:
	db	"T",0
	align	4
_8062:
	dd	1
	dd	_718
	dd	2
	dd	_1067
	dd	_546
	dd	-4
	dd	2
	dd	_8063
	dd	_548
	dd	-8
	dd	0
	align	4
_8051:
	dd	_1041
	dd	1919
	dd	3
	align	4
_8053:
	dd	_1041
	dd	1920
	dd	3
	align	4
_8060:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-12
	dd	0
	align	4
_8059:
	dd	_1041
	dd	1921
	dd	4
	align	4
_506:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	91,93
	align	4
_8061:
	dd	_1041
	dd	1923
	dd	3
	align	4
_8068:
	dd	1
	dd	_549
	dd	2
	dd	_1067
	dd	_3886
	dd	-4
	dd	0
	align	4
_8067:
	dd	3
	dd	0
	dd	0
	align	4
_8101:
	dd	1
	dd	_723
	dd	2
	dd	_1067
	dd	_3886
	dd	-4
	dd	2
	dd	_2046
	dd	_546
	dd	-8
	dd	0
	align	4
_8076:
	dd	_1041
	dd	1934
	dd	3
	align	4
_8088:
	dd	_1041
	dd	1935
	dd	3
_8141:
	db	"Data1",0
_8142:
	db	"Data2",0
	align	4
_8140:
	dd	1
	dd	_725
	dd	2
	dd	_1067
	dd	_3886
	dd	-4
	dd	2
	dd	_8141
	dd	_546
	dd	-8
	dd	2
	dd	_8142
	dd	_546
	dd	-12
	dd	0
	align	4
_8102:
	dd	_1041
	dd	1938
	dd	3
	align	4
_8138:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-16
	dd	0
	align	4
_8110:
	dd	_1041
	dd	1939
	dd	4
	align	4
_8137:
	dd	3
	dd	0
	dd	0
	align	4
_8116:
	dd	_1041
	dd	1940
	dd	5
	align	4
_8136:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-20
	dd	0
	align	4
_8124:
	dd	_1041
	dd	1941
	dd	6
	align	4
_8135:
	dd	3
	dd	0
	dd	0
	align	4
_8134:
	dd	_1041
	dd	1942
	dd	7
	align	4
_8139:
	dd	_1041
	dd	1947
	dd	3
	align	4
_8254:
	dd	1
	dd	_727
	dd	2
	dd	_1067
	dd	_3886
	dd	-4
	dd	2
	dd	_3958
	dd	_3961
	dd	-8
	dd	2
	dd	_3960
	dd	_3961
	dd	-12
	dd	2
	dd	_629
	dd	_630
	dd	-16
	dd	0
	align	4
_8143:
	dd	_1041
	dd	1950
	dd	3
	align	4
_8240:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-20
	dd	0
	align	4
_8151:
	dd	_1041
	dd	1951
	dd	4
	align	4
_8239:
	dd	3
	dd	0
	dd	0
	align	4
_8159:
	dd	_1041
	dd	1952
	dd	5
	align	4
_8238:
	dd	3
	dd	0
	dd	2
	dd	_2046
	dd	_546
	dd	-24
	dd	0
	align	4
_8167:
	dd	_1041
	dd	1953
	dd	6
_8236:
	db	"NodeLeft",0
_8237:
	db	"NodeRight",0
	align	4
_8235:
	dd	3
	dd	0
	dd	2
	dd	_8236
	dd	_630
	dd	-28
	dd	2
	dd	_8237
	dd	_630
	dd	-32
	dd	2
	dd	_3939
	dd	_3961
	dd	-36
	dd	0
	align	4
_8175:
	dd	_1041
	dd	1954
	dd	7
	align	4
_8179:
	dd	_1041
	dd	1955
	dd	7
	align	4
_8183:
	dd	_1041
	dd	1957
	dd	7
	align	4
_8185:
	dd	_1041
	dd	1958
	dd	7
	align	4
_8196:
	dd	3
	dd	0
	dd	0
	align	4
_8195:
	dd	_1041
	dd	1959
	dd	8
	align	4
_8213:
	dd	3
	dd	0
	dd	0
	align	4
_8198:
	dd	_1041
	dd	1960
	dd	7
	align	4
_8209:
	dd	3
	dd	0
	dd	0
	align	4
_8208:
	dd	_1041
	dd	1961
	dd	8
	align	4
_8212:
	dd	3
	dd	0
	dd	0
	align	4
_8211:
	dd	_1041
	dd	1963
	dd	8
	align	4
_8214:
	dd	_1041
	dd	1965
	dd	7
	align	4
_8223:
	dd	_1041
	dd	1966
	dd	7
	align	4
_8232:
	dd	_1041
	dd	1967
	dd	7
	align	4
_8241:
	dd	_1041
	dd	1972
	dd	3
	align	4
_520:
	dd	_bbStringClass
	dd	2147483647
	dd	23
	dw	39,32,100,97,116,97,116,121,112,101,115,32,109,105,115,109
	dw	97,116,99,104,32,91,39
	align	4
_519:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	79,112,101,114,97,116,111,114,32,39
	align	4
_8389:
	dd	1
	dd	_617
	dd	0
	align	4
_8255:
	dd	_1041
	dd	1976
	dd	3
_8256:
	db	":brl.linkedlist.TList",0
	align	4
_8261:
	dd	_1041
	dd	1982
	dd	3
	align	4
_8273:
	dd	3
	dd	0
	dd	2
	dd	_589
	dd	_589
	dd	-4
	dd	0
	align	4
_8265:
	dd	_1041
	dd	1983
	dd	4
	align	4
_8274:
	dd	_1041
	dd	1986
	dd	3
	align	4
_524:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,110,100
	align	4
_8282:
	dd	_1041
	dd	1987
	dd	3
	align	4
_525:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	111,114
	align	4
_8290:
	dd	_1041
	dd	1989
	dd	3
	align	4
_526:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,115,115
	align	4
_8298:
	dd	_1041
	dd	1990
	dd	3
	align	4
_527:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	103,114,101,97,116,101,114
	align	4
_8306:
	dd	_1041
	dd	1991
	dd	3
	align	4
_528:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	108,101,115,115,101,113,117,97,108
	align	4
_8314:
	dd	_1041
	dd	1992
	dd	3
	align	4
_529:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,114,101,97,116,101,114,101,113,117,97,108
	align	4
_8322:
	dd	_1041
	dd	1993
	dd	3
	align	4
_530:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	101,113,117,97,108
	align	4
_8331:
	dd	_1041
	dd	1994
	dd	3
	align	4
_531:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	110,111,116,101,113,117,97,108
	align	4
_8340:
	dd	_1041
	dd	1996
	dd	3
	align	4
_532:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_8348:
	dd	_1041
	dd	1997
	dd	3
	align	4
_533:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	115,116,114,105,110,103,97,100,100
	align	4
_8357:
	dd	_1041
	dd	1998
	dd	3
	align	4
_534:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	115,117,98
	align	4
_8365:
	dd	_1041
	dd	2000
	dd	3
	align	4
_8373:
	dd	_1041
	dd	2001
	dd	3
	align	4
_535:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,118
	align	4
_8381:
	dd	_1041
	dd	2003
	dd	3
	align	4
_536:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	112,111,119
	align	4
_8421:
	dd	1
	dd	_729
	dd	2
	dd	_705
	dd	_589
	dd	-4
	dd	2
	dd	_547
	dd	_548
	dd	-8
	dd	2
	dd	_721
	dd	_548
	dd	-12
	dd	2
	dd	_2046
	dd	_722
	dd	-16
	dd	2
	dd	_3885
	dd	_3886
	dd	-20
	dd	0
	align	4
_8390:
	dd	_1041
	dd	2007
	dd	3
	align	4
_8392:
	dd	_1041
	dd	2008
	dd	3
	align	4
_8400:
	dd	_1041
	dd	2009
	dd	3
	align	4
_8408:
	dd	_1041
	dd	2010
	dd	3
	align	4
_8416:
	dd	_1041
	dd	2011
	dd	3
	align	4
_8449:
	dd	1
	dd	_731
	dd	2
	dd	_547
	dd	_548
	dd	-4
	dd	0
	align	4
_8422:
	dd	_1041
	dd	2014
	dd	3
_8447:
	db	"Ops",0
	align	4
_8446:
	dd	3
	dd	0
	dd	2
	dd	_8447
	dd	_562
	dd	-8
	dd	0
	align	4
_8428:
	dd	_1041
	dd	2015
	dd	4
_8445:
	db	":tOperator",0
	align	4
_8444:
	dd	3
	dd	0
	dd	2
	dd	_3885
	dd	_8445
	dd	-12
	dd	0
	align	4
_8438:
	dd	_1041
	dd	2016
	dd	5
	align	4
_8443:
	dd	3
	dd	0
	dd	0
	align	4
_8442:
	dd	_1041
	dd	2017
	dd	6
	align	4
_8448:
	dd	_1041
	dd	2021
	dd	3
