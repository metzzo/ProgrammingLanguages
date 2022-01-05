	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_util_cpb
	extrn	___bb_libxml_libxml
	extrn	_bah_libxml_TxmlNode
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
	extrn	_bbStringConcat
	extrn	_bbStringFromInt
	extrn	_bbStringToInt
	extrn	_bb_AddChild
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_linkedlist_TList
	public	___bb_crossplatformbasic_tcompiler_identifier
	public	__bb_TIdentifierFunction_AddParameter
	public	__bb_TIdentifierFunction_Delete
	public	__bb_TIdentifierFunction_GenName
	public	__bb_TIdentifierFunction_New
	public	__bb_TIdentifierFunction_use
	public	__bb_TIdentifierType_Delete
	public	__bb_TIdentifierType_New
	public	__bb_TIdentifierVariable_Delete
	public	__bb_TIdentifierVariable_New
	public	__bb_TIdentifierVariable_ToNode
	public	__bb_TIdentifier_Create
	public	__bb_TIdentifier_Delete
	public	__bb_TIdentifier_New
	public	__bb_TIdentifier_ToNode
	public	__bb_TParameter_Create
	public	__bb_TParameter_Delete
	public	__bb_TParameter_New
	public	_bb_TIdentifier
	public	_bb_TIdentifierFunction
	public	_bb_TIdentifierType
	public	_bb_TIdentifierVariable
	public	_bb_TParameter
	section	"code" code
___bb_crossplatformbasic_tcompiler_identifier:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_163],0
	je	_164
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_164:
	mov	dword [_163],1
	push	ebp
	push	_161
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
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
	push	_bb_TIdentifierType
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_96
_96:
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
	push	_168
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifier
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	push	ebp
	push	_167
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_99
_99:
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
_102:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_173
	push	eax
	call	_bbGCFree
	add	esp,4
_173:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_175
	push	eax
	call	_bbGCFree
	add	esp,4
_175:
	mov	eax,0
	jmp	_171
_171:
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
	push	_194
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_179
	call	_brl_blitz_NullObjectError
_179:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_184
	push	eax
	call	_bbGCFree
	add	esp,4
_184:
	mov	dword [esi+8],ebx
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_187
	call	_brl_blitz_NullObjectError
_187:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_192
	push	eax
	call	_bbGCFree
	add	esp,4
_192:
	mov	dword [esi+12],ebx
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_107
_107:
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
	sub	esp,8
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	push	ebp
	push	_198
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_111
_111:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
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
	push	_203
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierFunction
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
	push	ebp
	push	_202
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_114
_114:
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
_117:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_207
	push	eax
	call	_bbGCFree
	add	esp,4
_207:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_209
	push	eax
	call	_bbGCFree
	add	esp,4
_209:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_205
_205:
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
	push	_214
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_210
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_212
	call	_brl_blitz_NullObjectError
_212:
	mov	byte [ebx+29],1
	mov	byte [ebp-8],0
	jmp	_120
_120:
	call	dword [_bbOnDebugLeaveScope]
	movzx	eax,byte [ebp-8]
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_AddParameter:
	push	ebp
	mov	ebp,esp
	sub	esp,24
	push	ebx
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
	push	_224
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_217
	call	_brl_blitz_NullObjectError
_217:
	push	dword [ebp-16]
	push	dword [ebp-20]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	dword [ebp-24],eax
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_221
	call	_brl_blitz_NullObjectError
_221:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_127
_127:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierFunction_GenName:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_228
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_230
	call	_brl_blitz_NullObjectError
_230:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_233
	call	_brl_blitz_NullObjectError
_233:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_237
	push	eax
	call	_bbGCFree
	add	esp,4
_237:
	mov	dword [esi+20],ebx
	push	_238
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_241
	call	_brl_blitz_NullObjectError
_241:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-16],eax
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-12],eax
	jmp	_25
_27:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
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
	je	_25
	mov	eax,ebp
	push	eax
	push	_262
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_252
	call	_brl_blitz_NullObjectError
_252:
	mov	esi,ebx
	mov	edi,dword [ebp-8]
	cmp	edi,_bbNullObject
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_257
	call	_brl_blitz_NullObjectError
