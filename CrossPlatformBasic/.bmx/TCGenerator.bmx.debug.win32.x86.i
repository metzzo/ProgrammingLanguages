import brl.blitz
import bah.libxml
import "Util_CPB.bmx"
import "TGenerator.bmx"
TClass^brl.blitz.Object{
.Name$&
.Count%&
.Attributes:brl.linkedlist.TList&
-New%()="_bb_TClass_New"
-Delete%()="_bb_TClass_Delete"
}="bb_TClass"
TCGenerator^TGenerator{
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
.Parameter$&[]&
.GlobalInit$&
.ArrayCast$&
.ShouldCast%&
.AccessIteration%&
-New%()="_bb_TCGenerator_New"
-Delete%()="_bb_TCGenerator_Delete"
-GetLanguage$()F="_bb_TCGenerator_GetLanguage"
-Generate%(InputPath$,OutputPath$)F="_bb_TCGenerator_Generate"
-GetTabs$()F="_bb_TCGenerator_GetTabs"
-Block$(Node:bah.libxml.TxmlNode)F="_bb_TCGenerator_Block"
-GetNextMathString$(Node:bah.libxml.TxmlNode)F="_bb_TCGenerator_GetNextMathString"
-VarDef$(Node:bah.libxml.TxmlNode)F="_bb_TCGenerator_VarDef"
-ArrayDef$(Node:bah.libxml.TxmlNode)F="_bb_TCGenerator_ArrayDef"
-GetRealDatatype$(Typ$,DimCount%=0)F="_bb_TCGenerator_GetRealDatatype"
-IsType@(Typ$)F="_bb_TCGenerator_IsType"
}F="bb_TCGenerator"
