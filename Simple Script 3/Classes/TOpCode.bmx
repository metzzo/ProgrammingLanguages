Const OP_PUSH:Byte=1 'setzt einen Wert auf dem Stack
Const OP_CHECK:Byte=2 'Überprüft den letzten Stack, wenn wahr, führe den nächsten OpCode aus
Const OP_EXIT:Byte=3 'Gehe aus dem aktuellen Scope
Const OP_POP:Byte=4 'Lösche den letzten Inhalt vom Stack
Const OP_SCOPE:Byte=5 'heißt dass ein neuer Scope beginnt
Const OP_ENDSCOPE:Byte=6 'Heißt das der Scope endet
Const OP_CALL:Byte=7 'Der Klassentyp vom aktuellen Stack ist der angegeben wert
Const OP_HOLD:Byte=8 'Fügt dem Scope eine Variable hinzu
Const OP_MOVE:Byte=9 'Weist der Variable den letzten Stackeintrag zu
Const OP_VAR:Byte=10 'Gibt den Inhalt der Variable aus
Const OP_REGISTERFUNC:Byte=11 'Registriert eine neue Funktion im Speicher
Const OP_PAR:Byte=12 'Fügt einen Parameter hinzu
Const OP_FILE:Byte=13 'Fügt zu einer Funktion ein File hinzu
Const OP_JUMP:Byte=14 'Springt zu den nächsten OpCodes
Const OP_INT:Byte=15 'Der Token ist ein Int
Const OP_FLOAT:Byte=16 'Der Token ist ein Float
Const OP_DOUBLE:Byte=17 'Der Token ist ein Double
Const OP_SHORT:Byte=18 'Der Token ist ein Short
Const OP_LONG:Byte=19 'Der Token ist ein Long
Const OP_BYTE:Byte=20 'Der Token ist ein Byte
Const OP_STRING:Byte=21 'Der Token ist ein String
Const OP_POINTER:Byte=22 'Heißt das es auf einen Pointer zeigt
Const OP_OPERATOR:Byte=23 'Ein Operator (+,-,*,/,...)
Const OP_RETURN:Byte=24 'Setzt den Return Wert für die gerade ausgewählte Funktion
Const OP_FUNCINDEX:Byte=25 'Setzt den Index der Funktion mit der sie aufgerufen wird
Const OP_NULL:Byte=26 'Wenn auf dieses Objekt zugegriffen wird, dann gibts nen Error
Const OP_CREATECLASS:Byte=27 'Erzeugt einen neuen Speicherbereich
Const OP_CALLFROMPOINTER:Byte=28 'Ruft eine Funktion vom ausgewählten Pointer aus
Const OP_PUSHFROMPOINTER:Byte=29 'Setzt einen Wert vom ausgewähltem Pointer
Const OP_POPFROMPOINTER:Byte=30 'Löscht einen Wert vom Stack vom gewählten Pointer
Const OP_VARFROMPOINTER:Byte=32 'Gibt den Inhalt einer Variable aus vom pointer
Const OP_REGISTERCLASS:Byte=33 'registriert eine Klasse
Const OP_REGISTERFIELD:Byte=34  'registriert ein Feld
Const OP_TYPE:Byte=35 'setzt den Typ
Const OP_INDEX:Byte=36 'setzt Index
Const OP_STATIC:Byte=37 'setzt Static
Const OP_SIZE:Byte=38 'setzt Size

