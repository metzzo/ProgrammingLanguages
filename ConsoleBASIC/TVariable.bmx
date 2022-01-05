Type TVariable
	Field Name:String
	Field Datatype:String
	Method Create:TVariable(Name:String, DataType:String)
		Self.Name=Name
		Self.DataType=DataType
		
		Return Self
	EndMethod
	Method GetName:String()
		Return name
	EndMethod
	Method GetDataType:String()
		Return Datatype
	EndMethod
EndType
