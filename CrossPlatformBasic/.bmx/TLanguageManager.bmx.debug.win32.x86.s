	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_crossplatformbasic_tcompiler_cpb
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
	extrn	_brl_standardio_Print
	extrn	_system_
	public	___bb_crossplatformbasic_tlanguagemanager
	public	__bb_TLanguageManager_AddModules
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
	public	_bb_TLanguage
	public	_bb_TLanguageManager
	public	_bb_TPlatform
	section	"code" code
___bb_crossplatformbasic_tlanguagemanager:
	push	ebp
	mov	ebp,esp
	push	ebx
	cmp	dword [_138],0
	je	_139
	mov	eax,0
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_139:
	mov	dword [_138],1
	push	ebp
	push	_137
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_libxml_libxml
	call	___bb_crossplatformbasic_tgenerator
	call	___bb_crossplatformbasic_tcompiler_cpb
	push	_128
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_131]
	and	eax,1
	cmp	eax,0
	jne	_132
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TLanguageManager_Generator],eax
	or	dword [_131],1
_132:
	push	_133
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_131]
	and	eax,2
	cmp	eax,0
	jne	_135
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [__bb_TLanguageManager_Languages],eax
	or	dword [_131],2
_135:
	push	_136
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
	jmp	_93
_93:
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
	push	_141
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_TLanguageManager
	push	ebp
	push	_140
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_96
_96:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_Delete:
	push	ebp
	mov	ebp,esp
_99:
	mov	eax,0
	jmp	_144
_144:
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
	push	_148
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_145
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_Generator]
	cmp	ebx,_bbNullObject
	jne	_147
	call	_brl_blitz_NullObjectError
_147:
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	mov	ebx,0
	jmp	_102
_102:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_TLanguageManager_AddModules:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_155
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_150
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_152
	call	_brl_blitz_NullObjectError
_152:
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_154
	call	_brl_blitz_NullObjectError
_154:
	push	dword [ebx+24]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+56]
	add	esp,8
	mov	ebx,0
	jmp	_105
_105:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
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
	push	_184
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_158
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_160
	call	_brl_blitz_NullObjectError
_160:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_162
	call	_brl_blitz_NullObjectError
_162:
	mov	ebx,dword [ebx+16]
	cmp	ebx,_bbNullObject
	jne	_164
	call	_brl_blitz_NullObjectError
_164:
	push	dword [ebp-8]
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,12
	push	_165
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	esi,_bbNullObject
	jne	_167
	call	_brl_blitz_NullObjectError
_167:
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_169
	call	_brl_blitz_NullObjectError
_169:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_171
	call	_brl_blitz_NullObjectError
_171:
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
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_standardio_Print
	add	esp,4
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_system_
	add	esp,4
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	esi,_bbNullObject
	jne	_177
	call	_brl_blitz_NullObjectError
_177:
	mov	ebx,dword [__bb_TLanguageManager_CurrentPlatform]
	cmp	ebx,_bbNullObject
	jne	_179
	call	_brl_blitz_NullObjectError
_179:
	mov	ebx,dword [ebx+20]
	cmp	ebx,_bbNullObject
	jne	_181
	call	_brl_blitz_NullObjectError
_181:
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
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_brl_standardio_Print
	add	esp,4
	push	_183
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-12]
	call	_system_
	add	esp,4
	mov	ebx,0
	jmp	_109
_109:
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
	push	_189
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_188
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_33
	call	_system_
	add	esp,4
	mov	ebx,0
	jmp	_111
_111:
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
	push	_410
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	call	dword [_bah_libxml_TxmlDoc+100]
	add	esp,4
	mov	dword [ebp-8],eax
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	ebx,dword [ebp-8]
	cmp	ebx,_bbNullObject
	jne	_195
	call	_brl_blitz_NullObjectError
_195:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+120]
	add	esp,4
	mov	ebx,eax
	cmp	ebx,_bbNullObject
	jne	_197
	call	_brl_blitz_NullObjectError
_197:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-72],eax
	mov	ebx,dword [ebp-72]
	cmp	ebx,_bbNullObject
	jne	_200
	call	_brl_blitz_NullObjectError
_200:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-76],eax
	jmp	_34
_36:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_205
	call	_brl_blitz_NullObjectError
