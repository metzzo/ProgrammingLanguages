SuperStrict
Include "TGenerator.bmx"
Include "TToken.bmx"
Include "TVariable.bmx"
Include "TFunction.bmx"
Type TCompiler
	Field FileText:String
	Field Generator:TGenerator
	Field TokenList:TList
	Field FunctionList:TList 'Die Funktionen
	Field SplitKey:String[]=["+","-","*","/","^","<",">","!","(",")","[","]","{","}","=",":",",","."," "]
	Field Operator:String[]=["+","-","*","/","^","<",">","<=",">=","<>","==","=",".", ..
		"NEW","AND","OR","XOR","MOD"]
	Field Keyword:String[]=["END","WHILE","FOR","IN", "IF","FUNC", "CLASS", "PRV", "PUB", "STATIC"]
	Field Datatype:String[]=["INT","LONG","SHORT","FLOAT","DOUBLE","STRING","BYTE"]
	Field StringContainer:TList
	Field CurrentLine:Int 'In welche Zeile sich der Parser befindet
	Field VariableScope:TList[128] 'Die Scopes
	Field VariablePos:Int=0 'Die Position im ScopeArray
	
	Method Create:TCompiler()
		TokenList=CreateList()
		StringContainer=CreateList()
		FunctionList=CreateList()
		VariableScope[0]=CreateList()
		Return Self
	EndMethod
	Rem
		Zerteilt alles in Token und bestimmte deren "Aufgabe" (String oder int oder UNKNOWN(Variable/Funktion))
	EndRem
	Method Tokenize(Stream:TStream)
		If Not Stream RuntimeError "File does not exist"
		Local Text:String=LoadString(Stream)
		Text="~n"+Text
		Local Lines:String[]=Text.Split("~n")
		For Local Line:String=EachIn Lines
			Local CurrentWord:String
			For Local I:Int=0 To Line.Length
				Local Char:String=Line[i..i+1]
				Local Find:Byte=False
				If Char=Chr(34)
					Local Start:Int=i+1
					For I=I+1 To Line.Length
						If Line[i..i+1]=Chr(34)
							CreateToken(Chr(34)+Line[Start..i]+Chr(34))
							Exit
						EndIf
					Next
					Continue
				EndIf
				For Local SplitKey:String=EachIn SplitKey
					If Char=SplitKey
						CreateToken(CurrentWord)
						CreateToken(SplitKey)
						CurrentWord=""
						Find=True
						Exit
					EndIf
				Next
				If Not Find
					CurrentWord:+Char
				EndIf
			Next
			CreateToken(CurrentWord)
			CreateToken("~n") 'Neue Zeile Token
			CurrentWord=""
		Next
		For Local Token:TToken=EachIn TokenList
			Print Token.ToString()
		Next
	EndMethod
	Rem
		Erzeugt ein Token
	EndRem
	Method CreateToken(Text:String)
		Local Obj:TToken=New TToken.Create(Self, Text)
		If Not Obj Return
		TokenList.AddLast(Obj)
		Obj.Lexer()
	EndMethod
	Rem
		Gibt den Token vor dem Token zurück
	EndRem
	Method TokenGetBefore:TToken(Token:TToken)
		If Token=Null Return Null
		Local Obj:TLink=TokenList.FindLink(Token)
		If Obj
			Obj=Obj.PrevLink()
			If Obj
				Local Val:TToken=TToken(Obj.Value())
				If Val
					If Val.GetTyp()="NEWLINE" Return Null
					Return Val
				Else
					Return Null
				EndIf
			Else
				Return Null
			EndIf
		Else
			Return Null
		EndIf
	EndMethod
	Rem
		Gibt den Token nach dem Token zurück
	EndRem
	Method TokenGetAfter:TToken(Token:TToken)
		If Token=Null Return Null
		Local Obj:TLink=TokenList.FindLink(Token)
		If Obj
			Obj=Obj.NextLink()
			If Obj
				Local Val:TToken=TToken(Obj.Value())
				If Val
					Return Val
				Else
					Return Null
				EndIf
			Else
				Return Null
			EndIf
		Else
			Return Null
		EndIf
	EndMethod
	Rem
		Löscht ein Token
	EndRem
	Method RemoveToken(Token:TToken)
		TokenList.Remove(Token)
	EndMethod
	Rem
		Schaut ob die Syntax eingehalten wurde
	EndRem
	Method Parse()
		Local Line:Int
		For Local Token:TToken=EachIn TokenList
			If Token.GetTyp()="NEWLINE" Line:+1
			Token.Line=Line
		Next
		Line=0
		For Local Token:TToken=EachIn TokenList
			If Token.GetTyp()="NEWLINE" And TokenGetAfter(Token)<>Null
				Line:+1
				Token=TokenGetAfter(Token)
				ParseToken=Null
				Local Output:String=Token.Parse()
				If Output<>""
					RuntimeError "Syntax error in Line "+Line+": "+Output
				EndIf
			EndIf
		Next
		If VariablePos>0
			RuntimeError "Syntax error in Line"+Line+": Unexpected end of file"
		EndIf
	EndMethod
	Rem
		Gibt eine neue Variable auf den Stack
	EndRem
	Method PushVariable(Variable:TVariable)
		VariableScope[VariablePos].Addlast(Variable)
	EndMethod
	Rem
		Gibt die Liste mit den Variablen im aktuellen Scope zurück
	EndRem
	Method GetVariable:TList()
		Local List:TList=CreateList()
		For Local i:Int=VariablePos To 0 Step -1
			For Local Variable:TVariable=EachIn VariableScope[i]
				List.AddLast(Variable)
			Next
		Next
		
		Return list
	EndMethod
	Rem
		Erzeugt einen neuen Scope
	EndRem
	Method PushScope()
		VariablePos:+1
		If not VariableScope[VariablePos]
			VariableScope[VariablePos]=CreateList()
		EndIf
	EndMethod
	Rem
		Löscht den obersten Scope
	EndRem
	Method PopScope:String()
		If VariablePos>0
			VariablePos:-1
		Else
			Return "Unexpected END"
		EndIf
		Return ""
	EndMethod
	Rem
		Schaut ob der Token Teil eines Terminus ist
	EndRem
	Field ParseToken:TToken 'Das Token welches gerade überprüft wird
	Method ParseTerm:Byte(CurrentToken:TToken)
		If ParseToken=Null ParseToken=CurrentToken
		Local Output:String=CurrentToken.Parse()
		If Output<>""
			RuntimeError "Syntax error: "+Output
		EndIf
		If CurrentToken.Typ="SPLITKEY"
			Select CurrentToken.Text
				Case "(",")"
					If CurrentToken=ParseToken.CloseToken
						Return 2
					Else
						Return 1
					EndIf
			EndSelect
		EndIf
		If CurrentToken.Typ="INT" Or CurrentToken.Typ="FLOAT" Or  CurrentToken.Typ="TEXT" Or CurrentToken.Typ="VARIABLE"
			TokenGetAfter(CurrentToken).Parse()
			If TokenGetAfter(CurrentToken).GetTyp()="OPERATOR" Or TokenGetAfter(CurrentToken).GetTyp()="SPLITKEY"
				Local Val1:Byte=ParseTerm(TokenGetAfter(CurrentToken))
				If Val1=0 Return 0
				If Val1=2 Return 2
			Else
				Return 0
			EndIf
			Return 1
		ElseIf CurrentToken.Typ="OPERATOR"
			TokenGetAfter(CurrentToken).Parse()
			If  TokenGetAfter(CurrentToken).GetTyp()="INT" Or TokenGetAfter(CurrentToken).GetTyp()="FLOAT" Or  TokenGetAfter(CurrentToken).GetTyp()="TEXT" Or TokenGetAfter(CurrentToken).Typ="VARIABLE"
				Local Val1:Byte=ParseTerm(TokenGetAfter(CurrentToken))
				If Val1=0 Return 0
				If Val1=2 Return 2
			Else
				Return 0
			EndIf
			Return 1
		Else
			Return 0
		EndIf
	EndMethod
	Method RegisterFunction(Func:TFunction)
		FunctionList.AddLast(func)
	EndMethod
	Rem
		Erzeugt schließlich Code
	EndRem
	Method Generate:String(Generator:TGenerator)
		Return Generator.Generate(Self)
	EndMethod
	Rem
		Führt den Code aus
	EndRem
	Method Execute(Code:String)
		SaveString(Code,WriteFile("main.c"))
		GCCollect()
		Local BatFile:TStream=WriteFile(Replace(AppDir,"/","\")+"\call.bat")
		WriteLine BatFile,"@echo on"
		WriteLine BatFile,"cd "+Replace(AppDir,"/","\")
		WriteLine BatFile,"gcc -o main.exe main.c" 'tcc -run main.c"'
		WriteLine BatFile,"main.exe"
		WriteLine BatFile,"pause"
		CloseFile BatFile 
		
		OpenURL(Replace(AppDir,"/","\")+"\call.bat")
	EndMethod
EndType

Local Compiler:TCompiler=New TCompiler.Create()
Compiler.RegisterFunction(New TFunction.Create("PRINT"))
Compiler.Tokenize(ReadFile("Script.txt"))
Compiler.Parse()
Compiler.Execute(Compiler.Generate(New TCGenerator))



Function IsInt:Byte(text:String)
	For Local i:Int=1 To Len(text)
		Local a:Byte =Asc(Mid(text,i,1))
		If (a<48 Or a>57) And a<>45
			Return 0
		EndIf
	Next
	Return 1
End Function
Function IsFLoat:Byte(text:String)
	For Local i:Int=1 To Len(text)
		Local a:Byte =Asc(Mid(text,i,1))
		If (a<48 Or a>57 ) And a<>46 And a<>45
			Return 0
		EndIf
	Next
	Return 1
End Function
