import brl.blitz
import bah.libxml
import "TGenerator.bmx"
import "TCompiler_CPB.bmx"
TLanguageManager^brl.blitz.Object{
Generator:brl.linkedlist.TList&=mem:p("_bb_TLanguageManager_Generator")
Languages:brl.linkedlist.TList&=mem:p("_bb_TLanguageManager_Languages")
CurrentPlatform:TPlatform&=mem:p("_bb_TLanguageManager_CurrentPlatform")
-New%()="_bb_TLanguageManager_New"
-Delete%()="_bb_TLanguageManager_Delete"
+Register%(G:TGenerator)="_bb_TLanguageManager_Register"
+AddModules%(Compiler:TCompiler)="_bb_TLanguageManager_AddModules"
+Generate%(InputPath$,OutputPath$)="_bb_TLanguageManager_Generate"
+Execute%()="_bb_TLanguageManager_Execute"
+Init%(Path$)="_bb_TLanguageManager_Init"
}="bb_TLanguageManager"
TLanguage^brl.blitz.Object{
.Name$&
.Platforms:brl.linkedlist.TList&
.Generator:TGenerator&
-New%()="_bb_TLanguage_New"
-Delete%()="_bb_TLanguage_Delete"
}="bb_TLanguage"
TPlatform^brl.blitz.Object{
.Name$&
.Compilecommand$&
.LinkerCommand$&
.Lang:TLanguage&
.Libs:brl.linkedlist.TList&
-New%()="_bb_TPlatform_New"
-Delete%()="_bb_TPlatform_Delete"
}="bb_TPlatform"
