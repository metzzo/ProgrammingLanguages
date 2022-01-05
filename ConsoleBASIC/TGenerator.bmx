
Type TGenerator Abstract
	Method Generate:String(Compiler:TCompiler) Abstract
EndType

Type TCGenerator Extends TGenerator
	Field Code:String
	Field Compiler:TCompiler
	Field Token:TToken
	Method Generate:String(Compiler:TCompiler)
		Self.Compiler=Compiler
		Code="#include <stdio.h> ~n int main() ~n{ "
		Token=TToken(Compiler.TokenList.First())
		While Token
			GenerateToken()
			If Token.Typ="NEWLINE" Code:+"; ~n"
			Token=Compiler.TokenGetAfter(Token)
		Wend
		Code:+"}~n"
		Code=Code.Replace("};","}")
		Code=Code.Replace("{;","{")
		Code=Code.Replace("~n; ","~n")
		Print Code
		Return Code
	EndMethod
	Method GenerateToken:String()
		Select Token.Typ
			Case "INT"
				Code:+Int(Token.Text)
				Return "INT"
			Case "FLOAT"
				Code:+Float(Token.Text)
				Return "FLOAT"
			Case "TEXT"
				'Kommt danach ein + Operator?
				Token=Compiler.TokenGetAfter(Token)
				If Token.Typ="OPERATOR" And Token.Text="+"
					Local OldCode:String=Code
					Local Symbol:String=""
					Local i:Int
					While Token
						i:+1
						Token=Compiler.TokenGetAfter(Token)
						Local Typ:String
						If Token.Typ<>"TEXT"
							Typ=GenerateToken()
						EndIf
						If Token.Typ="OPERATOR" And Token.Text="+" Token.Text=", ";Continue
						Code=OldCode
						Select Typ
							Case "INT"
								Symbol:+"%d"
							Case "STRING","TEXT"
								Symbol:+"%s"
							Case "FLOAT"
								symbol:+"%f"
							Case "BYTE"
							
							Case "SHORT"
							
							Case "LONG"
							
							Case "DOUBLE"
							
							Default
								Exit
						EndSelect
					Wend
					For i=i To 1 Step -1
						Token=Compiler.TokenGetBefore(Token)
					Next
					
					Token=Compiler.TokenGetBefore(Token)
					Code:+Token.Text[0..Token.Text.length-1]+Symbol+Chr(34)
					Code:+", "
					Token=Compiler.TokenGetAfter(Token)
				Else
					Token=Compiler.TokenGetBefore(Token)
					Code:+Token.Text
				EndIf
				
				Return "TEXT"
			Case "OPERATOR"
				Code:+Token.Text
			Case "KEYWORD"
				Select Token.Text
					Case "IF"
						Code:+"if "
						Token=Compiler.TokenGetAfter(Token)
						While Token And Token.Typ<>"NEWLINE"
							GenerateToken()
							Token=Compiler.TokenGetAfter(Token)
						Wend
						Code:+" {"
					Case "WHILE"
						Code:+"while "
						Token=Compiler.TokenGetAfter(Token)
						While Token And Token.Typ<>"NEWLINE"
							GenerateToken()
							Token=Compiler.TokenGetAfter(Token)
						Wend
						Code:+" {"
					Case "END"
						code:+"}"
				EndSelect
			Case "FUNCTION"
				For Local Func:TFunction=EachIn Compiler.FunctionList
					If Token.Text=Func.Name Then 
						Code:+Func.ToString()
						Return Func.Datatype
					EndIf
				Next
			Case "VARIABLE"
				Code:+Token.Text
				Return Token.Variable.Datatype
			Case "DATATYPE"
				Code:+Token.Text.ToLower()+" "
				Return Token.Text
			Case "SPLITKEY"
				Code:+Token.Text
		EndSelect
	EndMethod
EndType
