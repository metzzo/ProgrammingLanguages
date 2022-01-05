


' Clones an object and returns the clone.
' Any fields that references an object only gets the reference copied unless MetaData contains {Clone}
' which then a copy is also made of the object referenced.
' {NoClone} prevents the field being copied.
Function CloneObject:Object(obj:Object)
	Local cobj:Object
	
	If obj=Null Then Return Null
	
	Local objId:TTypeId=TTypeId.ForObject(obj)
	
	If objId.ExtendsType(StringTypeId)
		Return String(obj)
	EndIf
	
	If objId.ExtendsType(ArrayTypeId)
		If objId.ArrayLength(obj)>0
			cobj=objId.NewArray(objId.ArrayLength(obj))
			
			If cobj
				For Local i:Int=0 Until objId.ArrayLength(obj)
					If objId.ElementType().ExtendsType(ArrayTypeId) Or objId.ElementType().ExtendsType(StringTypeId) ..
						Or objId.ElementType().ExtendsType(ObjectTypeId)
						objId.SetArrayElement(cobj,i,CloneObject(objId.GetArrayElement(obj,i)))
					Else
						objId.SetArrayElement(cobj,i,objId.GetArrayElement(obj,i))
					EndIf
				Next
			EndIf
		EndIf
		
		Return cobj
	EndIf
	
	cobj=New obj

	For Local fld:TField=EachIn objId.EnumFields()
		Local fldId:TTypeId=fld.TypeId()
		
		If fld.Get(obj)<>Null And fld.MetaData("NoClone")=Null
			If Not fld.MetaData("Clone")=Null
				fld.Set(cobj,CloneObject(fld.Get(obj)))
			Else
				fld.Set(cobj,fld.Get(obj))
			EndIf
		EndIf
	Next
	
	Return cobj
	
EndFunction

Function IsInt:Byte(text:String)
	For Local i:Int=1 To Len(text)
		Local a:Byte =Asc(Mid(text,i,1))
		If a<48 Or a>57
			Return 0
		EndIf
	Next
	Return 1
End Function
Function IsFLoat:Byte(text:String)
	For Local i:Int=1 To Len(text)
		Local a:Byte =Asc(Mid(text,i,1))
		If (a<48 Or a>57) And a<>46
			Return 0
		EndIf
	Next
	Return 1
End Function
Function IsString:Byte(text:String)
	For Local i:Int=1 To Len(text)
		Local a:Int =Asc(Mid(text,i,1))
		If a<65 And a>90 And a<>95 And a<97 And a>122
			Return 0
		EndIf
	Next
	Return 1
End Function
Function After:Object(list:TList,obj:Object)
	If obj=Null Or list=Null  Then Return Null
	If list.FindLink(obj)=Null Then RuntimeError "Obj ist nicht in list"
	Local link:TLink = list.FindLink(obj).NextLink()

	If link
		Return Object(link.Value())
	Else
		Return Null
	EndIf
EndFunction


' Gets the previous instance in the global list
Function Before:Object(list:TList,obj:Object)
	If list=Null Then RuntimeError "Ungültige Liste"
	If obj=Null Then RuntimeError "Ungültiges Objekt"
 	Local link:TLink = list.FindLink(obj).PrevLink()
	If link
		Return Object(link.Value())
	Else
		Return Null
	EndIf
EndFunction

' Inserts this instance after the 'other' instance
Function InsertAfter(list:TList,me:Object,other:Object)
	list.remove(me)
	list.InsertAfterLink(me,list.FindLink(other))
End Function

' Inserts this instance before the 'other' instance
Function InsertBefore(list:TList,me:Object,other:Object)
	list.remove(me)
	If me=Null Then RuntimeError "Objekt existiert nicht"
	list.InsertBeforeLink(me,list.FindLink(other))
End Function

