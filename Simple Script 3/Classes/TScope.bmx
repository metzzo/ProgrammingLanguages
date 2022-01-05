Type TScope
'	Field upperscope:Tscope 'Hier ist der darüberliegende Scope drinnen (Noch unsicher ob das verwendet wird)
	Field KindScope:TScope 'VOn welchem Scope es abstammt
	Field ObjectList:TClass[]'In ihr sind alle Klassen dieses Scopes enthalten
	Field ScopeObject:TList 'Maximal 512 ScopeObjecte

	Method CreateClass(Name:String,Class:TClass)
		name=Trim(name)
		Self.Objectlist=Self.Objectlist[..Self.Objectlist.length+1]
		If class=Null Then RuntimeError "Klasse existiert nicht"
		Local obj:Object=CloneObject(Class)
		If obj=Null Then RuntimeError "Objekt nicht gefunden"
		Self.Objectlist[Self.Objectlist.length-1]=TClass(obj)
		Self.Objectlist[Self.Objectlist.length-1].Name=name
		Self.Objectlist[Self.Objectlist.length-1].id=TTypeId.ForObject(Self.Objectlist[Self.Objectlist.length-1])
		TScopeObject.RegisterClass(Self.Objectlist[Self.Objectlist.length-1],Self)
	End Method
	Method RegisterObjects() 'registriert alle Objecte (Methoden/Variablen/Felder)
		For Local i:Int=0 To Self.Objectlist.length-1
			TScopeObject.RegisterClass(Self.objectList[i],Self)
		Next
		Self.KindScope.RegisterObjects()
	End Method
	Method NextScope:TScope()
		Return Self.KindScope
	End Method
	Method FindObject:TScopeObject()
		For Local TScopeObj:TScopeObject=EachIn Self.ScopeObject
			
		Next
	End Method
	Method FindVariable:TClass(Name:String)
		For Local i:Int=0 To Self.Objectlist.length-1
			Local Class:TClass=Self.ObjectList[i]
			If Name=class.Name
				Return Class
			EndIf
		Next
		If Self.kindscope<>Null
			Self.KindScope.FindVariable(Name)
		EndIf
		Return Null
	End Method
End Type

Type TScopeObject
	Field Name:String
	Field ID:String
	Field MethodID:TMethod 'Wenns ne Methode ist
	Field FieldID:TField 'Wenns en Field ist
	Field ClassID:TClass 'Wenns ne Klasse ist
	Field Scope:TScope 'Zu welchem Scope es gehört
	
	Method Create(Name:String,Obj:Object, Scope:TScope)
		Self.name=name
		Self.scope=scope
		If TMethod(Obj)<>Null
			Self.methodid=TMethod(obj)
		ElseIf TField(Obj)<>Null
			Self.fieldid=TField(obj)
		ElseIf TClass(Obj)<>Null
			Self.classid=Tclass(obj)
		Else
			RuntimeError "Kein gültiges Objekt"
		EndIf
	End Method
	'Function CreateScopeObject(Name:
	Function RegisterClass(Class:TClass,Scope:TScope)
	 	'Klasse registrieren
		Local Scopeobj:TScopeObject=New TScopeobject
		Scopeobj.Create(Class.Name,class,scope)
		'Felder
		For Local fld:TField=EachIn class.id.EnumFields()
			Local Scopeobj:TScopeObject=New TScopeobject
			Scopeobj.Create(fld.Name(),fld,scope)
		Next

		'Und nun die Methoden
		For Local mth:TMethod=EachIn class.id.Enummethods()
			Local Scopeobj:TScopeObject=New TScopeobject
			Scopeobj.Create(mth.Name(),mth,scope)
		Next
	End Function
End Type