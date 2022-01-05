'Token Typen
Const IS_OPERATOR:Byte=1 'Das Token ist ein Operator
Const IS_INT:Byte=2 'Das Token ist ein Int
Const IS_FLOAT:Byte=3 'Das Token ist ein Float
Const IS_STRING:Byte=4 'Das Token ist ein String
Const IS_KEYWORD:Byte=5 'Das Token ist ein Keyword
Const IS_METHOD:Byte=6 'Das Token ist ein Function
Const IS_VARIABLE:Byte=7 'Das Token ist eine Variable  (Also bei meinevar.hallo ist meinevar die Variable)
Const IS_CLASS:Byte=8 'Das Token ist eine Klasse
Const IS_FIELD:Byte=9 'Das Token ist ein Member einer Klasse (Also bei meinevar.hallo ist hallo der Member)
Const IS_UNKNOWN:Byte=10 'Das Token ist unbekannt
Const IS_ASM:Byte=11 'Das Token ist ein Assembler Befehl, der vom Programm hinzugefügt wurde (push, pop,...)
Function CreateToken:TToken(text:String)
	If text<>"" And text<>Chr(34)
		Local token:TToken=New TToken  
		token.text=text 
		If debug 
			Print "Token mit dem Text: "+text 
		EndIf 
		Return token
	EndIf
End Function

Type TToken
	Field text:String 'Die Parameter
	Field Typ:Byte 'Was es ist
	Field Operator:TOperator ' Wenn es ein Operator ist, welcher
	Field class:TClass 'Wenn es eine Klasse ist welche
	Field memfield:TField 'Wenn es ein Member ist, welches Feld
	Field memmethod:TMethod 'Wenn es ein Member ist, welche Methode
	Field ownerast:TAst 'Zu welchem Ast dieser Token hinzugehört
	Field Scope:TScope 'Wenns ein Scope ist, welcher
	Field ID:Int 'Die ID
	
	Method Analyse:Byte(list:TList,script:Tscript) 'Schaut was es ist
		Local i:Int
		Local find:Byte=0
		
		'Schauen ob der Token davor Local heißt
		If Left(Self.text,Len(keyword[5]))=keyword[5] And IsString(Mid(Self.text,Len(keyword[5])+1))
			Local tok:TToken=createToken(keyword[5])
			tok.typ=IS_KEYWORD
			script.currentlist.InsertBeforeLink(tok,script.currentlist.Findlink(Self))
			ListAddLast(list,"KEYWORD "+keyword[5])
			Self.text=Mid(Self.text,Len(keyword[5])+1)
		EndIf 
		
		If Left(Self.text,Len(keyword[6]))=keyword[6] And IsString(Mid(Self.text,Len(keyword[6])+1))
			Local tok:TToken=createToken(keyword[6])
			tok.typ=IS_KEYWORD
			script.currentlist.InsertBeforeLink(tok,script.currentlist.Findlink(Self))
			ListAddLast(list,"KEYWORD "+keyword[6])
			Self.text=Mid(Self.text,Len(keyword[6])+1)
		EndIf 
		
		For i=0 To KeywordCount
			If KeyWord[i]=Self.text
				If debug
					Print "Keyword gefunden: "+Self.text
				EndIf
				Self.typ=IS_KEYWORD
				ListAddLast(list,"KEYWORD "+Self.text)
				find=1
				Exit
			EndIf
		Next
		
		If IsInt(Self.text)
			Self.typ=IS_INT
			ListAddLast(list,"INT "+Self.text)
			If debug
				Print "Int gefunden: "+Self.text
			EndIf
			find=1
		ElseIf Isfloat(Self.text) And Self.text<>"."
			Self.typ=IS_FLOAT
			ListAddLast(list,"FLOAT "+Self.text)
			If debug
				Print "Float gefunden: "+Self.text
			EndIf
			find=1
		EndIf
		
		'Nach Operatoren suchen
		For Local keychar:TOperator=EachIn OperatorList
			If Keychar.name=Self.text
				ListAddLast(list,keychar.Tokenize())
				Self.typ=IS_OPERATOR
				Self.operator=keychar
				find=1
				Exit
			EndIf
		Next
		'Nach Klassen suchen
		For Local class:TClass=EachIn script.classlist
			If Self.text=String(class.name)
				ListAddLast(list,"CLASS "+class.tostring())
				Self.class=class
				find=1
				Self.typ=IS_CLASS
			EndIf
		Next
		
		'Deaktiviert da auf Methoden umgestellt werden muss
		
		Rem
		'Nach normalen Funktionen suchen
		For Local func:TFunction=EachIn script.functionlist
			If func.name=Self.text
				If debug
					Print "Funktion gefunden! "+func.name
				EndIf
				ListAddLast(list,"CALL "+func.name)
				Self.typ=IS_
				find=1
				Exit
			EndIf
		Next
		End Rem
		
		If Left(Self.text,1)=Chr(34) And Right(Self.text,1)=Chr(34) Then
			If debug
				Print "String gefunden: "+Self.text
			EndIf
			ListAddLast(list,"STRING "+Self.text)
			find=1
			Self.typ=IS_STRING
		EndIf
		Rem Ist noch nicht nötig
		If Self.text="NEWLINE"
			If debug 
				Print "Zeilenende erreicht!"
			EndIf
			Self.TYP=IS_NEWLINE
			find=1
			ListAddLast(list,"NEWLINE")
		EndIf
		End Rem
		If find=0
			ListAddLast(list,"UNKNOWN "+Self.text)
			Self.typ=IS_UNKNOWN
			If debug
				Print "Unbekannten gefunden: "+Self.text
			EndIf
		EndIf
		Return Self.typ
	End Method
End Type

