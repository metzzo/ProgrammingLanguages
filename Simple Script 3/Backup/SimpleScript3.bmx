SuperStrict

Rem
	Folgene Opertoren gibt es:
	+,-,*,/,^: Grundrechenarten
	(): Klammern, Vorrangregeln
	: Type Zuweisung
	.: Type Operator (meinevar.x=4)
	+: String Verknüpfer
	<,>,==,=>,=< Größer(gleich), kleiner(gleich), gleich
	=: Variablen Zuordnung
	|| Oder
	&& UNd
	! not
	% Modulo
	~ Xor
End Rem

Const DEBUG:Byte=1

'Token Typen
Const IS_OPERATOR:Byte=1
Const IS_INT:Byte=2
Const IS_FLOAT:Byte=3
Const IS_STRING:Byte=4
Const IS_KEYWORD:Byte=5
Const IS_FUNCTION:Byte=6
Const IS_VARIABLE:Byte=7
Const IS_CLASS:Byte=8
Const IS_NEWLINE:Byte=9
Const IS_UNKNOWN:Byte=10

Global OperatorList:TList=CreateList()
CreateOperator("<>",4)
CreateOperator("&&",4)
CreateOperator("||",4)
CreateOperator("%",4)
CreateOperator("==",4)
CreateOperator("=",5)
CreateOperator("<=",4)
CreateOperator(">=",4)
CreateOperator("<",4)
CreateOperator(">",4)
CreateOperator("!",4)
CreateOperator("~~",4)
CreateOperator("+",3)
CreateOperator("-",3)
CreateOperator("*",2)
CreateOperator("/",2)
CreateOperator("^",1)
CreateOperator("&",1)
'-1 heißt das es nur zum parsen gut ist
'CreateOperator(" ",-1)
CreateOperator("(",-1)
CreateOperator(")",-1)
CreateOperator("{",-1)
CreateOperator("}",-1)
CreateOperator(":",-1)
CreateOperator(".",-1)
CreateOperator(Chr(34),-1)
createOperator(",",-1)


Global KeywordCount:Int=13
Global Keyword:String[20]
KeyWord[2]="if"
KeyWord[3]="else"
KeyWord[4]="elseif"
KeyWord[5]="local"
KeyWord[6]="global"
KeyWord[7]="until"
KeyWord[8]="for"
KeyWord[9]="while"
KeyWord[10]="inlinebytecode"
KeyWord[11]="new"
KeyWord[12]="function"
keyword[13]="to"

Local func:Tfunction=createFunction("print",1)
func.func=Outputtext

Local script:TScript=New TScript
script.Load("Script/script.ss3")

script.AddFunction(func)

script.RegisterClass(New TInt,"int")
script.RegisterClass(New TFloat,"float")
script.RegisterClass(New TString,"string")

script.Scan()

script.Compile()
Print "-----------------------------Executing"
script.DEBUG_Execute()
Function OutputText(script:Tscript)
	Print "Hallo"
End Function

Type TInt Extends TClass
	Field Content:TDataInt {Clone}
	
	Method New()
		Self.name="int"
	End Method
	
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.I=TDataInt(obj[0]).I
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[]) 'Wird nicht verwendet
	End Method
End Type

Type TString Extends TClass
	Field Content:String {Clone}
	
	Method New()
		Self.name="string"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content=String(obj[0])
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type


Type TFloat Extends TClass
	Field Content:TDataFloat {Clone}
	
	Method New()
		Self.name="float"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.F=TDataFloat(obj[0]).F
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Rem
Type TUserType Extends TClass 'Das ist der normale Type
	Field Stream:TStream 'Hier ist das File
	Field script:TScript
	
	Method OnCall:TUserType()
		Return Self
	End Method
	
	Method OnDelete()
	End Method
	
	Method OnCreate()
	End Method
	
	Method OnSet(value:Int)
	End Method
End Type
End Rem