_257:
	push	dword [ebx+16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_29
	push	dword [edi+12]
	push	_28
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
	jnz	_261
	push	eax
	call	_bbGCFree
	add	esp,4
_261:
	mov	dword [esi+12],ebx
	call	dword [_bbOnDebugLeaveScope]
_25:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_247
	call	_brl_blitz_NullObjectError
_247:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
	mov	ebx,0
	jmp	_130
_130:
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
	push	_266
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierVariable
	push	ebp
	push	_265
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_133
_133:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_136:
	mov	dword [eax],_bb_TIdentifier
	push	eax
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_268
_268:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierVariable_ToNode:
	push	ebp
	mov	ebp,esp
	sub	esp,80
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
	mov	dword [ebp-40],_bbNullObject
	mov	dword [ebp-44],_bbNullObject
	mov	dword [ebp-48],_bbNullObject
	mov	dword [ebp-52],_bbNullObject
	mov	dword [ebp-56],0
	mov	dword [ebp-60],_bbNullObject
	mov	dword [ebp-64],_bbNullObject
	mov	dword [ebp-68],_bbNullObject
	mov	dword [ebp-72],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_464
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_269
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_271
	call	_brl_blitz_NullObjectError
_271:
	mov	eax,dword [ebx+16]
	cmp	eax,0
	je	_272
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_272:
	cmp	eax,0
	je	_274
	mov	eax,ebp
	push	eax
	push	_435
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	byte [ebp-4],0
	push	_277
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_30
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-16],eax
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_283
	call	_brl_blitz_NullObjectError
_283:
	push	dword [ebx+8]
	push	_31
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_284
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_286
	call	_brl_blitz_NullObjectError
_286:
	push	_4
	push	_bbNullObject
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_288
	call	_brl_blitz_NullObjectError
_288:
	push	_4
	push	_bbNullObject
	push	_33
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_290
	call	_brl_blitz_NullObjectError
_290:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_292
	call	_brl_blitz_NullObjectError
_292:
	push	dword [esi+12]
	push	_32
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_295
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_297
	call	_brl_blitz_NullObjectError
_297:
	push	_4
	push	_bbNullObject
	push	_34
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_303
	call	_brl_blitz_NullObjectError
_303:
	push	dword [esi+16]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_35
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_304
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_306
	call	_brl_blitz_NullObjectError
_306:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_308
	mov	eax,_bbEmptyString
_308:
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_309
	mov	eax,ebp
	push	eax
	push	_329
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_310
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_36
_38:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
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
	je	_36
	mov	eax,ebp
	push	eax
	push	_326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	push	_4
	push	_bbNullObject
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-32],eax
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-28]
	push	dword [ebp-32]
	call	_bb_AddChild
	add	esp,8
	push	_325
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_36:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_38
_37:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_330
_309:
	mov	eax,ebp
	push	eax
	push	_426
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_331
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-36],eax
	push	_333
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_40
_42:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
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
	je	_40
	mov	eax,ebp
	push	eax
	push	_346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	push	dword [ebp-40]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_40:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_340
	call	_brl_blitz_NullObjectError
_340:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_42
_41:
	push	_347
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-44],_bbNullObject
	mov	eax,dword [ebp-12]
	mov	dword [ebp-76],eax
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_351
	call	_brl_blitz_NullObjectError
_351:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-80],eax
	jmp	_43
_45:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_356
	call	_brl_blitz_NullObjectError
_356:
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
	je	_43
	mov	eax,ebp
	push	eax
	push	_417
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_358
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_360
	call	_brl_blitz_NullObjectError
_360:
	push	_4
	push	_bbNullObject
	push	_46
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-48],eax
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	push	_4
	push	_bbNullObject
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	push	_4
	push	_bbNullObject
	push	_48
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_371
	call	_brl_blitz_NullObjectError
_371:
	push	dword [ebp-44]
	push	_4
	push	_bbNullObject
	push	_47
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	push	_4
	push	_bbNullObject
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_375
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],0
	push	_377
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	push	dword [ebp-44]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_380
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-60],_bbNullObject
	mov	edi,dword [ebp-36]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_384
	call	_brl_blitz_NullObjectError
_384:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_50
_52:
	cmp	ebx,_bbNullObject
	jne	_389
	call	_brl_blitz_NullObjectError
