Type TClassMember
	Field Name:String
	Field Typ:Byte
	Field TypString:String
	Field Pos:Int
End Type

Type TClassFunc Extends TClassMember
	Field File:String'Wenn Null, dann ist es ein File
	Field Par:Byte[]
End Type
