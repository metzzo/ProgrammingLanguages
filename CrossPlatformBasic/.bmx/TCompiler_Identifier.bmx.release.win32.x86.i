import brl.blitz
import bah.libxml
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.basic
import brl.bmploader
import brl.d3d7max2d
import brl.d3d9max2d
import brl.data
import brl.directsoundaudio
import brl.eventqueue
import brl.freeaudioaudio
import brl.freetypefont
import brl.gnet
import brl.jpgloader
import brl.map
import brl.maxlua
import brl.maxutil
import brl.oggloader
import brl.openalaudio
import brl.pngloader
import brl.retro
import brl.tgaloader
import brl.threads
import brl.timer
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glew
import pub.macos
TIdentifier^brl.blitz.Object{
.Datatype$&
.Name$&
-New%()="_bb_TIdentifier_New"
-Delete%()="_bb_TIdentifier_Delete"
-Create:TIdentifier(N$,Typ$)="_bb_TIdentifier_Create"
-ToNode:bah.libxml.TxmlNode(Infos:brl.linkedlist.TList="bbNullObject")="_bb_TIdentifier_ToNode"
}A="bb_TIdentifier"
TIdentifierFunction^TIdentifier{
.Param:brl.map.TMap&
.ParamList:brl.linkedlist.TList&
.UserFunc@&
.Used@&
-New%()="_bb_TIdentifierFunction_New"
-Delete%()="_bb_TIdentifierFunction_Delete"
-use@()="_bb_TIdentifierFunction_use"
-AddParameter%(Name$,DataType$,Pre$=$"")="_bb_TIdentifierFunction_AddParameter"
}="bb_TIdentifierFunction"
TIdentifierVariable^TIdentifier{
.IsArray%&
-New%()="_bb_TIdentifierVariable_New"
-Delete%()="_bb_TIdentifierVariable_Delete"
-ToNode:bah.libxml.TxmlNode(Infos:brl.linkedlist.TList="bbNullObject")="_bb_TIdentifierVariable_ToNode"
}="bb_TIdentifierVariable"
TIdentifierType^TIdentifier{
-New%()="_bb_TIdentifierType_New"
-Delete%()="_bb_TIdentifierType_Delete"
}="bb_TIdentifierType"
TParameter^brl.blitz.Object{
.Name$&
.Datatype$&
.Pre$&
.Node:bah.libxml.TxmlNode&
-New%()="_bb_TParameter_New"
-Delete%()="_bb_TParameter_Delete"
-Create:TParameter(Name$,Datatype$,Pre$)="_bb_TParameter_Create"
}="bb_TParameter"