_389:
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
	je	_50
	mov	eax,ebp
	push	eax
	push	_406
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	push	_4
	push	_bbNullObject
	push	_48
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_393
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_395
	call	_brl_blitz_NullObjectError
_395:
	push	_4
	push	_bbNullObject
	push	_47
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	push	_4
	push	_bbNullObject
	push	_53
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_399
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_401
	call	_brl_blitz_NullObjectError
_401:
	push	dword [ebp-56]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_39
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_402
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-52]
	cmp	esi,_bbNullObject
	jne	_404
	call	_brl_blitz_NullObjectError
_404:
	push	_4
	push	_bbNullObject
	push	_49
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-52],eax
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-56],1
	call	dword [_bbOnDebugLeaveScope]
_50:
	cmp	ebx,_bbNullObject
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_52
_51:
	push	_409
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_411
	call	_brl_blitz_NullObjectError
_411:
	push	_4
	push	_bbNullObject
	push	_54
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	push	_56
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_414
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_416
	call	_brl_blitz_NullObjectError
_416:
	push	_4
	push	_bbNullObject
	push	_49
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_43:
	mov	ebx,dword [ebp-80]
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_45
_44:
	push	_421
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	push	_4
	push	_bbNullObject
	push	_54
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_425
	call	_brl_blitz_NullObjectError
_425:
	push	_57
	push	_55
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_330:
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_430
	call	_brl_blitz_NullObjectError
_430:
	mov	eax,dword [ebx+16]
	cmp	dword [ebp-20],eax
	je	_431
	mov	eax,ebp
	push	eax
	push	_433
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_432
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_140
_431:
	push	_434
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_140
_274:
	mov	eax,ebp
	push	eax
	push	_463
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	cmp	dword [ebx+16],0
	je	_443
	mov	eax,ebp
	push	eax
	push	_452
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_444
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_58
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-68],eax
	push	_446
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-68]
	cmp	esi,_bbNullObject
	jne	_448
	call	_brl_blitz_NullObjectError
_448:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_450
	call	_brl_blitz_NullObjectError
_450:
	push	dword [ebx+12]
	push	_32
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_451
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-68]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_140
_443:
	mov	eax,ebp
	push	eax
	push	_462
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_33
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-72],eax
	push	_456
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-72]
	cmp	esi,_bbNullObject
	jne	_458
	call	_brl_blitz_NullObjectError
_458:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_460
	call	_brl_blitz_NullObjectError
_460:
	push	dword [ebx+12]
	push	_32
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_461
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-72]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_140
_140:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierType_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_466
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierType
	push	ebp
	push	_465
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_143
_143:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TIdentifierType_Delete:
	push	ebp
	mov	ebp,esp
	mov	eax,dword [ebp+8]
_146:
	mov	dword [eax],_bb_TIdentifier
	push	eax
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_468
_468:
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
	push	_474
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
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+12],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],0
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+20],edx
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	push	ebp
	push	_473
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_149
_149:
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
_152:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_477
	push	eax
	call	_bbGCFree
	add	esp,4
_477:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_479
	push	eax
	call	_bbGCFree
	add	esp,4
_479:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_481
	push	eax
	call	_bbGCFree
	add	esp,4
_481:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_483
	push	eax
	call	_bbGCFree
	add	esp,4
_483:
	mov	eax,0
	jmp	_475
_475:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TParameter_Create:
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
	push	_513
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_484
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_491
	push	eax
	call	_bbGCFree
	add	esp,4
_491:
	mov	dword [esi+8],ebx
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_499
	push	eax
	call	_bbGCFree
	add	esp,4
_499:
	mov	dword [esi+12],ebx
	push	_500
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_502
	call	_brl_blitz_NullObjectError
_502:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_507
	push	eax
	call	_bbGCFree
	add	esp,4
_507:
	mov	dword [esi+20],ebx
	push	_508
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_510
	call	_brl_blitz_NullObjectError
_510:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+16],eax
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_159
_159:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_163:
	dd	0
_162:
	db	"TCompiler_Identifier",0
	align	4
_161:
	dd	1
	dd	_162
	dd	0
_60:
	db	"TIdentifier",0
_61:
	db	"Datatype",0
_62:
	db	"$",0
_63:
	db	"Name",0
_64:
	db	"IsArray",0
