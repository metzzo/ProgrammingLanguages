	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tgenerator
	extrn	___bb_libxml_libxml
	extrn	_bah_libxml_TxmlDoc
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
	extrn	_bbStringCompare
	extrn	_bbStringConcat
	extrn	_bbStringReplace
	extrn	_bb_TGenerator
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_blitz_RuntimeError
	extrn	_brl_filesystem_CurrentDir
	extrn	_brl_linkedlist_TList
	extrn	_system_
	public	__bb_TLanguageManager_CurrentPlatform
	public	__bb_TLanguageManager_Delete
	public	__bb_TLanguageManager_Execute
	public	__bb_TLanguageManager_Generate
	public	__bb_TLanguageManager_Generator
	public	__bb_TLanguageManager_Init
	public	__bb_TLanguageManager_Languages
	public	__bb_TLanguageManager_New
	public	__bb_TLanguageManager_Register
	public	__bb_TLanguage_Delete
	public	__bb_TLanguage_New
	public	__bb_TPlatform_Delete
	public	__bb_TPlatform_New
	public	__bb_main
	public	_bb_TLanguage
	public	_bb_TLanguageManager
	public	_bb_TPlatform
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_129],0
	je	_130
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_130:
	mov	dword [_129],1
	push	ebp
	push	_128
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_tgenerator
	push	_119
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_122]
	and	eax,1
	cmp	eax,0
	jne	_123
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TLanguageManager_Generator],eax
	or	dword [_122],1
_123:
	push	_124
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_122]
	and	eax,2
	cmp	eax,0
	jne	_126
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TLanguageManager_Languages],eax
	or	dword [_122],2
_126:
	push	_127
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TLanguageManager
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TLanguage
	call	_bbObjectRegisterType
	add	esp,4
	push	_bb_TPlatform
	call	_bbObjectRegisterType
	add	esp,4
	mov	ebx,0
	jmp	_87
_87:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_132
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TLanguageManager
	push	ebp
	push	_131
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_90
_90:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Delete:
	push	ebp
	mov	ebp,esp
_93:
	mov	eax,0
	jmp	_135
_135:
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Register:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_139
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_136
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_Generator]
	cmp	ebx,_bbNullObject
	jne	_138
	call	_brl_blitz_NullObjectError
_138:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_96
_96:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Generate:
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
	mov	eax,ebp
	push	eax
	push	_165
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_141
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_143
	call	_brl_blitz_NullObjectError
_143:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_145
	call	_brl_blitz_NullObjectError
_145:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_148
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	esi,_bbNullObject
	jne	_150
	call	_brl_blitz_NullObjectError
_150:
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	push	_32
	push	_31
	push	dword [ebp-8]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_30
	push	_29
	push	dword [ebx+8]
	push	_28
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_27
	call	_brl_filesystem_CurrentDir
	push	eax
	push	_26
	push	dword [ebp-8]
	push	_25
	push	dword [esi+12]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	mov	dword [ebp-12],eax
	push	_156
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_system_
	add	esp,4
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	esi,_bbNullObject
	jne	_159
	call	_brl_blitz_NullObjectError
_159:
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_161
	call	_brl_blitz_NullObjectError
_161:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_163
	call	_brl_blitz_NullObjectError
_163:
	push	_32
	push	_31
	push	dword [ebp-8]
	call	_bbStringReplace
	add	esp,12
	push	eax
	push	_30
	push	_29
	push	dword [ebx+8]
	push	_28
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	_27
	call	_brl_filesystem_CurrentDir
	push	eax
	push	_26
	push	dword [ebp-8]
	push	_25
	push	dword [esi+16]
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	push	eax
	call	_bbStringReplace
	add	esp,12
	mov	dword [ebp-12],eax
	push	_164
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_system_
	add	esp,4
	mov	ebx,0
	jmp	_100
_100:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Execute:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_170
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_169
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_33
	call	_system_
	add	esp,4
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Init:
	push	ebp
	mov	ebp,esp
	sub	esp,76
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
	mov	eax,ebp
	push	eax
	push	_377
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_171
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_176
	call	_brl_blitz_NullObjectError
_176:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_178
	call	_brl_blitz_NullObjectError
_178:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_34
_36:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_186
	call	_brl_blitz_NullObjectError
