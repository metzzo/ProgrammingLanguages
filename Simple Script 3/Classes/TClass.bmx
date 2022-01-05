Type TClass Abstract
	Field Name:String 
	Field id:TTypeId 'Die ID des Objektes, für Reflection
	Field static:Byte 'Ist es eine Statische Methode
	Field FieldList:TList=CreateList()
	Field MthList:TList=CreateList()
	Field Stack:TClassMember[]
	Field StackPos:Int
	
	Method OnCreate(obj:Object[]) Abstract
	Method OnDelete(obj:Object[]) Abstract
	Method OnSet   (obj:Object[])
	End Method
	Method OnCall:Object  (obj:Object[]) Abstract
	Method OnCalc:Object (c1:Object,c2:Object,op:TOperator) 
	End Method
End Type

