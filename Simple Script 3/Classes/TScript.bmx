'Das ist die wichtigste Klasse des ganzen Systems, in ihr sind alle Scripts!


Function LoadScript:TScript(file:String)

End Function

Type TScript
	Field Lines:Int 'Wie viele Zeilen es gibt
	Field rowlist:TList=CreateList() 'Hier sind die Zeilen in roh Form
	Field TokenList:TList=CreateList() 'Hier sind die Token
	Field functionlist:TList=CreateList() 'Hier sind die Funktionen
	Field classlist:TList=CreateList() 'Hier sind alle Handles der Klassen
	Field compilelist:TList=CreateList() 'Hier ist der compilierte Code drinnen
	Field currentlist:TList=CreateList() 'Hier ist die aktuelle Zeile
	
	'
	'Scope Gedöhns
	Field FirstScope:TScope 'Das ist der erste Scope, in ihm sind alle Globale Variablen
	Field LastScope:TScope 'Der zuletzt erzeugte Scope
	
	'Compile Variablen
	Field LastKeyword:TKeyWord
	Field startterm:TToken 'Hier beginnt ein Term
	Field endterm:TToken 'Hier endet dieser
	Field Termlist:TList=CreateList()
	Field CurStackPos:Int
	Field bytecode:TOpCode[]
	
	Method LoadNCompile(file:String)
		Self.Load(file)
		Self.AddDataTypes()
		Self.Scan()
		Self.Compile()
	End Method
	
	Method Load(Pfad:String) 'Lädt eine Datei
		Local stream:TStream=ReadFile(Pfad)
		ListAddLast(Self.rowlist,"{")
		Repeat
			Local line:String=ReadLine(stream)
			ListAddLast(Self.rowlist,line)
		Until Eof(stream)
		ListAddLast(Self.rowlist,"}")
	End Method
	
	Method Execute() 'Führt das Script aus
		
		'Noch keine Konkrete Implementierung
		
	End Method
	
	Method Scan() 'Zerlegt es in Token
		Local comopen:Byte=0 'Ob ein Kommentar geöffnet wurde
		For Local row:String=EachIn Self.rowlist
			'Mehrzeilige Kommentare entfernen
			If comopen=1
				If Instr(row,"*/")
					row=Mid(row,Instr(row,"*/")+2)
					comopen=0
				Else
					row=""
				EndIf
			EndIf
			If Instr(row,"/*")
				row=Mid(row,1,Instr(row,"/*")-1)
				comopen=1
			EndIf
			ListAddLast(Self.Tokenlist,Self.ScanLine(row))
		Next
 	End Method
	

	Method Compile() 'Compiliert die geladenen Zeilen
		For Self.currentlist=EachIn Self.Tokenlist
			'Nun analysieren
			For Local token:TToken=EachIn Self.currentlist
				If token.Analyse(Self.compilelist,Self)=0 Then Print "Ungueltiger Token: "+token.text
			Next
		Next
		'Zuerst die Klassen registrieren
		For Local Class:TClass=EachIn Self.classlist
			'Nun alle Informarionen abspeichern
			Local tok:TToken=CreateToken("registerclass "+class.Name)
			tok.typ=IS_ASM
			Self.WriteBytecode(tok)
			If class.static
				tok=CreateToken("static")
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
			EndIf
			tok=CreateToken("size "+(CountList(class.Fieldlist)+CountList(class.mthlist)))
			tok.typ=IS_ASM
			Self.WriteBytecode(tok)
			For Local fld:TClassMember=EachIn class.FieldList
				tok=CreateToken("registerfield "+fld.typ)
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				
				tok=CreateToken("index "+fld.pos)
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
			Next
			tok=CreateToken("registerfield Null")
			tok.typ=IS_ASM
			Self.WriteBytecode(tok)
			
			For Local mth:TClassFunc=EachIn class.mthlist
				tok=CreateToken("registerfunc "+mth.name)
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				tok=CreateToken("type "+mth.typstring)
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				tok=CreateToken("index "+mth.pos)
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				tok=CreateToken("file")
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				tok=CreateToken("str "+Chr(34)+Chr(34))
				tok.typ=IS_ASM
				Self.WriteBytecode(tok)
				'Nun sind die Parameter dran
				For Local i:Int=0 To mth.par.length-1
					tok=CreateToken("par")
					tok.typ=IS_ASM
					Self.WriteBytecode(tok)
					tok=CreateToken(LSet(Lower(TypeToString(mth.par[i])),3)+" "+Chr(34)+Chr(34))
					tok.typ=IS_ASM
					Self.WriteBytecode(tok)
				Next
			Next
			tok=CreateToken("registerfunc Null")
			tok.typ=IS_ASM
			Self.WriteBytecode(tok)
		Next
		Local tok:TToken=CreateToken("registerclass Null")
		tok.typ=IS_ASM
		Self.WriteBytecode(tok)	
		'Nun Compilieren
		Self.compileblock(TList(Self.tokenlist.first()),Self.tokenlist)
	End Method
	
	'Compiliert einen { - } Block
	Method CompileBlock:TList(pos:TList,list:TList)
		'Analisieren
		Local stepin:Int=1
		Local currentlist:TList=pos
		'Kompilieren
		currentlist=pos
		Local endline:TList 'An dieser Zeile endet der Block
		Repeat
			For Local token:TToken=EachIn currentlist

				Self.currentlist=currentlist
				Self.compiletoken(token)

				If token.text="{"
					currentlist=Self.compileblock(TList(After(list,currentlist)),Self.tokenlist)
					stepin:+1
					Exit
				EndIf

				If token.text="}" And stepin=1
					endline=TList(after(list,currentlist))
					currentlist=Null
					Exit
				Else
					stepin:-1
				EndIf
			Next
			If currentlist<>Null
				currentlist=TList(After(list,currentlist))
			EndIf
		Until currentlist=Null
		Return endline
	End Method
	
	'Schreibt einen Bytecode BEfehl
	Method WriteBytecode(token:TToken,beforelast:Byte=0)
		Select token.text
			Case "(",")",".",":"
				Return
		End Select
		bytecode=bytecode[..(bytecode.length+1)]
		If beforelast
			bytecode[bytecode.length-1]=bytecode[bytecode.length-2]
			bytecode[bytecode.length-2]=New Topcode
			bytecode[bytecode.length-2].Create(token,Self,bytecode.length)		
		Else
			bytecode[bytecode.length-1]=New Topcode
			bytecode[bytecode.length-1].Create(token,Self,bytecode.length)
		EndIf
	End Method
	
	Method SaveByteCode(Stream:TStream)
		
		For Local i:Int=0 To Self.bytecode.length-1
			stream.WriteByte bytecode[i].typ
			Local op:TOpCode=bytecode[i]
			Select op.typ
				Case OP_INT
					stream.WriteInt Int(Op.Token.text)
				Case OP_FLOAT
					stream.WriteFloat Float(Op.Token.text)
				Case OP_String
					stream.WriteInt Len(String(Op.parstr))
					For Local i:Int=0 To Len(op.parstr)-1
						stream.WriteByte op.parstr[i]
					Next
					'stream.WriteString String(Op.Token.text)
				Case OP_SIZE
					Stream.WriteInt Op.Size
				Case OP_REGISTERCLASS
					stream.WriteByte op.typ
				Case OP_REGISTERFIELD
					stream.WriteByte op.typ
				Case OP_POP,OP_PUSH,OP_MOVE,OP_STATIC,OP_FILE,OP_PAR,OP_EXIT
					'Nichts machen
			End Select
		Next
		CloseStream Stream
	End Method
	
	Method CompileToken(token:TToken) 'Compiliert ein einzelnes Token
		Select token.typ
			Case IS_INT
				
			Case IS_FLOAT
				
			Case IS_STRING
				
			Case IS_OPERATOR
				Select token.text
					Case "{" 'Scope Anfang
						Print "Ein neuer Scope wurde geöffnet"
						Local scope:Tscope=Self.Lastscope
						Self.Lastscope=New Tscope
						token.Scope=Self.LastScope
						If Self.Firstscope=Null
							Self.Firstscope=Self.Lastscope
							For Local class:TClass=EachIn Self.classlist
								If class.static
									Print "Statische Klasse wurde erstellt"
									LastScope.CreateClass(class.name,class)
								EndIf
							Next
						Else
							'Self.Lastscope.Kindscope=scope
						EndIf
						'Self.compileblock(TList(Self.tokenlist.first()),Self.tokenlist)
						'CompileBlock()
					Case "}" 'Scope Ende
						If lastscope<>firstscope And Self.Lastscope.Kindscope
							Self.Lastscope=Self.Lastscope.Kindscope
						EndIf
						Print "Ein Scope wurde geschlossen"
					Case "." 'Wird noch nicht benötigt
						
					Case "(" 'Ein Term beginnt
						Self.startterm=token
						Local op:TToken=token
						'Nun schauen ob es davor noch ( gibt
						Repeat
							op=TToken(After(Self.currentlist,op))
							Rem
							If op.text="("  And TToken(After(Self.currentlist,After(Self.currentlist,op))).text=")" 'Schauen ob es eine Unnütze klammer ist
								Local op2:TToken=TToken(After(Self.currentlist,op))
								
								'Nun schauen on in diesem Term nicht weitere Operatoren zu finden sind
								ListRemove(Self.currentlist,TToken(After(Self.currentlist,After(Self.currentlist,op))))
								ListRemove(Self.currentlist,op)
								op=op2
								'op=TToken(Self.currentlist.last())
							EndIf
							End Rem
							Print op.text
						Until op.text="(" Or op.text=")" Or op=Null
						If op<>Null And op.text="("
							Self.startterm=op
						EndIf
					Case ")" 'Der Term wird beendet
						
						Self.endterm=token
						Local astlist:TList=CreateList()
						
						'Nun von hinten losgehen und der Priorität sortieren
						Local lastast:Tast
						For Local i:Byte=1 To maxprio
							Local operator:TToken=Self.endterm
							
							Repeat
								operator=TToken(before(Self.currentlist,operator))
								If operator=Self.startterm Then Exit
								If operator.operator<>Null And operator.operator.Priority=i
									'Nun einen SyntaxBaum daraus erstellen+
									Local ast:TAst=createast(lastast,operator.operator,TToken(before(Self.currentlist,operator)),TToken(after(Self.currentlist,operator)))
									ListAddLast(astlist,ast)
									Local op2:TToken=operator
									operator=TToken(after(Self.currentlist,after(Self.currentlist,operator)))
									ListRemove(Self.currentlist,TToken(before(Self.currentlist,op2)))
									ListRemove(Self.currentlist,TToken(after(Self.currentlist,op2)))
									op2.operator=Null
									op2.text=ast.tostring()
									op2.ownerast=ast
									lastast=ast
								EndIf
							Until operator<>Null And operator.text="("
						Next
						If lastast=Null Or 1 ' Es gibt keine Operatoren im Term
							Local tok:TToken=TToken(after(Self.currentlist,Self.startterm))
							
							ListAddLast(astlist,createast(lastast,OperatorFind("+"),tok,CreateToken("0")))
						EndIf
						'Nun daraus einen prefix Term erstellen
						Rem
						For Local ast:Tast=EachIn astlist
							Print "ASTADRESS "+ast.tostring()
							Print "OPERATOR "+ast.operator.name
							Print "VALUE1 "+ast.value1.text
							Print "VALUE2 "+ast.value2.text
						Next
						End Rem
						Rem
						'Berechnen
						If ListIsEmpty(astlist)=0
							Local wert:Float=TAst(astlist.last()).Calculate()
							Print "Ergebnis: "+wert
						EndIf
						End Rem
						
						Local Com:TToken=TToken(Before(Self.currentlist,Self.startterm))
						If com
							InsertAfter(Self.currentlist,Com,Self.endterm)
						EndIf
						
						ListRemove Self.currentlist,Self.endterm
						ListRemove Self.currentlist,Self.startterm
						Rem
						For Local t:TToken=EachIn Self.currentlist
							Print t.text
						Next
						End Rem
					Default
						Local operator:TOperator=token.operator
						
						'If operator.priority>-1 'Es ist ein Operator bei dem Sortiert werden soll
							'Nun nach Priorität sortieren
							
						'EndIf
				End Select
			Case IS_KEYWORD
				Select Lower(Trim(token.text))
					Case Keyword[2] 'If
						
					Case Keyword[3] 'else
						
					Case Keyword[4] 'elseif
						
					Case Keyword[5] 'local
						Print "Eine Lokale Variable wurde definiert"
						Local tokenname:TToken=TToken(after(Self.currentlist,token)) 'Variablenname
						Local vartyp:TToken=TToken(after(Self.currentlist,after(Self.currentlist,tokenname)))
						tokenname.typ=IS_VARIABLE
						
						LastScope.CreateClass(tokenname.text,vartyp.class)
					Case Keyword[6] 'global
						Print "Eine Globale Variable wurde definiert"
						Local tokenname:TToken=TToken(after(Self.currentlist,token)) 'Variablenname
						Local vartyp:TToken=TToken(after(Self.currentlist,after(Self.currentlist,tokenname)))
						tokenname.typ=IS_VARIABLE
						
						FirstScope.CreateClass(tokenname.text,vartyp.class)
					Case Keyword[7] 'Until
						
					Case Keyword[8] 'For
						
					Case Keyword[9] 'While
						
					Case Keyword[10] 'Inline Bytecode
						
					Case Keyword[11] 'New
						
					Case Keyword[12] 'Function
						
				End Select
			Case IS_CLASS
				Return
			Case IS_UNKNOWN 'Es ist eine Variable/Funktion/Konstante/fehler
				If TToken(Before(Self.Currentlist,token))<>Null And TToken(Before(Self.Currentlist,token)).text="."
					'Es ist ein Member da ein . dvor steht
					'Nun schauen welche Klasse gemeint ist
					Local classname:TToken=TToken(before(Self.currentlist,Before(Self.Currentlist,token)))
					'Nun die Felder über Reflection herausfinden
					token.class=classname.class
					For Local fld:TField=EachIn classname.class.id.EnumFields()
						If Lower(fld.Name())=Lower(token.text)
							token.memfield=fld
							token.typ=IS_FIELD
							Print "Member mit dem Namen: "+token.text
							
						EndIf
					Next

					'Und nun die Methoden
					For Local mth:TMethod=EachIn classname.class.id.Enummethods()
						If Lower(mth.Name())=Lower(token.text)
							token.memmethod=mth
							token.typ=IS_METHOD
							Print "Methode mit dem Namen: "+token.text
						EndIf
					Next
				Else
					'Es ist eine Klassen Referenz
					'Zuerst nach Variablen suchen
					'Und nun die einzelnen Scopes durchgehen
					Local Currentscope:TScope=Self.LastScope
					While Currentscope.FindVariable(token.text)=Null
						If currentscope=Self.firstscope Then 
							'Nun nach Funktionen suchen
							CreateError("Unbekannte Variable : "+token.text,token)
							Return
						EndIf
						Currentscope=Currentscope.NextScope()
						If currentscope=Null Then Exit
					Wend
					'xtoken.class=Currentscope.FindVariable(token.text)
					token.typ=IS_VARIABLE
					Print "Variable "+token.text
				EndIf
		End Select
		Self.Writebytecode(token)
		
	End Method

	Method ScanLine:TList(line:String) 'Zerlegt eine Zeile in Tokens
		Local Lastfound:Int=1
		Local List:TList=CreateList()
		If Instr(line,"//")
			line=Mid(line,1,Instr(line,"//")-1)
		EndIf
		For Local i:Int=1 To Len(line)
			Local str:String=Mid(line,Lastfound,i-Lastfound)
			
			Local com1:String=Trim(Mid(line,i,1))
			Local com2:String=Trim(Mid(line,i,2))
			If i=Len(line)
				
			EndIf
			If Len(com2)<2 Then com2:+" "
			
			If com1=Chr(34) 'Das nimmt eine Sonderposition ein ;)
				Local oldi:Int=i+1
				Repeat
					i:+1
				Until Mid(line,i,1)=Chr(34)
				str=Mid(line,oldi,i-oldi)
				ListAddLast(List,Createtoken(Chr(34)+str+Chr(34)))
				com1=""
				com2=""
				str=""
				lastfound=i
			Else
				For Local keychar:TOperator=EachIn OperatorList
					If com1=KeyChar.name Or  com2=KeyChar.name
						If Not (KeyChar.name="." And (isint(Mid(line,i-1,1)) And isint(Mid(line,i+1,1))))
							If com2=KeyChar.name
								lastfound=i+2
								com1=com2
							Else
								lastfound=i+1
								i:-1
							EndIf
							i:+1
							'Ein Operator wurde gefunden!
							Local token:TToken=Createtoken(Lower(Trim(str)))
							If token<>Null
								ListAddLast(List,token)
							EndIf
							token=Createtoken(Lower(Trim(com1)))
							If token<>Null
								ListAddLast(List,token)
							EndIf
						EndIf
					EndIf
				Next
			EndIf
		Next
		If Trim(Mid(line,lastfound,Len(line)))<>""
			ListAddLast(List,Createtoken(Trim(Mid(line,lastfound,Len(line)))))
		EndIf
		Print "-------------------------------------------"
		Return list
	End Method
	
	Method ShutDown()
		rowlist.Clear()
		Tokenlist.Clear()
		functionlist.Clear()
		Classlist.Clear()
		Compilelist.Clear()
		Currentlist.Clear()
		
		FirstScope=Null
		LastScope=Null
	End Method
	
	Method RegisterClass(class:TClass,name:String="") 'Fügt eine Klasse hinzu tegistiert sie
		If name<>""
			class.name=name
		EndIf
		class.id=TTypeId.ForObject(class)
		If Lower(Trim(Mid(class.id.metadata(),1,Len("static"))))="static"
			class.static=1
		Else
			class.static=0
		EndIf
		'Nun die Felder registrieren
		Local i:Int
		For Local fld:TField=EachIn class.id.EnumFields()
			If Lower(fld.Metadata())="fld=1"
				Local cField:TClassMember=New TClassMember
				cField.Name=fld.Name()
				cField.Typ=StringToType(fld.Typeid().name())
				cfield.typstring=fld.Typeid().name()
				cField.pos=class.stack.length+1
				class.Stack=class.Stack[..(class.stack.length+1)]
				class.stack[class.stack.length-1]=cField
				ListAddLast class.Fieldlist,cField
			EndIf
		Next
		For Local mth:TMethod=EachIn class.id.Enummethods()
			If Lower(mth.Metadata())="mth=1"
				Local cMth:TClassfunc=New TClassfunc
				cmth.Name=mth.Name()
				cmth.Typ=StringToType(mth.Typeid().name())
				cmth.typstring=mth.Typeid().name()
				cmth.pos=class.stack.length+1
				Local par:TTypeId[]=mth.Argtypes()
				cmth.par=New Byte[par.length]
				For Local i:Int=0 To par.length-1
					cmth.par[i]=StringToType(par[i].name())
				Next
				class.Stack=class.Stack[..(class.stack.length+1)]
				class.stack[class.stack.length-1]=cmth
				ListAddLast class.mthlist,cmth
			EndIf
		Next
		ListAddLast Self.classlist,class
	End Method

	Method AddDataTypes() 'Fügt die Standard Datentypen hinzu (ints, floats,...)
		Self.RegisterClass(New TInt)
		Self.RegisterClass(New TFloat)
		Self.RegisterClass(New TString)
		Self.RegisterClass(New TByte)
		Self.RegisterClass(New TDouble)
		Self.RegisterClass(New TShort)
		Self.RegisterClass(New TLong)
		Self.RegisterClass(New TBasic)
	End Method
End Type

