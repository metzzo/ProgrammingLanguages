import brl.blitz
import bah.libxml
import "Util_CPB.bmx"
TClass^brl.blitz.Object{
.Name$&
.Superclass:TClass&
.SuperNameType$&
.VTable:brl.linkedlist.TList&
.UniqueDatatype:brl.linkedlist.TList&
.Count%&
.Attributes:brl.linkedlist.TList&
-New%()="_bb_TClass_New"
-Delete%()="_bb_TClass_Delete"
}="bb_TClass"
TVirtualMethod^brl.blitz.Object{
.Name$&
.ID%&
.Datatype$&
.Dimension%&
-New%()="_bb_TVirtualMethod_New"
-Delete%()="_bb_TVirtualMethod_Delete"
}="bb_TVirtualMethod"
TCGenerator^brl.blitz.Object{
AllDatatype$&[]&=mem:p("_bb_TCGenerator_AllDatatype")
.Classes:brl.linkedlist.TList&
.Output$&
.ScopeCount%&
.InStruct@&
.MaxSizeArray%&
.FuncDef$&
.DebugMode@&
.Types:brl.linkedlist.TList&
.TypeMainConstructor$&
-New%()="_bb_TCGenerator_New"
-Delete%()="_bb_TCGenerator_Delete"
-Generate%(InputPath$,OutputPath$)="_bb_TCGenerator_Generate"
-GetTabs$()="_bb_TCGenerator_GetTabs"
-Block$(Node:bah.libxml.TxmlNode)="_bb_TCGenerator_Block"
-GetNextMathString$(Node:bah.libxml.TxmlNode)="_bb_TCGenerator_GetNextMathString"
-VarDef$(Node:bah.libxml.TxmlNode)="_bb_TCGenerator_VarDef"
-ArrayDef$(Node:bah.libxml.TxmlNode)="_bb_TCGenerator_ArrayDef"
-GetRealDatatype$(Typ$,DimCount%=0)="_bb_TCGenerator_GetRealDatatype"
-IsType@(Typ$)="_bb_TCGenerator_IsType"
}="bb_TCGenerator"