_186:
	push	_bah_libxml_TxmlNode
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_375
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_189
	call	_brl_blitz_NullObjectError
_189:
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
	je	_192
	push	_51
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_193
	jmp	_191
_192:
	mov	eax,ebp
	push	eax
	push	_321
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TLanguage
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_196
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_198
	call	_brl_blitz_NullObjectError
_198:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_201
	call	_brl_blitz_NullObjectError
_201:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_205
	push	eax
	call	_bbGCFree
	add	esp,4
_205:
	mov	dword [esi+8],ebx
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	eax,dword [__bb_TLanguageManager_Generator]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_210
	call	_brl_blitz_NullObjectError
_210:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_39
_41:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_215
	call	_brl_blitz_NullObjectError
_215:
	push	_bb_TGenerator
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-20],eax
	cmp	dword [ebp-20],_bbNullObject
	je	_39
	mov	eax,ebp
	push	eax
	push	_231
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_218
	call	_brl_blitz_NullObjectError
_218:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_221
	mov	eax,ebp
	push	eax
	push	_230
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_222
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_224
	call	_brl_blitz_NullObjectError
_224:
	mov	esi,ebx
	mov	eax,dword [ebp-20]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_229
	push	eax
	call	_bbGCFree
	add	esp,4
_229:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_221:
	call	dword [_bbOnDebugLeaveScope]
_39:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_213
	call	_brl_blitz_NullObjectError
_213:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_41
_40:
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_236
	call	_brl_blitz_NullObjectError
_236:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_42
_44:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_244
	call	_brl_blitz_NullObjectError
_244:
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
	je	_42
	mov	eax,ebp
	push	eax
	push	_314
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_245
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TPlatform
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_247
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_249
	call	_brl_blitz_NullObjectError
_249:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_251
	call	_brl_blitz_NullObjectError
_251:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_254
	call	_brl_blitz_NullObjectError
_254:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_257
	call	_brl_blitz_NullObjectError
_257:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_261
	push	eax
	call	_bbGCFree
	add	esp,4
_261:
	mov	dword [esi+8],ebx
	push	_262
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_264
	call	_brl_blitz_NullObjectError
_264:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_269
	push	eax
	call	_bbGCFree
	add	esp,4
_269:
	mov	dword [esi+20],ebx
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_273
	call	_brl_blitz_NullObjectError
_273:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_276
	call	_brl_blitz_NullObjectError
_276:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_45
_47:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_281
	call	_brl_blitz_NullObjectError
_281:
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
	je	_45
	mov	eax,ebp
	push	eax
	push	_311
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_282
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_284
	call	_brl_blitz_NullObjectError
_284:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_48
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_287
	push	_50
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_288
	jmp	_286
_287:
	mov	eax,ebp
	push	eax
	push	_299
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_289
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_291
	call	_brl_blitz_NullObjectError
_291:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_294
	call	_brl_blitz_NullObjectError
_294:
	push	_49
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_298
	push	eax
	call	_bbGCFree
	add	esp,4
_298:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_286
_288:
	mov	eax,ebp
	push	eax
	push	_310
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_300
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_305
	call	_brl_blitz_NullObjectError
_305:
	push	_49
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_309
	push	eax
	call	_bbGCFree
	add	esp,4
_309:
	mov	dword [ebx+16],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_286
_286:
	call	dword [_bbOnDebugLeaveScope]
_45:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_279
	call	_brl_blitz_NullObjectError
_279:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_47
_46:
	call	dword [_bbOnDebugLeaveScope]
_42:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_242
	call	_brl_blitz_NullObjectError
_242:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	push	_318
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_Languages]
	cmp	ebx,_bbNullObject
	jne	_320
	call	_brl_blitz_NullObjectError
_320:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_191
_193:
	mov	eax,ebp
	push	eax
	push	_374
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_322
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TLanguageManager_CurrentPlatform]
	dec	dword [eax+4]
	jnz	_326
	push	eax
	call	_bbGCFree
	add	esp,4
_326:
	mov	dword [__bb_TLanguageManager_CurrentPlatform],ebx
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	eax,dword [__bb_TLanguageManager_Languages]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_52
_54:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_336
	call	_brl_blitz_NullObjectError