_65:
	db	"i",0
_66:
	db	"New",0
_67:
	db	"()i",0
_68:
	db	"Delete",0
_69:
	db	"Create",0
_70:
	db	"($,$):TIdentifier",0
_71:
	db	"ToNode",0
_72:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_59:
	dd	2
	dd	_60
	dd	3
	dd	_61
	dd	_62
	dd	8
	dd	3
	dd	_63
	dd	_62
	dd	12
	dd	3
	dd	_64
	dd	_65
	dd	16
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	6
	dd	_69
	dd	_70
	dd	48
	dd	6
	dd	_71
	dd	_72
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_59
	dd	20
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
_74:
	db	"TIdentifierFunction",0
_75:
	db	"RealName",0
_76:
	db	"ParamList",0
_77:
	db	":brl.linkedlist.TList",0
_78:
	db	"UserFunc",0
_79:
	db	"b",0
_80:
	db	"Used",0
_81:
	db	"use",0
_82:
	db	"()b",0
_83:
	db	"AddParameter",0
_84:
	db	"($,$,i,$)i",0
_85:
	db	"GenName",0
	align	4
_73:
	dd	2
	dd	_74
	dd	3
	dd	_75
	dd	_62
	dd	20
	dd	3
	dd	_76
	dd	_77
	dd	24
	dd	3
	dd	_78
	dd	_79
	dd	28
	dd	3
	dd	_80
	dd	_79
	dd	29
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	6
	dd	_81
	dd	_82
	dd	56
	dd	6
	dd	_83
	dd	_84
	dd	60
	dd	6
	dd	_85
	dd	_67
	dd	64
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_73
	dd	30
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
_87:
	db	"TIdentifierVariable",0
	align	4
_86:
	dd	2
	dd	_87
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	6
	dd	_71
	dd	_72
	dd	52
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_86
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
	dd	__bb_TIdentifierVariable_ToNode
_89:
	db	"TIdentifierType",0
	align	4
_88:
	dd	2
	dd	_89
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	0
	align	4
_bb_TIdentifierType:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_88
	dd	20
	dd	__bb_TIdentifierType_New
	dd	__bb_TIdentifierType_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TIdentifier_Create
	dd	__bb_TIdentifier_ToNode
_91:
	db	"TParameter",0
_92:
	db	"Pre",0
_93:
	db	"Node",0
_94:
	db	":bah.libxml.TxmlNode",0
_95:
	db	"($,$,$,i):TParameter",0
	align	4
_90:
	dd	2
	dd	_91
	dd	3
	dd	_63
	dd	_62
	dd	8
	dd	3
	dd	_61
	dd	_62
	dd	12
	dd	3
	dd	_64
	dd	_65
	dd	16
	dd	3
	dd	_92
	dd	_62
	dd	20
	dd	3
	dd	_93
	dd	_94
	dd	24
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	6
	dd	_69
	dd	_95
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_90
	dd	28
	dd	__bb_TParameter_New
	dd	__bb_TParameter_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TParameter_Create
_169:
	db	"Self",0
_170:
	db	":TIdentifier",0
	align	4
_168:
	dd	1
	dd	_66
	dd	2
	dd	_169
	dd	_170
	dd	-4
	dd	0
	align	4
_167:
	dd	3
	dd	0
	dd	0
_195:
	db	"N",0
_196:
	db	"Typ",0
	align	4
_194:
	dd	1
	dd	_69
	dd	2
	dd	_169
	dd	_170
	dd	-4
	dd	2
	dd	_195
	dd	_62
	dd	-8
	dd	2
	dd	_196
	dd	_62
	dd	-12
	dd	0
_177:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_Identifier.bmx",0
	align	4
_176:
	dd	_177
	dd	10
	dd	3
	align	4
_185:
	dd	_177
	dd	11
	dd	3
	align	4
_193:
	dd	_177
	dd	12
	dd	3
_199:
	db	"Infos",0
	align	4
_198:
	dd	1
	dd	_71
	dd	2
	dd	_169
	dd	_170
	dd	-4
	dd	2
	dd	_199
	dd	_77
	dd	-8
	dd	0
	align	4
_197:
	dd	_177
	dd	15
	dd	3
_204:
	db	":TIdentifierFunction",0
	align	4
