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
	public	__bb_main
	public	_bb_TIdentifier
	public	_bb_TIdentifierFunction
	public	_bb_TIdentifierType
	public	_bb_TIdentifierVariable
	public	_bb_TParameter
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_165],0
	je	_166
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_166:
	mov	dword [_165],1
	push	ebp
	push	_163
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
	jmp	_98
_98:
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
	push	_170
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
	push	_169
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_101
_101:
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
_104:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_175
	push	eax
	call	_bbGCFree
	add	esp,4
_175:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_177
	push	eax
	call	_bbGCFree
	add	esp,4
_177:
	mov	eax,0
	jmp	_173
_173:
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
	push	_196
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_186
	push	eax
	call	_bbGCFree
	add	esp,4
_186:
	mov	dword [esi+8],ebx
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_189
	call	_brl_blitz_NullObjectError
_189:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_194
	push	eax
	call	_bbGCFree
	add	esp,4
_194:
	mov	dword [esi+12],ebx
	push	_195
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_109
_109:
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
	push	_200
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	jmp	_113
_113:
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
	push	_205
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
	push	_204
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_116
_116:
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
_119:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_209
	push	eax
	call	_bbGCFree
	add	esp,4
_209:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_211
	push	eax
	call	_bbGCFree
	add	esp,4
_211:
	mov	dword [ebx],_bb_TIdentifier
	push	ebx
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_207
_207:
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
	push	_216
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_212
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_214
	call	_brl_blitz_NullObjectError
_214:
	mov	byte [ebx+29],1
	mov	byte [ebp-8],0
	jmp	_122
_122:
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
	push	_226
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_217
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TParameter
	call	_bbObjectNew
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_219
	call	_brl_blitz_NullObjectError
_219:
	push	dword [ebp-16]
	push	dword [ebp-20]
	push	dword [ebp-12]
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,20
	mov	dword [ebp-24],eax
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_223
	call	_brl_blitz_NullObjectError
_223:
	mov	ebx,dword [ebx+24]
	cmp	ebx,_bbNullObject
	jne	_225
	call	_brl_blitz_NullObjectError
_225:
	push	dword [ebp-24]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_129
_129:
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
	push	_264
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_230
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_235
	call	_brl_blitz_NullObjectError
_235:
	mov	ebx,dword [ebx+12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_239
	push	eax
	call	_bbGCFree
	add	esp,4
_239:
	mov	dword [esi+20],ebx
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbNullObject
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-12],eax
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_246
	call	_brl_blitz_NullObjectError
_246:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_25
_27:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_251
	call	_brl_blitz_NullObjectError
_251:
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
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	mov	esi,dword [ebp-8]
	cmp	esi,_bbNullObject
	jne	_257
	call	_brl_blitz_NullObjectError
_257:
	push	dword [esi+12]
	push	_28
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
	jnz	_261
	push	eax
	call	_bbGCFree
	add	esp,4
_261:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
_25:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_27
_26:
	mov	ebx,0
	jmp	_132
_132:
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
	jmp	_135
_135:
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
_138:
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
	sub	esp,92
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
	mov	dword [ebp-32],_bbNullObject
	mov	dword [ebp-36],_bbNullObject
	mov	dword [ebp-28],_bbNullObject
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
	mov	dword [ebp-84],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_490
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
	push	_461
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
	push	_29
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
	push	_30
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
	push	_31
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
	push	_32
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
	push	_31
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
	push	_33
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_299
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_301
	call	_brl_blitz_NullObjectError
_301:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+72]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	cmp	eax,_bbNullObject
	jne	_303
	mov	eax,_bbEmptyString
_303:
	push	eax
	call	_bbStringToInt
	add	esp,4
	cmp	eax,0
	je	_304
	mov	eax,ebp
	push	eax
	push	_354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_309
	call	_brl_blitz_NullObjectError
_309:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_34
_36:
	cmp	ebx,_bbNullObject
	jne	_314
	call	_brl_blitz_NullObjectError
_314:
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
	je	_34
	mov	eax,ebp
	push	eax
	push	_326
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_315
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_316
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-24]
	cmp	esi,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	push	_4
	push	_bbNullObject
	push	_37
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-36],eax
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_322
	call	_brl_blitz_NullObjectError
_322:
	push	dword [ebp-32]
	push	_4
	push	_bbNullObject
	push	_38
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_323
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-36]
	cmp	esi,_bbNullObject
	jne	_325
	call	_brl_blitz_NullObjectError