_205:
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
	push	_408
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_208
	call	_brl_blitz_NullObjectError
_208:
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
	je	_211
	push	_55
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_212
	jmp	_210
_211:
	mov	eax,ebp
	push	eax
	push	_354
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TLanguage
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-16],eax
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_217
	call	_brl_blitz_NullObjectError
_217:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_220
	call	_brl_blitz_NullObjectError
_220:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_224
	push	eax
	call	_bbGCFree
	add	esp,4
_224:
	mov	dword [esi+8],ebx
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbNullObject
	mov	eax,dword [__bb_TLanguageManager_Generator]
	mov	dword [ebp-52],eax
	mov	ebx,dword [ebp-52]
	cmp	ebx,_bbNullObject
	jne	_229
	call	_brl_blitz_NullObjectError
_229:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_39
_41:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_234
	call	_brl_blitz_NullObjectError
_234:
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
	push	_250
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_235
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-20]
	cmp	esi,_bbNullObject
	jne	_237
	call	_brl_blitz_NullObjectError
_237:
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_239
	call	_brl_blitz_NullObjectError
_239:
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_240
	mov	eax,ebp
	push	eax
	push	_249
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_241
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_243
	call	_brl_blitz_NullObjectError
_243:
	mov	esi,ebx
	mov	eax,dword [ebp-20]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+16]
	dec	dword [eax+4]
	jnz	_248
	push	eax
	call	_bbGCFree
	add	esp,4
_248:
	mov	dword [esi+16],ebx
	call	dword [_bbOnDebugLeaveScope]
_240:
	call	dword [_bbOnDebugLeaveScope]
_39:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_232
	call	_brl_blitz_NullObjectError
_232:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_41
_40:
	push	_252
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbNullObject
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_255
	call	_brl_blitz_NullObjectError
_255:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-64],eax
	mov	ebx,dword [ebp-64]
	cmp	ebx,_bbNullObject
	jne	_258
	call	_brl_blitz_NullObjectError
_258:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-68],eax
	jmp	_42
_44:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_263
	call	_brl_blitz_NullObjectError
_263:
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
	push	_349
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_264
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_266
	call	_brl_blitz_NullObjectError
_266:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	push	eax
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_267
	mov	eax,ebp
	push	eax
	push	_346
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_268
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_TPlatform
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-28],eax
	push	_270
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_272
	call	_brl_blitz_NullObjectError
_272:
	mov	ebx,dword [ebx+12]
	cmp	ebx,_bbNullObject
	jne	_274
	call	_brl_blitz_NullObjectError
_274:
	push	dword [ebp-28]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	push	_275
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_277
	call	_brl_blitz_NullObjectError
_277:
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_280
	call	_brl_blitz_NullObjectError
_280:
	push	_38
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+8]
	dec	dword [eax+4]
	jnz	_284
	push	eax
	call	_bbGCFree
	add	esp,4
_284:
	mov	dword [esi+8],ebx
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-28]
	cmp	esi,_bbNullObject
	jne	_287
	call	_brl_blitz_NullObjectError
_287:
	mov	ebx,dword [ebp-16]
	inc	dword [ebx+4]
	mov	eax,dword [esi+20]
	dec	dword [eax+4]
	jnz	_292
	push	eax
	call	_bbGCFree
	add	esp,4
_292:
	mov	dword [esi+20],ebx
	push	_293
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbNullObject
	mov	ebx,dword [ebp-24]
	cmp	ebx,_bbNullObject
	jne	_296
	call	_brl_blitz_NullObjectError
_296:
	push	1
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+76]
	add	esp,8
	mov	dword [ebp-48],eax
	mov	ebx,dword [ebp-48]
	cmp	ebx,_bbNullObject
	jne	_299
	call	_brl_blitz_NullObjectError
_299:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_46
_48:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_304
	call	_brl_blitz_NullObjectError
_304:
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
	je	_46
	mov	eax,ebp
	push	eax
	push	_343
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_305
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_307
	call	_brl_blitz_NullObjectError
_307:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,4
	mov	ebx,eax
	push	_49
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_310
	push	_51
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_311
	push	_52
	push	ebx
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	je	_312
	jmp	_309
_310:
	mov	eax,ebp
	push	eax
	push	_323
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_315
	call	_brl_blitz_NullObjectError