Type TScript
	Field Lines:Int 'Wie viele Zeilen es gibt
	Field rowlist:TList=CreateList() 'Hier sind die Zeilen in roh Form
	Field TokenList:TList=CreateList() 'Hier sind die Token
	Field Bytecodelist:TList=CreateList() 'Hier ist der Fix und fertig e Bytecode
	Field functionlist:TList=CreateList() 'Hier sind die Funktionen
	Field classlist:TList=CreateList() 'Hier sind alle Handles der Klassen
	Field compilelist:TList=CreateList() 'Hier ist der compilierte Code drinnen
	Field currentlist:TList=CreateList() 'Hier ist die aktuelle Zeile
	
	Field FirstScope:TScope 'Das ist der erste Scope, in ihm sind alle Globale Variablen
	Field LastScope:TScope 'Der zuletzt erzeugte Scope
	
	Method Load(Pfad:String)
		Local stream:TStream=ReadFile(Pfad)
		ListAddLast(Self.rowlist,"{")
		Repeat
			Local line:String=ReadLine(stream)
			ListAddLast(Self.rowlist,line)
			Print "Script Zeile: "+line
		Until Eof(stream)
		ListAddLast(Self.rowlist,"}")
		Print "-------------------------------------------"
	End Method
	
	Method Scan()
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
	
	Method DEBUG_Execute() 'Nur Vorübergehend
		Rem
		For Local comp:String=EachIn Self.compilelist
			For Local func:TFunction=EachIn Self.functionlist
				If "CALL "+func.name=comp
					func.func(Self)
				EndIf
			Next
		Next
		End Rem
	End Method
	
	Method Compile()
		For Self.currentlist=EachIn Self.Tokenlist
			'Nun analysieren
			For Local token:TToken=EachIn Self.currentlist
				If token.Analyse(Self.compilelist,Self)=0 Then Print "Ungueltiger Token: "+token.text
			Next
		Next
		'Jetzt die "Logik" erstellen, also Scopes und Variablen definieren
		For Self.currentlist=EachIn Self.Tokenlist
			'Nun analysieren
			For Local token:TToken=EachIn Self.currentlist
				Self.Compiletoken(token)
			Next
		Next
		If Debug 'Nur zum Testen
			For Local row:String=EachIn Self.compilelist
				Print row
			Next
		EndIf
	End Method
	
	Method CompileToken(token:TToken)
		Select token.typ
			Case IS_INT
				
			Case IS_FLOAT
				
			Case IS_STRING
				
			Case IS_OPERATOR
				Select token.text
					Case "{" 'Scope Anfang
						Local scope:Tscope=Self.Lastscope
						Self.Lastscope=New Tscope
						If Self.Firstscope=Null
							Self.Firstscope=Self.Lastscope
						Else
							Self.Lastscope.Kindscope=scope
						EndIf
					Case "}" 'Scope Ende
						Self.Lastscope=Self.Lastscope.Kindscope
					Default
						Local operator:TOperator=token.operator
						If operator.priority>-1 'Es ist ein Operator bei dem Sortiert werden soll
							
						EndIf
				End Select
			Case IS_KEYWORD
				Print "KEYWORD ist gegufunden worden; "+token.text
				Select Lower(Trim(token.text))
					Case Keyword[2] 'If
						
					Case Keyword[3] 'else
						
					Case Keyword[4] 'elseif
						
					Case Keyword[5] 'local
						Local tokenname:TToken=TToken(after(Self.currentlist,token)) 'Variablenname
						Local vartyp:TToken=TToken(after(Self.currentlist,tokenname))
						
						
						LastScope.CreateClass(tokenname.text,vartyp.class)
						End
					Case Keyword[6] 'global
						
					Case Keyword[7] 'Until
						
					Case Keyword[8] 'For
						
					Case Keyword[9] 'While
						
					Case Keyword[10] 'Inline Bytecode
						
					Case Keyword[11] 'New
						
					Case Keyword[12] 'Function
						
				End Select
			Case IS_FUNCTION
				
			Case IS_CLASS
				
			Case IS_UNKNOWN 'Es ist eine Variable/Funktion/Konstante/fehler
		End Select
	End Method
	
 	Method FindOperator:TToken[](list:TList,Priority:Int)
		Local tokens:TToken[]=New TToken[1]
		Local size:Int=0
		For Local token:TToken=EachIn list
			If token.typ=IS_OPERATOR And token.operator<>Null And token.operator.Priority=Priority
				Local beforetoken:TToken=TToken(before(list,token))
				Local aftertoken:TToken=TToken(before(list,token))
				size:+3
				tokens=tokens[..size]
				tokens[size-3]=beforetoken
				tokens[size-1]=token
				tokens[size-1]=aftertoken
			EndIf
		Next
		
		Return tokens
	End Method
	
	Method ScanLine:TList(line:String)
		Local Lastfound:Int=1
		Local List:TList=CreateList()
		If Instr(line,"//")
			line=Mid(line,1,Instr(line,"//")-1)
		EndIf
		For Local i:Int=1 To Len(line)
			Local str:String=Mid(line,Lastfound,i-Lastfound)
			
			Local com1:String=Trim(Mid(line,i,1))
			Local com2:String=Trim(Mid(line,i,2))
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
						If Not (KeyChar.name="." And (isint(Mid(line,i-1,1)) Or isint(Mid(line,i+1,1))))
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
		Print "-------------------------------------------"
		Return list
	End Method
	
	
	Method RegisterClass(class:TClass,name:String="")
	If name<>""
		class.name=name
	EndIf
	ListAddLast Self.classlist,class
	End Method
	
	Method AddFunction(func:Tfunction)
		ListAddLast(Self.functionlist,func)
	End Method
	