_325:
	push	_4
	push	_bbNullObject
	push	_39
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_34:
	cmp	ebx,_bbNullObject
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	push	_329
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	push	_4
	push	_bbNullObject
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	push	_42
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_336
	call	_brl_blitz_NullObjectError
_336:
	push	_4
	push	_bbNullObject
	push	_43
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-28],eax
	push	_338
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_44
_46:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
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
	je	_44
	mov	eax,ebp
	push	eax
	push	_353
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_348
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_350
	call	_brl_blitz_NullObjectError
_350:
	push	_4
	push	_bbNullObject
	push	_33
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-44],eax
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-40]
	push	dword [ebp-44]
	call	_bb_AddChild
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_44:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_345
	call	_brl_blitz_NullObjectError
_345:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_46
_45:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_356
_304:
	mov	eax,ebp
	push	eax
	push	_452
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-48],eax
	push	_359
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-52],_bbNullObject
	mov	edi,dword [ebp-12]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_363
	call	_brl_blitz_NullObjectError
_363:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_47
_49:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_368
	call	_brl_blitz_NullObjectError
_368:
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
	je	_47
	mov	eax,ebp
	push	eax
	push	_372
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_369
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_371
	call	_brl_blitz_NullObjectError
_371:
	push	dword [ebp-52]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_47:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_366
	call	_brl_blitz_NullObjectError
_366:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_49
_48:
	push	_373
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-56],_bbNullObject
	mov	eax,dword [ebp-12]
	mov	dword [ebp-88],eax
	mov	ebx,dword [ebp-88]
	cmp	ebx,_bbNullObject
	jne	_377
	call	_brl_blitz_NullObjectError
_377:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-92],eax
	jmp	_50
_52:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
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
	je	_50
	mov	eax,ebp
	push	eax
	push	_443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_386
	call	_brl_blitz_NullObjectError
_386:
	push	_4
	push	_bbNullObject
	push	_53
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-60],eax
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	push	_4
	push	_bbNullObject
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	push	_391
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_393
	call	_brl_blitz_NullObjectError
_393:
	push	_4
	push	_bbNullObject
	push	_37
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_395
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_397
	call	_brl_blitz_NullObjectError
_397:
	push	dword [ebp-56]
	push	_4
	push	_bbNullObject
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	push	eax
	call	_bb_AddChild
	add	esp,8
	push	_398
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_400
	call	_brl_blitz_NullObjectError
_400:
	push	_4
	push	_bbNullObject
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_401
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-68],0
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_405
	call	_brl_blitz_NullObjectError
_405:
	push	dword [ebp-56]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+116]
	add	esp,8
	push	_406
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-72],_bbNullObject
	mov	edi,dword [ebp-48]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_410
	call	_brl_blitz_NullObjectError
_410:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_54
_56:
	cmp	ebx,_bbNullObject
	jne	_415
	call	_brl_blitz_NullObjectError
_415:
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
	je	_54
	mov	eax,ebp
	push	eax
	push	_432
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_416
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_418
	call	_brl_blitz_NullObjectError
_418:
	push	_4
	push	_bbNullObject
	push	_37
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_419
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_421
	call	_brl_blitz_NullObjectError
_421:
	push	_4
	push	_bbNullObject
	push	_38
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	esi,eax
	cmp	esi,_bbNullObject
	jne	_423
	call	_brl_blitz_NullObjectError
_423:
	push	_4
	push	_bbNullObject
	push	_57
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-76],eax
	push	_425
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-76]
	cmp	esi,_bbNullObject
	jne	_427
	call	_brl_blitz_NullObjectError
_427:
	push	dword [ebp-68]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_58
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_428
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-64]
	cmp	esi,_bbNullObject
	jne	_430
	call	_brl_blitz_NullObjectError
_430:
	push	_4
	push	_bbNullObject
	push	_39
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-64],eax
	push	_431
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-68],1
	call	dword [_bbOnDebugLeaveScope]
_54:
	cmp	ebx,_bbNullObject
	jne	_413
	call	_brl_blitz_NullObjectError
_413:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
	push	_435
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_437
	call	_brl_blitz_NullObjectError
_437:
	push	_4
	push	_bbNullObject
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_439
	call	_brl_blitz_NullObjectError
_439:
	push	_42
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	push	_440
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_442
	call	_brl_blitz_NullObjectError