_315:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_318
	call	_brl_blitz_NullObjectError
_318:
	push	_50
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_322
	push	eax
	call	_bbGCFree
	add	esp,4
_322:
	mov	dword [ebx+12],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_309
_311:
	mov	eax,ebp
	push	eax
	push	_334
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_324
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	esi,dword [ebp-32]
	cmp	esi,_bbNullObject
	jne	_329
	call	_brl_blitz_NullObjectError
_329:
	push	_50
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	inc	dword [eax+4]
	mov	esi,eax
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_333
	push	eax
	call	_bbGCFree
	add	esp,4
_333:
	mov	dword [ebx+16],esi
	call	dword [_bbOnDebugLeaveScope]
	jmp	_309
_312:
	mov	eax,ebp
	push	eax
	push	_342
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_335
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-28]
	cmp	ebx,_bbNullObject
	jne	_337
	call	_brl_blitz_NullObjectError
_337:
	mov	esi,dword [ebx+24]
	cmp	esi,_bbNullObject
	jne	_339
	call	_brl_blitz_NullObjectError
_339:
	mov	ebx,dword [ebp-32]
	cmp	ebx,_bbNullObject
	jne	_341
	call	_brl_blitz_NullObjectError
_341:
	push	_54
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	_53
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_309
_309:
	call	dword [_bbOnDebugLeaveScope]
_46:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_302
	call	_brl_blitz_NullObjectError
_302:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_48
_47:
	call	dword [_bbOnDebugLeaveScope]
_267:
	call	dword [_bbOnDebugLeaveScope]
_42:
	mov	ebx,dword [ebp-68]
	cmp	ebx,_bbNullObject
	jne	_261
	call	_brl_blitz_NullObjectError
_261:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_44
_43:
	push	_351
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [__bb_TLanguageManager_Languages]
	cmp	ebx,_bbNullObject
	jne	_353
	call	_brl_blitz_NullObjectError
_353:
	push	dword [ebp-16]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+68]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_210
_212:
	mov	eax,ebp
	push	eax
	push	_407
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_355
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,_bbNullObject
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TLanguageManager_CurrentPlatform]
	dec	dword [eax+4]
	jnz	_359
	push	eax
	call	_bbGCFree
	add	esp,4
_359:
	mov	dword [__bb_TLanguageManager_CurrentPlatform],ebx
	push	_360
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-36],_bbNullObject
	mov	eax,dword [__bb_TLanguageManager_Languages]
	mov	dword [ebp-60],eax
	mov	ebx,dword [ebp-60]
	cmp	ebx,_bbNullObject
	jne	_364
	call	_brl_blitz_NullObjectError
_364:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	dword [ebp-56],eax
	jmp	_56
_58:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_369
	call	_brl_blitz_NullObjectError
_369:
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
	je	_56
	mov	eax,ebp
	push	eax
	push	_402
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_370
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_372
	call	_brl_blitz_NullObjectError
_372:
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	push	_59
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [ebx+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_375
	mov	eax,ebp
	push	eax
	push	_401
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_376
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-40],_bbNullObject
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_379
	call	_brl_blitz_NullObjectError
_379:
	mov	eax,dword [ebx+12]
	mov	dword [ebp-44],eax
	mov	ebx,dword [ebp-44]
	cmp	ebx,_bbNullObject
	jne	_382
	call	_brl_blitz_NullObjectError
_382:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_60
_62:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_387
	call	_brl_blitz_NullObjectError
_387:
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
	je	_60
	mov	eax,ebp
	push	eax
	push	_400
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_388
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-40]
	cmp	esi,_bbNullObject
	jne	_390
	call	_brl_blitz_NullObjectError
_390:
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_392
	call	_brl_blitz_NullObjectError
_392:
	push	_45
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+188]
	add	esp,8
	push	eax
	push	dword [esi+8]
	call	_bbStringCompare
	add	esp,8
	cmp	eax,0
	jne	_393
	mov	eax,ebp
	push	eax
	push	_399
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-40]
	inc	dword [ebx+4]
	mov	eax,dword [__bb_TLanguageManager_CurrentPlatform]
	dec	dword [eax+4]
	jnz	_398
	push	eax
	call	_bbGCFree
	add	esp,4
