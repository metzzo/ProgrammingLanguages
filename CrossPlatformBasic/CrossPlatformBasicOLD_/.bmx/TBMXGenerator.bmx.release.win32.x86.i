import brl.blitz
import "Util_CPB.bmx"
TBMXGenerator^brl.blitz.Object{
AllDatatype$&[]&=mem:p("_bb_TBMXGenerator_AllDatatype")
.Output$&
.ScopeCount%&
.CurrentArray$&
.Dimensionen%&
-New%()="_bb_TBMXGenerator_New"
-Delete%()="_bb_TBMXGenerator_Delete"
-Generate%(InputPath$,OutputPath$)="_bb_TBMXGenerator_Generate"
-GetTabs$()="_bb_TBMXGenerator_GetTabs"
-Block$(Node:bah.libxml.TxmlNode)="_bb_TBMXGenerator_Block"
-GetNextMathString$(Node:bah.libxml.TxmlNode)="_bb_TBMXGenerator_GetNextMathString"
-VarDef$(Node:bah.libxml.TxmlNode,Glob%=0)="_bb_TBMXGenerator_VarDef"
-ArrayDef$(Node:bah.libxml.TxmlNode,Glob%=0)="_bb_TBMXGenerator_ArrayDef"
-GetRealDatatype$(Typ$,DimCount%=0)="_bb_TBMXGenerator_GetRealDatatype"
-IsType@(Typ$)="_bb_TBMXGenerator_IsType"
}="bb_TBMXGenerator"