_442:
	push	_4
	push	_bbNullObject
	push	_39
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	dword [ebp-24],eax
	call	dword [_bbOnDebugLeaveScope]
_50:
	mov	ebx,dword [ebp-92]
	cmp	ebx,_bbNullObject
	jne	_380
	call	_brl_blitz_NullObjectError
_380:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_52
_51:
	push	_447
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_449
	call	_brl_blitz_NullObjectError
_449:
	push	_4
	push	_bbNullObject
	push	_40
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+144]
	add	esp,16
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_451
	call	_brl_blitz_NullObjectError
_451:
	push	_59
	push	_41
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+168]
	add	esp,12
	call	dword [_bbOnDebugLeaveScope]
_356:
	push	_454
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_456
	call	_brl_blitz_NullObjectError
_456:
	mov	eax,dword [ebx+16]
	cmp	dword [ebp-20],eax
	je	_457
	mov	eax,ebp
	push	eax
	push	_459
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_458
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_457:
	push	_460
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_274:
	mov	eax,ebp
	push	eax
	push	_489
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_466
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_468
	call	_brl_blitz_NullObjectError
_468:
	cmp	dword [ebx+16],0
	je	_469
	mov	eax,ebp
	push	eax
	push	_478
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_470
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_60
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-80],eax
	push	_472
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-80]
	cmp	esi,_bbNullObject
	jne	_474
	call	_brl_blitz_NullObjectError
_474:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_476
	call	_brl_blitz_NullObjectError
_476:
	push	dword [ebx+12]
	push	_31
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_477
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-80]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_469:
	mov	eax,ebp
	push	eax
	push	_488
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_480
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_32
	call	dword [_bah_libxml_TxmlNode+100]
	add	esp,8
	mov	dword [ebp-84],eax
	push	_482
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-84]
	cmp	esi,_bbNullObject
	jne	_484
	call	_brl_blitz_NullObjectError
_484:
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	push	dword [ebx+12]
	push	_31
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+168]
	add	esp,12
	push	_487
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-84]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_142:
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
	push	_492
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	__bb_TIdentifier_New
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TIdentifierType
	push	ebp
	push	_491
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_145
_145:
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
_148:
	mov	dword [eax],_bb_TIdentifier
	push	eax
	call	__bb_TIdentifier_Delete
	add	esp,4
	mov	eax,0
	jmp	_494
_494:
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
	push	_500
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
	push	_499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_151
_151:
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
_154:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_503
	push	eax
	call	_bbGCFree
	add	esp,4
_503:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_505
	push	eax
	call	_bbGCFree
	add	esp,4
_505:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_507
	push	eax
	call	_bbGCFree
	add	esp,4
_507:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_509
	push	eax
	call	_bbGCFree
	add	esp,4
_509:
	mov	eax,0
	jmp	_501
_501:
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
	push	_539
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_510
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_512
	call	_brl_blitz_NullObjectError
_512:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_517
	push	eax
	call	_bbGCFree
	add	esp,4
_517:
	mov	dword [esi+8],ebx
	push	_518
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_520
	call	_brl_blitz_NullObjectError
_520:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+12]
	dec	dword [eax+4]
	jnz	_525
	push	eax
	call	_bbGCFree
	add	esp,4
_525:
	mov	dword [esi+12],ebx
	push	_526
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_528
	call	_brl_blitz_NullObjectError
_528:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_533
	push	eax
	call	_bbGCFree
	add	esp,4
_533:
	mov	dword [esi+20],ebx
	push	_534
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_536
	call	_brl_blitz_NullObjectError
_536:
	mov	eax,dword [ebp-20]
	mov	dword [ebx+16],eax
	push	_538
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	jmp	_161
_161:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_165:
	dd	0
_164:
	db	"TCompiler_Identifier",0
	align	4
_163:
	dd	1
	dd	_164
	dd	0
_62:
	db	"TIdentifier",0
_63:
	db	"Datatype",0
_64:
	db	"$",0
_65:
	db	"Name",0
_66:
	db	"IsArray",0
_67:
	db	"i",0
_68:
	db	"New",0
_69:
	db	"()i",0
_70:
	db	"Delete",0
_71:
	db	"Create",0
_72:
	db	"($,$):TIdentifier",0
_73:
	db	"ToNode",0
_74:
	db	"(:brl.linkedlist.TList):bah.libxml.TxmlNode",0
	align	4
