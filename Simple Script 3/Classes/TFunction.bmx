'Ist jetzt den Methoden gewichen

Rem
'DEBUG Zwecke
Function CreateFunction:TFunction(Name:String,Parameter:Byte)
	Local func:TFunction=New TFunction
	func.name=name
	func.parameter=parameter
	
	Return func
End Function
'Das auch
Type TFunction Extends TClass
	Field name:String
	Field Parameter:Byte 'Wie viele Parameter es ibn der Funktion gibt
	Field func(script:Tscript)
End Type
End Rem