End Type

Type TStack
	Field Value:Object
	Field name:String 'Der Name des Stacks
	Field ID:Byte
	
	Method GetValue()
	
	End Method
	Method SetValue(Name:String)
	
	End Method
End Type

Type TScope
'	Field upperscope:Tscope 'Hier ist der darüberliegende Scope drinnen
	Field KindScope:TScope 'VOn welchem Scope es abstammt
	Field ObjectList:TClass[]'In ihr sind alle Objekte dieses Scopes enthalten
	
	Method CreateClass(Name:String,Class:TClass)
		name=Trim(name)
		Self.Objectlist=Self.Objectlist[..Self.Objectlist.length+1]
		If class=Null Then RuntimeError "Klasse existiert nicht"
		Local obj:Object=CloneObject(Class)
		If obj=Null Then RuntimeError "Objekt nicht gefunden"
		Self.Objectlist[Self.Objectlist.length-1]=TClass(obj)
		Self.Objectlist[Self.Objectlist.length-1].Name=name
	End Method
End Type


Function CreateFunction:TFunction(Name:String,Parameter:Byte)
	Local func:TFunction=New TFunction
	func.name=name
	func.parameter=parameter
	
	Return func
End Function

Type TFunction
	Field name:String
	Field Parameter:Byte 'Wie viele Parameter es ibn der Funktion gibt
	Field func(script:Tscript)
End Type

Type TClass Abstract
	Field Name:String
	
	Method OnCreate(obj:Object[]) Abstract
	Method OnDelete(obj:Object[]) Abstract
	Method OnSet   (obj:Object[]) Abstract
	Method OnCall:Object  (obj:Object[]) Abstract
	Rem
	Method Clone:Tclass()
		Local class:TClass=New TClass
		class.name=Self.name
		Return class
	End Method
	End Rem
End Type

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
Function CreateOperator:TOperator(name:String,prio:Int)
	Local op:TOperator=New Toperator
	op.Create(name,prio)
	Return op
End Function

Type TOperator
	Field Priority:Byte 'Wie wichtig der Byte ist '0=Sehr wichtig 255=Am unwichtigsten
	Field name:String
	
	Method Create(name:String,prio:Byte)
		Self.Priority=prio
		Self.name=name
	End Method
	
	Method Tokenize:String()
		'Hier wird der Operator als Token zurückgegeben
		Select Self.name
			Case "("
				Return "BRACKET"
			Case ")"
				Return "ENDBRACKET"
			Case "}"
				Return "ENDSCOPE" 
			Case "{"
				Return "BEGINSCOPE"
			Case ":"
				Return "AS"
			Case "."
				Return "FROM"
'			Case " "
'				Return "WHITESPACE"	
			Default
				Return "OPERATOR "+Self.name
		End Select
		Return ""
	End Method
	

	
	Method New()
		ListAddLast Operatorlist,Self
	End Method
	Method Delete()
		ListRemove Operatorlist,Self
	End Method
