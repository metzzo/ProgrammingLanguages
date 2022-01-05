import brl.blitz
import bah.libxml
import "Util_CPB.bmx"
TCGenerator^brl.blitz.Object{
AllDatatype$&[]&=mem:p("_bb_TCGenerator_AllDatatype")
.Output$&
.ScopeCount%&
.InStruct@&
.MaxSizeArray%&
.FuncDef$&
.DebugMode@&
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
