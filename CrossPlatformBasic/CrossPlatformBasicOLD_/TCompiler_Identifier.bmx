
Type TIdentifier Abstract
	Field Datatype:TDatatype=TDatatype.VoidDatatype
	Field Name:String
	
	
	Method Create:TIdentifier(N:String,Typ:TDatatype)
		Datatype=Typ
		Name=N
		Return Self
	EndMethod
	Method ToNode:TxmlNode(Infos:TList)
		If Datatype.IsArray And Infos
			Local Info2:Byte=False
			'DebugStop
			Local node:TxmlNode=TxmlNode.newNode("array")


			Datatype.Add2Node(Node)
			Node.AddChild("name").AddChild("var").AddAttribute("name", Name)
			Local i:Int=0
			'Local NodeDim:TxmlNode=Node.AddChild("dim")
			Local List2:TList=New TList
			For Local Tmp:TxmlNode=EachIn Infos
				List2.AddLast(Tmp)
			Next
			For Local Tmp:TxmlNode=EachIn Infos
				i:+1
				AddChild(Node.AddChild("dimension"), Tmp)
				'Array: [10][20][30]
				'Zugriff: [2][4][5]
				'Ergebnis: 2*20*30+4*30+5
				'Zugriffsergebnis: 1325
				Rem
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
				EndRem
			Next
			'NodeDim.AddChild("int").AddAttribute("value","0")
			If i<>Datatype.IsArray Then Return Null
			Return Node
		Else
			Local node:TxmlNode=TxmlNode.newNode("var")
			Node.AddAttribute("name",name)
			Return node
		EndIf
	EndMethod
EndType

Type TIdentifierFunction Extends TIdentifier
	Field Gen:Byte
	Field RealName:String
	Field ParamList:TList=New TList
	Field UserFunc:Byte=False
	Field Used:Byte=False 'Wurde die Funktion bereits benutzt?
	Field Childs:TList=New TList'Welche Funktionen erben von dieser
	Field OWner:TTypeTemplate 'Geh�rt es wem?
	Field Datatypes:String
	
	Method use:Byte()
		Used=True
	EndMethod
	Method AddParameter(Name:String, DataType:TDatatype,Pre:String="")
		Local P:TParameter=New TParameter.Create(Name, DataType,Pre)
		ParamList.AddLast(P)
	EndMethod
	Method GenName()
		If Gen=False
			Gen=True
			RealName=Name
			Datatypes=""
			For Local Param:TParameter=EachIn ParamList
				Name:+"_"+Param.Datatype.ToString()
				Datatypes:+"_"+Param.Datatype.ToString()
			Next
		EndIf
	EndMethod
	Method Copy:TIdentifierFunction()
		Local Copy:TIdentifierFunction=TIdentifierFunction(New TIdentifierFunction.Create(Self.RealName, Self.Datatype))
		Copy.ParamList=ParamList.Copy()
		Copy.UserFunc=UserFunc
		
		Return Copy
	EndMethod
	'Method ToNode:TxmlNode(Infos:TList)
		
	'EndMethod
EndType

Type TIdentifierVariable Extends TIdentifier
	Field Info:Object
	Field Owner:TTypeTemplate
EndType
Type TTypeField Extends TIdentifierVariable
	Const ISPRIVATE:Byte=1
	Const ISPROTECTED:Byte=2
	Const ISPUBLIC:Byte=3
	
	Field Mode:Int=ISPUBLIC
	Method Create2:TIdentifier(N:String,Typ:TDatatype,Mode:Int)
		Datatype=Typ
		Name=N
		Self.Mode=Mode
		Return Self
	EndMethod
EndType
Type TTypeMethod
	Const ISNORMAL:Byte=0
	Const ISOVERRIDE:Byte=1
	Const ISVIRTUAL:Byte=2
	Const ISABSTRACT:Byte=3
	Const ISFINAL:Byte=4
	Const ISSTATIC:Byte=5
	
	Const ISPRIVATE:Byte=1
	Const ISPROTECTED:Byte=2
	Const ISPUBLIC:Byte=3
	
	Field Mode:Int=ISPUBLIC
	Field State:Byte=ISNORMAL
	Field Func:TIdentifierFunction
	Field Name:String
	Field From:TTypeTemplate
	Field VirtualID:Int 'Die Nummer in der VTable
	
	Method Create:TTypeMethod(N:String, F:TTypeTemplate, State:Byte=ISNORMAL,Mode:Byte,VirtualID:Int)
		Name=n
		From=F
		Self.Mode=Mode
		Self.State=State
		Self.VirtualID=VirtualID
		Return Self
	EndMethod
EndType

