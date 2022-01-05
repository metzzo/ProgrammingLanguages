Type TFunction
	Field Name:String
	Field Datatype:String
	
	Method Create:TFunction(Name:String)
		Self.Name=Name
		
		Return Self
	EndMethod
	Method ToString:String()
		Return "printf"
	EndMethod
	Method Getname:String()
		Return name
	EndMethod
EndType