_203:
	dd	1
	dd	_66
	dd	2
	dd	_169
	dd	_204
	dd	-4
	dd	0
	align	4
_202:
	dd	3
	dd	0
	dd	0
	align	4
_214:
	dd	1
	dd	_81
	dd	2
	dd	_169
	dd	_204
	dd	-4
	dd	0
	align	4
_210:
	dd	_177
	dd	25
	dd	3
_225:
	db	"DataType",0
_226:
	db	"P",0
_227:
	db	":TParameter",0
	align	4
_224:
	dd	1
	dd	_83
	dd	2
	dd	_169
	dd	_204
	dd	-4
	dd	2
	dd	_63
	dd	_62
	dd	-8
	dd	2
	dd	_225
	dd	_62
	dd	-12
	dd	2
	dd	_64
	dd	_65
	dd	-16
	dd	2
	dd	_92
	dd	_62
	dd	-20
	dd	2
	dd	_226
	dd	_227
	dd	-24
	dd	0
	align	4
_215:
	dd	_177
	dd	28
	dd	3
	align	4
_219:
	dd	_177
	dd	29
	dd	3
	align	4
_264:
	dd	1
	dd	_85
	dd	2
	dd	_169
	dd	_204
	dd	-4
	dd	0
	align	4
_228:
	dd	_177
	dd	32
	dd	3
	align	4
_238:
	dd	_177
	dd	33
	dd	3
_263:
	db	"Param",0
	align	4
_262:
	dd	3
	dd	0
	dd	2
	dd	_263
	dd	_227
	dd	-8
	dd	0
	align	4
_250:
	dd	_177
	dd	34
	dd	4
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	95,100,105,109
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	95
_267:
	db	":TIdentifierVariable",0
	align	4
_266:
	dd	1
	dd	_66
	dd	2
	dd	_169
	dd	_267
	dd	-4
	dd	0
	align	4
_265:
	dd	3
	dd	0
	dd	0
	align	4
_464:
	dd	1
	dd	_71
	dd	2
	dd	_169
	dd	_267
	dd	-8
	dd	2
	dd	_199
	dd	_77
	dd	-12
	dd	0
	align	4
_269:
	dd	_177
	dd	42
	dd	3
_436:
	db	"Info2",0
_437:
	db	"node",0
_438:
	db	"NodeDim",0
	align	4
_435:
	dd	3
	dd	0
	dd	2
	dd	_436
	dd	_79
	dd	-4
	dd	2
	dd	_437
	dd	_94
	dd	-16
	dd	2
	dd	_65
	dd	_65
	dd	-20
	dd	2
	dd	_438
	dd	_94
	dd	-24
	dd	0
	align	4
_275:
	dd	_177
	dd	43
	dd	4
	align	4
_277:
	dd	_177
	dd	45
	dd	4
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_279:
	dd	_177
	dd	46
	dd	4
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_284:
	dd	_177
	dd	47
	dd	4
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_293:
	dd	_177
	dd	48
	dd	4
	align	4
_295:
	dd	_177
	dd	49
	dd	4
	align	4
_34:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_299:
	dd	_177
	dd	50
	dd	4
	align	4
_35:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	99,111,117,110,116
	align	4
_304:
	dd	_177
	dd	51
	dd	4
	align	4
_329:
	dd	3
	dd	0
	dd	0
	align	4
_310:
	dd	_177
	dd	52
	dd	5
_327:
	db	"Tmp",0
_328:
	db	"TmpNode",0
	align	4
_326:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_94
	dd	-28
	dd	2
	dd	_328
	dd	_94
	dd	-32
	dd	0
	align	4
_320:
	dd	_177
	dd	53
	dd	6
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_324:
	dd	_177
	dd	54
	dd	6
	align	4
_325:
	dd	_177
	dd	55
	dd	6
_427:
	db	"List2",0
	align	4
_426:
	dd	3
	dd	0
	dd	2
	dd	_427
	dd	_77
	dd	-36
	dd	0
	align	4
_331:
	dd	_177
	dd	58
	dd	5
	align	4
_333:
	dd	_177
	dd	59
	dd	5
	align	4
_346:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_94
	dd	-40
	dd	0
	align	4
_343:
	dd	_177
	dd	60
	dd	6
	align	4