_336:
	push	_bb_TLanguage
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
	push	_369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_337
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	push	_55
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_342
	mov	eax,ebp
	push	eax
	push	_368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_343
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_346
	call	_brl_blitz_NullObjectError
_346:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_349
	call	_brl_blitz_NullObjectError
_349:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_56
_58:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_354
	call	_brl_blitz_NullObjectError
_354:
	push	_bb_TPlatform
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-40],eax
	cmp	dword [ebp-40],_bbNullObject
	je	_56
	mov	eax,ebp
	push	eax
	push	_367
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_357
	call	_brl_blitz_NullObjectError
_357:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_359
	call	_brl_blitz_NullObjectError
_359:
	push	_59
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_360
	mov	eax,ebp
	push	eax
	push	_366
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_361
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TLanguageManager_CurrentPlatform]
	dec	dword [eax+4]
	jnz	_365
	push	eax
	call	_bbGCFree
	add	esp,4
_365:
	mov	dword [__bb_TLanguageManager_CurrentPlatform],ebx
	call	dword [_bbOnDebugLeaveScope]
_360:
	call	dword [_bbOnDebugLeaveScope]
_56:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_352
	call	_brl_blitz_NullObjectError
_352:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_58
_57:
	call	dword [_bbOnDebugLeaveScope]
_342:
	call	dword [_bbOnDebugLeaveScope]
_52:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_334
	call	_brl_blitz_NullObjectError
_334:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_54
_53:
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_TLanguageManager_CurrentPlatform],_bbNullObject
	jne	_371
	mov	eax,ebp
	push	eax
	push	_373
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_60
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_371:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_191
_191:
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_184
	call	_brl_blitz_NullObjectError
_184:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	mov	ebx,0
	jmp	_105
_105:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguage_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_385
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TLanguage
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	mov	edx,_bbNullObject
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+16],edx
	push	ebp
	push	_384
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_108
_108:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguage_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_111:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_388
	push	eax
	call	_bbGCFree
	add	esp,4
_388:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_390
	push	eax
	call	_bbGCFree
	add	esp,4
_390:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_392
	push	eax
	call	_bbGCFree
	add	esp,4
_392:
	mov	eax,0
	jmp	_386
_386:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TPlatform_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_398
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TPlatform
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	mov	edx,_bbEmptyString
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
	push	_397
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
__bb_TPlatform_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_117:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_401
	push	eax
	call	_bbGCFree
	add	esp,4
_401:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_403
	push	eax
	call	_bbGCFree
	add	esp,4
_403:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_405
	push	eax
	call	_bbGCFree
	add	esp,4
_405:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_407
	push	eax
	call	_bbGCFree
	add	esp,4
_407:
	mov	eax,0
	jmp	_399
_399:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_129:
	dd	0
_62:
	db	"TLanguageManager",0
	align	4
_128:
	dd	1
	dd	_62
	dd	0
_120:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TLanguageManager.bmx",0
	align	4
_119:
	dd	_120
	dd	6
	dd	2
	align	4
_122:
	dd	0
	align	4
__bb_TLanguageManager_Generator:
	dd	_bbNullObject
	align	4
_124:
	dd	_120
	dd	7
	dd	2
	align	4
__bb_TLanguageManager_Languages:
	dd	_bbNullObject
	align	4
_127:
	dd	_120
	dd	9
	dd	2
	align	4
__bb_TLanguageManager_CurrentPlatform:
	dd	_bbNullObject
_63:
	db	"New",0
_64:
	db	"()i",0
_65:
	db	"Delete",0
_66:
	db	"Register",0
_67:
	db	"(:TGenerator)i",0
_68:
	db	"Generate",0
_69:
	db	"($,$)i",0
_70:
	db	"Execute",0
_71:
	db	"Init",0
_72:
	db	"($)i",0
	align	4
_61:
	dd	2
	dd	_62
	dd	6
	dd	_63
	dd	_64
	dd	16
	dd	6
	dd	_65
	dd	_64
	dd	20
	dd	7
	dd	_66
	dd	_67
	dd	48
	dd	7
	dd	_68
	dd	_69
	dd	52
	dd	7
	dd	_70
	dd	_64
	dd	56
	dd	7
	dd	_71
	dd	_72
	dd	60
	dd	0
	align	4