Type TOpCode
	'Allgemein
	Field typ:Byte 'Was es ist
	Field par:Object 'Die Parameter
	Field token:TToken 'Der dazugehörende Token
	Field Script:TScript 'Das dazugehöroge Script
	Field ID:Int 'Die Position im Bytecode Array
	Field instring:String 'Wie es in Menschlicher lesbaren Form aussehen würde
	Field Line:Int 'Welche Zeile
	
	Field Parstr:String 'Der String parameter
	Field parInt:Int
	Field parFloat:Float
	
	
	Field Size:Int
	Field ClassID:Int
	
	Field StackPos:Int 'Die Stackposition (bei OpCode Hold, Pointer)
	Field VarName:String 'Der Name, der Variable (bie OpCode hold)
	'Scope Sachen
	Field OpenOp:TOpCode 'Wenns ein schließender ist
	Field CloseOp:TOpCode 'Wenns ein öffnender ist
	
	Method Create(Token:TToken,Script:TScript,ID:Int)
		Self.script=script
		Self.token=token
		Self.id=id
		Select token.typ
			Case IS_OPERATOR
				Self.typ=OP_OPERATOR
				Select token.text
					Case "{"
						'token.text="startscope
						Local StepIn:Int=1
						Self.typ=OP_ENDSCOPE
						Self.instring="startscope"
					Case "}"
						'Nun zurück gehen
						Self.line=Self.id
						Local StepIn:Int=1
						For Local i:Int=Self.id-1 To 0 Step -1
							Self.Line:-1
							Select Self.script.bytecode[i].token.text
								Case "{"
									Stepin:-1
									If Stepin=1
										'Nun füge das Ende hinzu
										Self.script.bytecode[i].OpenOP=Self
										Self.CloseOp=Self.script.bytecode[i]
										Self.CloseOP.InString="startscope "+Self.id
										'Self.CloseOp.inString="startscope "+Self.Line
										Self.Line=Self.CloseOp.id
										Exit
									EndIf
								Case "}"
									Stepin:+1
								Case "(",")"
									Self.script.bytecode=Self.script.bytecode[..Self.script.bytecode.length-2]
									
							End Select
						Next
						Self.instring="endscope "+Self.Line
						token.typ=OP_SCOPE
					Default
						Self.Typ=OP_OPERATOR
						Self.instring="operator "+token.text
				End Select
				
			Case IS_INT
				Self.typ=OP_INT
				Local Tok:TToken=CreateToken("push")
				tok.typ=IS_ASM
				Self.script.WriteBYtecode(tok,1)
				'ListRemove Self.script.tokenlist,tok
				Self.instring="int "+token.text
				Self.parInt=Int(token.text)
			Case IS_FLOAT
				Self.typ=OP_FLOAT
				Local Tok:TToken=CreateToken("push")
				tok.typ=IS_ASM
				Self.script.WriteBYtecode(tok,1)
				Self.instring="float "+token.text
				Self.parFloat=Float(token.text)
			Case IS_STRING
				Self.typ=OP_STRING
				Local Tok:TToken=CreateToken("push")
				tok.typ=IS_ASM
				Self.script.WriteBYtecode(tok,1)
				Self.instring="str "+token.text
				Self.Parstr=token.Text
			Case IS_KEYWORD
				Select token.text
					Case "if"
						Local Tok:TToken=Createtoken("check 0")
						tok.typ=IS_ASM
						Self.script.Writebytecode(Tok)
						Self.instring="exit"
						Self.typ=IS_ASM
					Case "local","global"
						script.CurStackpos:+1
						Self.instring="hold "+script.CurStackpos
						Self.Stackpos=script.CurStackpos
					End Select

			Case IS_VARIABLE
				Self.typ=OP_POINTER
				For Local i:Int=0 To Self.id-1
					If script.Bytecode[i].VarName=token.text Then Self.Stackpos=script.Bytecode[i].Stackpos ; End
				Next
				Self.instring="pointer "+Self.stackpos
			Case IS_CLASS
				
			Case IS_FIELD
				
			Case IS_METHOD
				Rem
				Self.typ=OP_CALL
				For Local I:Int=0 To Self.Objectlist.length-1
					Local Class:TClass=Self.Token.Scope.Objectlist[i]
					For Local mth:TMethod=EachIn classname.class.id.Enummethods()
						
					Next
				Next
				End Rem
				Self.typ=OP_CALL
				For Local cFunc:TClassfunc=EachIn Self.token.class.mthlist
					If Lower(Trim(cfunc.Name))=Lower(Trim(Self.token.text))
						Self.ClassID=cFunc.Pos
						Exit
					EndIf
				Next
				'Self.ClassID=0
				Self.instring="call "+Self.ClassID
			Case IS_UNKNOWN
				
				
			Case IS_ASM
				Select token.text
					Case "push"
						Self.typ=OP_PUSH
						Self.instring="push"
					Case "exit"
						Self.typ=OP_EXIT
						Self.instring="exit"
					Case "static"
						Self.typ=OP_STATIC
						Self.instring="static"
					Case "file"
						Self.typ=OP_FILE
						Self.instring="file"
					Case "par"
						Self.typ=OP_PAR
						Self.instring="par"
				End Select
				If Left(token.text,5)="check"
					Self.typ=OP_CHECK
					Self.instring="check 0"
				EndIf
				If Left(token.text,13)="registerclass"
					Self.typ=OP_REGISTERCLASS
					Self.instring=token.text
				EndIf
				If Left(token.text,12)="registerfunc"
					Self.typ=OP_REGISTERFUNC
					Self.instring=token.text
				EndIf
				If Left(token.text,13)="registerfield"
					Self.typ=OP_REGISTERFIELD
					Self.instring=token.text
					Self.typ=Int( Mid(token.text, 14))
				EndIf
				If Left(token.text,4)="size"
					Self.typ=OP_SIZE
					Self.instring=token.text
					Self.Size=Int(Trim(Mid(token.text,5)))
				EndIf
				If Left(token.text,4)="type"
					Self.typ=OP_TYPE
					Self.instring=token.text
				EndIf
				If Left(token.text,5)="index"
					Self.typ=OP_INDEX
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="str"
					Self.typ=OP_STRING
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="int"
					Self.typ=OP_INT
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="flo"
					Self.typ=OP_FLOAT
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="dou"
					Self.typ=OP_DOUBLE
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="sho"
					Self.typ=OP_SHORT
					Self.instring=token.text
				EndIf
				If Left(token.text,3)="lon"
					Self.typ=OP_LONG
					Self.instring=token.text
				EndIf
		End Select
		If Self.instring=""
			Self.instring="Unbekannt: "+token.text
		EndIf
	End Method
End Type