_61:
	dd	2
	dd	_62
	dd	3
	dd	_63
	dd	_64
	dd	8
	dd	3
	dd	_65
	dd	_64
	dd	12
	dd	3
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_72
	dd	48
	dd	6
	dd	_73
	dd	_74
	dd	52
	dd	0
	align	4
_bb_TIdentifier:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_61
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
_76:
	db	"TIdentifierFunction",0
_77:
	db	"RealName",0
_78:
	db	"ParamList",0
_79:
	db	":brl.linkedlist.TList",0
_80:
	db	"UserFunc",0
_81:
	db	"b",0
_82:
	db	"Used",0
_83:
	db	"use",0
_84:
	db	"()b",0
_85:
	db	"AddParameter",0
_86:
	db	"($,$,i,$)i",0
_87:
	db	"GenName",0
	align	4
_75:
	dd	2
	dd	_76
	dd	3
	dd	_77
	dd	_64
	dd	20
	dd	3
	dd	_78
	dd	_79
	dd	24
	dd	3
	dd	_80
	dd	_81
	dd	28
	dd	3
	dd	_82
	dd	_81
	dd	29
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_83
	dd	_84
	dd	56
	dd	6
	dd	_85
	dd	_86
	dd	60
	dd	6
	dd	_87
	dd	_69
	dd	64
	dd	0
	align	4
_bb_TIdentifierFunction:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_75
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
_89:
	db	"TIdentifierVariable",0
	align	4
_88:
	dd	2
	dd	_89
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_73
	dd	_74
	dd	52
	dd	0
	align	4
_bb_TIdentifierVariable:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_88
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
_91:
	db	"TIdentifierType",0
	align	4
_90:
	dd	2
	dd	_91
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	0
	align	4
_bb_TIdentifierType:
	dd	_bb_TIdentifier
	dd	_bbObjectFree
	dd	_90
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
_93:
	db	"TParameter",0
_94:
	db	"Pre",0
_95:
	db	"Node",0
_96:
	db	":bah.libxml.TxmlNode",0
_97:
	db	"($,$,$,i):TParameter",0
	align	4
_92:
	dd	2
	dd	_93
	dd	3
	dd	_65
	dd	_64
	dd	8
	dd	3
	dd	_63
	dd	_64
	dd	12
	dd	3
	dd	_66
	dd	_67
	dd	16
	dd	3
	dd	_94
	dd	_64
	dd	20
	dd	3
	dd	_95
	dd	_96
	dd	24
	dd	6
	dd	_68
	dd	_69
	dd	16
	dd	6
	dd	_70
	dd	_69
	dd	20
	dd	6
	dd	_71
	dd	_97
	dd	48
	dd	0
	align	4
_bb_TParameter:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_92
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
_171:
	db	"Self",0
_172:
	db	":TIdentifier",0
	align	4
_170:
	dd	1
	dd	_68
	dd	2
	dd	_171
	dd	_172
	dd	-4
	dd	0
	align	4
_169:
	dd	3
	dd	0
	dd	0
_197:
	db	"N",0
_198:
	db	"Typ",0
	align	4
_196:
	dd	1
	dd	_71
	dd	2
	dd	_171
	dd	_172
	dd	-4
	dd	2
	dd	_197
	dd	_64
	dd	-8
	dd	2
	dd	_198
	dd	_64
	dd	-12
	dd	0
_179:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TCompiler_Identifier.bmx",0
	align	4
_178:
	dd	_179
	dd	10
	dd	3
	align	4
_187:
	dd	_179
	dd	11
	dd	3
	align	4
_195:
	dd	_179
	dd	12
	dd	3
_201:
	db	"Infos",0
	align	4
_200:
	dd	1
	dd	_73
	dd	2
	dd	_171
	dd	_172
	dd	-4
	dd	2
	dd	_201
	dd	_79
	dd	-8
	dd	0
	align	4
_199:
	dd	_179
	dd	15
	dd	3
_206:
	db	":TIdentifierFunction",0
	align	4
_205:
	dd	1
	dd	_68
	dd	2
	dd	_171
	dd	_206
	dd	-4
	dd	0
	align	4
_204:
	dd	3
	dd	0
	dd	0
	align	4
_216:
	dd	1
	dd	_83
	dd	2
	dd	_171
	dd	_206
	dd	-4
	dd	0
	align	4
_212:
	dd	_179
	dd	25
	dd	3
_227:
	db	"DataType",0