_347:
	dd	_177
	dd	62
	dd	5
_418:
	db	"Start",0
_419:
	db	"ArrayNode",0
_420:
	db	"j",0
	align	4
_417:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_94
	dd	-44
	dd	2
	dd	_418
	dd	_94
	dd	-48
	dd	2
	dd	_419
	dd	_94
	dd	-52
	dd	2
	dd	_420
	dd	_65
	dd	-56
	dd	0
	align	4
_357:
	dd	_177
	dd	63
	dd	6
	align	4
_358:
	dd	_177
	dd	68
	dd	6
	align	4
_46:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_362:
	dd	_177
	dd	69
	dd	6
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_365:
	dd	_177
	dd	70
	dd	6
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_369:
	dd	_177
	dd	72
	dd	6
	align	4
_372:
	dd	_177
	dd	73
	dd	6
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_375:
	dd	_177
	dd	74
	dd	6
	align	4
_377:
	dd	_177
	dd	75
	dd	6
	align	4
_380:
	dd	_177
	dd	76
	dd	6
_407:
	db	"TTmp",0
_408:
	db	"YTmp",0
	align	4
_406:
	dd	3
	dd	0
	dd	2
	dd	_407
	dd	_94
	dd	-60
	dd	2
	dd	_408
	dd	_94
	dd	-64
	dd	0
	align	4
_390:
	dd	_177
	dd	77
	dd	7
	align	4
_393:
	dd	_177
	dd	78
	dd	7
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,101,116,97,114,114,97,121,115,105,122,101
	align	4
_399:
	dd	_177
	dd	79
	dd	7
	align	4
_402:
	dd	_177
	dd	80
	dd	7
	align	4
_405:
	dd	_177
	dd	81
	dd	7
	align	4
_409:
	dd	_177
	dd	83
	dd	6
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_56:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_414:
	dd	_177
	dd	84
	dd	6
	align	4
_421:
	dd	_177
	dd	86
	dd	5
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_428:
	dd	_177
	dd	88
	dd	4
	align	4
_433:
	dd	3
	dd	0
	dd	0
	align	4
_432:
	dd	_177
	dd	88
	dd	23
	align	4
_434:
	dd	_177
	dd	89
	dd	4
	align	4
_463:
	dd	3
	dd	0
	dd	0
	align	4
_440:
	dd	_177
	dd	90
	dd	3
	align	4
_452:
	dd	3
	dd	0
	dd	2
	dd	_437
	dd	_94
	dd	-68
	dd	0
	align	4
_444:
	dd	_177
	dd	91
	dd	4
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_446:
	dd	_177
	dd	92
	dd	4
	align	4
_451:
	dd	_177
	dd	93
	dd	4
	align	4
_462:
	dd	3
	dd	0
	dd	2
	dd	_437
	dd	_94
	dd	-72
	dd	0
	align	4
_454:
	dd	_177
	dd	95
	dd	4
	align	4
_456:
	dd	_177
	dd	96
	dd	4
	align	4
_461:
	dd	_177
	dd	97
	dd	4
_467:
	db	":TIdentifierType",0
	align	4
_466:
	dd	1
	dd	_66
	dd	2
	dd	_169
	dd	_467
	dd	-4
	dd	0
	align	4
_465:
	dd	3
	dd	0
	dd	0
	align	4
_474:
	dd	1
	dd	_66
	dd	2
	dd	_169
	dd	_227
	dd	-4
	dd	0
	align	4
_473:
	dd	3
	dd	0
	dd	0
	align	4
_513:
	dd	1
	dd	_69
	dd	2
	dd	_169
	dd	_227
	dd	-4
	dd	2
	dd	_63
	dd	_62
	dd	-8
	dd	2
	dd	_61
	dd	_62
	dd	-12
	dd	2
	dd	_92
	dd	_62
	dd	-16
	dd	2
	dd	_64
	dd	_65
	dd	-20
	dd	0
	align	4
_484:
	dd	_177
	dd	113
	dd	3
	align	4
_492:
	dd	_177
	dd	114
	dd	3
	align	4
_500:
	dd	_177
	dd	115
	dd	3
	align	4
_508:
	dd	_177
	dd	116
	dd	3
	align	4
_512:
	dd	_177
	dd	117
	dd	3
