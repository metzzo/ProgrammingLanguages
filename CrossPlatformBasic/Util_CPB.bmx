Import bah.libxml
SuperStrict

Function AddChild:TxmlNode(Parent:TxmlNode, Child:TxmlNode)
	If Child=Null Then Return Null
	Local List:TList=New TList
	List.AddLast(Child)
	Parent.addChildList(List)
	Return parent
EndFunction 

Function Execute(Path:String)
	DeleteFile "ccompilertest.exe"
	Local BatFile:TStream=WriteFile(Replace(AppDir,"/","\")+"\call.bat")
	WriteLine BatFile,"@echo on"
	WriteLine BatFile,"cd "+Replace(AppDir,"/","\")
	WriteLine BatFile,"gcc -o ccompilertest.exe "+Path 'tcc -run main.c"'
	WriteLine BatFile,"ccompilertest.exe"
	WriteLine BatFile,"pause"
	CloseFile BatFile 
	
	OpenURL(Replace(AppDir,"/","\")+"\call.bat")
EndFunction

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
Function IsString:Byte(Text:String)
	If Text[0..1]=Chr(34) And Text[Text.Length-1..Text.Length] Then Return True Else Return False
EndFunction
Function IsValidVarName:Byte(Text:String)
	Return True
EndFunction
