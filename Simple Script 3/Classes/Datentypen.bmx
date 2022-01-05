'Datentypen
Const VINT:Byte=1
Const VBYTE:Byte=2
Const VString:Byte=3
Const VFloat:Byte=4
Const VDouble:Byte=5
Const VShort:Byte=6
Const VLong:Byte=7

Function TypeToString:String(NAme:Byte)
	Select Name
		Case 1
			Return "Int"
		Case 2
			Return "Byte"
		Case 3
			Return "String"
		Case 4
			Return "Float"
		Case 5
			Return "Double"
		Case 6
			Return "Short"
		Case 7
			Return "Long"
	End Select
End Function

Function StringToType:Byte(Name:String)
	Select Lower(name)
		Case "int"
			Return VInt
		Case "float"
			Return VFloat
		Case "string"
			Return VString
		Case "byte"
			Return Vbyte
		Case "short"
			Return vshort
		Case "long"
			Return Vlong
		Case "double"
			Return Vdouble
		Default
			Return 0
	End Select
End Function

Function FloatToObject:TDataFloat(F2:Float)
	Local F1:TDataFloat=New TDataFloat
	F1.F=F2
	Return F1
End Function 

Type TDataFloat
	Field F:Float
End Type

Function StringToObject:TDataString(S2:Float)
	Local S1:TDataString=New TDataString
	S1.S=S2
	Return S1
End Function 

Type TDataString
	Field S:String
End Type

Function IntToObject:TDataInt(I2:Int)
	Local I1:TDataInt=New TDataInt
	I1.I=I2
	Return I1
End Function 
Type TDataInt
	Field I:Int
End Type

Function DoubleToObject:TDataDouble(D2:Double)
	Local D1:TDataDouble=New TDataDouble
	D1.D=D2
	Return D1
End Function 
Type TDataDouble
	Field d:Double
End Type

Function ByteToObject:TDataByte(B2:Byte)
	Local B1:TDataByte=New TDataByte
	B1.B=B2
	Return B1
End Function 

Type TDataByte
	Field B:Byte
End Type

Function ShortToObject:TDataShort(S2:Short)
	Local S1:TDataShort=New TDataSHort
	S1.S=S2
	Return S1
End Function 

Type TDataShort
	Field S:Short
End Type

Function LongToObject:TDataLong(L2:Long)
	Local L1:TDataLong=New TDataLong
	L1.L=L2
	Return L1
End Function 

Type TDataLong
	Field L:Long
End Type