Type TTypeTemplate
	Field Mode:Int '0=public, 1=protected, 2=private
	Global ObjectTemplate:TTypeTemplate 'Das Object template (aus diesem besteht jedes Objekt)
	
	Function Init()
		ObjectTemplate=New TTypeTemplate
		ObjectTemplate.Name="object"
		ObjectTemplate.Datatype=New TDatatype
		ObjectTemplate.Datatype.Name="object"
		ObjectTemplate.Datatype.Prio=0
		TDatatype.UserDefinedDatatypes.AddLast(ObjectTemplate.Datatype)
	EndFunction
	
	Field Fields:TList=New TList
	Field Methods:TList=New TList
	Field Name:String
	Field SuperType:TTypeTemplate=ObjectTemplate 'Von welcher Klasse geerbt wird
	Field Datatype:TDatatype 'Der dazugeh�rige Datentyp
	Field LastID:Int=0
	Field VIDMap:TMap=CreateMap()
	
	Method New()
		If SuperType=Self Then SuperType=Null
	EndMethod
	Method GetFields:TList(Mode:Int)
		If Mode=0 Then DebugStop
		Local List:TList=New TList
		For Local F:TTypeField=EachIn Fields
			If  (F.Mode>=Mode Or Mode=-1) '1, 3
				List.AddLast(F)
			EndIf
		Next
		If SuperType' And (Mode<>TTypeField.ISPRIVATE Or Mode=-1)
			For Local F:TTypeField=EachIn SuperType.GetFields(Mode)
				If F.Mode>=TTypeMethod.IsProtected Or Mode=-1' And Mode=TTypeMethod.IsPrivate
					List.AddLast(F)
				EndIf
			Next
		EndIf
		Return List
	EndMethod
	Method GetMethods:TList(Mode:Int)
		'DebugStop
		Local List:TList=New TList
		For Local F:TTypeMethod=EachIn Methods
			If  (F.Mode>=Mode Or Mode=-1)
				List.AddLast(F)
			EndIf
		Next
		If SuperType And Mode<>-1' And (Mode<>TTypeField.ISPRIVATE Or Mode=-1)
			For Local F:TTypeMethod=EachIn SuperType.GetMethods(Mode)
				If F.Mode=TTypeMethod.IsProtected And Mode=TTypeMethod.IsPrivate Or Mode=-1
					List.AddLast(F)
				EndIf
			Next
		EndIf
		Return List
	EndMethod
	Method AddField(Name:String, Datatype:TDatatype, Pre:TxmlNode,Mode:Int)
		Local Vari:TIdentifier=New TTypeField.Create2(Name, Datatype,Mode)
		TIdentifierVariable(Vari).Owner=Self
		TIdentifierVariable(Vari).Info=Pre
		Fields.AddLast(Vari)
	EndMethod
	Method AddMethod:TTypeMethod(Func:TIdentifierFunction,Name:String,Datatype:TDatatype, State:Byte,Mode:Int)
		'For Local Test:String=EachIn Methods
		'	If Test=Name Then TCompiler.Current.Error("Duplicate Identifier: "+Test+", "+Name) 
		'Next
		For Local M:TTypeMethod=EachIn Methods
			'If M.Name=Name DebugStop
			If M.Name=Name And M.Func And M.Func.Datatype.NAme=Datatype.Name And M.Func.Datatype.IsArray=Datatype.IsArray
				Methods.Remove(M) 'Wenns �berschrieben wird von der liste l�schen
			EndIf
		Next
		Local CurID:Int=-1
		'DebugStop
		For Local Typ:TDatatype=EachIn VIDMap.Keys()
			If Typ.Name=Datatype.Name And Typ.IsArray=Datatype.IsArray And Int(String(VIDMap.ValueForKey(Typ)))>CurID
				Local Count:Int=Int(String(VIDMap.ValueForKey(Typ)))+1
				VIDMap.Remove(Typ)
				CurID=Count
				VIDMap.Insert(Typ, String(Count))
			EndIf
		Next
		If CurID=-1
			VIDMap.Insert(Datatype,String(0))
			CurID=0
		EndIf
		Local M:TTypeMethod=New TTypeMethod.Create(Name, Self,State,Mode,CurID)
		M.Func=Func
		Methods.AddLast(M)
		Return M
	EndMethod
	Method ToNode:TxmlNode() 'Erzeugt die typedef
		Local Node:TxmlNode=TxmlNode.NewNode("deftype")
		Node.AddAttribute("name",Name)
		Local ExtendName:String=""
		If SuperType ExtendName=SuperType.Name
		Node.AddAttribute("extend",ExtendName)
		Local i:Int
		For Local Vari:TIdentifierVariable=EachIn Fields'GetFields(-1)
			Local Tmp:TxmlNode=Node.AddChild("field")
			tmp.AddAttribute("name", Vari.Name)
			Vari.Datatype.Add2Node(Tmp)
			AddChild(Tmp,TxmlNode(Vari.Info))
			i:+1
		Next
		Node.AddAttribute("fieldcount",i)
		i=0
		For Local Meth:TTypeMethod=EachIn GetMethods(-1)
			Local Tmp:TxmlNode=Node.AddChild("method")
			Tmp.AddAttribute("name", Meth.Name.Replace("_"+Meth.From.Name+"_","_"+Name+"_"))
			'DebugStop
			Tmp.AddAttribute("vtable",Meth.VirtualID)
			If Meth.Func 
				Tmp.AddAttribute("realname", Meth.Func.RealName)
				Meth.Func.Datatype.Add2Node(Tmp)
				For Local Par:TParameter=EachIn Meth.Func.ParamList
					Local Node2:TxmlNode=Tmp.AddChild("param")
					Node2.AddAttribute("name", Par.Name)
					Par.Datatype.Add2Node(Node2)
				Next
			EndIf
			i:+1
		Next
		Node.AddAttribute("methodcount",i)
		Return Node
	EndMethod
EndType


Type TParameter
	Field Name:String, Datatype:TDatatype=TDatatype.VoidDatatype
	Field Pre:String 'Vordefinierter Wert
	Field Node:TxmlNode 'Der Node (wird beim anwenden gesetzt)
	Method Create:TParameter(Name:String, Datatype:TDatatype, Pre:String)
		Self.Name=Name
		Self.Datatype=Datatype
		Self.Pre=Pre
		Return Self
	EndMethod
EndType