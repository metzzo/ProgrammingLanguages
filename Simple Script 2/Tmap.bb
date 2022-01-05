;Anwendung:
;Local mymap=CreateMap()
;
;For i=0 To 100000
;	InsertMap(mymap,"mein"+i,Rand(1,1000))
;Next
;t#=MilliSecs()
;For i=0 To 1000
;	GetMap(mymap,"mein"+Rand(1,1000))
;Next
;Print "Ein Zugriff hat gedauert: "+((Float(MilliSecs()-t))/1000.0)
;WaitKey ()

;Project: Tmaps für BlitzBasic
;Hier können Sie was ändern
Global MAP_SIZE=1024 ;So groß ist eine TMap (Je größer desto schneller wird sie verarbeitet)
;Hier nicht mehr
Global globalmap
Type Tkey
	Field Content$
	Field name$
	Field other.Tkey ;Wennes andere mit einem ähnlichen namen gibt
End Type

Function InitMap()
	globalmap=CreateMap()
End Function

Function CreateMap(name$="")
	Local map=CreateBank(MAP_SIZE)
	;Um alles wieder aufzuräumen
	InsertMap(map,"MAPISEXISTING","1")
	If name<>""
		InsertMap(globalmap,name,map)
	EndIf
	Return map
End Function

Function InsertMap(hndl,name$,content$)
	If hndl=0 Then RuntimeError "Map nicht gefunden!"
	Local key.Tkey=New Tkey
	Local key2.Tkey
	Local lastkey.Tkey
	
	key\name=name
	key\Content=content
	Local hash=GetHash(MAP_SIZE,name$)
   ;Überprüfen ob es da bereits eine Hashmap gibt
	key2.Tkey=Object.Tkey(PeekInt(hndl, hash))
	If key2<>Null
		key\other=key2
		PokeInt(hndl,hash,Handle(key))
	Else
		PokeInt(hndl,hash,Handle(key))
	EndIf
End Function

Function ChangeMap(hndl,name$,content$)
	If hndl=0 Then RuntimeError "Map nicht gefunden!"
	Local key.Tkey
	Local hash=GetHash(MAP_SIZE,name$)
	key=Object.Tkey(PeekInt(hndl,hash))
	If key=Null Then RuntimeError "Key nicht gefunden!":End
	key\Content=content
	If key\other<>Null And key\name<>name$
		key=GetOtherKey(key,name)
		key\Content=content
	Else
		If key=Null
			RuntimeError "Key nicht gefunden!"
		EndIf
		key\Content=content
	EndIf
	Return key\Content
End Function

Function GetMap$(hndl,name$,er=1) ;hdl=Map hndl, Name= Der name des Indexes, count= wenn es mehrere Indexe gibt mit dem gleichen offset, wird hir angegeben welcher gemeint ist (Nur pogrammintern)
	If hndl=0 And er Then RuntimeError "Map nicht gefunden!"
	Local key.Tkey
	Local lastkey.Tkey
	Local hash=GetHash(MAP_SIZE,name$)
	key=Object.Tkey(PeekInt(hndl,hash))
	
	If key\other<>Null And key\name<>name$
		key=GetOtherKey(key,name)
		Return key\Content
	Else
		If key=Null And er
			RuntimeError "Key nicht gefunden!"
		EndIf
		Return key\Content
	EndIf
End Function

Function GetOtherKey.Tkey(key.Tkey,name$)
	Local key2.Tkey=key\other
	While key2\name<>name
		key=key2
		key2=key2\other
		If key2=Null Then key2=key:Exit
	Wend
	Return key2
	
End Function

Function ExistMap(hndl)	If Int(GetMap(hndl,"MAPISEXISTING"))
		Return 1
	Else
		Return 0
	EndIfEnd Function

Function MapName()
	
End Function

Function KeyExist()
	
End Function

Function GetType.Tkey(hndl,name$)
	If hndl=0 Then RuntimeError "Map nicht gefunden!"
	Local hash=GetHash(MAP_SIZE,name$)
	Return Object.Tkey(PeekInt(hndl,hash))
End Function
Function CopyKey.Tkey(key.Tkey)
	If key<>Null
		Local key2.Tkey=New Tkey
		key2\Content=key\Content
		key2\name=key\name
		key2\other=CopyKey(key\other)
		DebugLog "Key gefunden!"
		Return key2
	Else
		DebugLog "Key nicht gefunden!"
	EndIf
End Function

Function CopyMap(name$,name2$)
	Local map=CreateMap(name)
	Local srcmap=GetMap(globalmap,name2)
	;Nun die Keys kopieren
	For i=0 To BankSize(srcmap)-1 Step 4
		PokeInt(map,i,Handle(CopyKey(Object.Tkey(PeekInt(srcmap,i)))))
	Next
End Function
;-------------------------------------------------------------------------
;Hilfs Funktionen


Function GetHash(maxsize,word$) ;gibt anhand eines Strings den hash zurrück
	maxsize=maxsize/4
	Local hash,i
	If Len(word)=0 Then Return -1
	hash = Asc( Mid( word$, 2, 1 ) ) Mod maxsize
	
	For i=1 To Len(word)
		hash=(hash*128+Asc(Mid(word$,i,1))) Mod maxsize
	Next
	Return hash*4
End Function
;~IDEal Editor Parameters:
;~F#7E#8B
;~C#Blitz3D