_398:
	mov	dword [__bb_TLanguageManager_CurrentPlatform],ebx
	call	dword [_bbOnDebugLeaveScope]
_393:
	call	dword [_bbOnDebugLeaveScope]
_60:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_385
	call	_brl_blitz_NullObjectError
_385:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_62
_61:
	call	dword [_bbOnDebugLeaveScope]
_375:
	call	dword [_bbOnDebugLeaveScope]
_56:
	mov	ebx,dword [ebp-56]
	cmp	ebx,_bbNullObject
	jne	_367
	call	_brl_blitz_NullObjectError
_367:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_58
_57:
	push	_403
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [__bb_TLanguageManager_CurrentPlatform],_bbNullObject
	jne	_404
	mov	eax,ebp
	push	eax
	push	_406
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_405
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_63
	call	_brl_blitz_RuntimeError
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_404:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_210
_210:
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,dword [ebp-76]
	cmp	ebx,_bbNullObject
	jne	_203
	call	_brl_blitz_NullObjectError
_203:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	mov	ebx,0
	jmp	_114
_114:
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
	push	_418
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
	push	_417
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_117
_117:
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
_120:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_421
	push	eax
	call	_bbGCFree
	add	esp,4
_421:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_423
	push	eax
	call	_bbGCFree
	add	esp,4
_423:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_425
	push	eax
	call	_bbGCFree
	add	esp,4
_425:
	mov	eax,0
	jmp	_419
_419:
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
	push	_432
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
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+24],eax
	push	ebp
	push	_431
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_123
_123:
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
_126:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_435
	push	eax
	call	_bbGCFree
	add	esp,4
_435:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_437
	push	eax
	call	_bbGCFree
	add	esp,4
_437:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_439
	push	eax
	call	_bbGCFree
	add	esp,4
_439:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_441
	push	eax
	call	_bbGCFree
	add	esp,4
_441:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_443
	push	eax
	call	_bbGCFree
	add	esp,4
_443:
	mov	eax,0
	jmp	_433
_433:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_138:
	dd	0
_65:
	db	"TLanguageManager",0
	align	4
_137:
	dd	1
	dd	_65
	dd	0
_129:
	db	"C:/Users/Coolo/Documents/Programmieren/CrossPlatformBasic/TLanguageManager.bmx",0
	align	4
_128:
	dd	_129
	dd	7
	dd	2
	align	4
_131:
	dd	0
	align	4
__bb_TLanguageManager_Generator:
	dd	_bbNullObject
	align	4
_133:
	dd	_129
	dd	8
	dd	2
	align	4
__bb_TLanguageManager_Languages:
	dd	_bbNullObject
	align	4
_136:
	dd	_129
	dd	10
	dd	2
	align	4
__bb_TLanguageManager_CurrentPlatform:
	dd	_bbNullObject
_66:
	db	"New",0
_67:
	db	"()i",0
_68:
	db	"Delete",0
_69:
	db	"Register",0
_70:
	db	"(:TGenerator)i",0
_71:
	db	"AddModules",0
_72:
	db	"(:TCompiler)i",0
_73:
	db	"Generate",0
_74:
	db	"($,$)i",0
_75:
	db	"Execute",0
_76:
	db	"Init",0
_77:
	db	"($)i",0
	align	4
_64:
	dd	2
	dd	_65
	dd	6
	dd	_66
	dd	_67
	dd	16
	dd	6
	dd	_68
	dd	_67
	dd	20
	dd	7
	dd	_69
	dd	_70
	dd	48
	dd	7
	dd	_71
	dd	_72
	dd	52
	dd	7
	dd	_73
	dd	_74
	dd	56
	dd	7
	dd	_75
	dd	_67
	dd	60
	dd	7
	dd	_76
	dd	_77
	dd	64
	dd	0
	align	4
_bb_TLanguageManager:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_64
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
	dd	__bb_TLanguageManager_AddModules
	dd	__bb_TLanguageManager_Generate
	dd	__bb_TLanguageManager_Execute
	dd	__bb_TLanguageManager_Init
_79:
	db	"TLanguage",0
_80:
	db	"Name",0
_81:
	db	"$",0
_82:
	db	"Platforms",0
_83:
	db	":brl.linkedlist.TList",0