End Type


Function compare:Byte (other:Object,other2:Object)
	If Not TOperator(other) Or Not TOperator(other2) Then Return 0
	
	Local o:TOperator = TOperator (other)
	Local o2:TOperator= TOperator(other2)
	If o.Priority > o2.Priority 
		Return 1
	ElseIf o.Priority  < o2.Priority 
		Return -1
	EndIf
	Return 0
End Function

Type TToken
	Field text:String 'Die Parameter
	Field Typ:Byte 'Was es ist
	Field Operator:TOperator ' Wenn es ein Operator ist, welcher
	Field class:TClass 'Wenn es eine Klasse ist welche
	
	Method Analyse:Byte(list:TList,script:Tscript) 'Schaut was es ist
		Local i:Int
		Local find:Byte=0
		
		'Schauen ob der Token davor Local heißt
		If Left(Self.text,Len(keyword[5]))=keyword[5] And IsString(Mid(Self.text,Len(keyword[5])+1))
'			If script.currentlist.contains(Self) Then End
			Local tok:TToken=createToken(keyword[5])
			tok.typ=IS_KEYWORD
			script.currentlist.InsertBeforeLink(tok,script.currentlist.Findlink(Self))
			ListAddLast(list,"KEYWORD "+keyword[5])
'			script.currentlist.insertafterLink(,script.currentlist.Findlink(Self))
			Self.text=Mid(Self.text,Len(keyword[5])+1)
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
		ElseIf Isfloat(Self.text)
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
		
		'Nach normalen Funktionen suchen
		For Local func:TFunction=EachIn script.functionlist
			If func.name=Self.text
				If debug
					Print "Funktion gefunden! "+func.name
				EndIf
				ListAddLast(list,"CALL "+func.name)
				Self.typ=IS_FUNCTION
				find=1
				Exit
			EndIf
		Next
		
		If Left(Self.text,1)=Chr(34) And Right(Self.text,1)=Chr(34) Then
			If debug
				Print "String gefunden: "+Self.text
			EndIf
			ListAddLast(list,"STRING "+Self.text)
			find=1
			Self.typ=IS_STRING
		EndIf
		
		If Self.text="NEWLINE"
			If debug 
				Print "Zeilenende erreicht!"
			EndIf
			Self.TYP=IS_NEWLINE
			find=1
			ListAddLast(list,"NEWLINE")
		EndIf
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

'Datentypen

Function FloatToObject:TDataFloat(F2:Float)
	Local F1:TDataFloat=New TDataFloat
	F1.F=F2
	Return F1
End Function 

Type TDataFloat
	Field F:Float
End Type

Function IntToObject:TDataInt(I2:Int)
	Local I1:TDataInt=New TDataInt
	I1.I=I2
	Return I1
End Function 
Type TDataInt
	Field I:Int
End Type

Function DoubleToObject:TDataDouble(D2:Double)
	Local D1:TDataDouble=New TDataDouble
	D1.D=D2
	Return D1
End Function 
Type TDataDouble
	Field d:Double
End Type

Function ByteToObject:TDataByte(B2:Byte)
	Local B1:TDataByte=New TDataByte
	B1.B=B2
	Return B1
End Function 

Type TDataByte
	Field B:Byte
End Type

Function ShortToObject:TDataShort(S2:Short)
	Local S1:TDataShort=New TDataSHort
	S1.S=S2
	Return S1
End Function 

Type TDataShort
	Field S:Short
End Type

Function LongToObject:TDataLong(L2:Long)
	Local L1:TDataLong=New TDataLong
	L1.L=L2
	Return L1
End Function 

Type TDataLong
	Field L:Long
End Type


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
'	list.remove(me)
	list.InsertAfterLink(me,list.FindLink(other))
End Function

' Inserts this instance before the 'other' instance
Function InsertBefore(list:TList,me:Object,other:Object)
'	list.remove(me)
	If me=Null Then RuntimeError "Objekt existiert nicht"
	list.InsertBeforeLink(me,list.FindLink(other))
End Function



