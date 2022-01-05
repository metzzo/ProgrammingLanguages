Type TToken
	Field Compiler:TCompiler
	Field Text:String
	Field CloseToken:TToken 'Mit welchem Token es geschlossen wird (optional)
	Field Parsed:Byte 'Wurde schon geparsed?
	Field Variable:TVariable 'Wenns ne Variable ist, welche
	Field Line:Int 'In welcher Zeile das Token vorkommt
	
	Method Create:TToken(Compiler:TCompiler, Text:String)
		If Text.Trim()="" And Text<>"~n" Then Return Null
		Self.Compiler=Compiler
		If Text<>"~n" Then Self.Text=Text.Trim() Else Self.Text=Text
		Return Self
	EndMethod
	
	Method Lexer()
		If IsInt(Text)
			Local Token1:TToken=Compiler.TokenGetBefore(Self)
			Local Token2:TToken=Compiler.TokenGetBefore(Token1)
			If Token1 And Token2
				If Token1.GetText()="." And Token2.GetTyp()="INT"
					Local Value:String=Token2.GetText()+"."+Text
					Compiler.Removetoken(Token1)
					Compiler.removeToken(Token2)
					Text=Value
					Typ="FLOAT"
				EndIf
			EndIf
			Return
		EndIf
		For Local Operator:String=EachIn Compiler.Operator
			If Operator=Text
				Select Operator
					Case "="
						If Compiler.TokenGetBefore(Self).Typ="OPERATOR"
							Select Compiler.TokenGetBefore(Self).Text
								Case "="
									Compiler.RemoveToken(Compiler.TokenGetBefore(Self))
									Self.Text="=="
								Case "<"
									Compiler.RemoveToken(Compiler.TokenGetBefore(Self))
									Self.Text="<="
								Case ">"
									Compiler.RemoveToken(Compiler.TokenGetBefore(Self))
									Self.Text=">="
							EndSelect
						EndIf
					Case ">"
						If Compiler.TokenGetBefore(Self).Typ="OPERATOR" And Compiler.TokenGetBefore(Self).Typ="<"
							Compiler.RemoveToken(Compiler.TokenGetBefore(Self))
							Self.Text="<>"
						EndIf
				EndSelect
				Return
			EndIf
		Next
	EndMethod
	Method GetText:String()
		Return Text
	EndMethod
	Method GetTyp:String()
		Return Typ
	EndMethod
	Method GetCloseToken:TToken()
		Return CloseTOken
	EndMethod
	Method ToString:String()
		If Typ="NEWLINE" Return "Token: NEWLINE"
		Return "Token: "+GetTyp()+" Value: "+GetText()
	EndMethod
EndType
