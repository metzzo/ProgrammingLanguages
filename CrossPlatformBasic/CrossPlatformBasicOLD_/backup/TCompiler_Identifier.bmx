Import BaH.Libxml
Import "Util_CPB.bmx"
SuperStrict
Type TIdentifier Abstract
	Field Datatype:String
	Field Name:String
	Field IsArray:Int '0=kein Array >0 Anzahl der Dimensionen
	
	Method Create:TIdentifier(N:String,Typ:String)
		Datatype=Typ
		Name=N
		Return Self
	EndMethod
	Method ToNode:TxmlNode(Infos:TList=Null)
		Return Null
	EndMethod
EndType

Type TIdentifierFunction Extends TIdentifier
	Field RealName:String
	Field ParamList:TList=New TList
	Field UserFunc:Byte=False
	Field Used:Byte=False 'Wurde die Funktion bereits benutzt?
	Method use:Byte()
		Used=True
	EndMethod
	Method AddParameter(Name:String, DataType:String,IsArray:Int,Pre:String="")
		Local P:TParameter=New TParameter.Create(Name, DataType,Pre, IsArray)
		ParamList.AddLast(P)
	EndMethod
	Method GenName()
		RealName=Name
		For Local Param:TParameter=EachIn ParamList
			Name:+"_"+Param.Datatype+"_dim"+Param.IsArray
		Next
	EndMethod
EndType

Type TIdentifierVariable Extends TIdentifier
	
	Method ToNode:TxmlNode(Infos:TList)
		If IsArray And Infos
			Local Info2:Byte=False
			'DebugStop
			Local node:TxmlNode=TxmlNode.newNode("array")
			Node.AddAttribute("type",Datatype)
			Node.AddChild("name").AddChild("var").AddAttribute("name", Name)
			Local i:Int=0
			Local NodeDim:TxmlNode=Node.AddChild("dim")
			NodeDIm.AddAttribute("count",IsArray)
			If Int(String(Infos.First()))
				For Local Tmp:TxmlNode=EachIn Infos
					Local TmpNode:TxmlNode=NodeDim.AddChild("dimension")
					AddChild(TmpNode,Tmp)
					i:+1
				Next
			Else
				Local List2:TList=New TList
				For Local Tmp:TxmlNode=EachIn Infos
					List2.AddLast(Tmp)
				Next
				For Local Tmp:TxmlNode=EachIn Infos
					i:+1
					'Array: [10][20][30]
					'Zugriff: [2][4][5]
					'Ergebnis: 2*20*30+4*30+5
					'Zugriffsergebnis: 1325
					Local Start:TxmlNode=NodeDim.AddChild("add")
					NodeDim=Start.AddChild("left")
					Local ArrayNode:TxmlNode=NodeDim.AddChild("mul")
					
					AddChild(ArrayNode.AddChild("left"),Tmp)
					ArrayNode=ArrayNode.AddChild("right")
					Local j:Int=0
					List2.Remove(Tmp)
					For Local TTmp:TxmlNode=EachIn List2
						ArrayNode=ArrayNode.AddChild("mul")
						Local YTmp:TxmlNode=ArrayNode.AddChild("left").AddChild("getarraysize")
						YTmp.AddAttribute("dimension",j)
						ArrayNode=ArrayNode.AddChild("right")
						j:+1
					Next
					ArrayNode.AddChild("int").AddAttribute("value","1")
					NodeDim=Start.AddChild("right")
				Next
				NodeDim.AddChild("int").AddAttribute("value","0")
			EndIf
			If i<>IsArray Then Return Null
			Return Node
		ElseIf IsArray
			Local node:TxmlNode=TxmlNode.newNode("arrayref")
			Node.AddAttribute("name",name)
			Return node
		Else
			Local node:TxmlNode=TxmlNode.newNode("var")
			Node.AddAttribute("name",name)
			Return node
		EndIf
	EndMethod
EndType

Type TIdentifierType Extends TIdentifier
	
EndType


Type TParameter
	Field Name:String, Datatype:String
	Field IsArray:Int
	Field Pre:String 'Vordefinierter Wert
	Field Node:TxmlNode 'Der Node (wird beim anwenden gesetzt)
	Method Create:TParameter(Name:String, Datatype:String, Pre:String, IsArray:Int)
		Self.Name=Name
		Self.Datatype=Datatype
		Self.Pre=Pre
		Self.IsArray=IsArray
		Return Self
	EndMethod
EndType