_84:
	db	"Generator",0
_85:
	db	":TGenerator",0
	align	4
_78:
	dd	2
	dd	_79
	dd	3
	dd	_80
	dd	_81
	dd	8
	dd	3
	dd	_82
	dd	_83
	dd	12
	dd	3
	dd	_84
	dd	_85
	dd	16
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
_bb_TLanguage:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_78
	dd	20
	dd	__bb_TLanguage_New
	dd	__bb_TLanguage_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_87:
	db	"TPlatform",0
_88:
	db	"Compilecommand",0
_89:
	db	"LinkerCommand",0
_90:
	db	"Lang",0
_91:
	db	":TLanguage",0
_92:
	db	"Libs",0
	align	4
_86:
	dd	2
	dd	_87
	dd	3
	dd	_80
	dd	_81
	dd	8
	dd	3
	dd	_88
	dd	_81
	dd	12
	dd	3
	dd	_89
	dd	_81
	dd	16
	dd	3
	dd	_90
	dd	_91
	dd	20
	dd	3
	dd	_92
	dd	_83
	dd	24
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
_bb_TPlatform:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_86
	dd	28
	dd	__bb_TPlatform_New
	dd	__bb_TPlatform_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_142:
	db	"Self",0
_143:
	db	":TLanguageManager",0
	align	4
_141:
	dd	1
	dd	_66
	dd	2
	dd	_142
	dd	_143
	dd	-4
	dd	0
	align	4
_140:
	dd	3
	dd	0
	dd	0
_149:
	db	"G",0
	align	4
_148:
	dd	1
	dd	_69
	dd	2
	dd	_149
	dd	_85
	dd	-4
	dd	0
	align	4
_145:
	dd	_129
	dd	13
	dd	3
_156:
	db	"Compiler",0
_157:
	db	":TCompiler",0
	align	4
_155:
	dd	1
	dd	_71
	dd	2
	dd	_156
	dd	_157
	dd	-4
	dd	0
	align	4
_150:
	dd	_129
	dd	17
	dd	3
_185:
	db	"InputPath",0
_186:
	db	"OutputPath",0
_187:
	db	"Comm",0
	align	4
_184:
	dd	1
	dd	_73
	dd	2
	dd	_185
	dd	_81
	dd	-4
	dd	2
	dd	_186
	dd	_81
	dd	-8
	dd	2
	dd	_187
	dd	_81
	dd	-12
	dd	0
	align	4
_158:
	dd	_129
	dd	21
	dd	3
	align	4
_165:
	dd	_129
	dd	22
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
_173:
	dd	_129
	dd	23
	dd	3
	align	4
_174:
	dd	_129
	dd	24
	dd	3
	align	4
_175:
	dd	_129
	dd	25
	dd	3
	align	4
_182:
	dd	_129
	dd	26
	dd	3
	align	4
_183:
	dd	_129
	dd	27
	dd	3
	align	4
_189:
	dd	1
	dd	_75
	dd	0
	align	4
_188:
	dd	_129
	dd	31
	dd	3
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	99,111,109,112,105,108,101,101,120,101,46,101,120,101
_411:
	db	"Path",0
_412:
	db	"doc",0
_413:
	db	":bah.libxml.TxmlDoc",0
	align	4
_410:
	dd	1
	dd	_76
	dd	2
	dd	_411
	dd	_81
	dd	-4
	dd	2
	dd	_412
	dd	_413
	dd	-8
	dd	0
	align	4
_190:
	dd	_129
	dd	35
	dd	3
	align	4
_192:
	dd	_129
	dd	36
	dd	3
_409:
	db	"Node",0
_345:
	db	":bah.libxml.TxmlNode",0
	align	4
_408:
	dd	3
	dd	0
	dd	2
	dd	_409
	dd	_345
	dd	-12
	dd	0
	align	4
_206:
	dd	_129
	dd	37
	dd	4
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	108,97,110,103
	align	4
_55:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	99,117,114,114,101,110,116
	align	4
_354:
	dd	3
	dd	0
	dd	2
	dd	_90
	dd	_91
	dd	-16
	dd	0
	align	4
_213:
	dd	_129
	dd	39
	dd	6
	align	4
_215:
	dd	_129
	dd	40
	dd	6
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	110,97,109,101
	align	4
