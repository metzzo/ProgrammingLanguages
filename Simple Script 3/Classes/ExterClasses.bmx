Type TTest Extends TClass 'Das ist die Debug Klasse sie dient nur zum testen
	Field wert:Int
	
	Method New()
		Self.name="ttest"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Self
	End Method
	Method OnSet(obj:Object[])
	End Method
	Method OnDelete(obj:Object[])
	End Method
	Method OnCreate(obj:Object[])
	End Method
	
	Method Irgendwas(obj:Object[])
		Print "Irgendwas"
	End Method
	
End Type

Type TBasic Extends TClass {static} 'Hier sind die BASIC Funktionen wie Print Input...
	Field Width:Int {Fld}
	Field Height:Int {Fld}
	
	Method New()
		Self.name="tbasic"
	End Method
	Method OnCall:Object(obj:Object[])
	End Method
	Method OnSet(obj:Object[])
	End Method
	Method OnDelete(obj:Object[])
	End Method
	Method OnCreate(obj:Object[])
	End Method
	
	Method Print(Text:String) {mth}
'		Print TDataString(obj[0]).S
	End Method
	
End Type

Type TInt Extends TClass
	Field Content:TDataInt {Clone}
	
	Method New()
		Self.name="int"
	End Method
	Method OnCall:Object(obj:Object[])
'		Return Object(TDataInt(obj[0]).I)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.I=TDataInt(obj[0]).I
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[]) 'Wird nicht verwendet
	End Method
End Type

Type TString Extends TClass
	Field Content:TDataString {Clone}
	
	Method New()
		Self.name="string"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.S=TDataString(obj[0]).S
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type


Type TFloat Extends TClass
	Field Content:TDataFloat {Clone}
	
	Method New()
		Self.name="float"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.F=TDataFloat(obj[0]).F
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Type TByte Extends TClass
	Field Content:TDataByte {Clone}
	
	Method New()
		Self.name="byte"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.B=TDatabyte(obj[0]).B
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Type TDouble Extends TClass
	Field Content:TDataDouble {Clone}
	
	Method New()
		Self.name="double"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.D=TDataDouble(obj[0]).D
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Type TShort Extends TClass
	Field Content:TDataShort {Clone}
	
	Method New()
		Self.name="short"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.S=TDataShort(obj[0]).S
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Type TLong Extends TClass
	Field Content:TDatalong {Clone}
	
	Method New()
		Self.name="long"
	End Method
	Method OnCall:Object(obj:Object[])
		Return Object(Self.Content)
	End Method
	Method OnSet(obj:Object[])
		Self.Content.l=TDataLong(obj[0]).l
	End Method
	Method OnDelete(obj:Object[])
		Self.Content=Null
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

Type TUserType Extends TClass 'Das ist der normale Type
	Field Stream:TStream 'Hier ist das File
	Field script:TScript
	
	Method New()
	End Method
	Method OnCall:Object(obj:Object[])
		Return Self
	End Method
	Method OnSet(obj:Object[])
	End Method
	Method OnDelete(obj:Object[])
	End Method
	
	Method OnCreate(obj:Object[])
	End Method
End Type