_bb_TLanguageManager:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_61
	dd	8
	dd	__bb_TLanguageManager_New
	dd	__bb_TLanguageManager_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	__bb_TLanguageManager_Register
	dd	__bb_TLanguageManager_Generate
	dd	__bb_TLanguageManager_Execute
	dd	__bb_TLanguageManager_Init
_74:
	db	"TLanguage",0
_75:
	db	"Name",0
_76:
	db	"$",0
_77:
	db	"Platforms",0
_78:
	db	":brl.linkedlist.TList",0
_79:
	db	"Generator",0
_80:
	db	":TGenerator",0
	align	4
_73:
	dd	2
	dd	_74
	dd	3
	dd	_75
	dd	_76
	dd	8
	dd	3
	dd	_77
	dd	_78
	dd	12
	dd	3
	dd	_79
	dd	_80
	dd	16
	dd	6
	dd	_63
	dd	_64
	dd	16
	dd	6
	dd	_65
	dd	_64
	dd	20
	dd	0
	align	4
_bb_TLanguage:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_73
	dd	20
	dd	__bb_TLanguage_New
	dd	__bb_TLanguage_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_82:
	db	"TPlatform",0
_83:
	db	"Compilecommand",0
_84:
	db	"LinkerCommand",0
_85:
	db	"Lang",0
_86:
	db	":TLanguage",0
	align	4
_81:
	dd	2
	dd	_82
	dd	3
	dd	_75
	dd	_76
	dd	8
	dd	3
	dd	_83
	dd	_76
	dd	12
	dd	3
	dd	_84
	dd	_76
	dd	16
	dd	3
	dd	_85
	dd	_86
	dd	20
	dd	6
	dd	_63
	dd	_64
	dd	16
	dd	6
	dd	_65
	dd	_64
	dd	20
	dd	0
	align	4
_bb_TPlatform:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_81
	dd	24
	dd	__bb_TPlatform_New
	dd	__bb_TPlatform_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_133:
	db	"Self",0
_134:
	db	":TLanguageManager",0
	align	4
_132:
	dd	1
	dd	_63
	dd	2
	dd	_133
	dd	_134
	dd	-4
	dd	0
	align	4
_131:
	dd	3
	dd	0
	dd	0
_140:
	db	"G",0
	align	4
_139:
	dd	1
	dd	_66
	dd	2
	dd	_140
	dd	_80
	dd	-4
	dd	0
	align	4
_136:
	dd	_120
	dd	12
	dd	3
_166:
	db	"InputPath",0
_167:
	db	"OutputPath",0
_168:
	db	"Comm",0
	align	4
_165:
	dd	1
	dd	_68
	dd	2
	dd	_166
	dd	_76
	dd	-4
	dd	2
	dd	_167
	dd	_76
	dd	-8
	dd	2
	dd	_168
	dd	_76
	dd	-12
	dd	0
	align	4
_141:
	dd	_120
	dd	17
	dd	3
	align	4
_148:
	dd	_120
	dd	18
	dd	3
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	46,111
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	2
	dw	46,99
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	37,79,66,74,69,67,84,78,65,77,69,37
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	47,108,105,98,115
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	76,97,110,103,117,97,103,101,47
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	37,80,76,65,84,70,79,82,77,80,65,84,72,37
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	37,67,79,77,80,73,76,69,82,68,73,82,37
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	37,70,73,76,69,78,65,77,69,37
	align	4
_156:
	dd	_120
	dd	19
	dd	3
	align	4
_157:
	dd	_120
	dd	20
	dd	3
	align	4
_164:
	dd	_120
	dd	22
	dd	3
	align	4
_170:
	dd	1
	dd	_70
	dd	0
	align	4
_169:
	dd	_120
	dd	26
	dd	3
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	99,111,109,112,105,108,101,101,120,101,46,101,120,101
_378:
	db	"Path",0
_379:
	db	"doc",0
_380:
	db	":bah.libxml.TxmlDoc",0
	align	4
_377:
	dd	1
	dd	_71
	dd	2
	dd	_378
	dd	_76
	dd	-4
	dd	2
	dd	_379
	dd	_380
	dd	-8
	dd	0
	align	4
_171:
	dd	_120
	dd	30
	dd	3
	align	4
_173:
	dd	_120
	dd	31
	dd	3
_376:
	db	"Node",0
