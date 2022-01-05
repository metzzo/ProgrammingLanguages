Type TError
	Field ErrorString:String
	Field Errortoken:TToken
	
	Method ToString:String()
		Return Errorstring
	End Method
End Type

Function CreateError(text:String,token:TToken)
	Local error:TError=New TError
	error.Errorstring=text
	error.errortoken=token
End Function