_228:
	db	"P",0
_229:
	db	":TParameter",0
	align	4
_226:
	dd	1
	dd	_85
	dd	2
	dd	_171
	dd	_206
	dd	-4
	dd	2
	dd	_65
	dd	_64
	dd	-8
	dd	2
	dd	_227
	dd	_64
	dd	-12
	dd	2
	dd	_66
	dd	_67
	dd	-16
	dd	2
	dd	_94
	dd	_64
	dd	-20
	dd	2
	dd	_228
	dd	_229
	dd	-24
	dd	0
	align	4
_217:
	dd	_179
	dd	28
	dd	3
	align	4
_221:
	dd	_179
	dd	29
	dd	3
	align	4
_264:
	dd	1
	dd	_87
	dd	2
	dd	_171
	dd	_206
	dd	-4
	dd	0
	align	4
_230:
	dd	_179
	dd	32
	dd	3
	align	4
_240:
	dd	_179
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
	dd	_229
	dd	-8
	dd	0
	align	4
_252:
	dd	_179
	dd	34
	dd	4
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
	dd	_68
	dd	2
	dd	_171
	dd	_267
	dd	-4
	dd	0
	align	4
_265:
	dd	3
	dd	0
	dd	0
	align	4
_490:
	dd	1
	dd	_73
	dd	2
	dd	_171
	dd	_267
	dd	-8
	dd	2
	dd	_201
	dd	_79
	dd	-12
	dd	0
	align	4
_269:
	dd	_179
	dd	42
	dd	3
_462:
	db	"Info2",0
_463:
	db	"node",0
_464:
	db	"NodeDim",0
	align	4
_461:
	dd	3
	dd	0
	dd	2
	dd	_462
	dd	_81
	dd	-4
	dd	2
	dd	_463
	dd	_96
	dd	-16
	dd	2
	dd	_67
	dd	_67
	dd	-20
	dd	2
	dd	_464
	dd	_96
	dd	-24
	dd	0
	align	4
_275:
	dd	_179
	dd	43
	dd	4
	align	4
_277:
	dd	_179
	dd	45
	dd	4
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	97,114,114,97,121
	align	4
_279:
	dd	_179
	dd	46
	dd	4
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	116,121,112,101
	align	4
_284:
	dd	_179
	dd	47
	dd	4
	align	4
_4:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	118,97,114
	align	4
_293:
	dd	_179
	dd	48
	dd	4
	align	4
_295:
	dd	_179
	dd	49
	dd	4
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	100,105,109
	align	4
_299:
	dd	_179
	dd	50
	dd	4
_355:
	db	"RealDim",0
	align	4
_354:
	dd	3
	dd	0
	dd	2
	dd	_355
	dd	_96
	dd	-28
	dd	0
	align	4
_305:
	dd	_179
	dd	51
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
	dd	_96
	dd	-32
	dd	2
	dd	_328
	dd	_96
	dd	-36
	dd	0
	align	4
_315:
	dd	_179
	dd	52
	dd	6
	align	4
_316:
	dd	_179
	dd	53
	dd	6
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	109,117,108
	align	4
_320:
	dd	_179
	dd	54
	dd	6
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,101,102,116
	align	4
_323:
	dd	_179
	dd	55
	dd	6
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	114,105,103,104,116
	align	4
_329:
	dd	_179
	dd	57
	dd	5
	align	4
_40:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	105,110,116
	align	4
_42:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	49
	align	4
_41:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	118,97,108,117,101
	align	4
_334:
	dd	_179
	dd	58
	dd	5
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	114,101,97,108,100,105,109
	align	4
_338:
	dd	_179
	dd	59
	dd	5
	align	4
_353:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_96
	dd	-40
	dd	2
	dd	_328
	dd	_96
	dd	-44
	dd	0
	align	4
_348:
	dd	_179
	dd	60
	dd	6
	align	4
_352:
	dd	_179
	dd	61
	dd	6
_453:
	db	"List2",0
	align	4
_452:
	dd	3
	dd	0
	dd	2
	dd	_453
	dd	_79
	dd	-48
	dd	0
	align	4
_357:
	dd	_179
	dd	64
	dd	5
	align	4
_359:
	dd	_179
	dd	65
	dd	5
	align	4
_372:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_96
	dd	-52
	dd	0
	align	4
_369:
	dd	_179
	dd	66
	dd	6
	align	4
_373:
	dd	_179
	dd	68
	dd	5