_225:
	dd	_129
	dd	41
	dd	6
_251:
	db	"Gen",0
	align	4
_250:
	dd	3
	dd	0
	dd	2
	dd	_251
	dd	_85
	dd	-20
	dd	0
	align	4
_235:
	dd	_129
	dd	42
	dd	7
	align	4
_249:
	dd	3
	dd	0
	dd	0
	align	4
_241:
	dd	_129
	dd	43
	dd	8
	align	4
_252:
	dd	_129
	dd	46
	dd	6
_350:
	db	"Node2",0
	align	4
_349:
	dd	3
	dd	0
	dd	2
	dd	_350
	dd	_345
	dd	-24
	dd	0
	align	4
_264:
	dd	_129
	dd	47
	dd	7
	align	4
_45:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	112,108,97,116,102,111,114,109
_347:
	db	"P",0
_348:
	db	":TPlatform",0
	align	4
_346:
	dd	3
	dd	0
	dd	2
	dd	_347
	dd	_348
	dd	-28
	dd	0
	align	4
_268:
	dd	_129
	dd	48
	dd	8
	align	4
_270:
	dd	_129
	dd	49
	dd	8
	align	4
_275:
	dd	_129
	dd	50
	dd	8
	align	4
_285:
	dd	_129
	dd	51
	dd	8
	align	4
_293:
	dd	_129
	dd	53
	dd	8
_344:
	db	"Node3",0
	align	4
_343:
	dd	3
	dd	0
	dd	2
	dd	_344
	dd	_345
	dd	-32
	dd	0
	align	4
_305:
	dd	_129
	dd	54
	dd	9
	align	4
_49:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	99,111,109,112,105,108,101,114
	align	4
_51:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	108,105,110,107,101,114
	align	4
_52:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	109,111,100,117,108,101
	align	4
_323:
	dd	3
	dd	0
	dd	0
	align	4
_313:
	dd	_129
	dd	56
	dd	11
	align	4
_50:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	99,111,109,109,97,110,100
	align	4
_334:
	dd	3
	dd	0
	dd	0
	align	4
_324:
	dd	_129
	dd	58
	dd	11
	align	4
_342:
	dd	3
	dd	0
	dd	0
	align	4
_335:
	dd	_129
	dd	60
	dd	11
	align	4
_54:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	112,97,116,104
	align	4
_53:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	120,109,108,47,109,111,100,117,108,101,47
	align	4
_351:
	dd	_129
	dd	65
	dd	6
	align	4
_407:
	dd	3
	dd	0
	dd	0
	align	4
_355:
	dd	_129
	dd	67
	dd	6
	align	4
_360:
	dd	_129
	dd	68
	dd	6
	align	4
_402:
	dd	3
	dd	0
	dd	2
	dd	_90
	dd	_91
	dd	-36
	dd	0
	align	4
_370:
	dd	_129
	dd	69
	dd	7
	align	4
_59:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	108,97,110,103,117,97,103,101
	align	4
_401:
	dd	3
	dd	0
	dd	0
	align	4
_376:
	dd	_129
	dd	70
	dd	8
	align	4
_400:
	dd	3
	dd	0
	dd	2
	dd	_347
	dd	_348
	dd	-40
	dd	0
	align	4
_388:
	dd	_129
	dd	71
	dd	9
	align	4
_399:
	dd	3
	dd	0
	dd	0
	align	4
_394:
	dd	_129
	dd	72
	dd	10
	align	4
_403:
	dd	_129
	dd	77
	dd	6
	align	4
_406:
	dd	3
	dd	0
	dd	0
	align	4
_405:
	dd	_129
	dd	77
	dd	30
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	67,111,117,108,100,110,116,32,102,105,110,100,32,112,108,97
	dw	116,102,111,114,109,47,108,97,110,103,117,97,103,101
	align	4
_418:
	dd	1
	dd	_66
	dd	2
	dd	_142
	dd	_91
	dd	-4
	dd	0
	align	4
_417:
	dd	3
	dd	0
	dd	0
	align	4
_432:
	dd	1
	dd	_66
	dd	2
	dd	_142
	dd	_348
	dd	-4
	dd	0
	align	4
_431:
	dd	3
	dd	0
	dd	0
