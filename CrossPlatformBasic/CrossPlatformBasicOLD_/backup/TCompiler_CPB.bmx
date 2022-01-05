
Import "Util_CPB.bmx"
Import BaH.Libxml
SuperStrict
Include "TCompiler_Identifier.bmx"
Type TCompiler
	Field Token:TList
	Field GlobalVarIdentifier:TList=New TList
	Field FunctionIdentifier:TList=New TList
	Field TypeIdentifier:TList=New TList
	Field LocalVarIdentifier:TList[1] 'Alle Lokale Variablen
	Field CurrentMode:Int =0 '0=nichts, 1=funktion, 2=schleife, 3=if
	
	Method LoadFunction(FilePath:String)
		Local File:TxmlDoc=TxmlDoc.ParseFile(FilePath)
		Local Root:TxmlNode=File.getRootElement()
		For Local node:TxmlNode = EachIn Root.GetChildren()
			Local Name:String=node.GetAttribute("name").ToLower()
			
			Local Datatype:TDatatype=TDatatype.CreateByNode(Node)
			Local Func:TIdentifierFunction=New TIdentifierFunction
			Func.Create(Name,Datatype)
			If Node.GetChildren()
				For Local Child:TxmlNode=EachIn node.getChildren()
					Local Pre:String=""
					If Child.HasAttribute("pre")
						Pre=Child.GetAttribute("pre")
					EndIf
					Local Data:TDatatype=TDatatype.CreateByNode(Child)
					Func.AddParameter(Child.GetAttribute("name").ToLower(),Data, Pre)
				Next
			EndIf
			Func.Genname()			
			FunctionIdentifier.AddLast(func)
		Next
	EndMethod
	
	Method Tokenizer(Text:String)
		Text="~n"+Text
		Token=New TList
		Local SplitToken:String[]=[" ",",","(",")","[","]",":","+","-","*","/","^","\","	","==","<>","<=",">=","<",">","=","%","#","$"]
		Local Lines:String[]=Text.Split("~n")
		Local InRem:Byte=False
		For Local Line:String=EachIn Lines
			Local LastFound:Int=0
			If Line.ToLower().Trim()="rem"
				InRem=True
			EndIf
			If InRem
				If Line.ToLower().Trim()="endrem"
					InRem=False
				EndIf
				Continue
			EndIf
			Line:+" "
			For Local i:Int=0 To Line.Length
				If Line[i..i+1]="~n" Then Continue
				If Line[i..i+1]=";"
					Exit
				EndIf
				If Line[i..i+1]=Chr(34)
					Token.AddLast(Line[LastFound..i].ToLower().Trim())
					LastFound=i
					For i=i+1 To Line.Length
						If Line[i..i+1]=Chr(34)
							Token.AddLast(Line[LastFound..(i+1)].Trim())
							LastFound=i+1
							Exit
						EndIf
					Next
				EndIf
				'DebugStop
				For Local SplitTok:String=EachIn SplitToken
					If Line[i..i+SplitTok.Length]=SplitTok
						Token.AddLast(Line[LastFound..i].ToLower().Trim())
						If SplitTok<>" " And SplitTok<>"	"
							If SplitTok="#"
								Token.AddLast(":")
								SplitTok="float"
							EndIf
							If SplitTok="$"
								Token.AddLast(":")
								SplitTok="string"
							EndIf
							If SplitTok="%"
								Token.AddLast(":")
								SplitTok="int"
							EndIf
							If SplitTok="!"
								Token.AddLast(":")
								SplitTok="byte"
							EndIf
							Token.AddLast(SplitTok)
						EndIf
						
						LastFound=i+SplitTok.Length
						i:+(SplitTOk.Length-1)
						Exit
					EndIf
				Next
			Next
			Token.AddLast("~n")
		Next
		Local l:TLink=Token.FirstLink()
		While l
			If String(l.value()).Trim()="" And String(l.value())<>"~n" Then l.Remove()			
			l=l.NextLink()
		Wend
		'For Local S:String=EachIn Token
		'	Print S
		'Next
	EndMethod
	Method Analyser()
		Local Tmp:Object[]=TOken.ToArray()
		For Local i:Int=0 Until Tmp.Length
			Local Text:String=String(Tmp[i])
			Select Text
				Case "global"
					Repeat
						i:+1
						Local name:String=String(Tmp[i])
						Local Datatype:TDatatype=TDatatype.VoidDatatype
						i:+1 '1=: 2=Datentyp
						If String(Tmp[i])=":"
							i:+1
							Datatype=TDatatype.Create(String(Tmp[i]).ToLower())
						EndIf
						
						Local Id:TIdentifierVariable=New TIdentifierVariable
						Id.Create(name,Datatype)
						GlobalvarIdentifier.AddLast(Id)
						i:+1
						'Print String(Tmp[i])
					Until String(Tmp[i])<>","
				Case "function"
					i:+1
					Local Name:String=String(Tmp[i])
					'DebugStop
					'DebugStop
					Local Datatype:TDatatype=TDatatype.VoidDatatype
					i:+1
					If String(Tmp[i])=":"
						i:+1
						Datatype=TDatatype.Create(String(Tmp[i]).ToLower())
						i:+1
					EndIf
					Local Id:TIdentifierFunction=New TIdentifierFunction
					Id.Create(Name,Datatype)
					
					Local IsArray2:Int
					While String(Tmp[i])="["
						i:+1 ']
						i:+1 '[
						IsArray2:+1
					Wend
					i:+1
					Datatype.IsArray=IsArray2
					While String(Tmp[i])<>")"
						Local Name:String=String(Tmp[i])
						i:+1
						Local Typ:TDatatype=TDatatype.VoidDatatype, Pre:String
						If String(Tmp[i])=":"
							i:+1
							Typ=TDatatype.Create(String(Tmp[i]).ToLower())
							i:+1
						'Else
						'	Typ="int"
						EndIf
						Local IsArray:Int
						While String(Tmp[i])="["
							i:+1 ']
							i:+1 '[
							IsArray:+1
							
						Wend
						Typ.IsArray=IsArray
						If String(Tmp[i])="="
							For i=i+1 Until Tmp.Length
								If String(Tmp[i])="~n" Or String(Tmp[i])=","
									If String(Tmp[i])="~n"
										Pre=Pre[0..Pre.length-1]
										i=i-1
									EndIf
									Exit
								Else
									Pre:+String(Tmp[i])
								EndIf
							Next
						EndIf
						
						Id.AddParameter(Name, Typ,Pre)
						If  String(Tmp[i])=")" Then Exit
						i:+1
					Wend
					Id.UserFunc=True
					Id.GenName()
					FunctionIdentifier.AddLast(id)
				Case "type"
					Rem
					'------------------------------------------------------------------TODO:
						Hier auch Types einbauen
					'-----------------------------------------------------------------------
					EndRem
			EndSelect
		Next
		
	EndMethod
	
	Field XMLFile:TxmlDoc
	Field CurrentRoot:TxmlNode 'Wo die Zeilen rangehängt werden
	Field CurrentLineNode:TxmlNode 'Wo die aktuelle Zeile ist
	Field CurrentToken:String
	Field CurrentLink:TLink
	Field CurrentLine:Int
	Field LastFunc:TxmlNode 'Wo die Functions dran gehngt werden
	Field FUnctionDatatype:TDatatype 'Der aktuelle Datentyp der FUnktion
	Method Parser()
		XMLFile=TxmlDoc.newDoc("1.0")
		Local RootNode:TxmlNode=TxmlNode.newNode("CPB")
		RootNode.AddAttribute("version","0.1")
		XMLFile.setRootElement(rootnode)
		Local GlobalNode:TxmlNode=RootNode.AddChild("global")
		'Nun alle Globale Variablen deklarieren
		For Local vari:TIdentifierVariable=EachIn GlobalvarIdentifier
			Local Node:TxmlNode=GlobalNode.AddChild("defvar")
			Vari.Datatype.Add2Node(Node)
		Next
		
		CurrentRoot=RootNode.AddChild("code")
		LastFunc=CurrentRoot
		CurrentLink=Token.FirstLink()
		CurrentToken=String(CurrentLink.Value())
		Block()
		'Nun alle Funktionen deklarieren
		For Local func:TIdentifierFunction=EachIn FunctionIdentifier
			'If Func.UserFunc Then Continue
			If Func.Used=False Then Continue
			Local Node:TxmlNode=RootNode.AddChild("function")
			Func.Datatype.Add2Node(Node)
			Node.AddAttribute("realname",Func.RealName)
			node.AddAttribute("userfunc", Func.UserFunc)
			If FUnc.Datatype.IsArray Node.AddAttribute("dim","1") Else Node.AddAttribute("dim","0")
			For Local Par:TParameter=EachIn Func.ParamList
				Local Node2:TxmlNode=Node.AddChild("param")
				Par.Datatype.Add2Node(Node2)
			Next
			CurrentRoot.AddPreviousSibling(Node)
			'LastFunc=Node
		Next
		'Print "fertig"
		DeleteFile "tmp/XMLCode.xml"
		XMLFile.SaveFormatFile("tmp/XMLCode.xml",True)
	EndMethod
	Method InternBlock(Node:TxmlNode)
		Local Root:TxmlNode=CurrentRoot
		Local CurLine:TxmlNode=CurrentLineNode
		CurrentRoot=Node
		
		Block()
		
		CurrentLineNode=CurLine
		CurrentRoot=Root
	EndMethod
	Method Block()
		LocalVarIdentifier=LocalVarIdentifier[..LocalVarIdentifier.length+1]
		LocalVarIdentifier[LocalVarIdentifier.length-1]=New TList
		While CurrentLink<>Token.LastLink() And Not IsToken("endif") And Not IsToken("elseif")  And Not IsToken("else")  And Not IsToken("next")  And Not IsToken("wend")  And Not IsToken("until") And Not IsToken("endfunction") And Not IsToken("case") And Not IsToken("default") And Not IsToken("endselect")
			If IsToken("~n")
				GetNext()
				Continue
			EndIf
			CurrentLineNode=CurrentRoot.AddChild("line")
			CurrentLineNode.AddAttribute("number",CurrentLine)
			AddChild(CurrentLineNode,Expression().GetNode())
			If CurrentLink<>Token.LastLink() Then match("~n")
			While IsToken("~n") And CurrentLink<>Token.LastLink()
				GetNext()
			Wend
		Wend
		LocalVarIdentifier=LocalVarIdentifier[..LocalVarIdentifier.length-1]
	EndMethod
	Method Expression:TRecursive() 
		Local Rec:TRecursive=LowerGreater()
		Local Node:TxmlNode
		Local nodeleft:TxmlNode
		Local Type1:TDatatype=TDatatype.VoidDatatype, Type2:TDatatype=TDatatype.VoidDatatype
		Type1=Rec.GetDatatype()
		nodeLeft=Rec.GetNode()
		Local ReturnNode:TxmlNode
		While GetCurrent()="and" Or GetCurrent()="or"
			If ReturnNode
				nodeleft=ReturnNode
			EndIf
			Local Mode:Byte
			If GetCurrent()="and" Then mode=1
			GetNext()
			Local Rec:TRecursive=LowerGreater()
			Local noderight:TxmlNode=Rec.GetNode()
			Type2=Rec.GetDatatype()
			If mode
				node=Node.AddChild("and")
			Else
				node=Node.AddChild("or")
			EndIf
			Local lleft:TxmlNode=TxmlNode.NewNode("left")
			Local rright:TxmlNode=TxmlNode.NewNode("right")
			Local castnode:TxmlNode
			castnode=Type1.CastNode(Type2)
			AddChild(lleft,castnode)
			AddChild(castnode,nodeleft)
			AddChild(rright, NodeRight)
			
			
			AddChild(node, lleft)
			AddChild(node,rright)
			ReturnNode=Node
		Wend
		If node=Null
			node=nodeleft
		EndIf
		Return New TRecursive.Create(node, Type1)
	EndMethod
	
	Method LowerGreater:TRecursive() 
		Local Rec:TRecursive=AddSub()
		Local Node:TxmlNode
		Local nodeleft:TxmlNode
		Local Type1:TDatatype=TDatatype.VoidDatatype, Type2:TDatatype=TDatatype.VoidDatatype
		Type1=Rec.GetDatatype()
		nodeLeft=Rec.GetNode()
		Local ReturnNode:TxmlNode
		While GetCurrent()="<" Or GetCurrent()=">" Or GetCurrent()="==" Or GetCurrent()="<>" Or GetCurrent()="<=" Or GetCurrent()=">="
			If ReturnNode
				nodeleft=ReturnNode
			EndIf
			Local Mode:Byte
			If GetCurrent()="<" Then mode=0
			If GetCurrent()=">" Then mode=1
			If GetCurrent()="<=" Then mode=2
			If GetCurrent()=">=" Then mode=3
			If GetCurrent()="==" Then mode=4
			If GetCurrent()="<>" Then mode=5
			GetNext()
			Local Rec:TRecursive=AddSub()
			Local noderight:TxmlNode=Rec.GetNode()
			Type2=Rec.GetDatatype()

			Select Mode
				Case 0
					node=TxmlNode.newNode("less")
				Case 1
					node=TxmlNode.newNode("greater")
				Case 2
					node=TxmlNode.newNode("lessequal")
				Case 3
					node=TxmlNode.newNode("greaterequal")
				Case 4
					node=TxmlNode.newNode("equal")
				Case 5
					node=TxmlNode.newNode("notequal")
			EndSelect
			Local lleft:TxmlNode=TxmlNode.NewNode("left")
			Local rright:TxmlNode=TxmlNode.NewNode("right")
			Local castnode:TxmlNode
			castnode=Type1.Cast(Type2)
			AddChild(lleft,castnode)
			AddChild(castnode,nodeleft)
			AddChild(rright, NodeRight)
			
			
			AddChild(node, lleft)
			AddChild(node,rright)
			ReturnNode=Node
		Wend
		If node=Null
			node=nodeleft
		EndIf
		Return New TRecursive.Create(node, Type1)
	EndMethod
	Method AddSub:TRecursive() 
		'DebugStop
		Local Rec:TRecursive=MulDiv()
		Local Node:TxmlNode
		Local nodeleft:TxmlNode
		Local Type1:TDatatype=TDatatype.VoidDatatype, Type2:TDatatype=TDatatype.VoidDatatype
		Type1=Rec.GetDatatype()
		nodeLeft=Rec.GetNode()
		Local ReturnNode:TxmlNode
		While GetCurrent()="+" Or GetCurrent()="-"
			If ReturnNode
				nodeleft=ReturnNode
			EndIf
			Local Mode:Byte
			If GetCurrent()="+" Then mode=1
			GetNext()
			Local Rec:TRecursive=MulDiv()
			Local noderight:TxmlNode=Rec.GetNode()
			Type2=Rec.GetDatatype()
			If mode
				node=TxmlNode.newNode("add")
			Else
				node=TxmlNode.newNode("sub")
			EndIf
			Local lleft:TxmlNode=TxmlNode.NewNode("left")
			Local rright:TxmlNode=TxmlNode.NewNode("right")
			Local castnode:TxmlNode
			castnode=Type1.Cast(Type2)
			AddChild(lleft,castnode)
			AddChild(castnode,nodeleft)
			AddChild(rright, NodeRight)
			If Type1.Name="string" Or Type2.Name="string" Then node.setName("stringadd")
			
			AddChild(node, lleft)
			AddChild(node,rright)
			ReturnNode=Node
		Wend
		If returnnode=Null
			returnnode=nodeleft
		EndIf
		Return New TRecursive.Create(returnnode, Type1)
	EndMethod
	Method MulDiv:TRecursive() 
		Local Rec:TRecursive=Factor()
		Local Node:TxmlNode
		Local nodeleft:TxmlNode
		Local Type1:TDatatype=TDatatype.VoidDatatype, Type2:TDatatype=TDatatype.VoidDatatype
		Type1=Rec.GetDatatype()
		nodeLeft=Rec.GetNode()
		Local ReturnNode:TxmlNode
		While GetCurrent()="*" Or GetCurrent()="/"
			If ReturnNode
				nodeleft=ReturnNode
			EndIf
			Local Mode:Byte
			If GetCurrent()="*" Then mode=1
			GetNext()
			Local Rec:TRecursive=Factor()
			Local noderight:TxmlNode=Rec.GetNode()
			Type2=Rec.GetDatatype()
			If mode
				node=TxmlNode.newNode("mul")
			Else
				node=TxmlNode.newNode("div")
			EndIf
			Local lleft:TxmlNode=TxmlNode.NewNode("left")
			Local rright:TxmlNode=TxmlNode.NewNode("right")
			Local castnode:TxmlNode
			castnode=Type1.Cast(Type2)
			AddChild(lleft,castnode)
			AddChild(castnode,nodeleft)
			AddChild(rright, NodeRight)
			
			AddChild(node, lleft)
			AddChild(node,rright)
			ReturnNode=Node
		Wend
		If node=Null
			node=nodeleft
		EndIf
		Return New TRecursive.Create(node, Type1)
	EndMethod
	Method Factor:TRecursive() 
		Select True
			Case GetCurrent()="("
				GetNext()
				Local Rec:TRecursive=Expression()
				'If Rec=Null Then End
				match(")")
				Return Rec
			Case GetCurrent()="true"
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",1)
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case GetCurrent()="false"
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",0)
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case GetCurrent()="not"
				Local Node:TxmlNode=TxmlNode.newNode("not")
				GetNext()
				Local Rec:TRecursive=Expression()
				AddChild(Node,Rec.node)
				Return New TRecursive.Create(node,Rec.Datatype)
			Case GetCurrent()="-"
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("mul")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("left")
				Local Node3:TxmlNode=TxmlNode.NewNode("int")
				Node3.AddAttribute("value","-1")
				AddChild(Node2,AddChild(Rec.Datatype.Cast(TDatatype.IntDatatype),Node3))
				AddChild(Node.AddChild("right"),Rec.Node)
				Return New TRecursive.Create(Node,Rec.Datatype)
			Case GetCurrent()="null"
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("null")
				Return New TRecursive.Create(Node,TDatatype.VoidDatatype)
			Case IsInt(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("int")
				Node.AddAttribute("value",Int(GetCurrent()))
				GetNext()
				Return New TRecursive.Create(node,TDatatype.IntDatatype)
			Case IsFloat(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("float")
				Node.AddAttribute("value",Float(GetCurrent()))
				GetNext()
				Return New TRecursive.Create(node,TDatatype.FloatDatatype)
			Case IsString(GetCurrent())
				Local Node:TxmlNode=TxmlNode.newNode("string")
				Node.AddAttribute("value",String(GetCurrent())[1..getCurrent().length-1])
				GetNext()
				Return New TRecursive.Create(node,TDatatype.StringDatatype)
			Default
				Local Rec:TRecursive
				Rec=Keyword()
				If Rec Then Return Rec
				Rec=Funk()
				If Rec Then Return Rec
				Rec=Variable()
				If Rec Then Return Rec
				error("Unknown Token")
		EndSelect
	EndMethod
	Method Funk:TRecursive()
		If ValidDatatype(GetCurrent())
			Local Datatype:TDatatype=TDatatype.Create(GetCurrent())
			GetNext()
			Local IsArray:Int
			While GetCurrent()="["
				Match("[")
				Match("]")
				IsArray:+1
			Wend
			datatype.isarray=isarray
			match("(")
			Local Rec:TRecursive=Expression()
			Match(")")
			If Datatype<>Rec.Datatype
				Local Node:TxmlNode=Rec.Datatype.Cast(Datatype)
				Return New TRecursive.Create(Node,Datatype)
			Else
				Return New TRecursive.Create(Rec.Node,Datatype)
			EndIf
		Else
			Local FuncCount:Int=0 'Wieviele Funktionen mit diesem Namen gibt es
			Local Break:Byte=True
			For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
				If Func.Realname=GetCurrent()
					FuncCount:+1
					Break=False
				EndIf
			Next
			If Break Then Return Null
			'DebugStop
			Local Recs:TList=New TList
			Local FunkName:String=GetCurrent()
			Local Datatypes:String
			GetNext()
			Local Start:Byte=True
			If GetCurrent()="(" Then GetNext()
			If GetCurrent()<>")" And GetCurrent()<>"~n"
				While GetCurrent()="," Or Start
					If Start=False Then GetNext()
					Start=False
					
					Local Rec:TRecursive=Expression()
					Recs.AddLast(Rec)
					
					Datatypes:+"_"+Rec.Datatype.tostring()+"_dim"+Rec.datatype.IsArray
				Wend
			EndIf
			If GetCurrent()=")" Then GetNext()
			For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
				If Func.Name=(FunkName+Datatypes)
					'Schauen ob Optionale Parameter vorkommen, wenn ja, dann darf es keine überladene Funktion sein
					Break=False
					
					If Func.ParamList.Count()<>Recs.Count()
						For Local Par:TParameter=EachIn Func.ParamList
							If Par.Pre<>""
								Break=True
							EndIf
						Next
					EndIf
					If Break Then Exit
					Func.Used=True
					Local Node:TxmlNode=TxmlNode.newNode("call")
					Node.AddAttribute("name",Func.Name)
					Local Link:TLink=Func.ParamList.FirstLink()
					For Local Rec:TRecursive=EachIn Recs
						Local ParamNode:TxmlNode=Node.AddChild("param")
						
						AddChild(ParamNode,Rec.Node)
						Link=Link.NextLink()
					Next
					'Print Func.IsArray
					'Print Func.Name
					Return New TRecursive.Create(Node, Func.Datatype)
				EndIf
			Next
			If FuncCount=1
				For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
					If Func.RealName=FunkName
						'If Func.UserFunc Then DebugStop
						Func.Used=True
						Local Node:TxmlNode=TxmlNode.newNode("call")
						Node.AddAttribute("name",Func.Name)
						Local Link:TLink=Recs.FirstLink()
						Local MustBeOptional:Byte=False
						For Local Par:TParameter=EachIn Func.ParamList
							If Link=Null And Par.Pre=""	
								'DebugStop
								Error("Parameter count mismatch at Function: '"+Func.RealName+"' expedted: '"+Func.ParamList.Count()+"' given: '"+Recs.Count()+"'")
							EndIf
							
							Local Rec:TRecursive
							If Link Then Rec=TRecursive(Link.Value())
							If Par.Pre<>""' And (GetCurrent()=")" Or GetCurrent()="," Or GetCurrent()=";")
								If Par.datatype.IsArray Then error("Cannot predefine an array parameter")
								'DebugStop 
								MustBeOptional=False
								Local Compiler:Tcompiler=New TCompiler
								Compiler.Tokenizer(Func.Datatype.tostring()+"("+Par.Pre+")")
								Compiler.Parser()
								'End
								Local PreNode:TxmlNode
								For Local Node:TxmlNode=EachIn Compiler.XMLFile.GetRootElement().GetChildren()
									If Node.GetName()="code"
										For Local Node2:TxmlNode=EachIn Node.GetChildren()
											If Node2.GetName()="line"
												PreNode=TxmlNode(Node2.getFirstChild())
											EndIf
										Next
										Exit
									EndIf
								Next
								'If Par.IsArray Then end
								AddChild(Node.AddChild("param"),PreNode)
							Else
								If MustBeOptional Then Error("Expecting ','")
								Local Node2:TxmlNode
								If Rec.Datatype<>Par.Datatype
									If Par.datatype.IsArray Then Error("Cannot cast an array implicit")
									Node2=rec.datatype.cast(par.datatype)
									AddChild(Node2,Rec.Node)
								Else
									Node2=Rec.Node
								EndIf
								Local ParamNode:TxmlNode=Node.AddChild("param")
								AddChild(ParamNode,Node2)
								Link=Link.NextLink()
							EndIf
						Next
						
						Return New TRecursive.Create(Node, Func.Datatype)

					EndIf
				Next
			Else
				Error("Cannot find explicit function, with this Signature: "+FunkName+Datatypes)
			EndIf
			Rem
			For Local Func:TIdentifierFunction=EachIn FunctionIdentifier
				If Func.name=GetCurrent()
					
					Func.use()
					'If Func.UserFunc Then DebugStop
					If getnext()="(" Then getnext()
					Local Node:TxmlNode=TxmlNode.newNode("call")
					Node.AddAttribute("name",Func.Name)
					Local MustBeOptional:Byte=False
					For Local Par:TParameter=EachIn Func.ParamList
						'DebugStop
						If Par.Node=Null And Par.Pre<>"" And (GetCurrent()=")" Or GetCurrent()="," Or GetCurrent()=";") 
							'DebugStop 
							MustBeOptional=False
							Local Compiler:Tcompiler=New TCompiler
							Compiler.Tokenizer(Func.Datatype+"("+Par.Pre+")")
							Compiler.Parser()
							'End
							Local PreNode:TxmlNode
							For Local Node:TxmlNode=EachIn Compiler.XMLFile.GetRootElement().GetChildren()
								If Node.GetName()="code"
									For Local Node2:TxmlNode=EachIn Node.GetChildren()
										If Node2.GetName()="line"
											PreNode=TxmlNode(Node2.getFirstChild())
										EndIf
									Next
									Exit
								EndIf
							Next
							AddChild(Node.AddChild("param"),PreNode)
						Else
							If MustBeOptional Then Error("Expecting ','")
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode
							If Rec.Datatype<>Par.Datatype
								Node2=TxmlNode.NewNode("cast")
								Node2.AddAttribute("from",Rec.Datatype)
								Node2.AddAttribute("to",Par.Datatype)
								AddChild(Node2,Rec.Node)
							Else
								Node2=Rec.Node
							EndIf
							AddChild(Node.AddChild("param"),Node2)
						EndIf
						If Par<>Func.ParamList.Last()
							If IsToken(",")
								Match(",")
							Else
								MustBeOptional=True
							EndIf
						EndIf
					Next
					If CurrentToken=")" Then GetNext()
					Return New TRecursive.Create(Node, Func.Datatype)
				EndIf
			Next
			EndRem
		EndIf
	EndMethod
	
	Method Keyword:TRecursive()
		Select GetCurrent()
			Case "if"
				Local Mode:Int=CurrentMode
				CurrentMode=3
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("if")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				If Rec.IsArray Then Error("Cannot take an array as condition")
				If Rec.Datatype<>"int"
					Local N:TxmlNode=AddChild(Node2,TDatatype.IntDatatype)
					AddChild(Node2,N)
				Else
					AddChild(Node2, Rec.Node)
				EndIf
				InternBlock(Node)
				If IsToken("elseif")
					Local NodeLine:TxmlNode=TxmlNode.newnode("line")
					NodeLine.AddAttribute("number",CurrentLine)
					Local NodeElse:TxmlNode=NodeLine.AddChild("else")
					While IsToken("elseif")
						match("elseif")
						Local NodeLine2:TxmlNode=NodeElse.AddChild("line")
						NodeLine2.AddAttribute("number",CurrentLine)
						Local NodeIf:TxmlNode=NodeLine2.AddChild("if")
						Local Rec:TRecursive=Expression()
						Local Node2:TxmlNode=NodeIf.AddChild("condition")
						If Rec.IsArray Then Error("Cannot take an array as condition")
						If Rec.Datatype<>"int"
							Local N:TxmlNode=Node2.AddChild("cast")
							N.AddAttribute("from", Rec.Datatype)
							N.AddAttribute("to", Rec.Datatype)
							AddChild(N,Rec.Node)
							AddChild(Node2,N)
						Else
							AddChild(Node2, Rec.Node)
						EndIf
						InternBlock(NodeIf)
						If IsToken("elseif")=False And IsToken("else")
							match("else")
							Local NodeLine:TxmlNode=NodeIf.AddChild("line")
							NodeLine.AddAttribute("number",CurrentLine)
							Local NodeElse:TxmlNode=NodeLine.AddChild("else")
							InternBlock(NodeElse)
						EndIf
					Wend
					AddChild(Node,NodeLine)
				ElseIf IsToken("else")
					GetNext()
					Local ElseNode:TxmlNode=Node.AddChild("else")
					InternBlock(ElseNode)
				EndIf
				
				Match("endif")
				CurrentMode=3
				Return New TRecursive.Create(Node,"void")
			Case "while"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("while")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				If Rec.IsArray Then Error("Cannot take an array as condition")
				If Rec.Datatype<>"int"
					Local N:TxmlNode=Node2.AddChild("cast")
					N.AddAttribute("from", Rec.Datatype)
					N.AddAttribute("to", Rec.Datatype)
					AddChild(N,Rec.Node)
					AddChild(Node2,N)
				Else
					AddChild(Node2, Rec.Node)
				EndIf
				InternBlock(Node)
				match("wend")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,"void")
			Case "repeat"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.NewNode("repeat")
				InternBlock(Node)
				match("until")
				Local Rec:TRecursive=Expression()
				Local Node2:TxmlNode=Node.AddChild("condition")
				If Rec.IsArray Then Error("Cannot take an array as condition")
				If Rec.Datatype<>"int"
					Local N:TxmlNode=Node2.AddChild("cast")
					N.AddAttribute("from", Rec.Datatype)
					N.AddAttribute("to", Rec.Datatype)
					AddChild(N,Rec.Node)
					AddChild(Node2,N)
				Else
					AddChild(Node2, Rec.Node)
				EndIf
				CurrentMode=Mode
				Return New TRecursive.Create(Node,"void")
			Case "for"
				Local Mode:Int=CurrentMode
				CurrentMode=2
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("for")
				Local Rec:Trecursive=Variable(False)
				Local variable:TIdentifierVariable=TIdentifierVariable(Rec.Info)
				
				Rem
				'------------------------------------------------------------------TODO:
					Hier auch Types einbauen
				'-----------------------------------------------------------------------
				EndRem
				
				Local TmpNode:TxmlNode=Node.AddChild("forvar")
				AddChild(TmpNode.AddChild("declaration"),Rec.Node)
				AddChild(TmpNode.AddChild("var"),Variable.ToNode(Null))
				
				Match("=")
				Tmpnode=Node.AddChild("start")
				Rec=Expression()
				If Rec.GetDatatype()<>"int"
					Local Node2:TxmlNode=Tmpnode.AddChild("cast")
					node2.AddAttribute("from",Rec.GetDatatype())
					Node2.AddAttribute("to","int")
					AddChild(Node2,Rec.node)
				Else
					AddChild(Tmpnode,Rec.Node)
				EndIf
				'DebugStop
				
				match("to")
				TmpNode=Node.AddChild("to")
				Rec=Expression()
				If Rec.GetDatatype()<>"int"
					Local Node2:TxmlNode=Tmpnode.AddChild("cast")
					node2.AddAttribute("from",Rec.GetDatatype())
					Node2.AddAttribute("to","int")
					AddChild(Node2,Rec.node)
				Else
					AddChild(Tmpnode,Rec.Node)
				EndIf
				
				If IsToken("step")
					match("step")
					TmpNode=Node.AddChild("step")
					Rec=Expression()
					If Rec.GetDatatype()<>"int"
						Local Node2:TxmlNode=Tmpnode.AddChild("cast")
						node2.AddAttribute("from",Rec.GetDatatype())
						Node2.AddAttribute("to","int")
						AddChild(Node2,Rec.node)
					Else
						AddChild(Tmpnode,Rec.Node)
					EndIf
				Else
					TmpNode=Node.AddChild("step")
					TmpNode.AddChild("int").AddAttribute("value","1")
				EndIf
				
				InternBlock(Node)
				match("next")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,"void")
			Case "break"
				If CurrentMode<>2 Then Error("Must be in a loop")
				GetNext()
				Return New Trecursive.Create(TxmlNode.newnode("break"),"void")
			Case "continue"
				If CurrentMode<>2 Then Error("Must be in a loop")
				GetNext()
				Return New Trecursive.Create(TxmlNode.newnode("continue"),"void")
			Case "function"
				
				Local FuncNode:TxmlNode=TxmlNode.NewNode("function")
				Local FunkName:String=GetNext()
				GetNext()
				match(":")
				Local Datatype:String=GetCurrent()
				GetNext()
				Local isArray:Int
				While GetCurrent()="["
					match("[")
					Match("]")
					IsArray:+1
				Wend
				FunctionDatatype=Datatype
				FunctionIsArray=IsArray
				Match("(")
				
				Local Tmp:TList[]=LocalvarIdentifier
				LocalVarIdentifier=New TList[1]
				LocalvarIdentifier[0]=New TList
				Local Datatypes:String
				
				While GetCurrent()<>")"
					If IsValidVarName(GetCurrent())=False Then Error("Invalid variable name")
					Local Name:String=GetCurrent()
					GetNext()
					Match(":")
					Local Datatype:String=GetCurrent()
					Datatypes:+"_"+Datatype
					GetNext()
					
					Local Child:TxmlNode=FuncNode.AddChild("param")
					Child.AddAttribute("name",Name)
					Child.AddAttribute("type",Datatype)
					Local IsArray:Int=0
					
					While GetCurrent()="["
						Match("[")
						Match("]")
						IsArray:+1
					Wend
					Datatypes:+"_dim"+IsArray
					RegisterVariable(Name, Datatype,IsArray)
					If IsArray Child.AddAttribute("dim",IsArray)
					'DebugStop
					If GetCurrent()="="
						match("=")
						expression()
					EndIf
					'DebugStop
					If GetCurrent()=")"
					Else
						match(",")
					EndIf
				Wend
				Match(")")
				FuncNode.AddAttribute("name",FunkName+Datatypes)
				FuncNode.AddAttribute("type",Datatype)
				FuncNode.AddAttribute("userfunc","1")
				FuncNode.AddAttribute("dim",IsArray)
				Local CodeNode:TxmlNode=FuncNode.AddChild("code")
				InternBlock(CodeNode)
				LocalVarIdentifier=Tmp
				Match("endfunction")
				LastFunc.AddNextSibling(FuncNode)
				FunctionDatatype=""
				FunctionIsArray=0
				Return New TRecursive.Create(Null,"void")
			Case "return"
				If FunctionDatatype="" Then error("Return must be in a function")
				match("return")
				Local Node:TxmlNode=TxmlNode.NewNode("return")
				Local Rec:Trecursive=Expression()
				If Rec.IsArray<>FunctionIsArray Then error("return differs by dimension count")
				If Rec.Datatype<>FunctionDatatype
					Local CastNode:TxmlNode=Node.AddChild("cast")
					CastNode.AddAttribute("from",Rec.Datatype)
					CastNode.AddAttribute("to",FunctionDatatype)
					AddChild(CastNode,Rec.Node)
				Else
					AddChild(Node, Rec.node)
				EndIf
				Return New TRecursive.Create(Node,"void")
			Case "select"
				Local Mode:Int=CurrentMode
				CurrentMode=3
				GetNext()
				Local Node:TxmlNode=TxmlNode.newNode("select")
				
				Local Node2:TxmlNode=Node.AddChild("condition")
				Local Rec:TRecursive=Expression()
				If Rec.IsArray Then Error("Cannot take an array as condition")
				If Rec.Datatype<>"int"
					Local N:TxmlNode=Node2.AddChild("cast")
					N.AddAttribute("from", Rec.Datatype)
					N.AddAttribute("to", Rec.Datatype)
					AddChild(N,Rec.Node)
					AddChild(Node2,N)
				Else
					AddChild(Node2, Rec.Node)
				EndIf
				GetNext()
				While GetCurrent()="case"
					GetNext()
					Local Do:Byte=False
					Local Cases:TxmlNode[1]
					Repeat
						Do=False
						Local NodeLine:TxmlNode=Node.AddChild("line")
						NodeLine.AddAttribute("number",currentline)
						
						Local NodeCase:TxmlNode=NodeLine.AddChild("case")
						Local Node2:TxmlNode=NodeCase.AddChild("condition")
						Local Rec:TRecursive=Expression()
						If Rec.IsArray Then Error("Cannot take an array as condition")
						If Rec.Datatype<>"int"
							Local N:TxmlNode=Node2.AddChild("cast")
							N.AddAttribute("from", Rec.Datatype)
							N.AddAttribute("to", Rec.Datatype)
							AddChild(N,Rec.Node)
							AddChild(Node2,N)
						Else
							AddChild(Node2, Rec.Node)
						EndIf
						If GetCurrent()="," Then Do=True;match(",")
						Cases=Cases[..Cases.length+1]
						Cases[Cases.length-1]=Nodecase
					Until Not Do
					Local TmpNode:TxmlNode=TxmlNode.newnode("tmp")
					InternBlock(TmpNode)
					If Tmpnode.GetChildren()
						For Local tmp:TxmlNode=EachIn TmpNode.GetChildren()
							If Tmp.GetName()="line"
								For Local Tmp2:TxmlNode=EachIn Cases
									AddChild(Tmp2,Tmp)
								Next
							EndIf
						Next
					EndIf
					'DebugStop
					'NodeCase.AddChild("casebreak")
				Wend
				If GetCurrent()="default"
					GetNext()
					Local NodeLine:TxmlNode=node.addchild("line")
					NodeLine.AddAttribute("number",Currentline)
					Local NodeDefault:TxmlNode=NodeLine.AddChild("default")
					InternBlock(NodeDefault)
				EndIf
				match("endselect")
				CurrentMode=Mode
				Return New TRecursive.Create(Node,"void")
			Case "dim"
				'DebugStop
				Getnext()
				Local Variable:TIdentifierVariable=TIdentifierVariable(Variable(False).Info)
				
				'If Positions Then End
				Local Node:TxmlNode=TxmlNode.NewNode("dimarray")
				Local RetNode:TxmlNode=Variable.ToNode(ParseArray(True))
				If RetNode=Null Then Error("Error in array (maybe false dimension count?)")
				AddChild(Node,Retnode)
				Rem
				Local SizeNode:TxmlNode=Node.AddChild("size")
				If Rec.Datatype="int"
					AddChild(SizeNode, Rec.node)
				Else
					Local Cast:TxmlNode=SizeNode.AddChild("cast")
					Cast.AddAttribute("from",Rec.Datatype)
					Cast.AddAttribute("to","int")
					AddChild(Cast, Rec.Node)
				EndIf
				EndRem
				Return New TRecursive.Create(Node,"void")
		EndSelect
	EndMethod
	
	Method Variable:TRecursive(DoSet:Byte=True)
		Select GetCurrent()
			Case "local"
				Local node:TxmlNode=TxmlNode.newNode("local")
				Local LastVar:TIdentifierVariable
				Repeat
					Local Name:String=GetNext()
					If IsValidVarName(Name)
						For Local Variable:TIdentifierVariable=EachIn GetVariablelist()
							
						Next
						GetNext()
						Match(":")
						If ValidDatatype(GetCurrent())=False Then Error("Unknown Datatype")
						Local Datatype:String=GetCurrent()
						getnext()
						Local DimCount:Int
						While GetCurrent()="["
							GetNext()
							Match("]")
							DimCount:+1
						Wend
						AddChild(Node,RegisterVariable(Name, Datatype,DimCount))
						
						If IsToken("=") And DoSet And DimCount=0
							GetNext()
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode=TxmlNode.newNode("set")
							AddChild(Node2.AddChild("name"),getVariable(Name).ToNode(Null))
							Local NodeValue:TxmlNode=Node2.AddCHild("value")
							If DimCount<>Rec.IsArray And Rec.IsArray<>-1 Then Error("Array dimensions are not the same")
							If Rec.Datatype<>Datatype
								Local node3:TxmlNode=NodeValue.AddChild("cast")
								node3.addAttribute("from",Rec.Datatype)
								node3.AddAttribute("to",Datatype)
								AddChild(Node3, Rec.Node)
							Else
								AddChild(NodeValue, Rec.Node)
							EndIf
							Local LineNode:TxmlNode=TxmlNode.newnode("line")
							LineNode.AddAttribute("number",currentline)
							AddChild(LineNode,Node2)
							CurrentLineNode.AddSibling(LineNode)
							'node.addsibling(node2)
						EndIf
						Lastvar=getVariable(Name)
					Else
						error("Invalid Variable name")
					EndIf
					If GetCurrent()=","
						Continue
					Else
						Exit
					EndIf
				Forever
				Return New TRecursive.Create(node,"void",LastVar)
			Case "global"
				Local node:TxmlNode=TxmlNode.newNode("local") 'eh wurscht da es nicht drangehängt wird
				Local LastVar:TIdentifierVariable
				Repeat
					Local Name:String=GetNext()
					If IsValidVarName(Name)
						GetNext()
						Match(":")
						If ValidDatatype(GetCurrent())=False Then Error("Unknown Datatype")
						Local Datatype:String=GetCurrent()
						'AddChild(Node,RegisterVariable(Name, GetCurrent(),0))
						getnext()
						Local DimCount:Int
						While GetCurrent()="["
							GetNext()
							Match("]")
							DimCount:+1
						Wend
						If IsToken("=") And DoSet
							GetNext()
							Local Rec:TRecursive=Expression()
							Local Node2:TxmlNode=TxmlNode.newNode("set")
							AddChild(Node2.AddChild("name"),GetVariable(Name).ToNode(Null))
							Local NodeValue:TxmlNode=Node2.AddCHild("value")
							If Rec.IsArray<>DimCount Error("Array dimensions are not the same")
							If Rec.Datatype<>Datatype
								Local node3:TxmlNode=NodeValue.AddChild("cast")
								node3.addAttribute("from",Rec.Datatype)
								node3.AddAttribute("to",Datatype)
								AddChild(Node3, Rec.Node)
							Else
								AddChild(NodeValue, Rec.Node)
							EndIf
							node.addsibling(node2)
						EndIf
						Lastvar=GetVariable(Name)
					Else
						error("Invalid Variable name")
					EndIf
					If GetCurrent()=","
						Continue
					Else
						Exit
					EndIf
				Forever
				Return New TRecursive.Create(Null,"void",LastVar)
		EndSelect
		
		
		For Local  Variable:TIdentifierVariable=EachIn GetVariableList()
			For Local  Variable2:TIdentifierVariable=EachIn GetVariableList()
				'If Variable2.Name=Variable.Name And Variable<>Variable2 Then Error("Variable already defined: "+Variable.Name)
			Next
			For Local Funk:TIdentifierFunction=EachIn FunctionIdentifier
				If FUnk.name=Variable.Name
					Error("Function has got the same name: "+Variable.Name)
				EndIf
			Next
			If GetCurrent().Trim().ToLower()=variable.Name.Trim().ToLower()
				Local Node:TxmlNode
				Local ArrayRec:TRecursive
				GetNext()
				Local Positions:TList
				While GetCurrent()="[" And DoSet
					Positions=ParseArray()
				Wend
				If GetCurrent()="=" And DoSet
					GetNext()
					Local Rec:TRecursive=Expression()
					Node=TxmlNode.newNode("set")
					AddChild(Node.AddChild("name"),Variable.ToNode(Positions))
					Local Value:TxmlNode=Node.AddChild("value")
					If Positions=Null And Rec.IsArray<>Variable.IsArray Error("Array dimensions are not the same")
					If Rec.Datatype<>Variable.Datatype And Rec.Datatype<>"void"
						Local node2:TxmlNode=Value.AddChild("cast")
						node2.addAttribute("from",Rec.Datatype)
						node2.AddAttribute("to",Variable.Datatype)
						AddChild(Node2, Rec.Node)
					Else
						AddChild(Value, Rec.Node)
					EndIf
					
				Else
					Node=Variable.ToNode(Positions)
				EndIf
				Return New TRecursive.Create(Node, Variable.Datatype,Variable,Variable.IsArray)
			EndIf
		Next
	EndMethod
	
	Method ParseArray:TList(GetSize:Int=False)
		Local Positions:TList=CreateList()
		If GetSize Then Positions.AddLast("1")
		Repeat
			match("[")
			Local Rec:TRecursive=Expression()
			If Rec.IsArray Then Error("Cannot take an array as dimension")
			If Rec.Datatype<>"int"
				Local Tmp:TxmlNode=TxmlNode.newnode("cast")
				Tmp.AddAttribute("from",Rec.Datatype)
				Tmp.AddAttribute("to","int")
				AddChild(Tmp, Rec.Node)
				Rec.Node=Tmp
			EndIf
			Positions.AddLast(Rec.Node)
			match("]")
		Until Not IsToken("[")
		Return Positions
	EndMethod
	
	Method RegisterVariable:TxmlNode(Name:String, Datatype:String, DimCOunt:Int)
		'Print "Register Variable: "+Name
		Local Variable:TIdentifier=New TIdentifierVariable.Create(Name,Datatype)
		TIdentifierVariable(Variable).IsArray=DimCount
		LocalvarIdentifier[LocalvarIdentifier.length-1].AddLast(Variable)
		If DimCount=0
			Local Node:TxmlNode=TxmlNode.NewNode("defvar")
			Node.AddAttribute("name",Name)
			Node.AddAttribute("type",Datatype)	
			Return Node
		Else
			Local Node:TxmlNode=TxmlNode.NewNode("defarray")
			Node.AddAttribute("name",Name)
			Node.AddAttribute("type",Datatype)	
			Node.AddAttribute("dim",DimCount)
			Return Node
		EndIf
	EndMethod
	
	Method GetVariable:TIdentifierVariable(Name:String)
		For Local List:TList=EachIn LocalVarIdentifier
			For Local Vari:TIdentifierVariable=EachIn List
				If Vari.Name=Name Then Return Vari
			Next
		Next
		For Local Vari:TIdentifierVariable=EachIn GlobalVarIdentifier
			If Vari.Name=name Then Return Vari
		Next
	EndMethod
	Method GetVariablelist:TList()
		Local List:TList=GlobalVarIdentifier.Copy()
		For Local LList:TList=EachIn LocalVarIdentifier
			For Local Vari:TidentifierVariable=EachIn LList
				List.AddLast(Vari)
			Next
		Next
		Return List
	EndMethod
	Method IsToken:Byte(Name:String)
		Return Name=GetCurrent()
	EndMethod
	Method ValidDatatype:Byte(typ:String)
		If typ="int" Or typ="string" Or typ="float" Then Return True
		Return False
	EndMethod
	Method Match:String(Tok:String)
		If CurrentToken=Tok
			Return GetNext()
		Else
			Error("Unexpected Token, expecting: "+Tok.Replace("~n","NEWLINE"))
		EndIf
	EndMethod
	Method GetNext:String()
		CurrentLink=CurrentLink.NextLink()
		If CurrentLink=Null
			Error("Unexpected End of File")
		Else
			CurrentToken=String(CurrentLink.Value())
			If CurrentToken="~n"
				CurrentLine:+1
			EndIf
		EndIf
		Return CurrentToken
	EndMethod
	Method GetCurrent:String()
		Return CurrentToken
	EndMethod
	
	Method Error(Text:String)
		'DebugStop
		
		Local Err:String="--- Error: "+Text+" in line '"+CurrentLine+"', at Token '"+CurrentToken.Replace("~n","NEWLINE")+"' ---"
		SaveString(Err,"tmp/error.txt")
		WriteStdout Err
		End
	EndMethod
	Method Warning(Text:String)
		'DebugStop
		
		Local Err:String="--- Warning: "+Text+" in line '"+CurrentLine+"', at Token '"+CurrentToken.Replace("~n","NEWLINE")+"' ---"
		SaveString(Err,"tmp/error.txt")
		WriteStdout Err
		End
	EndMethod
EndType

Type TRecursive
	Field Datatype:TDatatype
	Field Node:TxmlNode
	Field Info:Object
	'Field IsArray:Int
	Method Create:TRecursive(Node:TxmlNode, Typ:TDatatype, Info:Object=Null)
		Self.Datatype=Typ
		Self.Info=Info
		Self.Node=Node
		
		Return Self
	EndMethod
	Method GetDatatype:TDatatype()
		Return Datatype
	EndMethod
	Method GetNode:TxmlNode()
		Return Node
	EndMethod
EndType


Type TDatatype
	Global IntDatatype:TDatatype
	Global FloatDatatype:TDatatype
	Global StringDatatype:TDatatype
	Global ByteDatatype:TDatatype
	Global LongDatatype:TDatatype
	Global DoubleDatatype:TDatatype
	Global ShortDatatype:TDatatype
	Global VoidDatatype:TDatatype
	Global NullDatatype:TDatatype
	
	Field Name:String
	Field IsArray:Int
	Field CanCastTo:TList=New TList
	
	Function Init()
		IntDatatype=New TDatatype
		IntDatatype.Name="int"
		
		FloatDatatype=New TDatatype
		FloatDatatype.Name="float"
		
		StringDatatype=New TDatatype
		StringDatatype.Name="string"
		
		ByteDatatype=New TDatatype
		ByteDatatype.Name="byte"
		
		LongDatatype=New TDatatype
		LongDatatype.Name="long"
		
		DoubleDatatype=New TDatatype
		DoubleDatatype.Name="double"
		
		ShortDatatype=New TDatatype
		ShortDatatype.Name="short"
		
		VoidDatatype=New TDatatype
		VoidDatatype.Name="void"
		
		NullDatatype=New TDatatype
		NullDatatype.Name="null"
		
		IntDatatype.CanCastTo.AddLast(FloatDatatype)
		IntDatatype.CanCastTo.AddLast(StringDatatype)
		IntDatatype.CanCastTo.AddLast(ByteDatatype)
		IntDatatype.CanCastTo.AddLast(LongDatatype)
		IntDatatype.CanCastTo.AddLast(DoubleDatatype)
		IntDatatype.CanCastTo.AddLast(ShortDatatype)
		
		FloatDatatype.CanCastTo.AddLast(IntDatatype)
		FloatDatatype.CanCastTo.AddLast(StringDatatype)
		FloatDatatype.CanCastTo.AddLast(ByteDatatype)
		FloatDatatype.CanCastTo.AddLast(LongDatatype)
		FloatDatatype.CanCastTo.AddLast(DoubleDatatype)
		FloatDatatype.CanCastTo.AddLast(ShortDatatype)
		
		StringDatatype.CanCastTo.AddLast(IntDatatype)
		StringDatatype.CanCastTo.AddLast(FloatDatatype)
		StringDatatype.CanCastTo.AddLast(ByteDatatype)
		StringDatatype.CanCastTo.AddLast(LongDatatype)
		StringDatatype.CanCastTo.AddLast(DoubleDatatype)
		StringDatatype.CanCastTo.AddLast(ShortDatatype)
		
		ByteDatatype.CanCastTo.AddLast(IntDatatype)
		ByteDatatype.CanCastTo.AddLast(FloatDatatype)
		ByteDatatype.CanCastTo.AddLast(StringDatatype)
		ByteDatatype.CanCastTo.AddLast(LongDatatype)
		ByteDatatype.CanCastTo.AddLast(ShortDatatype)
		ByteDatatype.CanCastTo.AddLast(DoubleDatatype)
		
		LongDatatype.CanCastTo.AddLast(IntDatatype)
		LongDatatype.CanCastTo.AddLast(FloatDatatype)
		LongDatatype.CanCastTo.AddLast(StringDatatype)
		LongDatatype.CanCastTo.AddLast(ByteDatatype)
		LongDatatype.CanCastTo.AddLast(ShortDatatype)
		LongDatatype.CanCastTo.AddLast(DoubleDatatype)
		
		DoubleDatatype.CanCastTo.AddLast(IntDatatype)
		DoubleDatatype.CanCastTo.AddLast(FloatDatatype)
		DoubleDatatype.CanCastTo.AddLast(StringDatatype)
		DoubleDatatype.CanCastTo.AddLast(ByteDatatype)
		DoubleDatatype.CanCastTo.AddLast(ShortDatatype)
		DoubleDatatype.CanCastTo.AddLast(LongDatatype)
		
		ShortDatatype.CanCastTo.AddLast(IntDatatype)
		ShortDatatype.CanCastTo.AddLast(FloatDatatype)
		ShortDatatype.CanCastTo.AddLast(StringDatatype)
		ShortDatatype.CanCastTo.AddLast(ByteDatatype)
		ShortDatatype.CanCastTo.AddLast(LongDatatype)
		ShortDatatype.CanCastTo.AddLast(DoubleDatatype)
	EndFunction
	
	Function Create:TDatatype(Name:String, IsArray:Int=0)
		Select Name
			Case IntDatatype.Name
				Return IntDatatype.Copy()
			Case FloatDatatype.Name
				Return FloatDatatype.Copy()
			Case StringDatatype.Name
				Return StringDatatype.Copy()
			Case VoidDatatype.Name
				Return VoidDatatype.Copy()
			Case ByteDatatype.Name
				Return ByteDatatype.Copy()
			Case LongDatatype.Name
				Return LongDatatype.Copy()
			Case ShortDatatype.name
				Return ShortDatatype.Copy()
			Case DoubleDatatype.Name
				Return DoubleDatatype.Copy()
			Default
				TCompiler.Current.Error("Cannot find Datatype '"+Name+"'")
		EndSelect
	EndFunction
	Function CreateByNode:TDatatype(Node:TxmlNode)
		Local Name:String=Node.GetAttribute("type")
		Local DimCOunt:Int=Node.GetAttribute("dimension")
		Local Typ:TDatatype=TDatatype.Create(Name)
		Typ.IsArray=DimCount
		Typ.Name=Name
		Return Typ
	EndFunction
	
	Method Copy:TDatatype()
		Local Ret:TDatatype=New TDatatype
		Ret.name=Self.Name
		Ret.IsArray=Self.IsArray
		Return Ret
	EndMethod
	Method Add2Node(Node:TxmlNode)
		Node.AddAttribute("type",Name)
		Node.AddAttribute("dimension",IsArray)
	EndMethod
	Method Cast:TxmlNode(Datatype:TDatatype)
		Local Node:TxmlNode=TxmlNode.NewNode("cast")
		Node.AddAttribute("from",Self.Name)
		Node.AddAttribute("to",Datatype.Name)
		If Self.Name=Datatype.Name Return Null
		For Local Data:TDatatype=EachIn CanCastTo
			If Data.Name=Datatype.Name And Data.IsArray=Datatype.IsArray
				Return Node
			EndIf
		Next
		TCompiler.Current.Error("Cannot cast '"+Self.Name+"' (dimensions: '"+IsArray+"') to '"+Datatype.Name+"' (dimensions: '"+Datatype.IsArray+"')")
	EndMethod
	Method CastNode:TxmlNode(Datatype:TDatatype, Node:TxmlNode)
		Local caster:TxmlNode=Self.Cast(Datatype)
		If Caster
			AddChild(Caster, Node)
			Return Caster
		Else
			Return Node
		EndIf
	EndMethod
	Method ToString:String()
		Return Name+"__dim_"+IsArray+"_"
	EndMethod
EndType