_444:
	db	"Start",0
_445:
	db	"ArrayNode",0
_446:
	db	"j",0
	align	4
_443:
	dd	3
	dd	0
	dd	2
	dd	_327
	dd	_96
	dd	-56
	dd	2
	dd	_444
	dd	_96
	dd	-60
	dd	2
	dd	_445
	dd	_96
	dd	-64
	dd	2
	dd	_446
	dd	_67
	dd	-68
	dd	0
	align	4
_383:
	dd	_179
	dd	69
	dd	6
	align	4
_384:
	dd	_179
	dd	74
	dd	6
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	3
	dw	97,100,100
	align	4
_388:
	dd	_179
	dd	75
	dd	6
	align	4
_391:
	dd	_179
	dd	76
	dd	6
	align	4
_395:
	dd	_179
	dd	78
	dd	6
	align	4
_398:
	dd	_179
	dd	79
	dd	6
	align	4
_401:
	dd	_179
	dd	80
	dd	6
	align	4
_403:
	dd	_179
	dd	81
	dd	6
	align	4
_406:
	dd	_179
	dd	82
	dd	6
_433:
	db	"TTmp",0
_434:
	db	"YTmp",0
	align	4
_432:
	dd	3
	dd	0
	dd	2
	dd	_433
	dd	_96
	dd	-72
	dd	2
	dd	_434
	dd	_96
	dd	-76
	dd	0
	align	4
_416:
	dd	_179
	dd	83
	dd	7
	align	4
_419:
	dd	_179
	dd	84
	dd	7
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	103,101,116,97,114,114,97,121,115,105,122,101
	align	4
_425:
	dd	_179
	dd	85
	dd	7
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	100,105,109,101,110,115,105,111,110
	align	4
_428:
	dd	_179
	dd	86
	dd	7
	align	4
_431:
	dd	_179
	dd	87
	dd	7
	align	4
_435:
	dd	_179
	dd	89
	dd	6
	align	4
_440:
	dd	_179
	dd	90
	dd	6
	align	4
_447:
	dd	_179
	dd	92
	dd	5
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	48
	align	4
_454:
	dd	_179
	dd	94
	dd	4
	align	4
_459:
	dd	3
	dd	0
	dd	0
	align	4
_458:
	dd	_179
	dd	94
	dd	23
	align	4
_460:
	dd	_179
	dd	95
	dd	4
	align	4
_489:
	dd	3
	dd	0
	dd	0
	align	4
_466:
	dd	_179
	dd	96
	dd	3
	align	4
_478:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_96
	dd	-80
	dd	0
	align	4
_470:
	dd	_179
	dd	97
	dd	4
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	97,114,114,97,121,114,101,102
	align	4
_472:
	dd	_179
	dd	98
	dd	4
	align	4
_477:
	dd	_179
	dd	99
	dd	4
	align	4
_488:
	dd	3
	dd	0
	dd	2
	dd	_463
	dd	_96
	dd	-84
	dd	0
	align	4
_480:
	dd	_179
	dd	101
	dd	4
	align	4
_482:
	dd	_179
	dd	102
	dd	4
	align	4
_487:
	dd	_179
	dd	103
	dd	4
_493:
	db	":TIdentifierType",0
	align	4
_492:
	dd	1
	dd	_68
	dd	2
	dd	_171
	dd	_493
	dd	-4
	dd	0
	align	4
_491:
	dd	3
	dd	0
	dd	0
	align	4
_500:
	dd	1
	dd	_68
	dd	2
	dd	_171
	dd	_229
	dd	-4
	dd	0
	align	4
_499:
	dd	3
	dd	0
	dd	0
	align	4
_539:
	dd	1
	dd	_71
	dd	2
	dd	_171
	dd	_229
	dd	-4
	dd	2
	dd	_65
	dd	_64
	dd	-8
	dd	2
	dd	_63
	dd	_64
	dd	-12
	dd	2
	dd	_94
	dd	_64
	dd	-16
	dd	2
	dd	_66
	dd	_67
	dd	-20
	dd	0
	align	4
_510:
	dd	_179
	dd	119
	dd	3
	align	4
_518:
	dd	_179
	dd	120
	dd	3
	align	4
_526:
	dd	_179
	dd	121
	dd	3
	align	4
_534:
	dd	_179
	dd	122
	dd	3
	align	4
_538:
	dd	_179
	dd	123
	dd	3