_313:
	db	":bah.libxml.TxmlNode",0
	align	4
_375:
	dd	3
	dd	0
	dd	2
	dd	_376
	dd	_313
	dd	-12
	dd	0
	align	4
_187:
	dd	_120
	dd	32
	dd	4
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,97,110,103
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	99,117,114,114,101,110,116
	align	4
_321:
	dd	3
	dd	0
	dd	2
	dd	_85
	dd	_86
	dd	-16
	dd	0
	align	4
_194:
	dd	_120
	dd	34
	dd	6
	align	4
_196:
	dd	_120
	dd	35
	dd	6
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_206:
	dd	_120
	dd	36
	dd	6
_232:
	db	"Gen",0
	align	4
_231:
	dd	3
	dd	0
	dd	2
	dd	_232
	dd	_80
	dd	-20
	dd	0
	align	4
_216:
	dd	_120
	dd	37
	dd	7
	align	4
_230:
	dd	3
	dd	0
	dd	0
	align	4
_222:
	dd	_120
	dd	38
	dd	8
	align	4
_233:
	dd	_120
	dd	41
	dd	6
_315:
	db	"Node2",0
_316:
	db	"P",0
_317:
	db	":TPlatform",0
	align	4
_314:
	dd	3
	dd	0
	dd	2
	dd	_315
	dd	_313
	dd	-24
	dd	2
	dd	_316
	dd	_317
	dd	-28
	dd	0
	align	4
_245:
	dd	_120
	dd	42
	dd	7
	align	4
_247:
	dd	_120
	dd	43
	dd	7
	align	4
_252:
	dd	_120
	dd	44
	dd	7
	align	4
_262:
	dd	_120
	dd	45
	dd	7
	align	4
_270:
	dd	_120
	dd	47
	dd	7
_312:
	db	"Node3",0
	align	4
_311:
	dd	3
	dd	0
	dd	2
	dd	_312
	dd	_313
	dd	-32
	dd	0
	align	4
_282:
	dd	_120
	dd	48
	dd	8
	align	4
_48:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,109,112,105,108,101,114
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	108,105,110,107,101,114
	align	4
_299:
	dd	3
	dd	0
	dd	0
	align	4
_289:
	dd	_120
	dd	50
	dd	10
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	99,111,109,109,97,110,100
	align	4
_310:
	dd	3
	dd	0
	dd	0
	align	4
_300:
	dd	_120
	dd	52
	dd	10
	align	4
_318:
	dd	_120
	dd	56
	dd	6
	align	4
_374:
	dd	3
	dd	0
	dd	0
	align	4
_322:
	dd	_120
	dd	58
	dd	6
	align	4
_327:
	dd	_120
	dd	59
	dd	6
	align	4
_369:
	dd	3
	dd	0
	dd	2
	dd	_85
	dd	_86
	dd	-36
	dd	0
	align	4
_337:
	dd	_120
	dd	60
	dd	7
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	108,97,110,103,117,97,103,101
	align	4
_368:
	dd	3
	dd	0
	dd	0
	align	4
_343:
	dd	_120
	dd	61
	dd	8
	align	4
_367:
	dd	3
	dd	0
	dd	2
	dd	_316
	dd	_317
	dd	-40
	dd	0
	align	4
_355:
	dd	_120
	dd	62
	dd	9
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	112,108,97,116,102,111,114,109
	align	4
_366:
	dd	3
	dd	0
	dd	0
	align	4
_361:
	dd	_120
	dd	63
	dd	10
	align	4
_370:
	dd	_120
	dd	68
	dd	6
	align	4
_373:
	dd	3
	dd	0
	dd	0
	align	4
_372:
	dd	_120
	dd	68
	dd	30
	align	4
_60:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	67,111,117,108,100,110,116,32,102,105,110,100,32,112,108,97
	dw	116,102,111,114,109,47,108,97,110,103,117,97,103,101
	align	4
_385:
	dd	1
	dd	_63
	dd	2
	dd	_133
	dd	_86
	dd	-4
	dd	0
	align	4
_384:
	dd	3
	dd	0
	dd	0
	align	4
_398:
	dd	1
	dd	_63
	dd	2
	dd	_133
	dd	_317
	dd	-4
	dd	0
	align	4
_397:
	dd	3
	dd	0
	dd	0
