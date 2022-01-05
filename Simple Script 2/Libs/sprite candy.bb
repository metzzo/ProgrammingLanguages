
Const SC_ENTITYORDER%  = -100	; SC WILL NOT USE ENTITY ORDERS ABOVE THIS VALUE
Const SC_SHADOWALPHA#  = .4	; SHADOW TRANSPARENCY (0.0 - 1.0)
Const SC_MAXCOLPOINTS% = 255	; MAXIMUM POINTS USED WITH COLLISION SHAPES 
Const SC_MAXCOLORVERTS%= 500	; MAXIMUM VERTICES ALLOWED WHEN SETTING INDIVIDUAL VERTEX COLORS 


; ----------------------------------------

; ----------------------------------------
; PRODUCT :     SPRITE CANDY EFFECTS ENGINE
; VERSION :     1.0.14 (beta)
; AUTHOR  :     MIKE DOGAN / X-PRESSIVE.COM
; WEB SITE:     http://www.x-pressive.com/SpriteCandy/
; PUBLISHER:    X-PRESSIVE.COM
; COPYRIGHT:    (c)2004,2005,2006 Mike Dogan Games & Entertainment
; ----------------------------------------

; ----------------------------------------
; PLEASE NOTE:
; A LOT OF HARD AND HONEST WORK HAS BEEN SPENT
; INTO THIS PROJECT AND WE'RE STILL WORKING HARD
; TO IMPROVE IT FURTHER.
; IF YOU DID NOT PURCHASE THIS SOURCE LEGALLY,
; PLEASE ASK YOURSELF IF YOU DID THE RIGHT AND
; GET A LEGAL COPY (YOU'LL BE ABLE TO RECEIVE
; ALL FUTURE UPDATES FOR FREE THEN) TO HELP
; US CONTINUING OUR WORK. THE PRICE IS REALLY
; FAIR. THANKS FOR YOUR SUPPORT AND APPRECIATION.
;
; FOR FEEDBACK & SUPPORT, PLEASE CONTACT:
; info@x-pressive.com
;
; THANKS TO:
; JAKE (BITTRAP-SOFTWARE) FOR BETA TESTING
; ----------------------------------------



; --------------------------------------------------
; GLOBALS (DO NOT CHANGE!)
; --------------------------------------------------

Const SC_HUD_FX% 	= 1+2+8+32
Const SC_TEXT%		= 1
Const SC_IMAGE%		= 2
Const SC_TILED%		= 3
Const SC_SHAPE%		= 4
Const FX_STEADYMOVE%	= 1
Const FX_STEADYROTATE%	= 2
Const FX_ALPHAFADE%	= 3
Const FX_SCALE%		= 4
Const FX_MOVETO%	= 5
Const FX_ROTATE%	= 6
Const FX_STEADYSCALE%	= 7
Const FX_COLORFADE%	= 8
Const FX_RUMBLE%	= 9
Const FX_FOLLOWOBJECT%	= 10
Const FX_SMOOTHBLINK%	= 11
Const FX_BLINK%		= 12
Const FX_AUTOREMOVE%	= 13
Const FX_SHAKE%		= 14
Const FX_WAVE%		= 15
Const FX_FACEOBJECT%	= 16
Const FX_ORBIT%		= 17
Const FX_RIPPLE%	= 18
Const FX_SCROLLTEXTURE%	= 19
Const FX_MOTIONTRAIL%	= 20
Const FX_SINEROTATE%	= 21

; TIME MEASUREMENT
Global SC_Now%  = MilliSecs()	; HOLDS CURRENT TIME
Global SC_Dif%			; TIME PASSED SINCE LAST LOOP
Global SC_LastStats% = MilliSecs()
Global SC_FPS%			; CURRENT FPS
Global SC_FPS2%			; TIME OF LAST FPS COUNT
Global SC_Frames%		; FRAMES PASSED

; GLOBALS
Dim    SC_Img%(0,0)		; USED WITH HUD_LoadImageResource
Dim    SC_Sin#(360) : For i = 0 To 360 : SC_Sin(i) = Sin(i) : Next
Dim    SC_Cos#(360) : For i = 0 To 360 : SC_Cos(i) = Cos(i) : Next
Global SC_IntersectedX%		; WILL HOLD X-COORD OF LINE INTERSECTION
Global SC_IntersectedY%		; WILL HOLD X-COORD OF LINE INTERSECTION
Global SC_ActiveButton%		; HANDLE OF ACTIVE BUTTON (HUD_CheckButtons)
Global SC_TFormedX%		; WILL HOLD CONVERTED LAYER X-COORD
Global SC_TFormedY%		; WILL HOLD CONVERTED LAYER Y-COORD

; STATS
Global SC_rebuilds%
Global SC_updates%
Global SC_buildtime%

; DUMMY OBJECTS
Global SC_DummyMesh%
Global SC_DummySurf%

; TYPE: HUD INFORMATION
Type SC_HUD
	Field Piv%		; PIVOT THIS HUD
	Field Cam%		; HANDLE OF ATTACHED CAMERA
	Field x%,y%		; HUD (VIEWPORT) POSITION
	Field width%		; VIEWPORT WIDTH  OF THIS HUD
	Field height%		; VIEWPORT HEIGHT OF THIS HUD
	Field scalex#		; HUD X-SCALE
	Field scaley#		; HUD Y-SCALE
	Field visible%		; TRUE IF HUD IS VISIBLE, FALSE IF NOT
	Field alpha#		; CURRENT HUD ALPHA
	Field cam_zoom#		; ZOOM LEVEL OF ATTACHED CAMERA
	Field zorder%		; HUD ZORDER
End Type


; TYPE: FONT INFORMATION
Type SC_Font
	Field TextureID%	; TYPE HANDLE OF LINKED TEXTURE
	Field textureFile$
	Field tex_width#
	Field tex_height#
	Field maskR%
	Field maskG%
	Field maskB%
	Field num_chars%
	Field line_height%
	Field max_width%
	Field char_x_positions%[255]
	Field char_y_positions%[255]
	Field char_widths%     [255]
	Field char_heights%    [255]
End Type


; TYPE: SPRITE OBJECT
Type SC_Object
	; GENERAL
	Field update%		; 1 = OBJECT NEEDS TO BE UPDATED
	Field updateColor%	; 1 = UPDATE OBJECT COLORS
	Field HUD_ID%		; TYPE HANDLE OF PARENT HUD
	Field TextID%		; TYPE HANDLE OF TEXT OBJECT, IF TEXT
	Field ImageID%		; TYPE HANDLE OF IMAGE OBJECT, IF IMAGE
	Field LayerID%		; TYPE HANDLE OF LAYER OBJECT
	Field AnimID%		; TYPE HANDLE OF ANIMATION OBJECT
	Field ShapeID%		; TYPE HANDLE OF SHAPE OBJECT
	Field ColID%		; TYPE HANDLE OF COLLISION SHAPE
	Field VColorID%		; TYPE HANDLE OF VERTEX COLOR OBJECT
	Field vx%		; FIRST OBJECT VERTEX
	Field lx%		; LAST  OBJECT VERTEX
	Field typ%		; 1 = TEXT 2 = IMAGE 3 = TILED IMAGE 4 = SHAPE
	Field x#		; X-POSITION OF OBJECT
	Field y#		; Y-POSITION OF OBJECT
	Field width%		; OBJECT WIDTH
	Field height%		; OBJECT HEIGHT
	Field scalex#
	Field scaley#
	Field originx#		; ORIGIN X-POSITION (-1 TO +1)
	Field originy#		; ORIGIN Y-POSITION (-1 TO +1)
	Field rotation#
	Field visible%
	Field alpha#
	Field cornersx%[4]	; HOLD OBJECT CORNERS X-POSITIONS
	Field cornersy%[4]	; HOLD OBJECT CORNERS Y-POSITIONS
	Field R1%, R2%
	Field G1%, G2%
	Field B1%, B2%
	Field gradient%		; 0 = NONE, 1 = HORIZONTAL, 2 = DIAGONAL
	Field shadow_offset%
	Field bg_vx%		; FIRST BACKGROUND VERTEX
	Field bg_a#		; BACKGROUND ALPHA (-1, IF NONE)
	Field bg_R%,bg_G%,bg_B%
	Field b_vx%		; FIRST BORDER VERTEX
	Field b_a#		; BORDER ALPHA (-1, IF NONE)
	Field b_size%
	Field b_R%,b_G%,b_B%
	Field zorder%		; OBJECT RENDER ORDER
	Field ripple_width#	; RIPPLE WIDTH (0 = NONE)
	Field ripple_height#	; RIPPLE HEIGHT
	Field ripple_offset#
End Type


; TYPE: ANIMATION OBJECT
Type SC_Anim
	Field ObjID%
	Field mode$		; "NORMAL", "REVERSE", "PENDULUM"
	Field speed%		; DELAY FOR EACH FRAME (MILLISECS)
	Field last_change%	; TIME OF LAST FRAME CHANGE (MILLISECS)
	Field reverse%		; FOR PENDULUM (1 = BACKWARDS)
	Field loops%		; NUMBER OF LOOPS (0 = INFINITE)
	Field loop%		; CURRENT LOOP
	Field framesH%		; NUMBER OF FRAMES IN ONE ROW
	Field frames%		; NUMBER OF TOTAL FRAMES
	Field frame%		; CURRENT FRAME
	Field active%		; 1 = ACTIVE, 0 = PAUSED/STOPPED
	Field startx%		; X-COORD OF FIRST FRAME ON TEXTURE
	Field starty%		; Y-COORD OF FIRST FRAME ON TEXTURE
End Type


; TYPE: TEXT OBJECT
Type SC_Text
	Field FontID%		; TYPE HANDLE OF FONT DATA
	Field ScrollID%		; TYPE HANDLE OF ATTACHED SCROLL BAR
	Field text_flow$	
	Field wrap_width%
	Field txt$
	Field txt_wrapped$
	Field line_widths[255]  ; WIDTH OF EACH TEXT LINE
	Field max_width%	; WIDEST TEXT LINE
	Field kerning%		; CHAR SPACING ADJUSTMENT (0 = NORMAL)
	Field lines%		; NUMBER OF TEXT LINES (THAT ARE VISIBLE)
	Field num_chars%	; NUMBER OF CHARS (WITHOUT SPACES AND NEWLINES)
	Field visible_lines%	; LINES TO SHOW WHEN TEXT IS A SCROLLING TEXT
	Field start_line%	; LINE NUMBER OF TOPMOST LINE (SCROLL TEXT)
	Field total_lines%	; TOTAL NUMBER OF TEXT LINES  (SCROLL TEXT)
	Field scroll_text$	; COMPLETE TEXT TO SCROLL, *NOT* WRAPPED
	; FOR INPUT TEXTS
	Field allowed_chars$
	Field cursor$
	Field max_chars%
	Field input_upper%
	Field Snd_Type%
End Type

Global SC_CurrInputText%	; OBJECT TYPE HANDLE OF ACTIVE INPUT TEXT
Global SC_LastInputText%	; OBJECT TYPE OF LAST CHANGED INPUT TEXT
Global SC_LastCursorTime%	; USED FOR CURSOR BLINKING

; TYPE: TEXT SCROLL BAR
Type SC_Scroll
	Field TextID%
	Field Slider%
	Field Bar%
	Field TextObject%
	Field TextLayer%
	Field drag_offset%
	Field offsetx%
	Field lasty%
End Type


; TYPE: IMAGE OBJECT
Type SC_Image
	Field TextureID%
	Field img_w%
	Field img_h%
	Field clip_x#
	Field clip_y#
	Field clip_w#
	Field clip_h#
	Field mirroredx%	; 1 = MIRRORED HORIZONTALLY
	Field mirroredy%	; 1 = FLIPPED  VERTICALLY
End Type


; TYPE: SHAPE OBJECT
Type SC_Shape
	Field typ%
	Field param1%
	Field param2%
End Type


; TYPE: COLLISION SHAPE
Type SC_ColShape
	Field ObjID%
	Field x% [SC_MAXCOLPOINTS]	; ORIGINAL X POSITIONS
	Field y% [SC_MAXCOLPOINTS]	; ORIGINAL Y POSITIONS
	Field mx#[SC_MAXCOLPOINTS]	; ACTUAL X POSITIONS (SCALED, ROTATED ETC.)
	Field my#[SC_MAXCOLPOINTS]	; ACTUAL Y POSITIONS (SCALED, ROTATED ETC.)
	Field vc%			; NUMBER OF POINTS
	Field minx%			; BOUNDING BOX
	Field miny%			; BOUNDING BOX
	Field maxx%			; BOUNDING BOX
	Field maxy%			; BOUNDING BOX
End Type


; TYPE: INDIVIDUAL OBJECT VERTEX COLORS
Type SC_VColor
	Field ObjID%
	Field ARGB%[SC_MAXCOLORVERTS]
End Type


; TYPE: IMAGE RESOURCE
Type SC_Texture
	Field Texture%		; TEXTURE HANDLE
	Field textureFile$	; TEXTURE FILE NAME
	Field tex_width#	; TEXTURE WIDTH
	Field tex_height#	; TEXTURE HEIGHT
	Field mode%		; TEXTURE MODE
End Type


; TYPE: BUTTON
Type SC_Button
	Field LayerID%
	Field ObjID%
	Field state$    ; "HOLD", "CLICK", "RELEASE", "HOVER", "MOVEIN", "MOVEOUT"
	Field lastMoveIn%
	Field clip_x%[2]
	Field clip_y%[2]
	Field clip_w%[2]
	Field clip_h%[2]
End Type


; TYPE: LAYERS
Type SC_Layer
	Field HUD_ID%
	Field TextureID%
	Field FontID%
	Field Surf%		; SURFACE HANDLE
	Field ShapeSurf%	; SHAPE SURFACE HANDLE
	Field Mesh%		; MESH HANDLE
	Field update%		; UPDATE,  IF TRUE
	Field rebuild%		; REBUILD, IF TRUE
	Field alpha#
	Field visible%
	Field shadow_offset%
	Field zorder%
	Field scalex#
	Field scaley#
End Type


; TYPE: EFFECT
Type SC_FX
	Field ObjID%
	Field LayerID%
	Field typ%
	Field name$
	Field start_time%	; START TIME (MILLISECS)
	Field duration%		; DURATION   (MILLISECS)
	Field paused%		; 1 = PAUSED
	Field flag%		; HOLDS VARIOUS PARAMS
	Field a#, b#, c#, d#, e#, f#, g#, h#, i#
End Type


; TYPE: GROUP ITEM
Type SC_GroupItem
	Field ObjID%
	Field GroupID%
End Type

; TYPE: GROUP
Type SC_Group
	Field dummy%
End Type




; ########################################################################
; GROUP FUNCTIONS
; ########################################################################

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN A HUD'S PIV HANDLE
; ------------------------------------------------------------------------
Function HUD_GetPivHandle%(HUD_ID%)
	Local HUDObj.SC_HUD = Object.SC_HUD( HUD_ID ) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetPivHandle||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	Return HUDObj\Piv
End Function

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE A GROUP
; ------------------------------------------------------------------------
Function HUD_CreateGroup%()
	Local  Group.SC_Group = New SC_Group
	Return Handle(Group)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE A GROUP (NOT THE OBJECTS INCLUDED)
; ------------------------------------------------------------------------
Function HUD_RemoveGroup(GroupID%)
	Local  Group.SC_Group = Object.SC_Group(GroupID) : If Group = Null Then RuntimeError SC_BreakText("HUD_CancelGroup||The specified group does not exist.",50)
	Local  Item.SC_GroupItem
	
	For Item = Each SC_GroupItem
		If Item\GroupID% = GroupID Then Delete Item
	Next
	Delete Group
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: DELETE A GROUP AND ALL INCLUDED OBJECTS
; ------------------------------------------------------------------------
Function HUD_DeleteGroup(GroupID%)
	Local  Group.SC_Group = Object.SC_Group(GroupID) : If Group = Null Then RuntimeError SC_BreakText("HUD_CancelGroup||The specified group does not exist.",50)
	Local  Item.SC_GroupItem
	
	For Item = Each SC_GroupItem
		If Item\GroupID% = GroupID Then
			HUD_RemoveObject Item\ObjID
			Delete Item
		End If
	Next
	Delete Group
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: PUT AN OBJECT TO A GROUP
; ------------------------------------------------------------------------
Function HUD_AddToGroup(ObjectID%, GroupID%)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID): If Obj   = Null Then RuntimeError SC_BreakText("HUD_AddToGroup||The specified object does not exist.",50)
	Local Group.SC_Group = Object.SC_Group (GroupID) : If Group = Null Then RuntimeError SC_BreakText("HUD_AddToGroup||The specified group does not exist.",50)
	Local Item.SC_GroupItem = New SC_GroupItem
	
	Item\GroupID = GroupID
	Item\ObjID   = ObjectID
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UNGROUP AN OBJECT
; ------------------------------------------------------------------------
Function HUD_RemoveFromGroup(ObjectID%, GroupID%=0)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID): If Obj   = Null Then Return
	Local Group.SC_Group = Object.SC_Group (GroupID) : If Group = Null Then Return
	
	Local Item.SC_GroupItem 
	For Item = Each SC_GroupItem
		If (Item\ObjID = ObjectID) And (GroupID = 0 Or GroupID = Item\GroupID) Then Delete Item : Exit
	Next
End Function


; ########################################################################
; HUD FUNCTIONS
; ########################################################################

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE A HUD IN FRONT OF THE CAMERA
;		   CAMERA
;		      - GENERAL PIVOT
;		         - HUD ROTATE PIVOT / HUD PIVOT / LAYER ROTATE PIVOT / LAYER MESH / OBJECT VERTICES
;		         - HUD ROTATE PIVOT / HUD PIVOT / LAYER ROTATE PIVOT / LAYER MESH / OBJECT VERTICES
; ------------------------------------------------------------------------
Function HUD_Create% (Cam%, HUD_width%=0, HUD_height%=0, zorder%=-1, x%=0, y%=0)
	
	; INIT ENGINE FIRST?
	If SC_DummyMesh = 0 Then
	SC_DummyMesh  = CreateMesh   ()
	SC_DummySurf  = CreateSurface(SC_DummyMesh)
	HideEntity SC_DummyMesh
End If

Local HUDObj.SC_HUD, MainHUD%, zoom#, scale#, aspect#, pivotdist#
If EntityClass(Cam) <> "Camera" Then RuntimeError SC_BreakText("HUD_Create||The specified entity handle is no camera object.",50)
If HUD_width  = 0 Then HUD_width  = GraphicsWidth  ()
If HUD_height = 0 Then HUD_height = GraphicsHeight ()

	; CREATE A GENERAL HUD FOR THIS CAM?
MainHUD = FindChild  (Cam,"GENERAL HUD")
If MainHUD = 0 Then
	zoom      = 1.0
	aspect    = Float(HUD_height) / HUD_width
	scale     = 2.0 / HUD_width
	pivotdist = 1.0001
	
	CameraZoom Cam,zoom ; SET ZOOM TO 1.0 BY DEFAULT
	MainHUD        = CreatePivot()
	EntityParent     MainHUD,Cam,0
	NameEntity       MainHUD,"GENERAL HUD"
	PositionEntity   MainHUD,-1,aspect,pivotdist, 0
	ScaleEntity      MainHUD,scale,-scale,scale
	
	; GET CURRENT ZOOM LEVEL
	Else
	For HUDObj = Each SC_HUD
		If HUDObj\Cam = Cam Then zoom = HUDObj\cam_zoom : Exit
	Next
End If

	; NO ZORDER SPECIFIED - GET HIGHEST + 1
If zorder = -1 Then
	zorder = 0
	For HUDObj = Each SC_HUD
		If HUDObj\zorder >= zorder Then zorder = HUDObj\zorder + 1
	Next
End If

	; CREATE HUD WITH A PARENT PIV
Local ParentPiv% = CreatePivot(MainHUD)
PositionEntity ParentPiv, HUD_width/2,HUD_height/2,0, 0
NameEntity     ParentPiv, "PARENT PIV"

Local Piv%   = CreatePivot(ParentPiv)
PositionEntity Piv, -(HUD_width/2),-(HUD_height/2),0, 0
NameEntity     Piv, "HUD"

	; NEW HUD TYPE OBJECT
HUDObj.SC_HUD	= New SC_HUD
HUDObj\Piv	= Piv
HUDObj\Cam	= Cam
HUDObj\width	= HUD_width
HUDObj\height	= HUD_height
HUDObj\visible	= 1
HUDObj\alpha    = 1.0
HUDObj\zorder   = zorder
HUDObj\cam_zoom = zoom
HUDObj\scalex   = 1.0
HUDObj\scaley   = 1.0
HUDObj\x	= x
HUDObj\y	= y

Return Handle(HUDObj) ; HUD TYPE HANDLE

End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHANGE A HUD'S CAMERA
; ------------------------------------------------------------------------
Function HUD_ChangeCamera (HUD_ID%, Cam%, HUD_width%=0, HUD_height%=0)
	
	Local HUDObj.SC_HUD = Object.SC_HUD( HUD_ID ) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_ChangeCamera||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	
	If HUD_width  = 0 Then HUD_width  = GraphicsWidth  ()
	If HUD_height = 0 Then HUD_height = GraphicsHeight ()
	
	; CREATE A GENERAL HUD FOR THIS CAM?
	Local MainHUD%, zoom#, scale#, aspect#, pivotdist#
	MainHUD = FindChild  (Cam,"GENERAL HUD")
	If MainHUD = 0 Then
		zoom      = 1.0
		aspect    = Float(HUD_height) / HUD_width
		scale     = 2.0 / HUD_width
		pivotdist = 1.0001
		
		CameraZoom Cam,zoom ; SET ZOOM TO 1.0 BY DEFAULT
		MainHUD        = CreatePivot()
		EntityParent     MainHUD,Cam,0
		NameEntity       MainHUD,"GENERAL HUD"
		PositionEntity   MainHUD,-1,aspect,pivotdist, 0
		ScaleEntity      MainHUD,scale,-scale,scale
	; GET CURRENT ZOOM LEVEL
	Else	
		Local Temp.SC_HUD
		For Temp = Each SC_HUD
			If Temp\Cam = Cam Then zoom = Temp\cam_zoom : Exit
		Next
	End If
	
	EntityParent   GetParent(HUDObj\Piv), MainHUD, 0
	PositionEntity GetParent(HUDObj\Piv), HUD_width/2,HUD_height/2,0, 0
	PositionEntity HUDObj\Piv, -(HUD_width/2),-(HUD_height/2),0, 0
	
	; UPDATE HUD TYPE OBJECT
	HUDObj\Cam	= Cam
	HUDObj\width	= HUD_width
	HUDObj\height	= HUD_height
	HUDObj\cam_zoom = zoom
	
	HUD_Position HUD_ID, HUDObj_x, HUDObj_y
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CAMERA ZOOM
;                - USE THIS COMMAND TO ZOOM A CAMERA WITH A HUD ATTACHED
;                  NOTE: ONLY POSITIVE VALUES IF 1 AND GREATER CAN BE USED
; ------------------------------------------------------------------------
Function HUD_SetCameraZoom (Cam%, zoom#)
	
	Local HUDObj.SC_HUD, MainHUD%
	
	If zoom < 1.0 Then zoom = 1.0
	CameraZoom Cam,zoom
	
	MainHUD = FindChild(Cam, "GENERAL HUD") : If MainHUD = 0 Then Return
	PositionEntity MainHUD,EntityX(MainHUD),EntityY(MainHUD),zoom + 0.0001
	
	For HUDObj = Each SC_HUD
		If HUDObj\Cam = Cam Then HUDObj\cam_zoom = zoom
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET ZOOM LEVEL OF A HUD CAM
; ------------------------------------------------------------------------
Function HUD_GetCameraZoom# (Cam%)
	Local HUDObj.SC_HUD
	For   HUDObj = Each SC_HUD
		If HUDObj\Cam = Cam Then Return HUDObj\cam_zoom : Exit
	Next
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SHOW OR HIDE A HUD (OR ALL HUDS)
; ------------------------------------------------------------------------
Function HUD_SetVisibility (HUD_ID%, state%)
	Local HUDObj.SC_HUD = Object.SC_HUD( HUD_ID ) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_SetVisibility||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	HUDObj\visible = state
	If state = True Then ShowEntity HUDObj\Piv Else HideEntity HUDObj\Piv
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETRIEVE VISIBILITY STATE OF A HUD
; ------------------------------------------------------------------------
Function HUD_GetVisibility% (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD( HUD_ID ) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetVisibility||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	Return HUDObj\visible
End Function

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET HUD ALPHA
; ------------------------------------------------------------------------
Function HUD_SetAlpha (HUD_ID%, alpha#)
	
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_SetAlpha||The specified HUD does not exist.",50)
	Local Obj.SC_Object, Layer.SC_Layer
	
	If alpha < 0.0 Then alpha = 0.0 Else If alpha > 1.0 Then alpha = 1.0
	If alpha = HUDObj\alpha Then Return Else HUDObj\alpha = alpha
	
	; UPDATE LAYER OBJECTS
	For Obj.SC_Object = Each SC_Object
		If Obj\HUD_ID = HUD_ID Then 
			Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
			Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD ALPHA
; ------------------------------------------------------------------------
Function HUD_GetAlpha# (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetAlpha||The specified HUD does not exist.",50)
	Return HUDObj\alpha
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SWAP ZORDER OF TWO HUDS
; ------------------------------------------------------------------------
Function HUD_SwapOrder (HUD_ID1%, HUD_ID2%)
	
	Local HUDObj1.SC_HUD = Object.SC_HUD(HUD_ID1) : If HUDObj1 = Null Then RuntimeError SC_BreakText("HUD_SwapOrder||The first specified HUD is not a valid HUD or does not exist.",50)
	Local HUDObj2.SC_HUD = Object.SC_HUD(HUD_ID2) : If HUDObj2 = Null Then RuntimeError SC_BreakText("HUD_SwapOrder||The second specified HUD is not a valid HUD or does not exist.",50)
	Local Layer.SC_Layer
	
	Local temp%    = HUDObj1\zorder
	HUDObj1\zorder = HUDObj2\zorder
	HUDObj2\zorder = temp
	
	For Layer.SC_Layer = Each SC_Layer
		If Layer\HUD_ID = HUD_ID1 Then EntityOrder Layer\Mesh, SC_ENTITYORDER - (HUDObj1\zorder * 1000) - Layer\zorder
		If Layer\HUD_ID = HUD_ID2 Then EntityOrder Layer\Mesh, SC_ENTITYORDER - (HUDObj2\zorder * 1000) - Layer\zorder
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET HUD ZORDER
; ------------------------------------------------------------------------
Function HUD_SetOrder (HUD_ID%, zorder%)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_SetOrder||The specified HUD does not exist.",50)
	Local Layer.SC_Layer 
	
	HUDObj\zorder = zorder
	
	For Layer.SC_Layer = Each SC_Layer
		If Layer\HUD_ID = HUD_ID Then EntityOrder Layer\Mesh, SC_ENTITYORDER - (HUDObj\zorder * 1000) - Layer\zorder
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD ZORDER
; ------------------------------------------------------------------------
Function HUD_GetOrder% (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetOrder||The specified HUD does not exist.",50)
	Return HUDObj\zorder
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: BRING A HUD TO FRONT
; ------------------------------------------------------------------------
Function HUD_ToFront% (HUD_ID%)
	
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_ToFront||The specified HUD does not exist.",50)
	Local zorder% = 0
	
	; GET HIGHEST + 1
	For HUDObj = Each SC_HUD
		If HUDObj\zorder >= zorder Then zorder = HUDObj\zorder + 1
	Next
	
	HUD_SetOrder HUD_ID%, zorder%
	
	Return zorder
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE A HUD ABSOLUTE OR RELATIVE
; ------------------------------------------------------------------------
Function HUD_Move (HUD_ID% ,xs#, ys#, relative% = False)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_Move||The specified HUD does not exist.",50)
	Local ParentPiv%    = GetParent(HUDObj\Piv)
	
	If relative = True  Then MoveEntity      ParentPiv, xs, ys, 0
	If relative = False Then TranslateEntity ParentPiv, xs, ys, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: POSITION A HUD
; ------------------------------------------------------------------------
Function HUD_Position (HUD_ID% ,x%, y%)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_Position||The specified HUD does not exist.",50)
	Local ParentPiv%    = GetParent(HUDObj\Piv)
	PositionEntity ParentPiv, x+HUDObj\width / 2, y+HUDObj\height / 2, 0, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: TURN A HUD
; ------------------------------------------------------------------------
Function HUD_Turn (HUD_ID% ,angle#)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_Turn||The specified HUD does not exist.",50)
	Local ParentPiv%    = GetParent(HUDObj\Piv)
	TurnEntity ParentPiv,0,0,angle, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ROTATE A HUD
; ------------------------------------------------------------------------
Function HUD_SetRotation (HUD_ID% ,angle#)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_SetRotation||The specified HUD does not exist.",50)
	Local ParentPiv%    = GetParent(HUDObj\Piv)
	RotateEntity ParentPiv,0,0,angle, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD ROTATION
; ------------------------------------------------------------------------
Function HUD_GetRotation# (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetRotation||The specified HUD does not exist.",50)
	Local  ParentPiv%    = GetParent(HUDObj\Piv)
	Return EntityRoll(ParentPiv,0)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SCALE HUD
; ------------------------------------------------------------------------
Function HUD_SetScale# (HUD_ID%, scalex#, scaley#)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_SetScale||The specified HUD does not exist.",50)
	HUDObj\scalex = scalex
	HUDObj\scaley = scaley
	Local  ParentPiv%    = GetParent(HUDObj\Piv)
	ScaleEntity ParentPiv, scalex, scaley, 1.0
End Function


Function HUD_GetScaleX# (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetScaleX||The specified HUD does not exist.",50)
	Return HUDObj\scalex
End Function


Function HUD_GetScaleY# (HUD_ID%)
	Local  HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetScaleY||The specified HUD does not exist.",50)
	Return HUDObj\scaley
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD X (ABSOLUTE)
; ------------------------------------------------------------------------
Function HUD_GetX# (HUD_ID%)
	Local HUDObj.SC_HUD = Object.SC_HUD (HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetX||The specified HUD does not exist.",50)
	Local Target = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	TFormPoint 0,0,0, HUDObj\Piv, Target : Return TFormedX()
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD Y (ABSOLUTE)
; ------------------------------------------------------------------------
Function HUD_GetY# (HUD_ID%)
	Local HUDObj.SC_HUD = Object.SC_HUD (HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetY||The specified HUD does not exist.",50)
	Local Target = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	TFormPoint 0,0,0, HUDObj\Piv, Target : Return TFormedY()
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD CORNERS (ABSOLUTE)
; ------------------------------------------------------------------------
Function HUD_GetCorner% (HUD_ID%, corner%, getY% = 0)
	Local HUDObj.SC_HUD = Object.SC_HUD (HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_GetCorner||The specified HUD does not exist.",50)
	
	Local w% = HUDObj\width
	Local h% = HUDObj\height
	Local Target = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	
	Select corner
		Case 0 TFormPoint w/2,h/2,0, HUDObj\Piv, Target : If getY Then Return TFormedY() Else Return TFormedX()
		Case 1 TFormPoint 0,0,0,     HUDObj\Piv, Target : If getY Then Return TFormedY() Else Return TFormedX()
		Case 2 TFormPoint w,0,0,     HUDObj\Piv, Target : If getY Then Return TFormedY() Else Return TFormedX()
		Case 3 TFormPoint w,h,0,     HUDObj\Piv, Target : If getY Then Return TFormedY() Else Return TFormedX()
		Case 4 TFormPoint 0,h,0,     HUDObj\Piv, Target : If getY Then Return TFormedY() Else Return TFormedX()
	End Select
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: LOAD A TEXTURE FROM MEMORY
; ------------------------------------------------------------------------
Function HUD_LoadMemoryResource% (TexHandle%, mode%=4+256, maskR% = -1, maskG% = -1, maskB% = -1)
	
	Local Img%, NewImg%, Tex%, w%, h%, argb%, x%, y%
	Local Texture.SC_Texture, IBuffer%, TBuffer%
	
	If TexHandle = 0 Then RuntimeError SC_BreakText("HUD_LoadMemoryResource||The specified texture does not exist.",50)
	
	; ALREADY LOADED?
	
	For Texture = Each SC_Texture
		If Texture\Texture = TexHandle Then Return Handle(Texture)
	Next
	
	Tex	  = TexHandle
	w         = TextureWidth (TexHandle)
	h         = TextureHeight(TexHandle)
	
	; MASKING?
	If maskR > -1 Or maskG > -1 Or maskB > -1 Then	
		Tex      = CreateTexture(w,h,mode)
		IBuffer% = TextureBuffer(TexHandle)
		TBuffer% = TextureBuffer(Tex)
		
		Dim SC_Img%(w,h)
		LockBuffer IBuffer
		For y = 0 To h-1 : For x = 0 To w-1 : SC_Img(x,y) = ReadPixelFast(x,y,IBuffer) And $00FFFFFF : Next : Next
		UnlockBuffer IBuffer
		
		LockBuffer   TBuffer
		For y = 0 To h-1
			For x = 0 To w-1
				argb = SC_Img(x,y)
				If argb = ((maskR Shl 16)+(maskG Shl 8)+maskB)
					WritePixelFast x,y,($00000000),TBuffer
				Else
					WritePixelFast x,y,(argb Or $ff000000),TBuffer
				EndIf
			Next
		Next
		UnlockBuffer TBuffer
	End If
	
	Texture.SC_Texture= New SC_Texture
	Texture\Texture		= Tex
	Texture\textureFile$ 	= Tex
	Texture\tex_width    	= w
	Texture\tex_height   	= h
	Texture\mode		= mode
	
	; RETURN HANDLE TO TEXTURES'S TYPE
	Return Handle(Texture)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: LOAD A TEXTURE FILE
; ------------------------------------------------------------------------
Function HUD_LoadImageResource% (fileName$, mode%=4+256, maskR% = -1, maskG% = -1, maskB% = -1)
	
	Local Img%, NewImg%, Tex%, ow%, oh%, w%, h%, argb%, mask%, x%, y%
	Local Texture.SC_Texture
	Local IBuffer%, TBuffer%
	
	; MASK?
	If maskR > -1 Or maskG > -1 Or maskB > -1 Then mask = 1
	
	; ALREADY LOADED?
	For Texture = Each SC_Texture
		If Texture\textureFile$ = fileName$ And Texture\mode = mode Then Return Handle(Texture)
	Next
	
	Img = LoadImage(fileName$)
	If Img = 0 Then RuntimeError SC_BreakText("HUD_LoadImageResource||Could not load the specified texture file:|"+fileName$,50)
	
	; CHECK WIDTH / HEIGHT
	ow = ImageWidth  (Img)
	oh = ImageHeight (Img)
	w = 2 Shl (Len(Int(Bin( ( ow ) -1)))-1)
	h = 2 Shl (Len(Int(Bin( ( oh ) -1)))-1)
	
	; CORRECT SIZE - LOAD
	If w = ow And h = oh Then Tex = LoadTexture (fileName$, mode)
	
	; INCORRECT SIZE OR NEEDS CUSTOM MASKING
	If w <> ow Or h <> oh Or mask = 1 Then	
		If maskR < 0 Then maskR = 0
		If maskG < 0 Then maskG = 0
		If maskB < 0 Then maskB = 0
		Tex      = CreateTexture(w,h,mode)
		IBuffer% = ImageBuffer  (Img)
		TBuffer% = TextureBuffer(Tex)
		
		Dim SC_Img%(ow,oh)
		LockBuffer IBuffer
		For y = 0 To oh-1 : For x = 0 To ow-1 : SC_Img(x,y) = ReadPixelFast(x,y,IBuffer) And $00FFFFFF : Next : Next
		UnlockBuffer IBuffer
		
		LockBuffer   TBuffer
		For y = 0 To h-1
			For x = 0 To w-1
				If x < ow And y < oh Then
					argb = SC_Img(x,y)
					If argb = ((maskR Shl 16)+(maskG Shl 8)+maskB)
						WritePixelFast x,y,($00000000),TBuffer
					Else
						WritePixelFast x,y,(argb Or $ff000000),TBuffer
					EndIf
				Else
					WritePixelFast x,y,($00000000),TBuffer
				End If
			Next
		Next
		UnlockBuffer TBuffer
	End If
	
	FreeImage Img
	
	Texture.SC_Texture= New SC_Texture
	Texture\Texture		= Tex
	Texture\textureFile$ 	= fileName$
	Texture\tex_width    	= w
	Texture\tex_height   	= h
	Texture\mode		= mode
	
	; RETURN HANDLE TO TEXTURES'S TYPE
	Return Handle(Texture)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: LOAD BITMAP TEXTURE & FONT METRICS DATA
; ------------------------------------------------------------------------
Function HUD_LoadFont% (textureFile$, dataFile$, mode%=4+256, maskR%=-1, maskG%=-1, maskB%=-1)
	
	Local Font.SC_Font, TextureID%, File%, i%, ascii%
	
	; TEXTURE ALREADY LOADED?
	For Font.SC_Font = Each SC_Font
		If Font\textureFile$ = textureFile$ Then Return Handle(Font) : Exit
	Next	
	
	; LOAD TEXTURE
	TextureID% = HUD_LoadImageResource(textureFile$, mode, maskR, maskG, maskB)
	
	; LOAD BINARY DATA
	If Right(dataFile$,3) = "dat" Then
	
	File% = ReadFile(dataFile$) : If File = 0 Then RuntimeError SC_BreakText("HUD_LoadFont||Could not load font data file:|(" + dataFile$ + ")",50)
	Font.SC_Font	 	= New SC_Font
	Font\TextureID		= TextureID
	Font\textureFile$	= textureFile$
	Font\tex_width		= ReadInt (File)
	Font\tex_height		= ReadInt (File)
	Font\maskR 		= ReadInt (File)
	Font\maskG 		= ReadInt (File)
	Font\maskB 		= ReadInt (File)
	Font\num_chars		= ReadInt (File)
	Font\line_height	= ReadInt (File) 
	Font\char_widths [32]	= ReadInt (File)    ; SPACE CHAR
	Font\char_heights[32]	= Font\line_height  ; SPACE CHAR
	Font\max_width		= ReadInt (File)
	
		; READ INCLUDED CHARS
	For i% = 1 To Font\num_chars
		ascii% = ReadInt (File)
		Font\char_x_positions [ascii] = ReadInt (File)
		Font\char_y_positions [ascii] = ReadInt (File)
		Font\char_widths      [ascii] = ReadInt (File)
		Font\char_heights     [ascii] = Font\line_height
	Next
	CloseFile File
End If

	; RETURN HANDLE TO FONT'S TYPE
Return Handle(Font)

End Function


; ########################################################################
; LAYER FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
;   PUBLIC FUNCTION: CREATE A LAYER WITH 1 SURFACE (TEXTURE/FONT)
; ------------------------------------------------------------------------
Function HUD_CreateLayer% (HUD_ID%, TextureID%=0, zorder%=-1)
	
	Local HUDObj.SC_HUD      = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_CreateLayer||You specified an invalid HUD ID. Make sure, this HUD exists.",50)
	Local Texture.SC_Texture = Object.SC_Texture(TextureID)
	Local Font.SC_Font       = Object.SC_Font(TextureID)
	Local Layer.SC_Layer
	Local FontID%, Brush%
	
	;If Texture = Null And Font = Null Then RuntimeError SC_BreakText("HUD_CreateLayer||The specified font or texture does not exist.",50)
	
	; IS FONT? GET TEXTURE
	If Font <> Null Then
		FontID    = Handle(Font)
		TextureID = Font\TextureID
		Texture   = Object.SC_Texture(TextureID)
	End If
	
	; NO ZORDER? SET ON TOP
	If zorder = -1 Then
		zorder = 0
		For Layer = Each SC_Layer
			If Layer\HUD_ID = HUD_ID
				If Layer\zorder >= zorder Then zorder = Layer\zorder + 1
			End If
		Next
	End If
	
	; CREATE ROTATE PIVOT
	Local ParentPiv% = CreatePivot(HUDObj\Piv)
	PositionEntity     ParentPiv,HUDObj\width / 2, HUDObj\height / 2, 0, 0
	NameEntity         ParentPiv, "PARENT PIV"
	
	Layer.SC_Layer = New SC_Layer
	Layer\Mesh     = CreateMesh()
	EntityParent     Layer\Mesh, ParentPiv, 0
	EntityFX         Layer\Mesh, SC_HUD_FX
	PositionEntity   Layer\Mesh,-(HUDObj\width / 2) - .5,-(HUDObj\height / 2) - .5,0, 0
	EntityOrder      Layer\Mesh, SC_ENTITYORDER - (HUDObj\zorder * 1000) - zorder
	NameEntity       Layer\Mesh, Handle(Layer)
	Layer\HUD_ID    = HUD_ID
	Layer\zorder    = zorder
	Layer\alpha     = 1.0
	Layer\visible   = 1
	Layer\scalex    = 1.0
	Layer\scaley    = 1.0
	
	; HAS FONT OR TEXTURE?
	If Texture <> Null Or Font <> Null Then
		Brush     	= CreateBrush()
		BrushTexture      Brush, Texture\Texture
		Layer\Surf      = CreateSurface (Layer\Mesh, Brush)
		FreeBrush         Brush
		Layer\TextureID = TextureID
		Layer\FontID    = FontID
	; USE FOR SHAPES
		Else 
		Layer\Surf      = CreateSurface (Layer\Mesh)
		Layer\ShapeSurf = Layer\Surf
	End If
	
	Return Handle(Layer)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET / CHANGE A LAYER'S TEXTURE
; ------------------------------------------------------------------------
Function HUD_SetLayerTexture% (LayerID%, TextureID%)
	
	Local Layer.SC_Layer     = Object.SC_Layer(LayerID)     : If Layer   = Null Then RuntimeError SC_BreakText("HUD_SetLayerTexture||The specified layer does not exist.",50)
	Local Texture.SC_Texture = Object.SC_Texture(TextureID) : If Texture = Null Then RuntimeError SC_BreakText("HUD_SetLayerTexture||The specified texture does not exist or is a font. If you want to apply a font, create a new layer.",50)
	Local ImageObj.SC_Image
	Local Obj.SC_Object
	
	Local Brush  = CreateBrush()
	BrushTexture Brush, Texture\Texture
	PaintSurface GetSurface(Layer\Mesh,1), Brush
	FreeBrush    Brush
	Layer\TextureID = TextureID
	
	; LOOP THROUGH LAYER'S OBEJCTS:
	
	For Obj = Each SC_Object
		If Obj\LayerID = LayerID Then
			ImageObj = Object.SC_Image(Obj\ImageID)
			
			If ImageObj <> Null Then ImageObj\TextureID = Handle(Texture)
		End If
		
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET ID OF A LAYER'S TEXTURE
; ------------------------------------------------------------------------
Function HUD_GetLayerTexture% (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerTexture||The specified layer does not exist.",50)
	Return Layer\TextureID
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET ID OF A LAYER'S TEXTURE
; ------------------------------------------------------------------------
Function HUD_GetTextureHandle% (TextureID%)
	
	Local  Texture.SC_Texture = Object.SC_Texture(TextureID)
	Local  FontObj.SC_Font    = Object.SC_Font   (TextureID)
	
	If FontObj <> Null Then Texture = Object.SC_Texture(FontObj\TextureID)
	
	If Texture = Null Then RuntimeError SC_BreakText("HUD_GetTextureHandle||The specified texture resource or font does not exist.",50)
	
	
	Return Texture\Texture
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE A LAYER ABSOLUTE OR RELATIVE
; ------------------------------------------------------------------------
Function HUD_MoveLayer (LayerID% ,xs#, ys#, relative% = False)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_MoveLayer||The specified layer does not exist.",50)
	Local ParentPiv%     = GetParent(Layer\Mesh)
	If relative = True  Then MoveEntity      ParentPiv, xs, ys, 0
	If relative = False Then TranslateEntity ParentPiv, xs, ys, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: POSITION A LAYER
; ------------------------------------------------------------------------
Function HUD_PositionLayer (LayerID% ,x%, y%, onScreen% = False)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_PositionLayer||The specified layer does not exist.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD  (Layer\HUD_ID)
	Local ParentPiv%     = GetParent(Layer\Mesh)
	
	; ABSOLUTE SCREEN POSITION?
	If onScreen Then
		Local MainHUD% = GetParent(GetParent(HUDObj\Piv))
		TFormPoint x,y,0,MainHUD,HUDObj\Piv
		x = Floor(TFormedX())
		y = Floor(TFormedY())
	End If
	
	PositionEntity ParentPiv, x+HUDObj\width / 2, y+HUDObj\height / 2, 0, 0
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: TURN A LAYER
; ------------------------------------------------------------------------
Function HUD_TurnLayer (LayerID% ,angle#)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_TurnLayer||The specified layer does not exist.",50)
	Local ParentPiv%     = GetParent(Layer\Mesh)
	TurnEntity ParentPiv,0,0,angle, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ROTATE A LAYER
; ------------------------------------------------------------------------
Function HUD_SetLayerRotation (LayerID% ,angle#)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerRotation||The specified layer does not exist.",50)
	Local ParentPiv%     = GetParent(Layer\Mesh)
	RotateEntity ParentPiv,0,0,angle, 0
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER ROTATION
; ------------------------------------------------------------------------
Function HUD_GetLayerRotation# (LayerID%)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerRotation||The specified layer does not exist.",50)
	Local ParentPiv%     = GetParent(Layer\Mesh)
	Return EntityRoll(ParentPiv,0)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SCALE LAYER
; ------------------------------------------------------------------------
Function HUD_SetLayerScale# (LayerID%, scalex#, scaley#)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerScale||The specified layer does not exist.",50)
	Layer\scalex = scalex
	Layer\scaley = scaley
	Local  ParentPiv%    = GetParent(Layer\Mesh)
	ScaleEntity ParentPiv, scalex, scaley, 1.0
End Function


Function HUD_GetLayerScaleX# (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerScaleX||The specified layer does not exist.",50)
	Return Layer\scalex
End Function


Function HUD_GetLayerScaleY# (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerScaleY||The specified layer does not exist.",50)
	Return Layer\scaley
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER X (ABSOLUTE / RELATIVE)
; ------------------------------------------------------------------------
Function HUD_GetLayerX# (LayerID%, onScreen% = False)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerX||The specified layer does not exist.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD  (Layer\HUD_ID)
	Local Target%
	If onScreen = False Then Target = HUDObj\Piv Else Target = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	TFormPoint 0,0,0, Layer\Mesh, Target : Return TFormedX() + .5
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER Y (ABSOLUTE / RELATIVE)
; ------------------------------------------------------------------------
Function HUD_GetLayerY# (LayerID%, onScreen% = False)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerY||The specified layer does not exist.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD  (Layer\HUD_ID)
	Local Target%
	If onScreen = False Then Target = HUDObj\Piv Else Target = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	TFormPoint 0,0,0, Layer\Mesh, Target : Return TFormedY() + .5
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER CORNERS (ABSOLUTE / RELATIVE)
; ------------------------------------------------------------------------
Function HUD_GetLayerCorner# (LayerID%, corner%, getY% = 0, onScreen% = False )
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerCorner||The specified layer does not exist.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD  (Layer\HUD_ID)
	
	Local w% = HUDObj\width
	Local h% = HUDObj\height
	Local Target%
	
	If onScreen = False Then
		; RELATIVE (AS SEEN FROM PARENT HUD)
		Target  = HUDObj\Piv
	Else
		; ABSOLUTE (AS SEEN ON SCREEN)
		Target  = GetParent(GetParent(HUDObj\Piv)) ; MAIN HUD
	End If
	
		Select corner
		Case 0 TFormPoint w/2,h/2,0, Layer\Mesh, Target : If getY Then Return TFormedY() + .5 Else Return TFormedX() + .5
		Case 1 TFormPoint 0,0,0,     Layer\Mesh, Target : If getY Then Return TFormedY() + .5 Else Return TFormedX() + .5
		Case 2 TFormPoint w,0,0,     Layer\Mesh, Target : If getY Then Return TFormedY() + .5 Else Return TFormedX() + .5
		Case 3 TFormPoint w,h,0,     Layer\Mesh, Target : If getY Then Return TFormedY() + .5 Else Return TFormedX() + .5
		Case 4 TFormPoint 0,h,0,     Layer\Mesh, Target : If getY Then Return TFormedY() + .5 Else Return TFormedX() + .5
	End Select
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET LAYER BLEND MODE
; ------------------------------------------------------------------------
Function HUD_SetLayerBlend (LayerID%, blendmode%)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerBlend||You specified an invalid layer ID. Make sure, this layer exists.",50)
	EntityBlend Layer\Mesh, blendmode
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET LAYER ALPHA
; ------------------------------------------------------------------------
Function HUD_SetLayerAlpha (LayerID%, alpha#)
	
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerAlpha||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local Obj.SC_Object
	
	If alpha < 0.0 Then alpha = 0.0 Else If alpha > 1.0 Then alpha = 1.0
	If alpha = Layer\alpha Then Return Else Layer\alpha = alpha
	
	; UPDATE LAYER OBJECTS
	For Obj.SC_Object = Each SC_Object
		If Obj\LayerID = LayerID Then 
			Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
			Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER ALPHA
; ------------------------------------------------------------------------
Function HUD_GetLayerAlpha# (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerAlpha||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Return Layer\alpha
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SHOW / HIDE A LAYER
; ------------------------------------------------------------------------
Function HUD_SetLayerVisibility (LayerID%, visible%)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerVisibility||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Layer\visible = visible
	If visible Then ShowEntity Layer\Mesh Else HideEntity Layer\Mesh
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF A LAYER IS VISIBLE
; ------------------------------------------------------------------------
Function HUD_GetLayerVisibility% (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerVisibility||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Return Layer\visible
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET SHADOW OF ALL LAYER OBJECTS AT ONCE
; ------------------------------------------------------------------------
Function HUD_SetLayerShadow (LayerID%, mode%,  offset%=0, override% = False)
	
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerShadow||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local Obj.SC_Object
	
	Layer\shadow_offset = offset
	
	; UPDATE LAYER OBJECTS
	For Obj.SC_Object = Each SC_Object
		If Obj\LayerID = LayerID Then
			If Obj\shadow_offset = 0 Or (Obj\shadow_offset <> 0 And override = True) Then
				HUD_SetObjectShadow Handle(Obj), mode%, offset
			End If
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SWAP ZORDER OF TWO LAYERS
; ------------------------------------------------------------------------
Function HUD_SwapLayerOrder (LayerID1%, LayerID2%)
	
	Local Layer1.SC_Layer = Object.SC_Layer(LayerID1) : If Layer1 = Null Then RuntimeError SC_BreakText("HUD_SwapLayerOrder||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local Layer2.SC_Layer = Object.SC_Layer(LayerID2) : If Layer2 = Null Then RuntimeError SC_BreakText("HUD_SwapLayerOrder||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local HUDObj.SC_HUD   = Object.SC_HUD  (Layer1\HUD_ID)
	
	If Layer1\HUD_ID <> Layer2\HUD_ID Then RuntimeError SC_BreakText("HUD_SwapLayerOrder||Both layers must share the same HUD. Otherwise swap HUD order.",50)
	
	Local temp%   = Layer1\zorder
	Layer1\zorder = Layer2\zorder
	Layer2\zorder = temp
	
	EntityOrder   Layer1\Mesh, SC_ENTITYORDER - (HUDObj\zorder * 1000) - Layer1\zorder
	EntityOrder   Layer2\Mesh, SC_ENTITYORDER - (HUDObj\zorder * 1000) - Layer2\zorder
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET LAYER ZORDER
; ------------------------------------------------------------------------
Function HUD_SetLayerOrder (LayerID%, zorder%)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetLayerOrder||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD  (Layer\HUD_ID)
	Layer\zorder = zorder
	EntityOrder Layer\Mesh, SC_ENTITYORDER - (HUDObj\zorder * 1000) - Layer\zorder
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAYER ZORDER
; ------------------------------------------------------------------------
Function HUD_GetLayerOrder% (LayerID%)
	Local  Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetLayerOrder||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Return Layer\zorder
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: BRING A LAYER TO FRONT
; ------------------------------------------------------------------------
Function HUD_LayerToFront% (LayerID%)
	
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_LayerToFront||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local Layer2.SC_Layer
	
	Local zorder% = 0
	
	For Layer2 = Each SC_Layer
		If Layer2\HUD_ID = Layer\HUD_ID
			If Layer2\zorder >= zorder Then zorder = Layer2\zorder + 1
		End If
	Next
	
	HUD_SetLayerOrder LayerID%, zorder%
	
	Return zorder
	
End Function


; ########################################################################
; GENERAL OBJECT FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
;   PUBLIC FUNCTION: GET STATISTICS
; ------------------------------------------------------------------------
Function HUD_GetStats$ ()
	
	Local Obj.SC_Object
	Local HUDObj.SC_HUD
	Local Layer.SC_Layer
	Local FX.SC_FX
	Local HUDs%, surfs%, objects%, vertices%, effects%, i%, txt$
	
	For HUDObj = Each SC_HUD    : HUDs = HUDs + 1 : Next
	For Obj    = Each SC_Object : objects = objects + 1 : Next
	For Layer  = Each SC_Layer  : surfs   = surfs + 1   : vertices = vertices + CountVertices(Layer\Surf) : Next
	For FX     = Each SC_FX     : effects = effects + 1 : Next
	
	txt$ = "HUDS: " + HUDs + Chr(13)
	txt$ = txt$ + "Objects: "        + objects + Chr(13)
	txt$ = txt$ + "HUD Surfaces: "       + surfs + Chr(13)
	txt$ = txt$ + "HUD Vertices: "   + vertices + Chr(13)
	txt$ = txt$ + "Effects: "        + effects + Chr(13)
	txt$ = txt$ + "Updates: "        + SC_updates + Chr(13)
	txt$ = txt$ + "Rebuilds: "       + SC_rebuilds + Chr(13)
	txt$ = txt$ + "Updated in: "     + SC_buildtime + " ms" + Chr(13)
	txt$ = txt$ + "Time per frame: " + (SC_Now - SC_LastStats) + " ms" + Chr(13)
	txt$ = txt$ + "FPS: " + SC_FPS
	
	SC_LastStats = SC_Now
	
	Return txt$
	
End Function


; ------------------------------------------------------------------------
;   PUBLIC FUNCTION: GET TYPE OF AN OBJECT
; ------------------------------------------------------------------------
Function HUD_GetObjectType$ (ObjectID%)
	Local Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Return
		Select Obj\typ
			Case SC_TEXT  Return "TEXT"
			Case SC_IMAGE Return "IMAGE"
			Case SC_TILED Return "TILED IMAGE"
			Case SC_SHAPE Return "SHAPE"
		End Select
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SWAP ZORDER OF TWO OBJECTS
; ------------------------------------------------------------------------
Function HUD_SwapObjectOrder (ObjectID1%, ObjectID2%)
	
	Local Obj1.SC_Object = Object.SC_Object(ObjectID1) : If Obj1 = Null Then RuntimeError SC_BreakText("HUD_SwapObjectOrder||The first specified object does not exist.",50)
	Local Obj2.SC_Object = Object.SC_Object(ObjectID2) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_SwapObjectOrder||The second specified object does not exist.",50)
	
	If Obj1\LayerID <> Obj2\LayerID Then RuntimeError SC_BreakText("HUD_SwapObjectOrder||Both objects must share the same layer. Otherwise swap layer order or HUD order.",50)
	
	Local temp% = Obj1\zorder
	Obj1\zorder = Obj2\zorder
	Obj2\zorder = temp
	
	SC_SortObjects
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj1\LayerID )
	Layer\rebuild = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET OBJECT ZORDER
; ------------------------------------------------------------------------
Function HUD_SetObjectOrder (ObjectID%, zorder%)
	Local  Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectOrder||The specified object does not exist.",50)
	
	Obj\zorder = Abs(zorder)
	
	SC_SortObjects
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\rebuild = 1
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT ZORDER
; ------------------------------------------------------------------------
Function HUD_GetObjectOrder% (ObjectID%)
	Local  Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectOrder||The specified object does not exist.",50)
	Return Obj\zorder
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT'S LAYER ID
; ------------------------------------------------------------------------
Function HUD_GetObjectLayer% (ObjectID%)
	Local  Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectLayer||The specified object does not exist.",50)
	Return Obj\LayerID
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: BRING AN OBJECT TO FRONT
; ------------------------------------------------------------------------
Function HUD_ObjectToFront% (ObjectID%)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_ObjectToFront||The specified object does not exist.",50)
	Local Obj2.SC_Object
	Local zorder% = 0
	
	For Obj2 = Each SC_Object
		If Obj2\LayerID = Obj\LayerID
			If Obj2\zorder >= zorder Then zorder = Obj2\zorder + 1
		End If
	Next
	
	HUD_SetObjectOrder ObjectID, zorder
	
	Return zorder
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: COPY OBJECTS
; ------------------------------------------------------------------------
Function HUD_CreateCopy% (ObjectID%, offx%=0, offy%=0)
	
	Local Source.SC_Object = Object.SC_Object(ObjectID) : If Source = Null Then RuntimeError SC_BreakText("HUD_CreateCopy||The specified object does not exist.",50)
	Local Layer.SC_Layer   = Object.SC_Layer (Source\LayerID)
	Local Copy.SC_Object
	Local ImageObj.SC_Image
	Local ImageObj2.SC_Image
	Local AnimObj.SC_Anim
	
	Local CopyID%, typ$
	Local x = Source\x + offx
	Local y = Source\y + offy
	
	Select Source\typ
		Case SC_TEXT  ; TEXT
			Local TextObj.SC_Text = Object.SC_Text(Source\TextID)
			CopyID   = HUD_CreateText  (Source\LayerID, x, y, TextObj\txt$, TextObj\text_flow$, TextObj\wrap_width, "", "", Source\zorder)
			
		Case SC_IMAGE ; IMAGE
			ImageObj = Object.SC_Image(Source\ImageID)
			AnimObj  = Object.SC_Anim (Source\AnimID)
			CopyID   = HUD_CreateImage (Source\LayerID, x, y, ImageObj\clip_x, ImageObj\clip_y, ImageObj\clip_w, ImageObj\clip_h, "", "", Source\zorder)
			
		Case SC_TILED ; TILED IMAGE
			ImageObj = Object.SC_Image(Source\ImageID)
			AnimObj  = Object.SC_Anim (Source\AnimID)
			CopyID   = HUD_CreateTiledImage (Source\LayerID, x, y, ImageObj\img_w, ImageObj\img_h, ImageObj\clip_x, ImageObj\clip_y, ImageObj\clip_w, ImageObj\clip_h, "", "", Source\zorder)
			
		Case SC_SHAPE ; SHAPE
			Local  ShapeObj.SC_Shape = Object.SC_Shape(Source\ShapeID)
			Select ShapeObj\typ$
				Case 1 typ$ = "RECTANGLE"
				Case 2 typ$ = "PERCENTBAR"
				Case 3 typ$ = "LINE"      
				Case 4 typ$ = "TRIANGLE"  
				Case 5 typ$ = "CIRCLE"    
				Case 6 typ$ = "RING"      
				Case 7 typ$ = "STAR"      
				Case 8 typ$ = "HOLLOWSTAR"
				Case 9 typ$ = "DOTRING"   
			End Select
			CopyID   = HUD_CreateShape (Source\LayerID, typ$, ShapeObj\param1, ShapeObj\param2, x, y, Source\width, Source\height, "", "", Source\zorder)
			
		Default Return
	End Select
	
	Copy.SC_Object = Object.SC_Object(CopyID)
	
	Copy\scalex	 = Source\scalex
	Copy\scaley	 = Source\scaley
	Copy\visible     = Source\visible
	Copy\alpha	 = Source\alpha
	Copy\R1		 = Source\R1
	Copy\G1		 = Source\G1
	Copy\B1		 = Source\B1
	Copy\R2		 = Source\R2
	Copy\G2		 = Source\G2
	Copy\B2		 = Source\B2
	Copy\gradient	 = Source\gradient
	Copy\bg_a	 = Source\bg_a
	Copy\b_a	 = Source\b_a
	Copy\originx	 = Source\originx
	Copy\originy	 = Source\originy
	Copy\shadow_offset= Source\shadow_offset
	Copy\rotation	 = Source\rotation
	Copy\bg_R	 = Source\bg_R
	Copy\bg_G	 = Source\bg_G
	Copy\bg_B	 = Source\bg_B
	Copy\b_R	 = Source\b_R
	Copy\b_G	 = Source\b_G
	Copy\b_B	 = Source\b_B
	Copy\b_size	 = Source\b_size
	
	; IS IMAGE?
	If ImageObj <> Null Then
		; MIRRORED?
		ImageObj2           = Object.SC_Image (Copy\ImageID)
		ImageObj2\mirroredx = ImageObj\mirroredx
		ImageObj2\mirroredy = ImageObj\mirroredy
		; ANIMATED?
		If AnimObj <> Null Then
			HUD_AnimateImage CopyID, AnimObj\startx, AnimObj\starty, AnimObj\frames, AnimObj\framesH, AnimObj\mode$, AnimObj\loops, AnimObj\speed
			HUD_SetAnimFrame CopyID, AnimObj\frame, False
			If AnimObj\active = 0 Then HUD_PauseImageAnimations CopyID
		End If		
	End If
	
	; COPY COLLISION SHAPE, TOO?
	Local Col.SC_ColShape = Object.SC_ColShape (Source\ColID)
	If Col <> Null Then HUD_CopyCollisionShape (CopyID%, ObjectID%)
	
	Return CopyID
	
End Function


; ########################################################################
; OBJECT VERTEX COLORS
; ########################################################################

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: COUNT OBJECT VERTICES
; ------------------------------------------------------------------------
Function HUD_CountObjectVertices% (ObjectID%)
	Local  Obj.SC_Object  = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_CountObjectVertices||The specified object does not exist.",50)
	If Obj\vx < 0 Then SC_RenderVertices ObjectID ; NOT RENDERED YET?
	
	Return (Obj\lx-Obj\vx)+1
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ENABLE / DISABLE OBJECT VERTEX COLOR
; ------------------------------------------------------------------------
Function HUD_EnableVertexColor (ObjectID%, state%)
	Local Obj.SC_Object    = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_UseVertexColor||The specified object does not exist.",50)
	Local VColor.SC_VColor = Object.SC_VColor(Obj\VColorID)
	
	; DISABLE?
	If state = False Then
		Obj\VColorID = 0 : If VColor <> Null Then Delete VColor
	; ENABLE?
	Else
		If VColor = Null Then
			Local i%
			Local a% = Obj\alpha * 255
			Local c% = HUD_CountObjectVertices(ObjectID)-1
			If c  > SC_MAXCOLORVERTS Then RuntimeError SC_BreakText("HUD_EnableVertexColor||The specified object has too many vertices. Increase the constant SC_MAXCOLORVERTS on top of 'Sprite Candy.bb' to at least "+c+" .",50)
			
			VColor       = New SC_VColor
			VColor\ObjID = ObjectID
			Obj\VColorID = Handle(VColor)
			For i = 0 To c : VColor\ARGB[i] = (a Shl 24 Or Obj\R1 Shl 16 Or Obj\G1 Shl 8 Or Obj\B1 Shl 0) : Next
		End If
	End If
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET INDIVIDUAL TEXT LINE COLOR USING HUD_EnableVertexColor
; ------------------------------------------------------------------------
Function HUD_SetTextLineColor (ObjectID%, linenum%, R%, G%, B%, A#=1.0)
	
	
	Local Obj.SC_Object   = Object.SC_Object(ObjectID)  : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetTextLineColor||The specified object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetTextLineColor||The specified object does not seem to be a text object.",50)
	
	Local cnt% = HUD_CountObjectVertices(ObjectID)
	If cnt > SC_MAXCOLORVERTS Then RuntimeError SC_BreakText("HUD_SetTextLineColor||The specified object has too many vertices. Increase the constant SC_MAXCOLORVERTS on top of 'Sprite Candy.bb' to at least "+cnt+" .",50)
	
	Local i%, vx%
	Local currline% = 0
	Local char%     = 0
	Local t$        = HUD_GetText(ObjectID)
	
	HUD_EnableVertexColor ObjectID, True
	
	For i = 1 To Len(t$)
		If Mid(t$,i,1) = "|" Then currline = currline + 1 : i = i + 1
		If Mid(t$,i,1) <> " " Then char = char + 1
		If currline = linenum-1 Then
			vx = (char-1)*4
			HUD_SetVertexColor ObjectID, vx+0, R,G,B,A
			HUD_SetVertexColor ObjectID, vx+1, R,G,B,A
			HUD_SetVertexColor ObjectID, vx+2, R,G,B,A
			HUD_SetVertexColor ObjectID, vx+3, R,G,B,A
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET INDIVIDUAL VERTEX COLOR
; ------------------------------------------------------------------------
Function HUD_SetVertexColor (ObjectID%, index%, R%, G%, B%, A# = 1.0)
	Local Obj.SC_Object    = Object.SC_Object(ObjectID)     : If Obj    = Null Then RuntimeError SC_BreakText("HUD_SetVertexColor||The specified object does not exist.",50)
	Local VColor.SC_VColor = Object.SC_VColor(Obj\VColorID) : If VColor = Null Then Return
	
	; ARRAY FIELD DOES NOT EXIST?
	If index > SC_MAXCOLORVERTS Then Return
	
	; CHECK COLORS
	If Abs(R) > 255 Then R = 255
	If Abs(G) > 255 Then G = 255
	If Abs(B) > 255 Then B = 255
	If Abs(A) > 1.0 Then A = 1
	
	A = Int(A * 255) : VColor\ARGB[index] = (A Shl 24 Or R Shl 16 Or G Shl 8 Or B Shl 0)
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET INDIVIDUAL VERTEX COLOR
; ------------------------------------------------------------------------
Function HUD_SetVertexAlpha (ObjectID%, index%, A#)
	Local Obj.SC_Object    = Object.SC_Object(ObjectID)     : If Obj    = Null Then RuntimeError SC_BreakText("HUD_SetVertexAlpha||The specified object does not exist.",50)
	Local VColor.SC_VColor = Object.SC_VColor(Obj\VColorID) : If VColor = Null Then Return
	
	; ARRAY FIELD DOES NOT EXIST?
	If index > SC_MAXCOLORVERTS Then Return
	
	; CHECK ALPHA, GET RGB
	If Abs(A) > 1.0 Then A = 1.0
	Local R% = (VColor\ARGB[index] Shr 16) And $FF
	Local G% = (VColor\ARGB[index] Shr 8) And $FF
	Local B% =  VColor\ARGB[index] And $FF
	
	A = Int(A * 255) : VColor\ARGB[index] = (A Shl 24 Or R Shl 16 Or G Shl 8 Or B Shl 0)
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET INDIVIDUAL VERTEX COLOR
; ------------------------------------------------------------------------
Function HUD_GetVertexColor# (ObjectID%, index%, what$="")
	Local Obj.SC_Object    = Object.SC_Object(ObjectID)     : If Obj    = Null Then RuntimeError SC_BreakText("HUD_GetVertexColor||The specified object does not exist.",50)
	Local VColor.SC_VColor = Object.SC_VColor(Obj\VColorID) : If VColor = Null Then Return
	what$ = Upper(what$)
	
	; ARRAY FIELD DOES NOT EXIST?
	If index > SC_MAXCOLORVERTS Then Return 0
	
	Select what$
		Case "R" Return (VColor\ARGB[index] Shr 16) And $FF
			
		Case "G" Return (VColor\ARGB[index] Shr 8)  And $FF
		Case "B" Return  VColor\ARGB[index] And $FF
		Case "A" Return ((VColor\ARGB[index] Shr 24) And $FF)/255.0
		Default  Return VColor\ARGB[index]
	End Select
End Function


; ########################################################################
; OBJECT COLORS, ALPHA, SHADOWS, BACKGROUNDS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: HIDE / SHOW AN OBJECT
; ------------------------------------------------------------------------
Function HUD_SetObjectVisibility (ObjectID%, state%)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	If state <> 0 state = 1
		
	; HANDLE GROUP? ----------
		If Obj = Null Then
			Local Group.SC_Group    = Object.SC_Group    (ObjectID)
			Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
			If Group <> Null
				For Item = Each SC_GroupItem
					If Item\GroupID = Handle(Group) Then HUD_SetObjectVisibility Handle(Item), state
				Next
				Return
		; LOOPED CALL
			Else If Item <> Null
				Obj      = Object.SC_Object (Item\ObjID)
				ObjectID = Item\ObjID
			End If
		; NOTHING FOUND?
			If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectVisibility||The specified object or group does not exist.",50)
		End If
	; ------------------------
		
		Local Layer.SC_Layer = Object.SC_Layer (Obj\LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_SetObjectVisibility||Could not find object's layer type object.",50)
		If state <> Obj\visible Then Layer\rebuild = 1
		Obj\visible = state
End Function


Function HUD_GetObjectVisibility% (ObjectID%)
	Local  Obj.SC_Object  = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectVisibility||The specified object does not exist.",50)
	Local  Layer.SC_Layer = Object.SC_Layer (Obj\LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_GetObjectVisibility||Could not find object's layer type object.",50)
	Return Obj\visible
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: COLORIZE AN OBJECT
; ------------------------------------------------------------------------
Function HUD_SetObjectColor (ObjectID%, R#, G#, B#, alpha# = -1)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID )
	
	
	; HANDLE GROUP? ----------
	
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectColor Handle(Item), R, G, B, alpha
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectColor||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Obj\gradient = 0
	
	; DISABLE VERTEX COLOR?
	If Obj\VColorID <> 0 Then HUD_EnableVertexColor ObjectID, False
	
	; UPDATE OBJECT TYPE
	Obj\R1 = R : Obj\R2 = R
	Obj\G1 = G : Obj\G2 = G
	Obj\B1 = B : Obj\B2 = B
	If alpha > -1 Then Obj\alpha = alpha
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET TEXT COLOR GRADIENT
; ------------------------------------------------------------------------
Function HUD_SetObjectGradient (ObjectID%, R1%, G1%, B1%, R2%, G2%, B2%, mode%=1)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID   )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectGradient Handle(Item), R1, G1, B1, R2, G2, B2, mode
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectGradient||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	
	Obj\gradient = mode
	
	; DISABLE VERTEX COLOR?
	If Obj\VColorID <> 0 Then HUD_EnableVertexColor ObjectID, False
	
	; UPDATE OBJECT TYPE
	Obj\R1 = R1 : Obj\R2 = R2
	Obj\G1 = G1 : Obj\G2 = G2
	Obj\B1 = B1 : Obj\B2 = B2
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET ALPHA OF A HUD OBJECT
; ------------------------------------------------------------------------
Function HUD_SetObjectAlpha (ObjectID%, alpha#)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectAlpha Handle(Item), alpha
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectAlpha||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	If alpha < 0.0 Then alpha = 0 Else If alpha > 1.0 Then alpha = 1.0
	If alpha  = Obj\alpha Then Return
	
	Obj\alpha = alpha
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1 : Obj\updateColor = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET ALPHA OF A HUD OBJECT
; ------------------------------------------------------------------------
Function HUD_GetObjectAlpha# (ObjectID%)
	Local  Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectAlpha||The specified object does not exist.",50)
	Return Obj\alpha
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD OR REMOVE OBJECT SHADOW
; ------------------------------------------------------------------------
Function HUD_SetObjectShadow (ObjectID%, add%=True, offset#=0)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID   )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectShadow Handle(Item), add, offset
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectShadow||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local old% = Obj\shadow_offset
	
	If offset = 0 Then add = False
	If add    = False Then Obj\shadow_offset = 0 Else Obj\shadow_offset = offset
	
	; UPDATE  / REBUILD LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	If old = 0 And Obj\shadow_offset <> 0 Then
		Layer\rebuild     = 1
	Else If Obj\shadow_offset = 0
		Layer\rebuild     = 1
	Else
		Layer\update      = 1 : Obj\update = 1 : Obj\updateColor = 1
	End If
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF OBJECT HAS SHADOW
; ------------------------------------------------------------------------
Function HUD_GetObjectShadow% (ObjectID%)
	Local  Obj.SC_Object = Object.SC_Object( ObjectID   ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectShadow||The specified object does not exist.",50)
	Return Obj\shadow_offset
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD OR REMOVE OBJECT BACKGROUND
; ------------------------------------------------------------------------
Function HUD_SetObjectBG (ObjectID%, add%=True, R%=0, G%=0, B%=0, alpha#=1.0)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectBG Handle(Item), add, R, G, B, alpha
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectBG||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Layer.SC_Layer = Object.SC_Layer (Obj\LayerID)
	Local old# = Obj\bg_a
	
	; REMOVE?
	If add = False Then 
		Obj\bg_a = -1
		If old > -1 Then Layer\rebuild = 1
	Else
		Obj\bg_a = alpha
		Obj\bg_R = R
		Obj\bg_G = G
		Obj\bg_B = B
		If old = -1 Then Layer\rebuild = 1 Else Layer\update  = 1 : Obj\update = 1 : Obj\updateColor = 1
	End If
	
	; ADD SHAPE SURFACE?
	If Layer\ShapeSurf = 0 Then Layer\ShapeSurf = CreateSurface(Layer\Mesh)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF OBJECT HAS BACKGROUND
; ------------------------------------------------------------------------
Function HUD_GetObjectBG% (ObjectID%)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectBG||The specified object does not exist.",50)
	If Obj\bg_a > -1 Then Return True Else Return False
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD OR REMOVE OBJECT BORDER
; ------------------------------------------------------------------------
Function HUD_SetObjectBorder (ObjectID%, add%, R%=0, G%=0, B%=0, alpha#=1.0, size%=2)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectBorder Handle(Item), add, R, G, B, alpha, size
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectBorder||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Layer.SC_Layer = Object.SC_Layer (Obj\LayerID)
	Local old# = Obj\b_a
	
	If size < 1 Then size = 1
	
	; REMOVE?
	If add = False Then 
		Obj\b_a = -1
		If old > -1 Then Layer\rebuild = 1
	Else
		Obj\b_a    = alpha
		Obj\b_R    = R
		Obj\b_G    = G
		Obj\b_B    = B
		Obj\b_size = size
		If old = -1 Then Layer\rebuild = 1 Else Layer\update  = 1 : Obj\update = 1 : Obj\updateColor = 1
	End If
	
	; ADD SHAPE SURFACE?
	If Layer\ShapeSurf = 0 Then Layer\ShapeSurf = CreateSurface(Layer\Mesh)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF OBJECT HAS BORDER
; ------------------------------------------------------------------------
Function HUD_GetObjectBorder% (ObjectID%)
	Local Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectBorder||The specified object does not exist.",50)
	If Obj\b_a > -1 Then Return True Else Return False
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET HUD OBJECT'S SCALE
; ------------------------------------------------------------------------
Function HUD_SetObjectScale (ObjectID%, scalex#, scaley#)
	
	Local Obj.SC_Object = Object.SC_Object ( ObjectID )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectScale Handle(Item), scalex, scaley
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectScale||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	If scalex < .001 Then scalex = .001
	If scaley < .001 Then scaley = .001
	Obj\scalex = scalex
	Obj\scaley = scaley
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD OBJECT'S SCALE
; ------------------------------------------------------------------------
Function HUD_GetObjectScaleX# (ObjectID%)
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectScale||The specified object does not exist.",50)
	Return Obj\scalex
End Function


Function HUD_GetObjectScaleY# (ObjectID%)
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectScale||The specified object does not exist.",50)
	Return Obj\scaley
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET OBJECT'S WIDTH AND HEIGHT
; ------------------------------------------------------------------------
Function HUD_SetObjectSize% (ObjectID%, width%, height%)
	
	Local  Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectSize||The specified object does not exist.",50)
	Obj\scalex = Float(1.0 / Obj\width ) * width
	Obj\scaley = Float(1.0 / Obj\height) * height
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ########################################################################
; OBJECT POSITIONING FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET HUD OBJECT'S ROTATION
; ------------------------------------------------------------------------
Function HUD_SetObjectRotation (ObjectID%, degrees#)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectRotation Handle(Item), degrees
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectRotation||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	If degrees < 0 Then
		degrees = degrees + 360
	Else If degrees > 360 Then
		degrees = degrees - 360
	End If
	
	
	Obj\rotation = degrees
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET HUD OBJECT'S ROTATION
; ------------------------------------------------------------------------
Function HUD_GetObjectRotation# (ObjectID%)
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectRotation||The specified object does not exist.",50)
	Return Obj\rotation
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: TURN OBJECT
; ------------------------------------------------------------------------
Function HUD_TurnObject (ObjectID%, degrees#)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_TurnObject Handle(Item), degrees
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_TurnObject||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Obj\rotation = Obj\rotation + degrees
	If Obj\rotation < 0 Then
		Obj\rotation = Obj\rotation + 360
	Else If Obj\rotation > 360 Then
		Obj\rotation = Obj\rotation - 360
	End If
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE A HUD OBJECT ABSOLUTE OR RELATIVE TO IT'S ROTATION
; ------------------------------------------------------------------------
Function HUD_MoveObject (ObjectID% ,xStep#, yStep#, relative% = False)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_MoveObject Handle(Item), xStep, yStep, relative
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_MoveObject||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	If relative = True Then
		Local nx# = Obj\x + xStep
		Local ny# = Obj\y + yStep
		Local dx# = ((nx-Obj\x) * SC_Cos(Obj\rotation)) - ((ny-Obj\y) * SC_Sin(Obj\rotation)) + Obj\x
		Local dy# = ((nx-Obj\x) * SC_Sin(Obj\rotation)) + ((ny-Obj\y) * SC_Cos(Obj\rotation)) + Obj\y
		Obj\x = dx
		Obj\y = dy
	Else
		Obj\x = Obj\x + xStep
		Obj\y = Obj\y + yStep
	End If
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
;   PUBLIC FUNCTION: SET OBJECT SCREEN ALIGN
; ------------------------------------------------------------------------
Function HUD_AlignToScreen (ObjectID%, xAlign$="", yAlign$="")
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_AlignToScreen||The specified object does not exist.",50)
	SC_SetAlignedX(Obj, xAlign$)
	SC_SetAlignedY(Obj, yAlign$)
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
;   PUBLIC FUNCTION: SET OBJECT X/Y-POSITION
; ------------------------------------------------------------------------
Function HUD_PositionObject (ObjectID%, x#, y#, onScreen% = False)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_PositionObject Handle(Item), x, y, onScreen
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_PositionObject||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Layer.SC_Layer = Object.SC_Layer (Obj\LayerID)
	
	Obj\x = x : Obj\y = y
	
	
	If onScreen Then
		Local HUDObj.SC_HUD = Object.SC_HUD(Obj\HUD_ID)
		
		Local MainHUD% = GetParent(GetParent(HUDObj\Piv))
		TFormPoint x,y,0,MainHUD,Layer\Mesh
		Obj\x = Floor(TFormedX())
		Obj\y = Floor(TFormedY())
	End If
	
	; UPDATE LAYER
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT CENTER POINT'S X-POSITION
; ------------------------------------------------------------------------
Function HUD_GetObjectX# (ObjectID%, onScreen% = False)
	Local  Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectX||The specified object does not exist.",50)
	
	; COORDINATE ON LAYER?
	If onScreen = False Then Return Obj\x; - (Obj\originx * (Obj\width / 2))
	
	; ABSOLUTE SCREEN COORDINATE
	Layer.SC_Layer = Object.SC_Layer(Obj\LayerID)
	HUDObj.SC_HUD  = Object.SC_HUD  (Obj\HUD_ID)
	Local MainHUD% = GetParent(GetParent(HUDObj\Piv))
	TFormPoint Obj\x, Obj\y, 0, Layer\Mesh, MainHUD
	Return TFormedX()
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT CENTER POINT'S Y-POSITION
; ------------------------------------------------------------------------
Function HUD_GetObjectY# (ObjectID%, onScreen% = False)
	Local  Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectY||The specified object does not exist.",50)
	
	; COORDINATE ON LAYER?
	If onScreen = False Then Return Obj\y; - (Obj\originy * (Obj\height / 2))
	
	; ABSOLUTE SCREEN COORDINATE
	Layer.SC_Layer = Object.SC_Layer(Obj\LayerID)
	HUDObj.SC_HUD  = Object.SC_HUD  (Obj\HUD_ID)
	Local MainHUD% = GetParent(GetParent(HUDObj\Piv))
	TFormPoint Obj\x, Obj\y, 0, Layer\Mesh, MainHUD
	Return TFormedY()
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT'S MIN / MAX / CORNER COORDS
; ------------------------------------------------------------------------
Function HUD_GetObjectCoords% (ObjectID%, mode$, corner%=0)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectCoords||The specified object does not exist.",50)
	Local i%, min% = 100000, max% = -100000
	
	; OBJECT NOT RENDERED YET? -RENDER
	If Obj\vx < 0 Then SC_RenderVertices ObjectID
	
	mode$  = Upper(mode$)
	
	Select mode$
		Case "CORNERX"
			If corner = 0 Then Return Obj\x Else Return Obj\cornersx[corner-1]
			
		Case "CORNERY"
			If corner = 0 Then Return Obj\y	Else Return Obj\cornersy[corner-1]
			
		Case "MINX"
			If Int(Obj\rotation) = 0 Then Return Obj\cornersx[0]
			For i = 0 To 3
				If Obj\cornersx[i] < min Then min = Obj\cornersx[i]
			Next
			Return min
			
		Case "MAXX"
			If Int(Obj\rotation) = 0 Then Return Obj\cornersx[1]
			For i = 0 To 3
				If Obj\cornersx[i] > max Then max = Obj\cornersx[i]
			Next
			Return max
			
		Case "MINY"
			If Int(Obj\rotation) = 0 Then Return Obj\cornersy[0]
			For i = 0 To 3
				If Obj\cornersy[i] < min Then min = Obj\cornersy[i]
			Next
			Return min
			
		Case "MAXY"
			If Int(Obj\rotation) = 0 Then Return Obj\cornersy[3]
			For i = 0 To 3
				If Obj\cornersy[i] > max Then max = Obj\cornersy[i]
			Next
			Return max
	End Select
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE OBJECT'S CENTER POINT (-1 TO +1)
; ------------------------------------------------------------------------
Function HUD_SetObjectOrigin% (ObjectID%, originx#, originy#, usePixels% = False)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID )
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_SetObjectOrigin Handle(Item), originx, originy, usePixels
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_SetObjectOrigin||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	If usePixels = True
		originx = 2.0 / Obj\width  * originx -1
		originy = 2.0 / Obj\height * originy -1
	End If
	
	;If originx < -1 Then originx = -1 Else If originx > 1 Then originx = 1
	;If originy < -1 Then originy = -1 Else If originy > 1 Then originy = 1
	
	; LOCK X-ORIGIN FOR TEXT OBJECTS
	If Obj\typ <> SC_TEXT Then Obj\originx = originx
	
	Obj\originy = originy
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT'S WIDTH
; ------------------------------------------------------------------------
Function HUD_GetObjectWidth% (ObjectID%, onScreen% = False )
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectWidth||The specified object does not exist.",50)
	If onScreen = False Then Return Obj\width * Obj\scalex
	Return HUD_GetObjectCoords (ObjectID, "MAXX") - HUD_GetObjectCoords (ObjectID, "MINX")
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET OBJECT'S HEIGHT
; ------------------------------------------------------------------------
Function HUD_GetObjectHeight% (ObjectID%, onScreen% = False )
	Local  Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetObjectHeight||The specified object does not exist.",50)
	If onScreen = False Then Return Obj\height * Obj\scaley
	Return HUD_GetObjectCoords (ObjectID, "MAXY") - HUD_GetObjectCoords (ObjectID, "MINY")
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ROTATE OBJECT TO FACE ANOTHER
; ------------------------------------------------------------------------
Function HUD_FaceObject (ObjectID%, TargetID%)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_FaceObject||The specified object does not exist.",50)
	Local Tgt.SC_Object = Object.SC_Object( TargetID ) : If Tgt = Null Then RuntimeError SC_BreakText("HUD_FaceObject||The specified target object does not exist.",50)
	Local x% = Tgt\x
	Local y% = Tgt\y
	Local r#
	
	; DIFFERENT LAYERS?
	If Obj\LayerID <> Tgt\LayerID Then
		Local Layer1.SC_Layer = Object.SC_Layer(Obj\LayerID)
		Local Layer2.SC_Layer = Object.SC_Layer(Tgt\LayerID)
		TFormPoint x,y,0, Layer2\Mesh, Layer1\Mesh
		x = TFormedX() : y = TFormedY()
	End If
	
	; FIND ANGLE
	r = 90 + ATan2(y-Obj\y, x-Obj\x) : If r < 0 r = r + 360
		HUD_SetObjectRotation ObjectID, r
		
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CONVERT COORDINATES FROM ONE LAYER TO ANOTHER
; ------------------------------------------------------------------------
Function HUD_TFormLayerCoords (x%, y%, Layer1ID%=0, Layer2ID%=0)
	
	Local Layer1.SC_Layer = Object.SC_Layer(Layer1ID) 
	Local Layer2.SC_Layer = Object.SC_Layer(Layer2ID)
	Local HUDObj.SC_HUD, Mesh1%, Mesh2%
	
	; LAYER - LAYER
	
	If Layer1 <> Null And Layer2 <> Null Then 
		Mesh1 = Layer1\Mesh
		Mesh2 = Layer2\Mesh
		
		
	; SCREEN - SCREEN
		
	Else If Layer1 = Null And Layer2 = Null Then
		SC_TFormedX = x
		SC_TFormedY = y
		Return
		
		
	; SCREEN - LAYER
		
	Else If Layer1 = Null Then
		HUDObj.SC_HUD  = Object.SC_HUD (Layer2\HUD_ID)
		Mesh1 = GetParent(GetParent(HUDObj\Piv))
		Mesh2 = Layer2\Mesh
		
		
	; LAYER - SCREEN
	Else If Layer2 = Null Then
		HUDObj.SC_HUD  = Object.SC_HUD (Layer1\HUD_ID)
		Mesh1 = Layer1\Mesh
		Mesh2 = GetParent(GetParent(HUDObj\Piv))
	End If
	
	
	TFormPoint x,y,0, Mesh1, Mesh2
	SC_TFormedX = TFormedX() : 
	SC_TFormedY = TFormedY()
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF AN OBJECT EXISTS
; ------------------------------------------------------------------------
Function HUD_ObjectExists% (ObjectID%)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID )
	If Obj = Null Then Return False Else Return True
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RIPPLE OBJECT
; ------------------------------------------------------------------------
Function HUD_RippleObject% (ObjectID%, width#, height#=10, offset#=0)
	
	Local Obj.SC_Object = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_RippleObject||The specified object does not exist.",50)
	Obj\ripple_width  = width
	Obj\ripple_height = height
	Obj\ripple_offset = offset
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ########################################################################
; TEXT FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE TEXT
; ------------------------------------------------------------------------
Function HUD_CreateText% (LayerID%, x%, y%, txt$, text_flow$="CENTER", wrap_width%=0, xAlign$="", yAlign$="", zorder%=0)
	
	Local Layer.SC_Layer     = Object.SC_Layer   ( LayerID ) : If Layer = Null Then RuntimeError SC_BreakText("HUD_CreateText||You specified an invalid layer ID. Make sure it exists.",50)
	Local Font.SC_Font       = Object.SC_Font    ( Layer\FontID ) : If Font = Null Then RuntimeError SC_BreakText("HUD_CreateText||The specified layer has no font texture.",50)
	Local Texture.SC_Texture = Object.SC_Texture ( Layer\TextureID ) : If Texture = Null Then RuntimeError SC_BreakText("HUD_CreateText||The specified layer has no font texture and can be used with shapes only. Create another layer first.",50)
	Local Obj.SC_Object
	Local TextObj.SC_Text
	
	text_flow$ = Upper(text_flow$) : If text_flow$ <> "LEFT" And text_flow$ <> "RIGHT" Then text_flow$ = "CENTER"
	
	; CREATE A TEXT OBJECT
	TextObj.SC_Text		= New SC_Text
	TextObj\FontID		= Layer\FontID
	TextObj\text_flow$	= Upper(text_flow$)	
	TextObj\wrap_width	= wrap_width
	TextObj\txt$		= txt$
	TextObj\txt_wrapped$ 	= SC_WordWrap(TextObj\FontID, TextObj\txt$, TextObj\wrap_width)
	
	SC_FindLineWidths Handle(TextObj)
	
	; CREATE A GENERAL HUD OBJECT	
	Obj.SC_Object 	 = New SC_Object
	Obj\LayerID	 = Handle(Layer)	
	Obj\HUD_ID	 = Layer\HUD_ID
	Obj\TextID	 = Handle(TextObj)
	Obj\typ		 = SC_TEXT
	Obj\scalex	 = 1.0
	Obj\scaley	 = 1.0
	Obj\width	 = TextObj\max_width
	Obj\height	 = TextObj\lines * Font\line_height
	Obj\x		 = x : SC_SetAlignedX(Obj, xAlign$)
	Obj\y		 = y : SC_SetAlignedY(Obj, yAlign$)
	Obj\visible      = 1
	Obj\alpha	 = 1.0
	Obj\R1		 = 255
	Obj\G1		 = 255
	Obj\B1		 = 255
	Obj\R2		 = 255
	Obj\G2		 = 255
	Obj\B2		 = 255
	Obj\bg_a	 = -1
	Obj\b_a		 = -1
	Obj\zorder	 = zorder : SC_SortObjects
	Obj\shadow_offset= Layer\shadow_offset
	Obj\vx		 = -1
	
	; MOVE ORIGIN?
	;If TextObj\text_flow$ = "LEFT"  Then HUD_SetObjectOrigin Handle(Obj),-1,0
	;If TextObj\text_flow$ = "RIGHT" Then HUD_SetObjectOrigin Handle(Obj), 1,0
	
	; REBUILD THIS LAYER
	Layer\rebuild = 1
	
	Return Handle(Obj)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SET TEXT
; ------------------------------------------------------------------------
Function HUD_SetText (ObjectID%, txt$, xAlign$="", yAlign$="")
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)       : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetText||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID)     : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetText||The specified object does not seem to be a text object.",50)
	Local Font.SC_Font    = Object.SC_Font   (TextObj\FontID) : If Font    = Null Then RuntimeError SC_BreakText("HUD_SetText||The text object's font could not be found.",50)
	
	Local old_num%    = TextObj\num_chars
	Local old_height% = Obj\height
	
	; UPDATE TEXT TYPE	
	TextObj\txt$          = txt$
	TextObj\txt_wrapped$  = SC_WordWrap(TextObj\FontID, TextObj\txt$, TextObj\wrap_width, TextObj\kerning)
	
	SC_FindLineWidths Handle(TextObj)
	
	Obj\width  = TextObj\max_width
	Obj\height = TextObj\lines * Font\line_height
	
	; RE-ALIGN TEXT?
	SC_SetAlignedX(Obj, xAlign$)	
	SC_SetAlignedY(Obj, yAlign$)	
	
	; UPDATE / REBUILD LAYER?
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	If TextObj\num_chars = old_num Then
		Layer\update = 1
		Obj\update   = 1
	Else
		Layer\rebuild = 1
	End If
	
End Function


Function HUD_GetText$ (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetText||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetText||The specified object does not seem to be a text object.",50)
	Return TextObj\txt$
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UPDATE WRAP WIDTH OF A TEXT MESH
; ------------------------------------------------------------------------
Function HUD_SetCharSpacing (ObjectID%, spacing%)
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetSpacing||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetSpacing||The specified object does not seem to be a text object.",50)
	Local Font.SC_Font    = Object.SC_Font   (TextObj\FontID) : If Font = Null Then Return
	
	TextObj\kerning       = spacing
	TextObj\txt_wrapped$  = SC_WordWrap(TextObj\FontID, TextObj\txt$, TextObj\wrap_width, TextObj\kerning)
	
	SC_FindLineWidths Handle(TextObj)
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


Function HUD_GetCharSpacing% (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetWrapWidth||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetWrapWidth||The specified object does not seem to be a text object.",50)
	Return TextObj\kerning
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UPDATE WRAP WIDTH OF A TEXT MESH
; ------------------------------------------------------------------------
Function HUD_SetWrapWidth (ObjectID%, wrap_width%)
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetWrapWidth||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetWrapWidth||The specified object does not seem to be a text object.",50)
	
	TextObj\wrap_width    = wrap_width
	TextObj\txt_wrapped$  = SC_WordWrap(TextObj\FontID, TextObj\txt$, TextObj\wrap_width, TextObj\kerning)
	
	SC_FindLineWidths Handle(TextObj)
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


Function HUD_GetWrapWidth% (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetWrapWidth||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetWrapWidth||The specified object does not seem to be a text object.",50)
	Return TextObj\wrap_width
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UPDATE TEXT FLOW OF A TEXT MESH
; ------------------------------------------------------------------------
Function HUD_SetTextFlow (ObjectID%, text_flow$)
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetTextFlow||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetTextFlow||The specified object does not seem to be a text object.",50)
	
	text_flow$ = Upper(text_flow$) : If text_flow$ <> "LEFT" And text_flow$ <> "RIGHT" Then text_flow$ = "CENTER"
	If text_flow$ = TextObj\text_flow$ Then Return
	
	TextObj\text_flow$ = text_flow$
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


Function HUD_GetTextFlow$ (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetTextFlow||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetTextFlow||The specified object does not seem to be a text object.",50)
	Return TextObj\text_flow$
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CALCULATE WIDTH (IN PIXELS) OF CHARS
; ------------------------------------------------------------------------
Function HUD_GetTextWidth% (FontID%, txt$)
	Local i%,w%, n% = Len(txt$)
	Local Font.SC_Font = Object.SC_Font(FontID) : If Font = Null Then RuntimeError SC_BreakText("HUD_GetTextWidth||The specified font does not exist.",50)
	For i = 1 To n : w = w + Font\char_widths [ Asc( Mid(txt$,i,1) ) ] : Next
	Return w
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN WIDTH OF A CHAR
; ------------------------------------------------------------------------
Function HUD_GetCharWidth% (FontID%, char$)
	Local  Font.SC_Font = Object.SC_Font(FontID) : If Font = Null Then RuntimeError SC_BreakText("HUD_GetCharWidth||The specified font does not exist.",50)
	Return Font\char_widths [ Asc(char$) ]
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN LINE HEIGHT OF A FONT
; ------------------------------------------------------------------------
Function HUD_GetLineHeight% (FontID%)
	Local  Font.SC_Font = Object.SC_Font(FontID) : If Font = Null Then RuntimeError SC_BreakText("HUD_GetLineHeight||The specified font does not exist.",50)
	Return Font\line_height
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET NUMBER OF LINES THAT A TEXT WOULD HAVE AFTER WRAPPING
; ------------------------------------------------------------------------
Function HUD_GetLines% (FontID%, txt$, wrap_width%)
	
	Local i%, n% = Len(txt$), lines% = 1
	txt$  = SC_WordWrap(FontID, txt$, wrap_width)	
	For i = 1 To n
		If Mid(txt$,i,1) = Chr(13) Then lines = lines + 1
	Next
	Return lines
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN TEXT OBJECT'S CURRENT NUMBER OF LINES
; ------------------------------------------------------------------------
Function HUD_CountLines% (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_CountLines||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_CountLines||The specified object does not seem to be a text object.",50)
	Return TextObj\lines
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN TEXT OBJECT'S FONT ID
; ------------------------------------------------------------------------
Function HUD_GetFontID% (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetFontID||The specified text object does not exist.",50)
	Local  TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then Return 0
	Return TextObj\FontID
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: DISPLAY CERTAIN LINES OF TEXT ONLY
; ------------------------------------------------------------------------
Function HUD_SetScrollText (ObjectID%, txt$, start_line%, num_lines%)
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_SetScrollText||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_SetScrollText||The specified object does not seem to be a text object.",50)
	
	Local i%, c$
	Local tl% = 1		; NUMBER OF TOTAL LINES
	Local lines$[255]	; WILL HOLD EACH TEXT LINE
	
	; ADD LINE BREAKS
	TextObj\scroll_text$ = txt$
	txt$ = SC_WordWrap$(TextObj\FontID, txt$, TextObj\wrap_width, TextObj\kerning )
	
	; SPLIT INTO LINES
	If txt$ <> "" Then
		For i = 1 To Len(txt$)
			c$ = Mid(txt$,i,1)
			If c$ = Chr(13) Then tl = tl + 1 Else lines[tl] = lines[tl] + c$
		Next
	Else
		lines[tl] = txt$
	End If
	
	; FIRST AND LAST LINE TO SHOW
	num_lines = num_lines - 1
	If num_lines  < 2 Then num_lines  = 2
	If start_line < 1 Then start_line = 1
	If start_line > tl-num_lines Then start_line = tl-num_lines
	
	; FETCH NEEDED LINES ONLY
	If tl > num_lines And txt$ <> "" Then
		txt$ = ""
		For i = start_line To start_line + num_lines
			If lines[i] = "" Or lines[i] = Chr(13) Then lines[i] = " " + lines[i]
			txt$ = txt$ + lines[i] + Chr(13)
		Next
		txt$ = Left(txt$, Len(txt$)-1) ; CUT OFF LAST LINE BREAK
	End If
	
	TextObj\visible_lines  = num_lines + 1
	TextObj\start_line     = start_line
	TextObj\total_lines    = tl
	
	HUD_SetText ObjectID, txt$
	
	; UPDATE SCROLL BAR
	SC_UpdateScrollbar TextObj\ScrollID
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET NUMBER OF TOPMOST LINE
; ------------------------------------------------------------------------
Function HUD_GetCurrentScroll (ObjectID%)
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetCurrentScroll||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetCurrentScroll||The specified object does not seem to be a text object.",50)
	If TextObj\start_line < 1 Then Return 1 Else Return TextObj\start_line
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET MAXIMUM SCROLL AMOUNT
; ------------------------------------------------------------------------
Function HUD_GetMaxScroll (ObjectID%)
	Local Obj.SC_Object    = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_GetMaxScroll||The specified text object does not exist.",50)
	Local TextObj.SC_Text  = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_GetMaxScroll||The specified object does not seem to be a text object.",50)
	If TextObj\scroll_text$ = "" Then Return 1
	
	Return TextObj\total_lines - (TextObj\visible_lines - 2)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD A SCROLL BAR TO TEXT
; ------------------------------------------------------------------------
Function HUD_AttachScrollbar (ObjectID%, SliderID%, offsetx%, BarID%=0)
	Local Obj.SC_Object   = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_AttachScrollbar||The specified text object does not exist.",50)
	Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_AttachScrollbar||The specified object does not seem to be a text object.",50)
	
	; ALREADY SCROLL BAR ATTACHED? UNLINK!
	If TextObj\ScrollID <> 0 Then HUD_DetachScrollbar (ObjectID)
	
	Local ScrollObj.SC_Scroll = New SC_Scroll
	ScrollObj\TextID          = Handle(TextObj)
	ScrollObj\Slider          = SliderID
	ScrollObj\Bar		  = BarID
	ScrollObj\TextObject      = ObjectID
	ScrollObj\TextLayer	  = Obj\LayerID
	ScrollObj\offsetx         = offsetx
	
	If BarID <> 0 Then
	HUD_SetObjectOrigin BarID, 1,-1
	HUD_SetObjectSHadow BarID, False
End If

HUD_SetObjectOrigin SliderID, 1,-1
TextObj\ScrollID = Handle(ScrollObj)
SC_UpdateScrollbar Handle(ScrollObj)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE SCROLL BAR
; ------------------------------------------------------------------------
Function HUD_DetachScrollbar (ObjectID%)
	Local Obj.SC_Object       = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_DetachScrollbar||The specified text object does not exist.",50)
	Local TextObj.SC_Text     = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_DetachScrollbar||The specified object does not seem to be a text object.",50)
	Local ScrollObj.SC_Scroll = Object.SC_Scroll (TextObj\ScrollID)
	If ScrollObj <> Null Then Delete ScrollObj : TextObj\ScrollID = 0
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: ADJUST A SCROLL BAR TO FIT TEXT
; ------------------------------------------------------------------------
Function SC_UpdateScrollbar (ScrollID%)
	
	Local ScrollObj.SC_Scroll = Object.SC_Scroll (ScrollID) : If ScrollObj = Null Then Return
	Local TextObj.SC_Text     = Object.SC_Text   (ScrollObj\TextID)
	Local Temp.SC_Object
	
	; TEXT OBJECT DOES NOT EXIST ANYMORE?
	If TextObj = Null Then Delete ScrollObj : Return
	
	; SLIDER OR BAR OBJECT DO NOT EXIST ANYMORE?
	Temp.SC_Object = Object.SC_Object (ScrollObj\Slider) : If Temp = Null Then HUD_DetachScrollbar  ScrollObj\TextObject : Return
	Temp.SC_Object = Object.SC_Object (ScrollObj\Bar)    : If Temp = Null Then ScrollObj\Bar = 0
	
	; TEXT TOO SHORT?
	If TextObj\total_lines <= TextObj\visible_lines Then Return
	
	; SLIDER
	Local total_lines#  = TextObj\total_lines
	Local line_percent# = total_lines / 100.0
	Local curr_percent# = Float(TextObj\start_line) / line_percent
	Local text_height#  = HUD_GetObjectHeight (ScrollObj\TextObject)
	Local bar_width%    = HUD_GetObjectWidth  (ScrollObj\Slider)
	Local bar_height%   = TextObj\visible_lines * ( text_height / total_lines)
	Local bar_x%        = HUD_GetObjectX      (ScrollObj\TextObject) + ScrollObj\offsetx
	Local bar_y%        = HUD_GetObjectCoords (ScrollObj\TextObject, "CornerY", 2) + (TextObj\start_line-1) * ( text_height / total_lines)
	
	; BAR
	If ScrollObj\Bar <> 0 Then
		HUD_SetObjectSize  ScrollObj\Bar, bar_width+2, text_height
		HUD_PositionObject ScrollObj\Bar, bar_x+1, HUD_GetObjectCoords (ScrollObj\TextObject, "CornerY", 2)
	End If
	
	HUD_SetObjectSize  ScrollObj\Slider, bar_width, bar_height
	HUD_PositionObject ScrollObj\Slider, bar_x, bar_y
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF SCROLL BAR IS DRAGGED, ADJUST TEXT TO FIT
; ------------------------------------------------------------------------
Function SC_CheckScrollbar (ScrollID%)
	
	Local ScrollObj.SC_Scroll = Object.SC_Scroll (ScrollID) : If ScrollObj = Null Then Return
	Local TextObj.SC_Text     = Object.SC_Text   (ScrollObj\TextID)
	
	; TEXT OBJECT DOES NOT EXIST ANYMORE?
	If TextObj = Null Then Delete ScrollObj : Return
	
	; SLIDER OR BAR OBJECT DO NOT EXIST ANYMORE?
	Temp.SC_Object = Object.SC_Object (ScrollObj\Slider) : If Temp = Null Then HUD_DetachScrollbar  ScrollObj\TextObject : Return
	Temp.SC_Object = Object.SC_Object (ScrollObj\Bar)    : If Temp = Null Then ScrollObj\Bar = 0
	
	; SHOW / HIDE SCROLL BAR?
	If HUD_GetLayerVisibility(ScrollObj\TextLayer) = False Or HUD_GetObjectVisibility(ScrollObj\TextObject) = False Then
		If ScrollObj\Slider <>  0 Then HUD_SetObjectVisibility ScrollObj\Slider, False
		If ScrollObj\Bar    <>  0 Then HUD_SetObjectVisibility ScrollObj\Bar, False
		ScrollObj\drag_offset = 0 : Return
	Else If TextObj\total_lines <= TextObj\visible_lines Then 
		If ScrollObj\Slider <>  0 Then HUD_SetObjectVisibility ScrollObj\Slider, False
		If ScrollObj\Bar    <>  0 Then HUD_SetObjectVisibility ScrollObj\Bar, False
		ScrollObj\drag_offset = 0 : Return
	Else
		If ScrollObj\Slider <> 0 Then HUD_SetObjectVisibility ScrollObj\Slider, True
		If ScrollObj\Bar    <> 0 Then HUD_SetObjectVisibility ScrollObj\Bar, True
	End If
	
	; STOP DRAGGING?
	If MouseDown(1) = False Then ScrollObj\drag_offset = 0 : Return
	
	Local mx% = MouseX()
	Local my% = MouseY()
	Local bar_x%, bar_y%, min_x#, max_x#, total_lines#
	
	; START DRAG?
	If ScrollObj\drag_offset = 0 And HUD_ObjectHitsPoint (ScrollObj\Slider, mx, my, 0) = True Then
		ScrollObj\drag_offset = my - HUD_GetObjectY  (ScrollObj\Slider, True)
	End If
	
	; DRAGGING?
	If ScrollObj\drag_offset <> 0 Then
		; CORRECT BAR Y-POSITION?
		bar_x = HUD_GetObjectX      (ScrollObj\Slider)
		bar_y = my - ScrollObj\drag_offset
		min_y = HUD_GetObjectCoords (ScrollObj\TextObject, "CornerY", 2)
		max_y = HUD_GetObjectCoords (ScrollObj\TextObject, "CornerY", 3) - HUD_GetObjectHeight(ScrollObj\Slider)
		If bar_y < min_y Then bar_y = min_y
		If bar_y > max_y Then bar_y = max_y
		
		; SCROLL BAR POSITION CHANGED?
		If bar_y <> ScrollObj\lasty Then
			ScrollObj\lasty = bar_y
			HUD_PositionObject ScrollObj\Slider, bar_x, bar_y
			total_lines        = HUD_GetMaxScroll (ScrollObj\TextObject)
			TextObj\start_line = ( (bar_y - min_y)/(( max_y-min_y) / total_lines) ) + 1 
			HUD_SetScrollText ScrollObj\TextObject, TextObj\scroll_text$, TextObj\start_line, TextObj\visible_lines 
		End If
	End If
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ENABLE INPUT TEXT (ONLY ONE AT THE SAME TIME)
; ------------------------------------------------------------------------
Function HUD_EnableTextInput (ObjectID%, maxChars%, cursor$, allowed$, uppercase%=False, Snd_Type%=0)
	
	HUD_DisableTextInput
	Local Obj.SC_Object    = Object.SC_Object (ObjectID)   : If Obj     = Null Then RuntimeError SC_BreakText("HUD_EnableTextInput||The specified text object does not exist.",50)
	Local TextObj.SC_Text  = Object.SC_Text   (Obj\TextID) : If TextObj = Null Then RuntimeError SC_BreakText("HUD_EnableTextInput||The specified object does not seem to be a text object.",50)
	
	FlushKeys
	
	; CURSOR MUST NOT BE INCLUDED IN ALLOWED CHARS
	If Instr(allowed$, cursor$) > 0 Then RuntimeError SC_BreakText("HUD_EnableTextInput||The cursor char ("+cursor$+") must not be included in the allowed chars string. Use another cursor char.",50)
	
	SC_CurrInputText = ObjectID
	
	TextObj\max_chars      = maxChars
	TextObj\cursor$        = cursor$
	TextObj\allowed_chars$ = allowed$
	TextObj\input_upper    = uppercase
	TextObj\Snd_Type       = Snd_Type
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: DISABLE THE CURRENTLY ACTIVE INPUT TEXT
; ------------------------------------------------------------------------
Function HUD_DisableTextInput ()
	
	If SC_CurrInputText   = 0 Return
		Local Obj.SC_Object   = Object.SC_Object (SC_CurrInputText) : If Obj     = Null Then SC_CurrInputText = 0 : Return
		Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID)       : If TextObj = Null Then SC_CurrInputText = 0 : Return
		Local i%, j%, txt$
		
	; REMOVE CURSOR
		txt$ = Replace(HUD_GetText(SC_CurrInputText),TextObj\cursor$,"")
		
		HUD_SetText SC_CurrInputText, txt$
		SC_LastInputText = SC_CurrInputText
		SC_CurrInputText = 0
		
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET CURRENTLY ACTIVE INPUT TEXT
; ------------------------------------------------------------------------
Function HUD_GetActiveInputText% ()
	Return SC_CurrInputText
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET LAST CLOSED INPUT TEXT
; ------------------------------------------------------------------------
Function HUD_InputTextClosed% ()
	Local t% = SC_LastInputText : SC_LastInputText = 0 : Return t
End Function

; ------------------------------------------------------------------------
; PRIVATE FUNCTION: PROCESS THE CURRENTLY ACTIVE INPUT TEXT
; ------------------------------------------------------------------------
Function SC_UpdateTextInput()
	
	If SC_CurrInputText   = 0 Return
		Local Obj.SC_Object   = Object.SC_Object (SC_CurrInputText) : If Obj     = Null Then SC_CurrInputText = 0 : Return
		Local TextObj.SC_Text = Object.SC_Text   (Obj\TextID)       : If TextObj = Null Then SC_CurrInputText = 0 : Return
		Local i%, key%, c$, txt$ = HUD_GetText      (SC_CurrInputText)
		
	; TEXT HIDDEN? -DISABLE
		If Obj\visible = 0 Then HUD_DisableTextInput
		
	; CURSOR BLINK
		If SC_Now - SC_LastCursorTime > 250 Then
			SC_LastCursorTime = SC_Now
			
			If Right(txt$,1) = TextObj\cursor$ Then 
				HUD_SetText SC_CurrInputText, Replace(txt$,TextObj\cursor$,"")
			Else
				HUD_SetText SC_CurrInputText, txt$ + TextObj\cursor$
			End If
		End If
		
		txt$ = Replace(txt$,TextObj\cursor$,"")
		
	; KEY DETECTION
		key = GetKey() : If key = 0 Return
			
	; ENTER?
			If key = 13 Then HUD_DisableTextInput : Return
			
	; BACKSPACE?
			If key = 8 And Len(txt$) > 0 Then
				txt$ = Left(txt$,Len(txt$)-1)
				If TextObj\Snd_Type PlaySound Snd_Type
				End If
				
	; ADD CHAR, IF ALLOWED
				If Len(txt$) < TextObj\max_chars
					For i = 1 To Len(TextObj\allowed_chars$)
						c$ = Mid(TextObj\allowed_chars$,i,1)
						If key = Asc( c$ ) Then
							If TextObj\Snd_Type PlaySound Snd_Type
								If TextObj\input_upper = True
									Select c$
										Case "ä" txt$ = txt$ + "Ä"
										Case "ö" txt$ = txt$ + "Ö"
										Case "ü" txt$ = txt$ + "Ü"
										Default  txt$ = txt$ + Upper( c$ )
									End Select
								Else
									txt$ = txt$ + c$
								End If
								Exit
							End If
						Next
					End If
					
					HUD_SetText SC_CurrInputText, txt$
					
End Function




; ########################################################################
; IMAGE FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE IMAGE
; ------------------------------------------------------------------------
Function HUD_CreateImage% (LayerID, x%, y%, clip_x#=0, clip_y#=0, clip_w#=0, clip_h#=0, xAlign$="", yAlign$="", zorder%=0)
	
	Local Layer.SC_Layer     = Object.SC_Layer  (LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_CreateImage||You specified an invalid layer ID. Make sure, this layer exists.",50)
	Local Texture.SC_Texture = Object.SC_Texture(Layer\TextureID) : If Texture = Null Then RuntimeError SC_BreakText("HUD_CreateImage||The specified layer has no texture and can be used with shapes only. Create another layer first.",50)
	
	Local Obj.SC_Object
	Local ImageObj.SC_Image
	
	; NO CLIP SIZE SPECIFIED -SHOW ENTIRE TEXTURE
	If clip_w = 0 Then clip_w = Texture\tex_width  - clip_x
	If clip_h = 0 Then clip_h = Texture\tex_height - clip_y
	
	; CREATE AN IMAGE OBJECT
	ImageObj.SC_Image = New SC_Image
	ImageObj\TextureID= Handle(Texture)
	ImageObj\img_w    = clip_w
	ImageObj\img_h    = clip_h
	ImageObj\clip_x   = clip_x
	ImageObj\clip_y   = clip_y
	ImageObj\clip_w   = clip_w
	ImageObj\clip_h   = clip_h
	
	; CREATE A GENERAL HUD OBJECT	
	Obj.SC_Object 	 = New SC_Object
	Obj\HUD_ID	 = Layer\HUD_ID
	Obj\LayerID	 = Handle(Layer)	
	Obj\ImageID	 = Handle(ImageObj)
	Obj\typ		 = SC_IMAGE
	Obj\scalex	 = 1.0
	Obj\scaley	 = 1.0
	Obj\width	 = ImageObj\img_w
	Obj\height	 = ImageObj\img_h
	Obj\x		 = x : SC_SetAlignedX(Obj, xAlign$)
	Obj\y		 = y : SC_SetAlignedY(Obj, yAlign$)
	Obj\visible      = 1
	Obj\alpha	 = 1.0
	Obj\R1		 = 255
	Obj\G1		 = 255
	Obj\B1		 = 255
	Obj\R2		 = 255
	Obj\G2		 = 255
	Obj\B2		 = 255
	Obj\bg_a	 = -1
	Obj\b_a		 = -1
	Obj\zorder	 = zorder : SC_SortObjects
	Obj\shadow_offset= Layer\shadow_offset
	Obj\vx		 = -1
	
	; REBUILD THIS LAYER
	Layer\rebuild = 1
	
	Return Handle(Obj)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE TILED IMAGE
; ------------------------------------------------------------------------
Function HUD_CreateTiledImage% (LayerID, x%, y%, img_w%, img_h%, clip_x#=0, clip_y#=0, clip_w#=0, clip_h#=0, xAlign$="", yAlign$="", zorder%=0)
	
	If img_w < clip_w Then img_w = clip_w
	If img_h < clip_h Then img_h = clip_h
	
	Local Image% = HUD_CreateImage% (LayerID, x, y, clip_x, clip_y, clip_w, clip_h, xAlign$, yAlign$, zorder)
	
	; IS TILED
	Local Obj.SC_Object     = Object.SC_Object(Image)
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID)
	
	ImageObj\img_w  = img_w
	ImageObj\img_h  = img_h
	Obj\typ		= SC_TILED
	Obj\width	= ImageObj\img_w
	Obj\height	= ImageObj\img_h
	
	Return Image
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MIRROR OBJECT
; ------------------------------------------------------------------------
Function HUD_MirrorImage% (ObjectID%, mirror%)
	
	Local  Obj.SC_Object     = Object.SC_Object(ObjectID    ) : If Obj      = Null Then RuntimeError SC_BreakText("HUD_MirrorImage||The specified object does not exist.",50)
	Local  ImageObj.SC_Image = Object.SC_Image (Obj\ImageID ) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_MirrorImage||The specified object is no image object.",50)
	
	If mirror Then ImageObj\mirroredx = 1 Else ImageObj\mirroredx = 0
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


Function HUD_IsMirrored% (ObjectID%)
	Local  Obj.SC_Object     = Object.SC_Object(ObjectID    ) : If Obj      = Null Then RuntimeError SC_BreakText("HUD_IsMirrored||The specified object does not exist.",50)
	Local  ImageObj.SC_Image = Object.SC_Image (Obj\ImageID ) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_IsMirrored||The specified object is no image object.",50)
	Return ImageObj\mirroredx
End Function



; ------------------------------------------------------------------------
; PUBLIC FUNCTION: FLIP OBJECT
; ------------------------------------------------------------------------
Function HUD_FlipImage% (ObjectID%, flipit%)
	
	Local  Obj.SC_Object     = Object.SC_Object(ObjectID    ) : If Obj      = Null Then RuntimeError SC_BreakText("HUD_FlipImage||The specified object does not exist.",50)
	Local  ImageObj.SC_Image = Object.SC_Image (Obj\ImageID ) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_FlipImage||The specified object is no image object.",50)
	
	If flipit Then ImageObj\mirroredy = 1 Else ImageObj\mirroredy = 0
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


Function HUD_IsFlipped% (ObjectID%)
	Local  Obj.SC_Object     = Object.SC_Object(ObjectID    ) : If Obj      = Null Then RuntimeError SC_BreakText("HUD_IsFlipped||The specified object does not exist.",50)
	Local  ImageObj.SC_Image = Object.SC_Image (Obj\ImageID ) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_IsFlipped||The specified object is no image object.",50)
	Return ImageObj\mirroredy
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHANGE IMAGE'S SIZE
; ------------------------------------------------------------------------
Function HUD_ChangeImageSize% (ObjectID, img_w%, img_h%)
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_ChangeImageSize||The specified object does not exist.",50)
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_ChangeImageSize||The specified object is no image object.",50)
	Local Layer.SC_Layer    = Object.SC_Layer (Obj\LayerID) : If Layer  = Null Then RuntimeError SC_BreakText("HUD_ChangeImageSize||Could not find object's layer.",50)
	
	ImageObj\img_w  = img_w
	ImageObj\img_h  = img_h
	Obj\width	= ImageObj\img_w
	Obj\height	= ImageObj\img_h
	; IMAGE?
	
	If Obj\typ = SC_IMAGE Then
		ImageObj\clip_w = ImageObj\img_w
		ImageObj\clip_h = ImageObj\img_h
		Layer\update  = 1 : Obj\update = 1
	; TILED?
	Else
		Layer\rebuild = 1
	End If
	
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: AUTO-ANIMATE HUD IMAGE
; ------------------------------------------------------------------------
Function HUD_AnimateImage (ObjectID%, startx%, starty%, frames%=1, framesH%=1, mode$="NORMAL", loops%=0, speed% = 250)
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_AnimateImage||The specified object does not exist.",50)
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_AnimateImage||The specified object is no image object.",50)
	Local Layer.SC_Layer    = Object.SC_Layer (Obj\LayerID) : If Layer  = Null Then RuntimeError SC_BreakText("HUD_AnimateImage||Could not find object's layer.",50)
	Local AnimObj.SC_Anim
	
	If mode$ = "REVERSED" Then mode$ = "REVERSE"
	
	; ALREADY ANIMATED? - CLEAR ANIMATION
	HUD_ClearImageAnimations ObjectID
	
	; CREATE NEW ITEM IN ANIMATION LIST
	AnimObj.SC_Anim		= New SC_Anim
	AnimObj\ObjID		= Handle(Obj)
	AnimObj\mode$		= mode$
	AnimObj\loops		= loops
	AnimObj\speed		= speed
	AnimObj\framesH		= framesH
	AnimObj\frames		= frames
	AnimObj\last_change	= MilliSecs()
	AnimObj\loop		= 0
	AnimObj\frame		= 1
	AnimObj\active		= 1
	AnimObj\reverse		= 0 
	AnimObj\startx		= startx
	AnimObj\starty		= starty
	
	Obj\AnimID = Handle(AnimObj)
	
	; SHOW FIRST FRAME
	ImageObj\clip_x = startx
	ImageObj\clip_y = starty
	Layer\update  = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHANGE IMAGE'S TEXTURE CLIP
; ------------------------------------------------------------------------
Function HUD_SetImageClip (ObjectID%, clip_x#, clip_y#)
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)   : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetImageClip||The specified object does not exist.",50)
	Local ImageObj.SC_Image = Object.SC_Image(Obj\ImageID) : If ImageObj = Null Then Return
	Local Layer.SC_Layer    = Object.SC_Layer(Obj\LayerID)
	
	HUD_ClearImageAnimations ObjectID
	
	ImageObj\clip_x = clip_x
	ImageObj\clip_y = clip_y
	
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET IMAGE'S TEXTURE CLIP COORDS
; ------------------------------------------------------------------------
Function HUD_GetImageClip% (ObjectID%, what$)
	
	Local Obj.SC_Object     = Object.SC_Object( ObjectID ) : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetImageClip||The specified object does not exist.",50)
	Local ImageObj.SC_IMAGE = Object.SC_IMAGE(Obj\ImageID) : If ImageObj = Null Then Return
	
	
	Select Upper(what$)
		Case "X":Return ImageObj\clip_x
		Case "Y":Return ImageObj\clip_y
		Case "W":Return ImageObj\clip_w
		Case "H":Return ImageObj\clip_h
		Default:RuntimeError SC_BreakText ("HUD_GetImageClip||Wrong parameter - use 'X','Y','W' or 'H'",50)
	End Select
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE TEXTURE CLIPPING OF AN IMAGE
; ------------------------------------------------------------------------
Function HUD_MoveImageClip (ObjectID%, stepx#, stepy#)
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)   : If Obj = Null Then RuntimeError SC_BreakText("HUD_MoveImageClip||The specified object does not exist.",50)
	Local ImageObj.SC_Image = Object.SC_Image(Obj\ImageID) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_MoveImageClip||The specified object is no image object.",50)
	Local Layer.SC_Layer    = Object.SC_Layer(Obj\LayerID)
	
	HUD_ClearImageAnimations ObjectID
	
	ImageObj\clip_x = ImageObj\clip_x + stepx
	ImageObj\clip_y = ImageObj\clip_y + stepy
	
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHANGE ANIMATION SPEED
; ------------------------------------------------------------------------
Function HUD_SetAnimSpeed (ObjectID%, speed%)
	Local Obj.SC_Object   = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetAnimSpeed||The specified object does not exist.",50)
	Local AnimObj.SC_Anim = Object.SC_Anim(Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_SetAnimSpeed||The specified object does not have an animation defined.",50)
	If AnimObj <> Null Then AnimObj\speed = speed
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: JUMP TO AN ANIMATION FRAME
; ------------------------------------------------------------------------
Function HUD_SetAnimFrame (ObjectID%, frame%, stopAnimation%=False)
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetAnimFrame||The specified object does not exist.",50)
	Local AnimObj.SC_Anim   = Object.SC_Anim  (Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_SetAnimFrame||The specified object does not have an animation defined.",50)
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID)
	
	If frame < 0 Then frame = 0 Else If frame > AnimObj\frames Then frame = AnimObj\frames
	
	AnimObj\frame = frame
	
	; SHOW CURRENT FRAME
	ImageObj\clip_x = AnimObj\startx
	ImageObj\clip_y = AnimObj\starty
	Local i%
	For i = 2 To AnimObj\frame
		ImageObj\clip_x = ImageObj\clip_x + ImageObj\clip_w
		If ImageObj\clip_x >= AnimObj\startx + (AnimObj\framesH * ImageObj\clip_w)
			ImageObj\clip_x = AnimObj\startx
			ImageObj\clip_y = ImageObj\clip_y + ImageObj\clip_h
		End If
	Next
	
	; STOP ANIMATION
	If stopAnimation Then HUD_ClearImageAnimations ObjectID
	
	; UPDATE VERTICES
	Local Layer.SC_Layer = Object.SC_Layer(Obj\LayerID)
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET ANIMATION FRAME
; ------------------------------------------------------------------------
Function HUD_GetAnimFrame% (ObjectID%)
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)   : If Obj = Null Then RuntimeError SC_BreakText("HUD_GetAnimFrame||The specified object does not exist.",50)
	Local AnimObj.SC_Anim   = Object.SC_Anim  (Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_GetAnimFrame||The specified object does not have an animation defined.",50)
	Return AnimObj\frame
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHANGE ANIMATION MODE
; ------------------------------------------------------------------------
Function HUD_SetAnimMode (ObjectID%, mode$)
	Local Obj.SC_Object   = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_SetAnimMode||The specified object does not exist.",50)
	Local AnimObj.SC_Anim = Object.SC_Anim(Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_SetAnimMode||The specified object does not have an animation defined.",50)
	If AnimObj <> Null Then AnimObj\mode$ = mode$
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: PAUSE AN IMAGE ANIMATION (OR ALL)
; ------------------------------------------------------------------------
Function HUD_PauseImageAnimations (ObjectID%=0)
	
	Local Obj.SC_Object
	Local AnimObj.SC_Anim
	
	; SINGLE OBJECT
	If ObjectID <> 0 Then
	Obj = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_PauseImageAnimations||The specified object does not exist.",50)
	AnimObj.SC_Anim = Object.SC_Anim(Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_PauseImageAnimations||The specified object does not have an animation defined.",50)
	AnimObj\active  = 0
	Return
End If

	; ALL ANIMATIONS
For AnimObj.SC_Anim = Each SC_Anim : AnimObj\active = 0 : Next

End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RESUME AN IMAGE ANIMATION
; ------------------------------------------------------------------------
Function HUD_PlayImageAnimations (ObjectID%=0)
	
	Local Obj.SC_Object
	Local AnimObj.SC_Anim
	
	; SINGLE OBJECT
	If ObjectID <> 0 Then
		Obj = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_PlayImageAnimations||The specified object does not exist.",50)
		AnimObj.SC_Anim = Object.SC_Anim(Obj\AnimID) : If AnimObj = Null Then RuntimeError SC_BreakText("HUD_PlayImageAnimations||The specified object does not have an animation defined.",50)
		AnimObj\active  = 1
		Return
	End If
	
	; ALL ANIMATIONS
	For AnimObj.SC_Anim = Each SC_Anim : AnimObj\active = 1 : Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE IMAGE FROM ANIMATION LIST
; ------------------------------------------------------------------------
Function HUD_ClearImageAnimations (ObjectID%=0)
	
	Local Obj.SC_Object
	Local AnimObj.SC_Anim
	
	; SINGLE OBJECT
	If ObjectID <> 0 Then
		Obj.SC_Object   = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_ClearImageAnimations||The specified object does not exist.",50)
		AnimObj.SC_Anim = Object.SC_Anim  (Obj\AnimID)
		If AnimObj <> Null Then Obj\AnimID = 0 : Delete AnimObj
		Return
		
	End If
	
	; ALL ANIMATIONS
	For Obj.SC_Object = Each SC_Object : Obj\AnimID = 0 : Next
	Delete Each SC_Anim
	
End Function


; ########################################################################
; SHAPE FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CREATE A SHAPE OBJECT
; ------------------------------------------------------------------------
Function HUD_CreateShape (LayerID%, typ$, param1%, param2%, x%, y%, w%, h%, xAlign$="", yAlign$="", zorder%=0)
	
	Local Layer.SC_Layer = Object.SC_Layer (LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_CreateShape||You specified an invalid layer ID. Make sure, this layer exists.",50)
	
	Local Obj.SC_Object
	Local ShapeObj.SC_Shape
	
	; CREATE A SHAPE OBJECT
	ShapeObj.SC_Shape = New SC_Shape
	ShapeObj\param1   = param1
	ShapeObj\param2   = param2
	
	typ$ = Upper(typ$)
	
	Select typ$
		Case "RECTANGLE"  ShapeObj\typ = 1
		Case "PERCENTBAR" ShapeObj\typ = 2
		Case "LINE"       ShapeObj\typ = 3
		Case "TRIANGLE"   ShapeObj\typ = 4
		Case "CIRCLE"     ShapeObj\typ = 5
		Case "RING"       ShapeObj\typ = 6
		Case "STAR"       ShapeObj\typ = 7
		Case "HOLLOWSTAR" ShapeObj\typ = 8
		Case "DOTRING"    ShapeObj\typ = 9
	End Select
	
	;If w < 2 Then w = 2
	;If h < 2 Then h = 2
	
	If ShapeObj\typ <> 3 And w < 2 Then w = 2
	If ShapeObj\typ <> 3 And h < 2 Then h = 2
	
	; CREATE A GENERAL HUD OBJECT	
	Obj.SC_Object 	 = New SC_Object
	Obj\HUD_ID	 = Layer\HUD_ID
	Obj\LayerID	 = Handle(Layer)
	Obj\ShapeID	 = Handle(ShapeObj)
	Obj\typ		 = SC_SHAPE
	Obj\scalex	 = 1.0
	Obj\scaley	 = 1.0
	Obj\width	 = w
	Obj\height	 = h
	Obj\x		 = x : SC_SetAlignedX(Obj, xAlign$)
	Obj\y		 = y : SC_SetAlignedY(Obj, yAlign$)
	Obj\visible      = 1
	Obj\alpha	 = 1.0
	Obj\R1		 = 255
	Obj\G1		 = 255
	Obj\B1		 = 255
	Obj\R2		 = 255
	Obj\G2		 = 255
	Obj\B2		 = 255
	Obj\bg_a	 = -1
	Obj\b_a		 = -1
	Obj\zorder	 = zorder : SC_SortObjects
	Obj\shadow_offset= Layer\shadow_offset
	Obj\vx		 = -1
	
	; ADD SHAPE SURFACE?
	If Layer\ShapeSurf = 0 Then Layer\ShapeSurf = CreateSurface(Layer\Mesh)
	
	; REBUILD THIS LAYER
	Layer\rebuild = 1
	
	Return Handle(Obj)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UPDATE A SHAPE OBJECT
; ------------------------------------------------------------------------
Function HUD_UpdateShape (ObjectID%, typ$, param1%, param2%, x%=999999, y%=999999, w%=999999, h%=999999, xAlign$="", yAlign$="")
	
	Local Obj.SC_Object     = Object.SC_Object (ObjectID)   : If Obj = Null Then RuntimeError SC_BreakText("HUD_UpdateShape||The specified object does not exist.",50)
	Local ShapeObj.SC_Shape = Object.SC_Shape (Obj\ShapeID) : If ShapeObj = Null Then RuntimeError SC_BreakText("HUD_UpdateShape||The specified object is no shape object.",50)
	Local Layer.SC_Layer    = Object.SC_Layer (Obj\LayerID)
	
	;If w < 2 Then w = 2
	;If h < 2 Then h = 2
	If w <> 999999 Then Obj\width  = w
	If h <> 999999 Then Obj\height = h
	If x <> 999999 Then Obj\x      = x : SC_SetAlignedX(Obj, xAlign$)
	If y <> 999999 Then Obj\y      = y : SC_SetAlignedY(Obj, yAlign$)
	
	ShapeObj\param1 = param1
	ShapeObj\param2 = param2
	typ$ = Upper(typ$)
	Select typ$
		Case "RECTANGLE"  ShapeObj\typ = 1
		Case "PERCENTBAR" ShapeObj\typ = 2
		Case "LINE"       ShapeObj\typ = 3
		Case "TRIANGLE"   ShapeObj\typ = 4
		Case "CIRCLE"     ShapeObj\typ = 5
		Case "RING"       ShapeObj\typ = 6
		Case "STAR"       ShapeObj\typ = 7
		Case "HOLLOWSTAR" ShapeObj\typ = 8
		Case "DOTRING"    ShapeObj\typ = 9
	End Select
	
	If ShapeObj\typ <> 3 And w < 2 Then w = 2
	If ShapeObj\typ <> 3 And h < 2 Then h = 2
	
	; ADD SHAPE SURFACE?
	If Layer\ShapeSurf = 0 Then Layer\ShapeSurf = CreateSurface(Layer\Mesh)
	
	; REBUILD THIS LAYER
	Layer\rebuild = 1
	
End Function


; ########################################################################
; BUTTON FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD IMAGE TO BUTTON LIST
; ------------------------------------------------------------------------
Function HUD_AddImageButton (ObjectID%, x2%=0,y2%=0, x3%=0,y3%=0 )
	
	Local Obj.SC_Object     = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_AddImageButton||The specified object does not exist.",50)
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_AddImageButton||The specified object is no image object.",50)
	If Obj\typ <> SC_IMAGE  Then RuntimeError SC_BreakText("HUD_AddImageButton||Use non-tiled images only.",50)
	
	HUD_RemoveButton (ObjectID) ; REMOVE, IF ALREADY IN LIST
	
	If x2 = 0 Then x2 = ImageObj\clip_x
	If y2 = 0 Then y2 = ImageObj\clip_y
	If x3 = 0 Then x3 = ImageObj\clip_x
	If y3 = 0 Then y3 = ImageObj\clip_y
	
	Local ButtonObj.SC_Button = New SC_Button
	ButtonObj\LayerID   = Obj\LayerID
	ButtonObj\ObjID     = ObjectID
	ButtonObj\clip_x[0] = ImageObj\clip_x 	; NORMAL STATE
	ButtonObj\clip_y[0] = ImageObj\clip_y
	ButtonObj\clip_w[0] = ImageObj\clip_w
	ButtonObj\clip_h[0] = ImageObj\clip_h
	ButtonObj\clip_x[1] = x2 		; HOVER STATE
	ButtonObj\clip_y[1] = y2
	ButtonObj\clip_w[1] = w2
	ButtonObj\clip_h[1] = h2
	ButtonObj\clip_x[2] = x3 		; CLICKED STATE
	ButtonObj\clip_y[2] = y3
	ButtonObj\clip_w[2] = w3
	ButtonObj\clip_h[2] = h3
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD TEXT TO BUTTON LIST
; ------------------------------------------------------------------------
Function HUD_AddTextButton (ObjectID%)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_AddTextButton||The specified object does not exist.",50)
	If Obj\typ <> SC_TEXT Then RuntimeError SC_BreakText("HUD_AddTextButton||The specified object is no text.",50)
	
	HUD_RemoveButton (ObjectID) ; REMOVE, IF ALREADY IN LIST
	
	Local ButtonObj.SC_Button = New SC_Button
	ButtonObj\LayerID = Obj\LayerID
	ButtonObj\ObjID   = ObjectID
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD SHAPE TO BUTTON LIST
; ------------------------------------------------------------------------
Function HUD_AddShapeButton (ObjectID%)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_AddShapeButton||The specified object does not exist.",50)
	If Obj\typ <> SC_SHAPE Then RuntimeError SC_BreakText("HUD_AddShapeButton||The specified object is no shape.",50)
	
	HUD_RemoveButton (ObjectID) ; REMOVE, IF ALREADY IN LIST
	
	Local ButtonObj.SC_Button = New SC_Button
	ButtonObj\LayerID = Obj\LayerID
	ButtonObj\ObjID   = ObjectID
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK / UPDATE BUTTONS
; ------------------------------------------------------------------------
Function HUD_CheckButtons$ (LayerID%=0) ; 0 = CHECK ALL LAYERS
	
	SC_ActiveButton = 0
	Local event$ = ""
	Local mx%    = MouseX()
	Local my%    = MouseY()
	Local ButtonObj.SC_Button
	Local Layer.SC_Layer
	Local Obj.SC_Object
	Local HUD.SC_HUD
	
	; CHECK MOVEOUT EVENTS FIRST ; -----------------------------------
	For ButtonObj = Each SC_Button
		; RESET MOVEOUT FOR THIS BUTTON?
		If ButtonObj\state$ = "MOVEOUT" Then ButtonObj\state$ = ""
		
		; MOUSE OUTSIDE BUTTON
		If HUD_ObjectHitsPoint(ButtonObj\ObjID,mx,my,0) = False
			If event$ = "" And ButtonObj\state$ <> ""
				HUD_SetImageClip ButtonObj\ObjID, ButtonObj\clip_x[0], ButtonObj\clip_y[0]
				ButtonObj\state$ = "MOVEOUT"
				SC_ActiveButton  = ButtonObj\ObjID
				event$ = "MOVEOUT"
			End If
		End If
	Next
	If event$ <> "" Then Return event$
	
	
	; NO MOVEOUT EVENT LEFT - CHECK BUTTONS ; ------------------------
	For ButtonObj = Each SC_Button
		
		; THIS LAYER (OR ALL LAYERS)
		If LayerID = 0 Or ButtonObj\LayerID = LayerID
			
			; HUD, LAYER AND OBJECT ARE NOT HIDDEN?
			Layer = Object.SC_Layer (ButtonObj\LayerID)
			HUD   = Object.SC_HUD   (Layer\HUD_ID)
			Obj   = Object.SC_Object(ButtonObj\ObjID)
			If HUD\visible And Layer\visible And Obj\visible Then
				
				; ------------------------------------------------
				; MOUSE OVER BUTTON		
				If HUD_ObjectHitsPoint(ButtonObj\ObjID,mx,my,0)
					SC_ActiveButton = ButtonObj\ObjID
					; MOUSE DOWN?
					If MouseDown(1) 
						HUD_SetImageClip ButtonObj\ObjID, ButtonObj\clip_x[2], ButtonObj\clip_y[2]		
						If ButtonObj\state$ = "HOVER" Or ButtonObj\state$ = "MOVEIN" Then
							ButtonObj\state$ = "CLICK"
							event$ = "CLICK"
							HUD_DisableTextInput
							Exit
						Else
							ButtonObj\state$ = "HOLD"
							event$ = "HOLD" 
							Exit
						End If
					; MOUSE HOVER?
					Else
						HUD_SetImageClip ButtonObj\ObjID, ButtonObj\clip_x[1], ButtonObj\clip_y[1]		
						If ButtonObj\state$ = "" Then
							ButtonObj\state$ = "MOVEIN"
							event$ = "MOVEIN"
							Exit
						Else If ButtonObj\state$ = "CLICK" Or ButtonObj\state$ = "HOLD" Then
							ButtonObj\state$ = "RELEASE"
							event$ = "RELEASE"
							Exit
						Else
							ButtonObj\state$ = "HOVER"
							event$ = "HOVER"
							Exit
						End If
					End If
				End If
				; ------------------------------------------------
			End If ; HUD / LAYER / OBJECT VISIBLE
		End If ; THIS LAYER
	Next
	
	Return event$
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETRIEVE ACTIVE BUTTON AFTER HUD_CHECKBUTTONS
; ------------------------------------------------------------------------
Function HUD_GetActiveButton% ()
	Return SC_ActiveButton
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE ONE OBJECT FROM BUTTON LIST
; ------------------------------------------------------------------------
Function HUD_RemoveButton (ObjectID%)
	
	Local ButtonObj.SC_Button
	For   ButtonObj.SC_Button  = Each SC_Button
		If ButtonObj\ObjID = ObjectID Then
			; RESET NORMAL IMAGE
			HUD_SetImageClip ObjectID, ButtonObj\clip_x[0], ButtonObj\clip_y[0]		
			; DELETE BUTTON TYPE
			Delete ButtonObj
			Exit
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLEAR COMPLETE BUTTON LIST
; ------------------------------------------------------------------------
Function HUD_RemoveButtons ()
	
	Local ButtonObj.SC_Button
	For   ButtonObj.SC_Button = Each SC_Button
		; RESET NORMAL IMAGE
		HUD_SetImageClip ButtonObj\ObjID, ButtonObj\clip_x[0], ButtonObj\clip_y[0]		
		; DELETE BUTTON TYPE
		Delete ButtonObj
	Next
	
End Function


; ########################################################################
; COLLISION DETECTION FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET DISTANCE BETWEEN TWO POINTS
; ------------------------------------------------------------------------
Function HUD_GetDistance% (x1%, y1%, x2%, y2%)
	Local dx# = Abs( x1 - x2 )
	Local dy# = Abs( y1 - y2 )
	Return Sqr(dx*dx + dy*dy)
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET DISTANCE BETWEEN A POINT AND A LINE
; ------------------------------------------------------------------------
Function HUD_GetPointLineDistance% (px%, py%, x1%, y1%, x2%, y2%)
	
	Local dx#, dy#
	
	If x1 = x2 And y1 = y2 Then
		dx = Abs( px - x1 )
		dy = Abs( py - y1 )
		Return Sqr(dx*dx + dy*dy)
	End If
	
	Local sx# = x2 - x1
	Local sy# = y2 - y1
	Local a#  = ((px-x1) * (x2-x1) + (py - y1) * (y2-y1)) / (sx*sx + sy*sy)
	
	If a < 0.0 Then a = 0.0 Else If a > 1.0 Then a = 1.0
	dx = Abs( px - ( (1-a)*x1 + a*x2) )
	dy = Abs( py - ( (1-a)*y1 + a*y2) )
	Return Sqr(dx*dx + dy*dy)
	
End Function

; ------------------------------------------------------------------------
; PUBLIC FUNCTION: GET DISTANCE BETWEEN TWO OBJECTS
; ------------------------------------------------------------------------
Function HUD_GetObjectDistance% (Object1ID%, Object2ID%)
	
	Local Obj1.SC_Object  = Object.SC_Object(Object1ID) : If Obj1 = Null Then RuntimeError SC_BreakText("HUD_GetObjectDistance||The first object does not exist.",50)
	Local Obj2.SC_Object  = Object.SC_Object(Object2ID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_GetObjectDistance||The second object does not exist.",50)
	Local x%, y%, dx%, dy%
	
	; SAME LAYER?
	If Obj1\LayerID = Obj2\LayerID Then
		x = Obj2\x
		y = Obj2\y
		
	; DIFFERENT LAYERS?
	Else
		Local Layer1.SC_Layer = Object.SC_Layer(Obj1\LayerID)
		Local Layer2.SC_Layer = Object.SC_Layer(Obj2\LayerID)
		TFormPoint Obj2\x, Obj2\y,0, Layer2\Mesh, Layer1\Mesh
		x = TFormedX()
		y = TFormedY()
	End If
	
	dx = Abs( Obj1\x - x )
	dy = Abs( Obj1\y - y )
	Return Sqr(dx * dx + dy * dy)
	
End Function




; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF A XY-COORD IS INSIDE AN OBJECTS BOUNDARIES
; ------------------------------------------------------------------------
Function HUD_ObjectHitsPoint% (ObjectID%, x%, y%, LayerID% = -1)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_ObjectHitsPoint||The specified object does not exist.",50)
	Local HUDObj.SC_HUD  = Object.SC_HUD(Obj\HUD_ID)
	
	x = x - HUDObj\x
	y = y - HUDObj\y
	
	; CONVERT COORDS FIRST?
	If LayerID <> -1 Then
	Local Layer1.SC_Layer, Layer2.SC_Layer
	
		; FROM SCREEN?
	If LayerID = 0 Then
		Layer2 = Object.SC_Layer(Obj\LayerID)
		TFormPoint x,y,0, GetParent(GetParent(HUDObj\Piv)), Layer2\Mesh
		
		; FROM ANOTHER LAYER?
	Else
		Layer1 = Object.SC_Layer(LayerID) : If Layer1 = Null Then RuntimeError SC_BreakText("HUD_ObjectHitsPoint||The specified layer does not exist.",50)
		Layer2 = Object.SC_Layer(Obj\LayerID)
		TFormPoint x,y,0, Layer1\Mesh, Layer2\Mesh
	End If
	
	x = TFormedX()
	y = TFormedY()
End If

Local x1% = Obj\cornersx[0] ; TL
Local y1% = Obj\cornersy[0]
Local x2% = Obj\cornersx[1] ; TR
Local y2% = Obj\cornersy[1]
Local x3% = Obj\cornersx[2] ; BR
Local y3% = Obj\cornersy[2]
Local x4% = Obj\cornersx[3] ; BL
Local y4% = Obj\cornersy[3]
If ((y - y1) * (x2 - x1)) - ((x - x1) * (y2 - y1)) <= 0 Then Return 0 
If ((y - y2) * (x3 - x2)) - ((x - x2) * (y3 - y2)) <= 0 Then Return 0 
If ((y - y3) * (x4 - x3)) - ((x - x3) * (y4 - y3)) <= 0 Then Return 0 
If ((y - y4) * (x1 - x4)) - ((x - x4) * (y1 - y4)) <= 0 Then Return 0 
Return True

End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF OBJECTS OVERLAPS ANOTHER OBJECT
;                  -FASTEST: OBJECTS ON SAME LAYER & NOT ROTATED
;                  -MEDIUM : OBJECTS ON SAME LAYER & ROTATED
;                  -SLOWEST: OBJECTS ON DIFFERENT LAYERS
; ------------------------------------------------------------------------
Function HUD_ObjectHitsObject% (Object1ID%, Object2ID%)
	
	Local Obj1.SC_Object  = Object.SC_Object(Object1ID) : If Obj1 = Null Then RuntimeError SC_BreakText("HUD_ObjectHitsObject||The first object does not exist.",50)
	Local Obj2.SC_Object  = Object.SC_Object(Object2ID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_ObjectHitsObject||The second object does not exist.",50)
	Local Layer1.SC_Layer = Object.SC_Layer (Obj1\LayerID)
	Local Layer2.SC_Layer = Object.SC_Layer (Obj2\LayerID)
	
	; BOTH NOT ROTATED AND ON SAME LAYER? -DO FAST
	If Obj1\LayerID = Obj2\LayerID And Int(Obj1\rotation) = 0 And Int(Obj2\rotation) = 0 Then 
		Return RectsOverlap (Obj1\cornersx[0], Obj1\cornersy[0], Obj1\cornersx[2]-Obj1\cornersx[0], Obj1\cornersy[2]-Obj1\cornersy[0], Obj2\cornersx[0], Obj2\cornersy[0], Obj2\cornersx[2]-Obj2\cornersx[0], Obj2\cornersy[2]-Obj2\cornersy[0])
	End If
	
	; CHECK POINTS ---------------------------------------------------
	
	
	Local i%, x%[7], y%[7]
	x[0] = Obj2\cornersx[0] : y[0] = Obj2\cornersy[0]
	x[1] = Obj2\cornersx[1] : y[1] = Obj2\cornersy[1]
	x[2] = Obj2\cornersx[2] : y[2] = Obj2\cornersy[2]
	x[3] = Obj2\cornersx[3] : y[3] = Obj2\cornersy[3]
	
	; CONVERT LAYER2 TO LAYER1?
	If Obj1\LayerID <> Obj2\LayerID Then For i = 0 To 3 : TFormPoint x[i],y[i],0, Layer2\Mesh, Layer1\Mesh : x[i] = TFormedX() : y[i] = TFormedY() : Next
	
	For i = 0 To 3
		If HUD_ObjectHitsPoint (Object1ID, x[i], y[i]) Then Return True
	Next
	
	x[4] = Obj1\cornersx[0] : y[4] = Obj1\cornersy[0]
	x[5] = Obj1\cornersx[1] : y[5] = Obj1\cornersy[1]
	x[6] = Obj1\cornersx[2] : y[6] = Obj1\cornersy[2]
	x[7] = Obj1\cornersx[3] : y[7] = Obj1\cornersy[3]
	
	; CONVERT LAYER1 TO LAYER2?
	If Obj1\LayerID <> Obj2\LayerID Then For i = 4 To 7 : TFormPoint x[i],y[i],0, Layer1\Mesh, Layer2\Mesh : x[i] = TFormedX() : y[i] = TFormedY() : Next
	
	For i = 4 To 7
		If HUD_ObjectHitsPoint (Object2ID, x[i], y[i]) Then Return True
	Next
	
	; CHECK LINES ; --------------------------------------------------
	Obj1\cornersx[4] = Obj1\cornersx[0] : Obj1\cornersy[4] = Obj1\cornersy[0]
	For i = 0 To 3
		If HUD_LinesIntersect (Obj1\cornersx[i],Obj1\cornersy[i],Obj1\cornersx[i+1],Obj1\cornersy[i+1]  , x[0],y[0],x[1],y[1], 0) Then Return True
		If HUD_LinesIntersect (Obj1\cornersx[i],Obj1\cornersy[i],Obj1\cornersx[i+1],Obj1\cornersy[i+1]  , x[1],y[1],x[2],y[2], 0) Then Return True
		If HUD_LinesIntersect (Obj1\cornersx[i],Obj1\cornersy[i],Obj1\cornersx[i+1],Obj1\cornersy[i+1]  , x[2],y[2],x[3],y[3], 0) Then Return True
		If HUD_LinesIntersect (Obj1\cornersx[i],Obj1\cornersy[i],Obj1\cornersx[i+1],Obj1\cornersy[i+1]  , x[3],y[3],x[0],y[0], 0) Then Return True
	Next
	
	Return False
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF TWO LINES CROSS EACH OTHER
; ------------------------------------------------------------------------
Function HUD_LinesIntersect% (x0%,y0%,x1%,y1%, x2%,y2%,x3%,y3%, getIntersection%=1)
	
	Local d#, sn#, n#, ab#, cd#
	d = (x1-x0)*(y3-y2) - (y1-y0)*(x3-x2)
	; LINES ARE PARALLEL!
	If Abs(d) < 0.0001 Then Return False
	; LINES MIGHT CROSS!
	sn = (y0-y2)*(x1-x0) - (x0-x2)*(y1-y0)
	n  = (y0-y2)*(x3-x2) - (x0-x2)*(y3-y2)
	ab = n / d
	If ab > 0.0 And ab < 1.0
		cd = sn / d
		If cd > 0.0 And cd < 1.0 Then
			; INTERSECTION POINT
			If getIntersection Then 
				SC_IntersectedX = x0 + ab*(x1-x0)
				SC_IntersectedY = y0 + ab*(y1-y0)
			End If
			Return True
		End If
	End If
	Return False
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ADD A COLLISION SHAPE POINT
;                  USES OBJECTS RELATIVE COORDINATE SPACE!
; ------------------------------------------------------------------------
Function HUD_AddCollisionPoint (ObjectID%, x%, y%)
	
	Local Obj.SC_Object   = Object.SC_Object  (ObjectID)  : If Obj = Null Then RuntimeError SC_BreakText("HUD_AddCollisionPoint||The specified object does not exist.",50)
	Local Col.SC_ColShape = Object.SC_ColShape(Obj\ColID)
	
	; CREATE NEW COLLISION SHAPE?
	If Col = Null Or Obj\ColID = 0 Then 
		Col       = New SC_ColShape
		Col\ObjID = ObjectID
		Obj\ColID = Handle(Col)
	End If
	
	; OBJECT NOT RENDERED YET? -RENDER
	If Obj\vx < 0 Then SC_RenderVertices ObjectID
	
	; TOO MANY POINTS?
	If Col\vc > SC_MAXCOLPOINTS Then RuntimeError SC_BreakText("HUD_AddCollisionPoint||Used too many collision vertices. Increase the global SC_MAXCOLPOINTS or try using less points.",50)
	
	Col\x[Col\vc] = x
	Col\y[Col\vc] = y
	Col\vc        = Col\vc + 1
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLONE COLLISION SHAPE FROM ANOTHER OBJECT
; ------------------------------------------------------------------------
Function HUD_CopyCollisionShape (TargetID%, SourceID%)
	
	Local Obj1.SC_Object  = Object.SC_Object   (SourceID) : If Obj1 = Null Then RuntimeError SC_BreakText("HUD_CopyCollisionShape||The specified source object does not exist.",50)
	Local Obj2.SC_Object  = Object.SC_Object   (TargetID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_CopyCollisionShape||The specified target object does not exist.",50)
	Local Col.SC_ColShape = Object.SC_ColShape (Obj2\ColID)
	Local i%
	
	; REMOVE TARGET SHAPE, IF ONE
	If Col <> Null Then Delete Col
	
	; NEW SHAPE, ADD POINTS
	Col = Object.SC_ColShape (Obj1\ColID)
	For i = 0 To Col\vc-1
		HUD_AddCollisionPoint TargetID, Col\x[i], Col\y[i]
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: LOAD AND ATTACH COLLISION SHAPE FROM FILE
; ------------------------------------------------------------------------
Function HUD_LoadCollisionShape (ObjectID%, filename$)
	
	Local Obj.SC_Object   = Object.SC_Object (ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_LoadCollisionShape||The specified object does not exist.",50)
	Local File%           = ReadFile(filename$) : If File = 0 Then RuntimeError SC_BreakText("HUD_LoadCollisionShape||The specified shape data file could not be found.",50)
	Local Col.SC_ColShape = Object.SC_ColShape (Obj\ColID)
	
	; REMOVE TARGET SHAPE, IF ONE
	If Col <> Null Then Delete Col
	
	; READ FILE, ADD POINTS
	Local tmp$, pos1%, pos2%, x%, y%
	tmp$ = ReadLine(File) 	; IMAGE FILE NAME
	
	Repeat
		tmp$ = Trim(ReadLine(File))
		If tmp$ <> "" Then
			pos1 = Instr(tmp$,"=")
			pos2 = Instr(tmp$,",")
			x    = Mid  (tmp$, pos1+1, pos2-pos1 )
			y    = Right(tmp$, Len(tmp$)-pos2 )
			HUD_AddCollisionPoint ObjectID, x, y
		End If
	Until Eof(File) = 1
	
	CloseFile File
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLEAR A COLLISION SHAPE
; ------------------------------------------------------------------------
Function HUD_ClearCollisionShape (ObjectID%)
	Local  Obj.SC_Object   = Object.SC_Object  (ObjectID)  : If Obj = Null Then RuntimeError SC_BreakText("HUD_ClearCollisionShape||The specified object does not exist.",50)
	Local  Col.SC_ColShape = Object.SC_ColShape(Obj\ColID) : If Col = Null Then Return
	Delete Col : Obj\ColID = 0	
End Function



; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVE A COLLISION SHAPE
; ------------------------------------------------------------------------
Function HUD_ShiftCollisionShape (ObjectID%, xstep%, ystep%)
	
	Local Obj.SC_Object   = Object.SC_Object  (ObjectID)  : If Obj = Null Then RuntimeError SC_BreakText("HUD_ShiftCollisionShape||The specified object does not exist.",50)
	Local Col.SC_ColShape = Object.SC_ColShape(Obj\ColID) : If Col = Null Then Return
	Local i%
	For i = 0 To Col\vc - 1
		Col\x[i] = Col\x[i] + xstep   
		Col\y[i] = Col\y[i] + ystep   
	Next
	
	; UPDATE LAYER
	Local Layer.SC_Layer = Object.SC_Layer( Obj\LayerID )
	Layer\update = 1 : Obj\update = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: DRAW A COLLISION SHAPE TO SCREEN (OR ALL)
; ------------------------------------------------------------------------
Function HUD_DrawCollisionShapes (ObjectID%=0, R%=255, G%=255, B%=255)
	
	Local Col.SC_ColShape
	Local Obj.SC_Object 
	Local HUDObj.SC_HUD
	Local Layer.SC_Layer
	Local MainHUD%, i%, x1%, y1%, x2%, y2%
	
	Color R, G, B
	
	For   Col = Each SC_ColShape
		If Col\ObjID = ObectID Or ObjectID = 0 Then
			Obj      = Object.SC_Object(Col\ObjID)
			HUDObj   = Object.SC_HUD   (Obj\HUD_ID )
			MainHUD% = GetParent(GetParent(HUDObj\Piv))
			Layer    = Object.SC_Layer (Obj\LayerID)
			For i = 0 To Col\vc - 1
				x1 = Col\mx[i]   
				y1 = Col\my[i]   
				x2 = Col\mx[i+1]
				y2 = Col\my[i+1]
				If i = Col\vc-1 Then x2 = Col\mx[0]
				If i = Col\vc-1 Then y2 = Col\my[0]
				
				TFormPoint x1,y1,0, Layer\Mesh, MainHUD
				x1 = TFormedX() : y1 = TFormedY()
				TFormPoint x2,y2,0, Layer\Mesh, MainHUD
				x2 = TFormedX() : y2 = TFormedY()
				
				Line x1, y1, x2, y2 
			Next
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF POINT IS INSIDE COLLISION SHAPE
; ------------------------------------------------------------------------
Function HUD_CollisionShapeHitsPoint (ObjectID%, x%, y%, LayerID% = -1)
	
	Local Obj.SC_Object   = Object.SC_Object  (ObjectID)  : If Obj = Null Then RuntimeError SC_BreakText("HUD_CollisionShapeHitsPoint||The specified object does not exist.",50)
	Local Col.SC_ColShape = Object.SC_ColShape(Obj\ColID) : If Col = Null Then Return
	
	; CONVERT COORDS FIRST?
	If LayerID <> -1 Then
		Local Layer1.SC_Layer, Layer2.SC_Layer, HUDObj.SC_HUD
		; FROM SCREEN?
		If LayerID = 0 Then
			HUDObj = Object.SC_HUD  (Obj\HUD_ID)
			Layer2 = Object.SC_Layer(Obj\LayerID)
			TFormPoint x,y,0, GetParent(GetParent(HUDObj\Piv)), Layer2\Mesh
		; FROM ANOTHER LAYER?
		Else
			Layer1 = Object.SC_Layer(LayerID) : If Layer1 = Null Then RuntimeError SC_BreakText("HUD_ObjectHitsPoint||The specified layer does not exist.",50)
			Layer2 = Object.SC_Layer(Obj\LayerID)
			TFormPoint x,y,0, Layer1\Mesh, Layer2\Mesh
		End If
		
		x = TFormedX()
		y = TFormedY()
	End If
	
	Local i%, j%= 1, odd% = 0, vc%  = Col\vc - 1
	
	For i = 0 To vc
		If ((((Col\my[i]<=y) And (y<Col\my[j])) Or ((Col\my[j]<=y) And (y<Col\my[i]))) And (x < (Col\mx[j] - Col\mx[i]) * (y - Col\my[i]) / (Col\my[j] - Col\my[i]) + Col\mx[i])) Then odd = Not odd
		j = j + 1 : If j > vc Then j = 0
	Next
	
	Return odd
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CHECK IF TWO COLLISION SHAPES OVERLAP
; ------------------------------------------------------------------------
Function HUD_CollisionShapesOverlap (Object1ID%, Object2ID%)
	
	Local Obj1.SC_Object   = Object.SC_Object (Object1ID) : If Obj1 = Null Then RuntimeError SC_BreakText("HUD_CollisionShapesOverlap||The first specified object does not exist.",50)
	Local Obj2.SC_Object   = Object.SC_Object (Object2ID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_CollisionShapesOverlap||The second specified object does not exist.",50)
	Local Col1.SC_ColShape = Object.SC_ColShape(Obj1\ColID)
	Local Col2.SC_ColShape = Object.SC_ColShape(Obj2\ColID)
	Local Layer1.SC_Layer  = Object.SC_Layer (Obj1\LayerID)
	Local Layer2.SC_Layer  = Object.SC_Layer (Obj2\LayerID)
	
	If Col1 = Null Or Col2 = Null Then Return False
	
	Local i%, j%, x1%, y1%, x2%, y2%, x3%, y3%, x4%, y4%
	For i = 0 To Col1\vc - 1
		x1 = Col1\mx[i]   
		y1 = Col1\my[i]   
		x2 = Col1\mx[i+1]
		y2 = Col1\my[i+1]
		If i = Col1\vc-1 Then x2 = Col1\mx[0]
		If i = Col1\vc-1 Then y2 = Col1\my[0]
		For j = 0 To Col2\vc - 1
			x3 = Col2\mx[j]   
			y3 = Col2\my[j]   
			x4 = Col2\mx[j+1]
			y4 = Col2\my[j+1]
			If j = Col2\vc-1 Then x4 = Col2\mx[0]
			If j = Col2\vc-1 Then y4 = Col2\my[0]
			; CONVERT LAYERS?
			If Layer1 <> Layer2 Then
				TFormPoint x3,y3,0, Layer2\Mesh, Layer1\Mesh
				x3 = TFormedX() : y3 = TFormedY()
				TFormPoint x4,y4,0, Layer2\Mesh, Layer1\Mesh
				x4 = TFormedX() : y4 = TFormedY()
			End If
			
			If HUD_LinesIntersect (x1%,y1%,x2%,y2%, x3%,y3%,x4%,y4%, False) = True Then Return True
		Next
	Next
	
	Return False
	
End Function




; ########################################################################
; EFFECT FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RETURN NUMBER OF CURRENTLY APPLIED EFFECTS
; ------------------------------------------------------------------------
Function HUD_CountEffects% (ObjectID%=0, name$="")
	
	name$ = Upper(name$)
	Local FX.SC_FX, c%
	For   FX.SC_FX = Each SC_FX
		If ObjectID = 0 Or FX\ObjID = ObjectID Then
			If name$ = "" Or FX\name$ = name$ Then c = c + 1
		End If
	Next
	Return c
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE A CERTAIN EFFECT
; ------------------------------------------------------------------------
Function HUD_ClearEffect (FX_ID%)
	
	Local FX.SC_FX = Object.SC_FX(FX_ID) : If FX = Null Then Return
	
	; OBJECT / LAYER / TYPE?
	Local typ% = 0
	Local Obj.SC_Object  = Object.SC_Object(FX\ObjID) : If Obj    <> Null Then typ% = 1
	Local Layer.SC_Layer = Object.SC_Layer (FX\ObjID) : If Layer  <> Null Then typ% = 2
	Local HUDObj.SC_HUD  = Object.SC_HUD   (FX\ObjID) : If HUDObj <> Null Then typ% = 3
	If typ = 0 Then Return
	
	; THESE EFFECTS NEED SPECIAL CARE WHEN DELETED / FINISHED:
	Select FX\typ
		Case FX_BLINK
			If typ = 1 Then HUD_SetObjectVisibility FX\ObjID, 1
			If typ = 2 Then HUD_SetLayerVisibility  FX\ObjID, 1
			If typ = 3 Then HUD_SetVisibility       FX\ObjID, 1
			
		Case FX_RUMBLE
			If typ = 1 Then HUD_PositionObject FX\ObjID, FX\c, FX\d
			If typ = 2 Then HUD_PositionLayer  FX\ObjID, FX\c, FX\d
			If typ = 3 Then HUD_Position       FX\ObjID, FX\c, FX\d
			
		Case FX_SHAKE
			If typ = 1 Then HUD_PositionObject FX\ObjID, FX\a, FX\b
			If typ = 2 Then HUD_PositionLayer  FX\ObjID, FX\a, FX\b
			If typ = 3 Then HUD_Position       FX\ObjID, FX\a, FX\b
			
		Case FX_MOVETO
			If typ = 1 Then HUD_PositionObject FX\ObjID, Int(HUD_GetObjectX(FX\ObjID)), Int(HUD_GetObjectY(FX\ObjID))
			If typ = 2 Then HUD_PositionLayer  FX\ObjID, Int(HUD_GetLayerX(FX\ObjID)),  Int(HUD_GetLayerY(FX\ObjID))
			If typ = 3 Then HUD_Position       FX\ObjID, Int(HUD_GetX(FX\ObjID)),       Int(HUD_GetY(FX\ObjID))
			
		Case FX_ORBIT
			If typ = 1 Then HUD_PositionObject FX\ObjID, Int(HUD_GetObjectX(FX\ObjID)), Int(HUD_GetObjectY(FX\ObjID))
			
		Case FX_RIPPLE
			If typ = 1 Then HUD_RippleObject FX\ObjID, 0
			
		Case FX_SMOOTHBLINK
			If FX\e > -1
				If typ = 1 Then HUD_SetObjectAlpha FX\ObjID, FX\e
				If typ = 2 Then HUD_SetLayerAlpha  FX\ObjID, FX\e
				If typ = 3 Then HUD_SetAlpha       FX\ObjID, FX\e
			End If
			
	End Select
	
	; EFFECT HAS BEEN COMPLETED:
	If FX\duration <= SC_Now Then
		Select FX\typ
				
			Case FX_COLORFADE
				HUD_SetObjectColor FX\ObjID, FX\g, FX\h, FX\i
				
			Case FX_ALPHAFADE
				If typ = 1 Then HUD_SetObjectAlpha FX\ObjID, FX\c
				If typ = 2 Then HUD_SetLayerAlpha  FX\ObjID, FX\c
				If typ = 3 Then HUD_SetAlpha       FX\ObjID, FX\c
				
			Case FX_MOVETO
				If typ = 1 Then HUD_PositionObject FX\ObjID, FX\h, FX\i
				If typ = 2 Then HUD_PositionLayer  FX\ObjID, FX\h, FX\i
				If typ = 3 Then HUD_Position       FX\ObjID, FX\h, FX\i
				
			Case FX_SCALE
				If typ = 1 Then HUD_SetObjectScale FX\ObjID, FX\h, FX\i
				If typ = 2 Then HUD_SetLayerScale  FX\ObjID, FX\h, FX\i
				If typ = 3 Then HUD_SetScale       FX\ObjID, FX\h, FX\i
				
			Case FX_ROTATE
				If typ = 1 Then HUD_SetObjectRotation FX\ObjID, FX\e
				If typ = 2 Then HUD_SetLayerRotation  FX\ObjID, FX\e
				If typ = 3 Then HUD_SetRotation       FX\ObjID, FX\e
				
		End Select
	End If
	
	Delete FX
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLEAR AN ITEM'S EFFECTS
; ------------------------------------------------------------------------
Function HUD_ClearEffects (ObjectID%=0, name$="")
	
	name$ = Upper(name$)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	Local Item.SC_GroupItem
	Local Group.SC_Group = Object.SC_Group(ObjectID)
	If Group <> Null Then
		For Item = Each SC_GroupItem
			If Item\GroupID = Handle(Group)
				For FX  = Each SC_FX
					If FX\ObjID = Item\ObjID
						If name$ = "" Or FX\name$ = name$ Then HUD_ClearEffect( Handle(FX) )
					End If
				Next
			End If
		Next
		Return
	End If
	; ------------------------
	
	For FX.SC_FX = Each SC_FX
		If ObjectID = 0 Or FX\ObjID = ObjectID
			If name$ = "" Or FX\name$ = name$ Then HUD_ClearEffect( Handle(FX) )
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: PAUSE AN ITEM'S EFFECTS (OR ALL)
; ------------------------------------------------------------------------
Function HUD_PauseEffects (ObjectID%=0, name$="")
	
	name$ = Upper(name$)
	Local FX.SC_FX
	For   FX.SC_FX = Each SC_FX
		If ObjectID = 0 Or FX\ObjID = ObjectID
			If name$ = "" Or FX\name$ = name$ Then
				If FX\paused = 0 Then FX\paused = MilliSecs()
			End If
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RESUME AN ITEM'S EFFECTS
; ------------------------------------------------------------------------
Function HUD_ResumeEffects (ObjectID%=0, name$="")
	
	name$ = Upper(name$)
	Local FX.SC_FX
	For   FX.SC_FX = Each SC_FX
		If ObjectID = 0 Or FX\ObjID = ObjectID
			If name$ = "" Or FX\name$ = name$ Then
				If FX\paused > 0 Then
					FX\start_time = FX\start_time + (MilliSecs() - FX\paused)
					If FX\duration > 0 Then FX\duration = FX\duration + (MilliSecs() - FX\paused)
					FX\paused = 0
				End If
			End If
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: STEADYMOVE FX (OBJECTS)
;                  - LAYER SHOULD NOT BE ROTATED!
; ------------------------------------------------------------------------
Function HUD_FX_SteadyMove% (ObjectID%, spx#, spy#, relative%=False, stopOutside%=False, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_SteadyMove Handle(Item), spx, spy, relative, stopOutside, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_SteadyMove||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local HUDObj.SC_HUD = Object.SC_HUD   (Obj\HUD_ID)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "STEADYMOVE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "STEADYMOVE"
	FX\typ		= FX_STEADYMOVE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= spx / 1000	; SPEED X
	FX\b		= spy / 1000	; SPEED Y
	FX\c 		= HUDObj\width	; HUD WIDTH
	FX\d 		= HUDObj\height	; HUD HEIGHT
	FX\e		= stopOutside
	FX\flag		= relative	; MOVE RELATIVE?
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: FOLLOWOBJECT FX (OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_FollowObject% (ObjectID%, TargetID%, offx%=0, offy%=0, damping%=0, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_FollowObject Handle(Item), TargetID, offx, offy, damping, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_FollowObject||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Obj2.SC_Object = Object.SC_Object(TargetID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_FX_FollowObject||The specified target object does not exist.",50)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "FOLLOWOBJECT"
	
	If damping < 0 Then damping = 0
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "FOLLOWOBJECT"
	FX\typ		= FX_FOLLOWOBJECT
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= TargetID
	FX\b		= offx
	FX\c 		= offy
	FX\d 		= damping * 100
	FX\e		= Obj\LayerID
	FX\f		= Obj2\LayerID
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: FACEOBJECT FX (OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_FaceObject% (ObjectID%, TargetID%, damping%=0, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_FaceObject Handle(Item), TargetID, damping, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_FaceObject||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Obj2.SC_Object = Object.SC_Object(TargetID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_FX_FaceObject||The specified target object does not exist.",50)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "FACEOBJECT"
	
	If damping < 0 Then damping = 0
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "FACEOBJECT"
	FX\typ		= FX_FACEOBJECT
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= TargetID
	FX\b 		= damping * 100
	FX\c		= Obj\LayerID
	FX\d		= Obj2\LayerID
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ORBIT FX (OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Orbit% (ObjectID%, TargetID%, radius%, speed#, start_angle#=0, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Orbit Handle(Item), TargetID, radius, speed, start_angle, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Orbit||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Obj2.SC_Object = Object.SC_Object(TargetID) : If Obj2 = Null Then RuntimeError SC_BreakText("HUD_FX_Orbit||The specified target object does not exist.",50)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "ORBIT"
	
	If start_angle < 0   Then start_angle = start_angle + 360
	If start_angle > 360 Then start_angle = start_angle - 360
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "ORBIT"
	FX\typ		= FX_ORBIT
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= TargetID
	FX\b 		= start_angle	; CURRENT ANGLE
	FX\c		= (speed * 360.0) / 1000.0
	FX\d		= radius
	FX\e		= Obj\LayerID
	FX\f		= Obj2\LayerID
	FX\g		= -255		; SET TO 0, WHEN STARTED
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: MOVETO FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_MoveTo% (ObjectID%, x%, y%, duration%, ease1%=0, ease2%=-1, timedelay%=0, moveRelative%=False, oneDirection%=0); 1=X ONLY, 2=Y ONLY
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_MoveTo Handle(Item), x, y, duration, ease1, ease2, timedelay, moveRelative, oneDirection
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_MoveTo||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	If ease2 = -1 Then ease2 = ease1
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "MOVETO", st, et)
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "MOVETO"
	FX\typ		= FX_MOVETO
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	; WILL BE SET AT EFFECT START
	FX\a		= -255
	FX\b		= -255
	FX\c		= -255
	FX\d		= -255
	FX\e 		= ease1
	FX\f 		= ease2
	FX\g 		= duration
	FX\h 		= x	; TARGET X
	FX\i 		= y	; TARGET Y
	If moveRelative = True Then
		If HUDObj <> Null FX\h = HUD_GetX      (ObjectID) + x : FX\i = HUD_GetY       (ObjectID) + y
			If Layer  <> Null FX\h = HUD_GetLayerX (ObjectID) + x : FX\i = HUD_GetLayerY  (ObjectID) + y
				If Obj    <> Null FX\h = HUD_GetObjectX(ObjectID) + x : FX\i = HUD_GetObjectY (ObjectID) + y
				End If
				
				If oneDirection = 1 Then
					If HUDObj <> Null FX\i = HUD_GetY      (ObjectID)
						If Layer  <> Null FX\i = HUD_GetLayerY (ObjectID)
							If Obj    <> Null FX\i = HUD_GetObjectY(ObjectID)
							Else If oneDirection = 2 Then
								If HUDObj <> Null FX\h = HUD_GetX      (ObjectID)
									If Layer  <> Null FX\h = HUD_GetLayerX (ObjectID)
										If Obj    <> Null FX\h = HUD_GetObjectX(ObjectID)
										End If
										
										Return Handle(FX)
										
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: CHECK IF EFFECT OVERLAPS WITH EXISTING
; ------------------------------------------------------------------------
Function SC_ClearOverlappingFX% (ObjectID%, name$, st%, et%)
	
	Local FX.SC_FX
	For   FX.SC_FX = Each SC_FX
		If FX\ObjID = ObjectID And FX\name$ = name$ Then
			If st > FX\start_time And st < FX\duration Then
				Delete FX
			Else If et > FX\start_time And et < FX\duration Then
				Delete FX
			End If
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SCALE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Scale% (ObjectID%, sx#, sy#, duration%, ease1%=0, ease2%=-1, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Scale Handle(Item), sx, sy, duration, ease1, ease2, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Scale||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	If ease2 = -1 Then ease2 = ease1
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "SCALE", st, et)
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "SCALE"
	FX\typ		= FX_SCALE
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	; WILL BE SET AT EFFECT START
	FX\a		= -255
	FX\b		= -255
	FX\c		= -255
	FX\d		= -255
	
	FX\e 		= ease1
	FX\f 		= ease2
	FX\g 		= duration
	FX\h 		= sx	; TARGET SCALE X
	FX\i 		= sy	; TARGET SCALE Y
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ROTATE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Rotate% (ObjectID%, angle#, relative%, duration%, ease%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Rotate Handle(Item), angle, relative, duration, ease, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Rotate||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "ROTATE", st, et)
	
	If angle < 0 Then angle = 360 + angle ; CONVERT TO 0-360
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "ROTATE"
	FX\typ		= FX_ROTATE
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	; WILL BE SET AT EFFECT START
	FX\a 		= -255
	FX\b 		= -255
	
	FX\c 		= ease
	FX\d 		= duration
	FX\e 		= angle ; TARGET ROTATTION
	FX\f		= relative
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: COLORFADE FX (OBJECTS) - MULTIPLE USE OK
; ------------------------------------------------------------------------
Function HUD_FX_ColorFade% (ObjectID%, R#, G#, B#, duration%, timedelay%=0)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_ColorFade Handle(Item), R, G, B, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_ColorFade||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local FX.SC_FX
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "COLORFADE", st, et)
	
	; DISABLE COLOR GRADIENT
	Obj\gradient = 0
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "COLORFADE"
	FX\typ		= FX_COLORFADE
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	FX\a		= -1 ; CURRENT R, WILL BE SET AT START
	FX\b		=  0 ; R SPEED  , WILL BE SET AT START
	FX\c		= -1 ; CURRENT G
	FX\d		=  0 ; G SPEED
	FX\e		= -1 ; CURRENT B
	FX\f		=  0 ; B SPEED
	FX\g		=  R ; TARGET R 
	FX\h		=  G ; TARGET G
	FX\i		=  B ; TARGET B
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RIPPLE FX (OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Ripple% (ObjectID%, width#, height#, speed#, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Ripple Handle(Item), width, height, speed, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Ripple||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local Layer.SC_Layer = Object.SC_Layer (Obj\LayerID)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "RIPPLE"
	
	HUD_RippleObject ObjectID, 0
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "RIPPLE"
	FX\typ		= FX_RIPPLE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a  = width
	FX\b  = height
	FX\c  = 0	; CURRENT OFFSET
	FX\d  = speed / 100.0
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SHAKE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Shake% (ObjectID%, radius#, speed#, duration%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Shake Handle(Item), radius, speed, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Shake||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; BLOCK IF EFFECT STILL IN USE
	If HUD_CountEffects (ObjectID, "SHAKE") Then Return
	
	radius = Abs(radius)
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "SHAKE"
	FX\typ		= FX_SHAKE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a = -255
	FX\b = -255
	FX\c = radius
	FX\d = speed / 1000.0
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: WAVE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Wave% (ObjectID%,range_x%,speed_x#,range_y%=0,speed_y#=0,duration%=0,timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Wave Handle(Item), range_x,speed_x,range_y,speed_y,duration,timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Wave||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; BLOCK IF EFFECT STILL IN USE
	If HUD_CountEffects (ObjectID, "WAVE") Then Return
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "WAVE"
	FX\typ		= FX_WAVE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a = -255
	FX\b = -255
	FX\c = range_x
	FX\d = range_y
	FX\e = speed_x * 100.0
	FX\f = speed_y * 100.0
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: RUMBLE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Rumble% (ObjectID%, radius%, duration%, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Rumble Handle(Item), radius, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Rumble||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; BLOCK IF EFFECT STILL IN USE
	If HUD_CountEffects (ObjectID, "RUMBLE") Then Return
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "RUMBLE"
	FX\typ		= FX_RUMBLE
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	FX\a		= Float(radius) / Float(duration)
	FX\b		= radius
	
	Local ParentPiv%
	If HUDObj <> Null Then
		ParentPiv = GetParent(HUDObj\Piv)
		FX\c = HUD_GetX(ObjectID)
		FX\d = HUD_GetY(ObjectID)
	Else If Layer  <> Null Then
		ParentPiv = GetParent(Layer\Mesh)
		FX\c = HUD_GetLayerX(ObjectID)
		FX\d = HUD_GetLayerY(ObjectID)
	Else If Obj    <> Null Then
		FX\c = HUD_GetObjectX(ObjectID)
		FX\d = HUD_GetObjectY(ObjectID)
	End If
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: TEXTURE SCROLL FX (OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_ScrollTexture% (ObjectID%, speedx#, speedy#, duration%=0, timedelay%=0)
	
	Local Obj.SC_Object = Object.SC_Object(ObjectID)
	
	; HANDLE GROUP? ----------
	If Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_ScrollTexture Handle(Item), speedx, speedy, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_ScrollTexture||The specified object or group does not exist.",50)
	End If
	; ------------------------
	
	Local ImageObj.SC_Image = Object.SC_Image (Obj\ImageID) : If ImageObj = Null Then RuntimeError SC_BreakText("HUD_FX_ScrollTexture||The specified object is no image object.",50)
	Local FX.SC_FX
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "SCROLLTEXTURE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "SCROLLTEXTURE"
	FX\typ		= FX_SCROLLTEXTURE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a  = speedx / 1000.0	; SPEED X
	FX\b  = speedy / 1000.0	; SPEED Y
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: AUTOREMOVE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_AutoRemove% (ObjectID%, timedelay%)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_AutoRemove Handle(Item), timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_AutoRemove||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "AUTOREMOVE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "AUTOREMOVE"
	FX\typ		= FX_AUTOREMOVE
	FX\start_time	= MilliSecs() + timedelay
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: ALPHAFADE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_AlphaFade% (ObjectID%, a#, duration%, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_AlphaFade Handle(Item), a, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_AlphaFade||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "ALPHAFADE", st, et)
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "ALPHAFADE"
	FX\typ		= FX_ALPHAFADE
	FX\start_time	= MilliSecs() + timedelay
	FX\duration 	= FX\start_time + duration
	
	FX\a		= -255 ; CURRENT ALPHA, WILL BE SET AT START
	FX\b		= -255 ; SPEED, WILL BE SET AT START
	FX\c		= a
	FX\d		= duration
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SMOOTHBLINK FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_SmoothBlink% (ObjectID%, a1#, a2#, speed#, duration%=0, timedelay%=0, finalAlpha#=-1)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_SmoothBlink Handle(Item), a1, a2, speed, duration, timedelay, finalAlpha
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_SmoothBlink||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR OVERLAPPING EFFECTS:
	Local st% = MilliSecs() + timedelay
	Local et% = st  + duration 
	SC_ClearOverlappingFX (ObjectID, "SMOOTHBLINK", st, et)
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "SMOOTHBLINK"
	FX\typ		= FX_SMOOTHBLINK
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	speed = speed / 2
	If a1 < 0.0 Then a1 = 0.0 Else If a1 > 1.0 Then a1 = 1.0
	If a2 < 0.0 Then a2 = 0.0 Else If a2 > 1.0 Then a2 = 1.0
	If HUDObj <> Null Then HUD_SetAlpha       ObjectID, a1
	If Layer  <> Null Then HUD_SetLayerAlpha  ObjectID, a1
	If Obj    <> Null Then HUD_SetObjectAlpha ObjectID, a1
	
	FX\d = a1
	FX\e = finalAlpha
	
	If a1 < a2 Then
		FX\a = a1 : FX\b = a2 : FX\c  = (FX\b - FX\a) / speed
	Else
		FX\a = a2 : FX\b = a1 : FX\c  = -((FX\b - FX\a) / speed)
	End If
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: SINEROTATE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_SineRotate% (ObjectID%, amplitude#, speed#, duration%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_SineRotate Handle(Item), amplitude, speed, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_SineRotate||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "SINEROTATE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "SINEROTATE"
	FX\typ		= FX_SINEROTATE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	; REMEMBER CURRENT ROTATION
	
	If HUDObj <> Null Then FX\a = HUD_GetRotation       (ObjectID)
	If Layer  <> Null Then FX\a = HUD_GetLayerRotation  (ObjectID)
	If Obj    <> Null Then FX\a = HUD_GetObjectRotation (ObjectID)
	
	FX\b = ((FX\a + amplitude/2) - (FX\a - amplitude/2)) / 2 ; HALF
	FX\c = FX\a - amplitude/2 ; MIN
	FX\d = speed
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: STEADYROTATE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_SteadyRotate% (ObjectID%, speed#, duration%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_SteadyRotate Handle(Item), speed, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_SteadyRotate||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "STEADYROTATE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "STEADYROTATE"
	FX\typ		= FX_STEADYROTATE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= speed / 1000.0
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: STEADYSCALE FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_SteadyScale% (ObjectID%, sx1#, sy1#, sx2#, sy2#, speed#, duration%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_SteadyScale Handle(Item), sx1, sy1, sx2, sy2, speed, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_SteadyScale||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "STEADYSCALE"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "STEADYSCALE"
	FX\typ		= FX_STEADYSCALE
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	speed = speed / 2
	sx1 = Abs(sx1) : sy1 = Abs(sy1)
	
	sx2 = Abs(sx2) : sy2 = Abs(sy2)
	If sx1 < 0.01 Then sx1 = 0.01
	If sy1 < 0.01 Then sy1 = 0.01
	If sx2 < 0.01 Then sx2 = 0.01
	If sy2 < 0.01 Then sy2 = 0.01
	If HUDObj <> Null Then HUD_SetScale       ObjectID, sx1, sy1
	If Layer  <> Null Then HUD_SetLayerScale  ObjectID, sx1, sy1
	If Obj    <> Null Then HUD_SetObjectScale ObjectID, sx1, sy1
	
	FX\d = sx1 : FX\h = sy1
	
	If sx1 < sx2 Then 
		FX\a = sx1 : FX\b = sx2 : FX\c  = (FX\b - FX\a) / speed
	Else
		FX\a = sx2 : FX\b = sx1 : FX\c  = -((FX\b - FX\a) / speed)
	End If
	
	If sy1 < sy2 Then
		FX\e = sy1 : FX\f = sy2 : FX\g  = (FX\f - FX\e) / speed
	Else
		FX\e = sy2 : FX\f = sy1 : FX\g  = -((FX\f - FX\e) / speed)
	End If
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: BLINK FX (HUDS, LAYERS, OBJECTS)
; ------------------------------------------------------------------------
Function HUD_FX_Blink% (ObjectID%, hidden#, visible#, duration%=0, timedelay%=0)
	
	Local HUDObj.SC_HUD  = Object.SC_HUD   (ObjectID)
	Local Layer.SC_Layer = Object.SC_Layer (ObjectID)
	Local Obj.SC_Object  = Object.SC_Object(ObjectID)
	Local FX.SC_FX
	
	; HANDLE GROUP? ----------
	If HUDObj = Null And Layer = Null And Obj = Null Then
		Local Group.SC_Group    = Object.SC_Group    (ObjectID)
		Local Item.SC_GroupItem = Object.SC_GroupItem(ObjectID)
		; FIRST GROUP CALL?
		If Group <> Null
			For Item = Each SC_GroupItem
				If Item\GroupID = Handle(Group) Then HUD_FX_Blink Handle(Item), hidden, visible, duration, timedelay
			Next
			Return
		; LOOPED CALL
		Else If Item <> Null
			Obj      = Object.SC_Object (Item\ObjID)
			ObjectID = Item\ObjID
		End If
		; NOTHING FOUND?
		If Group = Null And Item = Null And Obj = Null Then RuntimeError SC_BreakText("HUD_FX_Blink||The specified HUD, layer, object or group does not exist.",50)
	End If
	; ------------------------
	
	; CLEAR PREVIOUS EFFECT OF THIS TYPE
	HUD_ClearEffects ObjectID, "BLINK"
	
	; CREATE NEW FX ITEM
	FX.SC_FX	= New SC_FX
	FX\ObjID	= ObjectID
	FX\name$	= "BLINK"
	FX\typ		= FX_BLINK
	FX\start_time	= MilliSecs() + timedelay
	If duration > 0 Then FX\duration = FX\start_time + duration
	
	FX\a		= FX\start_time
	FX\b		= hidden
	FX\c		= visible
	FX\d		= 0 ; HIDE
	
	If HUDObj <> Null Then HUD_SetVisibility       ObjectID, 0
	If Layer  <> Null Then HUD_SetLayerVisibility  ObjectID, 0
	If Obj    <> Null Then HUD_SetObjectVisibility ObjectID, 0
	
	Return Handle(FX)
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: DETACH AN OBJECT AND CONVERT TO 3D OBJECT
; ------------------------------------------------------------------------
Function HUD_DetachObject% (ObjectID%,FX%=2,del%=False,x#=0,y#=0,z#=0,scale#=1.0)
	Local Obj.SC_Object      = Object.SC_Object(ObjectID)    : If Obj = Null Then RuntimeError SC_BreakText("HUD_DetachObject||The specified object does not exist.",50)
	Local HUDObj.SC_HUD      = Object.SC_HUD   (Obj\HUD_ID)
	Local Layer.SC_Layer     = Object.SC_Layer (Obj\LayerID)
	Local Texture.SC_Texture = Object.SC_Texture( Layer\TextureID )
	
	 ; NOT RENDERED YET?
	If Obj\vx < 0 Then SC_RenderVertices ObjectID
	
	Local vn%,v%[2],vx%,i%,Tri%
	Local offx#  = HUD_GetObjectX(ObjectID)
	Local offy#  = HUD_GetObjectY(ObjectID)
	Local OSurf% = Layer\Surf : If Obj\typ = SC_SHAPE Then OSurf = Layer\ShapeSurf
	Local Mesh%  = CreateMesh()
	Local Surf%  = CreateSurface(Mesh)
	EntityFX       Mesh, FX
	PositionEntity Mesh, x,y,z
	
	; SET TEXTURE
	If Obj\typ <> SC_SHAPE Then EntityTexture Mesh, Texture\Texture
	
	; COPY VERTICES
	For vx = Obj\vx To Obj\lx
		x  = VertexX(OSurf,vx)-offx
		y  = VertexY(OSurf,vx)+offy
		vn = AddVertex(Surf,x,y,0,VertexU(OSurf,vx),VertexV(OSurf,vx),VertexW(OSurf,vx)) 
		VertexColor Surf,vn, VertexRed(OSurf,vx),VertexGreen(OSurf,vx),VertexBlue(OSurf,vx)
	Next
	
	; CREATE TRIANGLES
	For Tri = 0 To CountTriangles(OSurf)-1
		v[0] = TriangleVertex(OSurf,Tri,0)
		v[1] = TriangleVertex(OSurf,Tri,1)
		v[2] = TriangleVertex(OSurf,Tri,2)
		If (v[0] >= Obj\vx And v[0] <= Obj\lx) And (v[1] >= Obj\vx And v[1] <= Obj\lx) And (v[2] >= Obj\vx And v[2] <= Obj\lx) Then
			AddTriangle Surf, v[0]-Obj\vx,v[1]-Obj\vx,v[2]-Obj\vx
		End If
	Next
	
	; DELETE ORIGINAL?
	If del = True HUD_RemoveObject(ObjectID)
		
	; CENTER MESH
		Local ux# =-100000
		Local uy# =-100000
		Local uz# =-100000
		Local lx# = 100000
		Local ly# = 100000
		Local lz# = 100000
		For i = 0 To CountVertices(Surf)-1
			x = VertexX(Surf,i)
			y = VertexY(Surf,i)
			z = VertexZ(Surf,i)
			If x<lx Then lx=x
			If x>ux Then ux=x
			If y<ly Then ly=y
			If y>uy Then uy=y
			If z<lz Then lz=z
			If z>uz Then uz=z
		Next
		x = (ux+lx)/2
		y = (uy+ly)/2
		z = (uz+lz)/2
		PositionMesh  Mesh,-x,-y,-z
		ScaleMesh     Mesh, scale*.025,-(scale*.025),scale*.025
		UpdateNormals Mesh
		Return        Mesh
		
End Function


; ########################################################################
; CLEAN-UP FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UNLOAD A HUD OBJECT
; ------------------------------------------------------------------------
Function HUD_RemoveObject (ObjectID%)
	
	Local Obj.SC_Object     = Object.SC_Object  (ObjectID) : If Obj = Null Then RuntimeError SC_BreakText("HUD_RemoveObject||The specified object does not exist.",50)
	Local TextObj.SC_Text   = Object.SC_Text    (Obj\TextID)
	Local Layer.SC_Layer    = Object.SC_Layer   (Obj\LayerID)
	Local ImageObj.SC_Image = Object.SC_Image   (Obj\ImageID)
	Local ShapeObj.SC_Shape = Object.SC_Shape   (Obj\ShapeID)
	Local Col.SC_ColShape   = Object.SC_ColShape(Obj\ColID)
	Local VColor.SC_VColor  = Object.SC_VColor  (Obj\VColorID)
	
	; UNGROUP
	HUD_RemoveFromGroup      ObjectID
	; CLEAR EFFECTS
	HUD_ClearEffects         ObjectID
	; FREE IMAGE ANIMATION?
	HUD_ClearImageAnimations ObjectID
	; REMOVE FROM BUTTON LIST?
	HUD_RemoveButton         ObjectID
	; FREE COLLISION SHAPE?
	If Col      <> Null Then Delete Col
	; FREE IMAGE OBJECT?
	If ImageObj <> Null Then Delete ImageObj
	; FREE TEXT OBJECT?
	If TextObj  <> Null Then Delete TextObj
	; FREE SHAPE OBJECT?
	If ShapeObj <> Null Then Delete ShapeObj
	; FREE VERTEX COLOR OBJECT?
	If VColor   <> Null Then Delete VColor
	; DELETE OBJECT
	Delete Obj
	
	; REBUILD LAYER
	Layer\rebuild = 1
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLEAR A LAYER
; ------------------------------------------------------------------------
Function HUD_ClearLayer (LayerID%)
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_ClearLayer||The specified layer does not exist.",50)
	
	; REMOVE LAYER OBJECTS
	For Obj.SC_Object = Each SC_Object
		If Obj\LayerID = LayerID Then HUD_RemoveObject Handle(Obj)
	Next
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: CLEAR ALL LAYERS OF A HUD
; ------------------------------------------------------------------------
Function HUD_ClearLayers (HUD_ID% = 0)
	Local Layer.SC_Layer
	
	; CLEAR LAYERS
	For Layer.SC_Layer = Each SC_Layer
		If Layer\HUD_ID = HUD_ID Or HUD_ID = 0 Then HUD_ClearLayer Handle(Layer)
	Next
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE A LAYER
; ------------------------------------------------------------------------
Function HUD_RemoveLayer (LayerID%)
	
	Local Layer.SC_Layer = Object.SC_Layer(LayerID) : If Layer = Null Then RuntimeError SC_BreakText("HUD_RemoveLayer||The specified layer does not exist.",50)
	
	HUD_ClearLayer (LayerID)
	FreeEntity GetParent(Layer\Mesh)
	Delete Layer
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE ALL LAYERS OF A HUD (OR ALL HUDS)
; ------------------------------------------------------------------------
Function HUD_RemoveLayers (HUD_ID%=0)
	Local Layer.SC_Layer
	
	; CLEAR AND REMOVE LAYERS
	For Layer.SC_Layer = Each SC_Layer
		If HUD_ID = 0 Or Layer\HUD_ID = HUD_ID Then HUD_RemoveLayer Handle(Layer)
	Next
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE A HUD
; ------------------------------------------------------------------------
Function HUD_Remove (HUD_ID%)
	Local HUDObj.SC_HUD = Object.SC_HUD(HUD_ID) : If HUDObj = Null Then RuntimeError SC_BreakText("HUD_Remove||The specified HUD does not exist.",50)
	Local ParentPiv%    = GetParent(HUDObj\Piv)
	
	HUD_RemoveLayers (HUD_ID)
	FreeEntity HUDObj\Piv
	FreeEntity ParentPiv
	Delete HUDObj
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: REMOVE EVERYTHING (TO CALL BEFORE! A CLEARWORLD!)
; ------------------------------------------------------------------------
Function HUD_RemoveAll (freeTextures% = False)
	
	Local HUDObj.SC_HUD
	Local Texture.SC_Texture
	
	; CLEAR AND REMOVE ALL HUDS
	For HUDObj = Each SC_HUD : HUD_Remove Handle(HUDObj) : Next
	
	; UNLOAD TEXTURES?
	If freeTextures Then
		For Texture = Each SC_Texture
			FreeTexture Texture\Texture
			Delete Texture
		Next
		Delete Each SC_Font
	End If
	
	; UNLOAD ALL TYPES
	Delete Each SC_Object
	Delete Each SC_Anim  
	Delete Each SC_Text  
	Delete Each SC_Image 
	Delete Each SC_Shape 
	Delete Each SC_Button
	Delete Each SC_Layer 
	Delete Each SC_FX   
	Delete Each SC_ColShape
	Delete Each SC_VColor
	Delete Each SC_Scroll
	Delete Each SC_GroupItem
	Delete Each SC_Group
	
	FreeEntity SC_DummyMesh : SC_DummyMesh = 0
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UNLOAD A FONT (OR ALL)
; ------------------------------------------------------------------------
Function HUD_FreeFonts (FontID%=0)
	
	
	Local Font.SC_Font
	
	Local Texture.SC_Texture
	
	For Font = Each SC_Font
		If FontID = 0 Or Handle(Font) = FontID Then
			Texture = Object.SC_Texture(Font\TextureID)
			FreeTexture Texture\Texture
			Delete Texture
			Delete Font
		End If
	Next
	
End Function


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UNLOAD A TEXTURE (OR ALL)
; ------------------------------------------------------------------------
Function HUD_FreeImageResources (TextureID%=0)
	
	Local Font.SC_Font
	Local Texture.SC_Texture
	Local f%
	
	For Texture = Each SC_Texture
		If TextureID = 0 Or Handle(Texture) = TextureID Then
			; IS FONT?
			f = 0
			For Font = Each SC_Font
				If Font\TextureID = Handle(Texture) Then f = 1 : Exit
			Next
			
			If f = 0 Then 
				FreeTexture Texture\Texture
				Delete Texture
			End If
		End If
	Next
	
End Function


; ########################################################################
; UPDATE ALL
; ########################################################################


; ------------------------------------------------------------------------
; PUBLIC FUNCTION: UPDATE LAYER SURFACES, ANIMATIONS, ETC.
; ------------------------------------------------------------------------
Function HUD_Update ()
	
	Local Layer.SC_Layer
	Local HUDObj.SC_HUD
	Local Obj.SC_Object
	Local i%
	
	; CALCULATE TIME CHANGE (GLOBAL)
	SC_Dif = SC_Now : SC_Now = MilliSecs() : SC_Dif = SC_Now - SC_Dif : If SC_Dif > 250 Then SC_Dif = 250
	
	; ANIMATE IMAGES
	SC_AnimateImages
	
	; UPDATE EFFECTS
	SC_UpdateEffects
	
	; UPDATE TEXT SCROLL OBJECTS
	Local ScrollObj.SC_Scroll
	For ScrollObj = Each SC_Scroll : SC_CheckScrollbar Handle(ScrollObj) : Next
	
	; UPDATE INPUT TEXTS
	If SC_CurrInputText <> 0 Then SC_UpdateTextInput
	
	; FPS & STATS
	SC_Frames = SC_Frames + 1
	If SC_Now - SC_FPS2 >= 1000 Then
		SC_FPS2   = SC_Now
		SC_FPS    = SC_Frames
		SC_Frames = 0
	End If
	SC_rebuilds = 0
	SC_updates  = 0
	
	; UPDATE / REBUILD LAYER SURFACES
	For Layer = Each SC_Layer
		
		HUDObj = Object.SC_HUD (Layer\HUD_ID)
		If HUDObj\visible And Layer\visible Then
			
			; NEEDS REBUILD
			If Layer\rebuild = 1
				SC_rebuilds   = SC_rebuilds + 1
				Layer\update  = 0
				Layer\rebuild = 0
				i = Handle(Layer)
				ClearSurface(Layer\Surf) : If Layer\ShapeSurf Then ClearSurface(Layer\ShapeSurf)
				
				For Obj = Each SC_Object
					If Obj\LayerID = i Then SC_RenderVertices Handle(Obj), False
				Next
				
			; UPDATE ONLY?
			Else If Layer\update = 1 Then
				SC_updates   = SC_updates + 1
				Layer\update = 0
				i = Handle(Layer)
				
				For Obj = Each SC_Object
					If Obj\LayerID = i And Obj\update = 1 Then SC_RenderVertices Handle(Obj), True
				Next
			End If
			
		End If ; HUD VISIBLE
	Next
	
	SC_buildtime = MilliSecs() - SC_Now
	
End Function


; ########################################################################
; PRIVATE FUNCTIONS
; ########################################################################


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: CALCULATE WIDTH OF TEXT OBJECT EACH LINE + MAXWIDTH
; ------------------------------------------------------------------------
Function SC_FindLineWidths (TextID%)
	
	Local TextObj.SC_Text = Object.SC_Text(TextID)         : If TextObj = Null Then RuntimeError SC_BreakText("SC_FindLineWidths||Could not find text type object.",50)
	Local Font.SC_Font    = Object.SC_Font(TextObj\FontID) : If Font    = Null Then RuntimeError SC_BreakText("SC_FindLineWidths||Could not find font type object.",50)
	Local i%, c$, cl$, max_width%
	
	; COUNT CHARS
	TextObj\num_chars = 0
	For i = 1 To Len(TextObj\txt_wrapped$)
		c$ = Mid(TextObj\txt_wrapped$,i,1)
		
		If c$ <> " " And c$ <> Chr(13) Then TextObj\num_chars = TextObj\num_chars + 1
	Next
	
	; SINGLE LINE ONLY?
	If Instr(TextObj\txt_wrapped$, Chr(13)) = 0 Then
		TextObj\lines          = 1
		TextObj\line_widths[1] = HUD_GetTextWidth(TextObj\FontID, TextObj\txt_wrapped$) + (Len(TextObj\txt_wrapped$) * TextObj\kerning)
		TextObj\max_width      = TextObj\line_widths[1]
		Return
		
	End If
	
	; PRECALCULATE LINE WIDTHS & MAXWIDTH
	Local length% = Len(TextObj\txt_wrapped$)
	
	TextObj\lines     = 1
	TextObj\max_width = 0
	
	For i = 1 To length
		c$ = Mid(TextObj\txt_wrapped$,i,1)
		If c$  = Chr(13) Then
			TextObj\line_widths[TextObj\lines] = HUD_GetTextWidth(TextObj\FontID, cl$) + (Len(cl$) * kerning)
			If TextObj\line_widths[TextObj\lines] > TextObj\max_width Then TextObj\max_width = TextObj\line_widths[TextObj\lines]
			TextObj\lines = TextObj\lines + 1
			cl$ = ""
		Else
			cl$ = cl$ + c$
		End If
	Next
	TextObj\line_widths[TextObj\lines] = HUD_GetTextWidth(TextObj\FontID,cl$) + (Len(cl$) * TextObj\kerning) ; LAST LINE
	If TextObj\line_widths[TextObj\lines] > TextObj\max_width Then TextObj\max_width = TextObj\line_widths[TextObj\lines]
	
End Function




Dim sc_u#(20000)
Dim sc_v#(20000)
Dim sc_t%(20000,3)


; ------------------------------------------------------------------------
;  PRIVATE FUNCTION: ADD / UPDATE OBJECT VERTICES & VERTEX COLORS
; ------------------------------------------------------------------------
Function SC_RenderVertices (ObjectID%, update% = False)
	
	Local Obj.SC_Object   = Object.SC_Object  (ObjectID)
	Local HUDObj.SC_HUD   = Object.SC_HUD     (Obj\HUD_ID)
	Local Layer.SC_Layer  = Object.SC_Layer   (Obj\LayerID)
	Local ImageObj.SC_Image
	Local Texture.SC_Texture
	
	Local i%, j%, vx%, x#, y#, w%, h%, u1# ,v1# ,u2# ,v2#, vcount%, tmp#
	Local custom_tris% = 0
	Local Surf%      = Layer\Surf
	Local ShapeSurf% = Layer\ShapeSurf
	
	ClearSurface SC_DummySurf
	
	Obj\update = 0
	
	Select Obj\typ
			
		Case SC_TEXT ; ---------------------------------------------------
			
			Local TextObj.SC_Text = Object.SC_Text(Obj\TextID)
			Local Font.SC_Font    = Object.SC_Font(TextObj\FontID)
			Local lines%, length%, c$, a%
			
			lines = 1 : length = Len(TextObj\txt_wrapped$)
			
			vcount = 0
			
			If length * 4 > 1000 Then
				Dim sc_u(length*4)
				Dim sc_v(length*4)
			End If
			
			y = -((TextObj\lines * Font\line_height)/2)
			If TextObj\text_flow$ = "CENTER" Then x = -(TextObj\line_widths[1] / 2)
			If TextObj\text_flow$ = "RIGHT"  Then x = -TextObj\line_widths[1]
			If TextObj\text_flow$ = "LEFT"   Then x = 0
			
		; CREATE WITHIN DUMMY MESH
			For i = 1 To length
				c$ = Mid(TextObj\txt_wrapped$,i,1)
				a% = Asc(c$)
				
			; NEXT LINE?
				If c$ = Chr(13) 
					y = y + Font\line_height : lines = lines + 1
					If TextObj\text_flow$ = "CENTER" Then x = -(TextObj\line_widths[lines] / 2)
					If TextObj\text_flow$ = "RIGHT"  Then x = -TextObj\line_widths[lines]
					If TextObj\text_flow$ = "LEFT"   Then x = 0
			; ADD A SPACE?
				Else If c$ = " "
					x = x + Font\char_widths[32] + TextObj\kerning
			; CREATE CHAR QUAD
				Else
					w = Font\char_widths  [a]
					h = Font\char_heights [a]
					
					AddVertex SC_DummySurf,x  , y  ,0	; TOP-LEFT
					AddVertex SC_DummySurf,x+w, y  ,0	; TOP-RIGHT
					AddVertex SC_DummySurf,x  , y+h,0	; BOTTOM-LEFT
					AddVertex SC_DummySurf,x+w, y+h,0	; BOTTOM-RIGHT
					
				; GET UV-COORDS FOR EACH VERTEX
					u1 =  Font\char_x_positions [a] / Font\tex_width
					v1 =  Font\char_y_positions [a] / Font\tex_height 
					u2 = (Font\char_x_positions [a] + w) / Font\tex_width
					v2 = (Font\char_y_positions [a] + h) / Font\tex_height
					sc_u(vcount  ) = u1 : sc_v(vcount  ) = v1
					sc_u(vcount+1) = u2 : sc_v(vcount+1) = v1
					sc_u(vcount+2) = u1 : sc_v(vcount+2) = v2
					sc_u(vcount+3) = u2 : sc_v(vcount+3) = v2
					
					vcount = vcount + 4 : x = x + Font\char_widths[a] + TextObj\kerning
				End If
			Next
			
		; UPDATE OBJECT WIDTH AND HEIGHT 
			Obj\width  = TextObj\max_width
			Obj\height = TextObj\lines * Font\line_height
			
		Case SC_IMAGE ; --------------------------------------------------
			
			ImageObj = Object.SC_Image  (Obj\ImageID)
			Texture  = Object.SC_Texture(ImageObj\TextureID)
			
			vcount = 4
			
			x = -(ImageObj\img_w / 2)
			y = -(ImageObj\img_h / 2)
			w = ImageObj\clip_w
			h = ImageObj\clip_h
			
			AddVertex SC_DummySurf,x  , y  ,0 ; TOP-LEFT
			AddVertex SC_DummySurf,x+w, y  ,0 ; TOP-RIGHT
			AddVertex SC_DummySurf,x  , y+h,0 ; BOTTOM-LEFT
			AddVertex SC_DummySurf,x+w, y+h,0 ; BOTTOM-RIGHT
			
		; GET UV-COORDS FOR EACH VERTEX
			u1# =  ImageObj\clip_x      / Texture\tex_width
			u2# = (ImageObj\clip_x + w) / Texture\tex_width
			v1# =  ImageObj\clip_y      / Texture\tex_height 
			v2# = (ImageObj\clip_y + h) / Texture\tex_height
			If ImageObj\mirroredx Then tmp# = u2 : u2 = u1 : u1 = tmp
			If ImageObj\mirroredy Then tmp# = v2 : v2 = v1 : v1 = tmp
			
			sc_u(0) = u1 : sc_v(0) = v1
			sc_u(1) = u2 : sc_v(1) = v1
			sc_u(2) = u1 : sc_v(2) = v2
			sc_u(3) = u2 : sc_v(3) = v2
			
		Case SC_TILED ; --------------------------------------------------
			
			ImageObj = Object.SC_Image  (Obj\ImageID)
			Texture  = Object.SC_Texture(ImageObj\TextureID)
			
			Local cw% = ImageObj\clip_w
			Local ch% = ImageObj\clip_h
			Local iw% = ImageObj\img_w / 2
			Local ih% = ImageObj\img_h / 2
			Local quadsx% = (ImageObj\img_w / cw)+1
			Local quadsy% = (ImageObj\img_h / ch)+1
			
			vcount = 0
			u1# =  ImageObj\clip_x / Texture\tex_width
			v1# =  ImageObj\clip_y / Texture\tex_height 
			
			y = -ih
			While y < ih
				x = -iw : h = ch : If y > ih - ch Then h = ih - y
				While x < iw
					w = cw : If x > iw - cw Then w = iw - x
					AddVertex SC_DummySurf,x  ,y  ,0 ; TOP-LEFT
					AddVertex SC_DummySurf,x+w,y  ,0 ; TOP-RIGHT
					AddVertex SC_DummySurf,x  ,y+h,0 ; BOTTOM-LEFT
					AddVertex SC_DummySurf,x+w,y+h,0 ; BOTTOM-RIGHT
				; UV-COORDS
					u2# = (ImageObj\clip_x + w)/ Texture\tex_width
					v2# = (ImageObj\clip_y + h)/ Texture\tex_height
					If ImageObj\mirroredx Then tmp# = u2 : u2 = u1 : u1 = tmp
					If ImageObj\mirroredy Then tmp# = v2 : v2 = v1 : v1 = tmp
					sc_u(vcount  ) = u1 : sc_v(vcount  ) = v1
					sc_u(vcount+1) = u2 : sc_v(vcount+1) = v1
					sc_u(vcount+2) = u1 : sc_v(vcount+2) = v2
					sc_u(vcount+3) = u2 : sc_v(vcount+3) = v2
					vcount = vcount + 4
					x = x + cw
				Wend
				y = y + ch
			Wend
			
		Case SC_SHAPE ; --------------------------------------------------
			
			Local ShapeObj.SC_Shape = Object.SC_Shape(Obj\ShapeID)
			
			Local sx1#,sx2#,sx3#,sx4#,sx5#,sx6#
			Local sy1#,sy2#,sy3#,sy4#,sy5#,sy6#
			Local flag%,size%,angle%,segmentsize#
			
			w = Obj\width  / 2
			h = Obj\height / 2
			Surf = Layer\ShapeSurf
			
		; CREATE SHAPE MESH
			Select ShapeObj\typ
					
				Case 1 ; RECTANGLE ---------------------------------------
			; FILLED
					If ShapeObj\param1 > 0 Then
						vcount = 4
						AddVertex   SC_DummySurf,-w,-h,0 ; TL
						AddVertex   SC_DummySurf, w,-h,0 ; TR
						AddVertex   SC_DummySurf,-w, h,0 ; BL
						AddVertex   SC_DummySurf, w, h,0 ; BR
			; OUTLINED
					Else
						vcount = 16
						size = ShapeObj\param2 : If size < 1 Then size = 1
				; TOP SQUARE (TL, TR, BL, BR)
						AddVertex SC_DummySurf,-w,-h,0            : AddVertex SC_DummySurf, w,-h,0 
						AddVertex SC_DummySurf,-w,(-h)+size,0     : AddVertex SC_DummySurf, w,(-h)+size,0 	
				; BOTTOM SQUARE (TL, TR, BL, BR)
						AddVertex SC_DummySurf,-w,h-size,0        : AddVertex SC_DummySurf, w,h-size,0 
						AddVertex SC_DummySurf,-w,h,0             : AddVertex SC_DummySurf, w,h,0 
				; LEFT SQUARE (TL, TR, BL, BR)
						AddVertex SC_DummySurf,-w,(-h)+size,0     : AddVertex SC_DummySurf,(-w)+size,(-h)+size,0 
						AddVertex SC_DummySurf,-w,h-size,0        : AddVertex SC_DummySurf,(-w)+size,h-size,0 
				; RIGHT SQUARE (TL, TR, BL, BR)
						AddVertex SC_DummySurf,w-size,(-h)+size,0 : AddVertex SC_DummySurf,w,(-h)+size,0 
						AddVertex SC_DummySurf,w-size,h-size,0    : AddVertex SC_DummySurf,w,h-size,0 
					End If
					
				Case 2 ; PERCENTBAR --------------------------------------
					vcount = 20
					
			; OUTLINED RECTANGLE
					size = ShapeObj\param2 : If size < 1 Then size = 1 ; LINE THICKNESS
			; TOP SQUARE (TL, TR, BL, BR)
					AddVertex SC_DummySurf,-w,-h,0            : AddVertex SC_DummySurf, w,-h,0 
					AddVertex SC_DummySurf,-w,(-h)+size,0     : AddVertex SC_DummySurf, w,(-h)+size,0 	
			; BOTTOM SQUARE (TL, TR, BL, BR)
					AddVertex SC_DummySurf,-w,h-size,0        : AddVertex SC_DummySurf, w,h-size,0 
					AddVertex SC_DummySurf,-w,h,0             : AddVertex SC_DummySurf, w,h,0 
			; LEFT SQUARE (TL, TR, BL, BR)
					AddVertex SC_DummySurf,-w,(-h)+size,0     : AddVertex SC_DummySurf,(-w)+size,(-h)+size,0 
					AddVertex SC_DummySurf,-w,h-size,0        : AddVertex SC_DummySurf,(-w)+size,h-size,0 
			; RIGHT SQUARE (TL, TR, BL, BR)
					AddVertex SC_DummySurf,w-size,(-h)+size,0 : AddVertex SC_DummySurf,w,(-h)+size,0 
					AddVertex SC_DummySurf,w-size,h-size,0    : AddVertex SC_DummySurf,w,h-size,0 
					
			; FILLED RECTANGLE
					If ShapeObj\param1 < 0   Then ShapeObj\param1 = 0
					If ShapeObj\param1 > 100 Then ShapeObj\param1 = 100
					size = ShapeObj\param2 + 1
					sx1 = -w + size
					sy1 = -h + size
					sx2 = sx1 + ShapeObj\param1 * (((w - size) - sx1) / 100)
					sy2 = sy1
					sx3 = sx1
					sy3 = h - size
					sx4 = sx2
					sy4 = sy3
					AddVertex SC_DummySurf,sx1,sy1,0 ; TL
					AddVertex SC_DummySurf,sx2,sy2,0 ; TR
					AddVertex SC_DummySurf,sx3,sy3,0 ; BL
					AddVertex SC_DummySurf,sx4,sy4,0 ; BR
					
				Case 3 ; LINE - MESH ORIGIN IS 0,0 -----------------------
					vcount      = 4
					size  = ShapeObj\param1 : If size < 1 Then size = 1
					sx1   = 0
					sy1   = 0
					sx2   = w*2 - Obj\x
					sy2   = h*2 - Obj\y
					Local ang% = 90 - ATan2(sy2-sy1, sx2-sx1) : If ang < 0 Then ang = ang + 360 Else If ang > 360 Then ang = ang - 360
					Local si#  = SC_Sin(ang)
					Local co#  = SC_Cos(ang)
					AddVertex  SC_DummySurf,sx1 + co*(-size/2),sy1 - si*(-size/2),0
					AddVertex  SC_DummySurf,sx2 + co*(-size/2),sy2 - si*(-size/2),0
					AddVertex  SC_DummySurf,sx1 + co*( size/2),sy1 - si*( size/2),0
					AddVertex  SC_DummySurf,sx2 + co*( size/2),sy2 - si*( size/2),0
					
			; CUSTOM TRIS
					If update = False Then
						custom_tris = 2; : Dim sc_t(custom_tris,3)
						sc_t(1,1) = 2 : sc_t(1,2) = 1 : sc_t(1,3) = 0
						sc_t(2,1) = 1 : sc_t(2,2) = 2 : sc_t(2,3) = 3
					End If			
					
				Case 4 ; TRIANGLE ----------------------------------------
			; FILLED
					If ShapeObj\param1 > 0 Then
						vcount    = 3
						AddVertex   SC_DummySurf, 0,-h,0 ; TM
						AddVertex   SC_DummySurf, w, h,0 ; BR
						AddVertex   SC_DummySurf,-w, h,0 ; BL
						
				; CUSTOM TRIS
						If update = False Then
							custom_tris = 1; : Dim sc_t(custom_tris,3)
							sc_t(1,1) = 0 : sc_t(1,2) = 1 : sc_t(1,3) = 2 
						End If
						
			; OUTLINED (WHAT A BITCH!)
					Else
						vcount = 6
						Local ra#, ds#, hw#
						size = ShapeObj\param2 : If size < 1 Then size = 1
						w   = w * 2
						h   = h * 2
						sx1 = 0   : sy1 = h ; BL
						sx2 = w/2 : sy2 = 0 ; TOP
						sx3 = w   : sy3 = h ; BR
						hw  = w/2
						ra  = size / Sqr# (h * h + hw * hw)
						ds  = hw * size / h + (h + hw * hw / h) * ra
						sx4 = ds     : sy4 = h - size               ; INNER BL
						sx5 = w / 2  : sy5 = (hw + h * h / hw) * ra ; INNER TOP
						sx6 = w - ds : sy6 = h - size               ; INNER BR
						AddVertex SC_DummySurf, sx1, sy1, 0
						AddVertex SC_DummySurf, sx2, sy2, 0
						AddVertex SC_DummySurf, sx3, sy3, 0
						AddVertex SC_DummySurf, sx4, sy4, 0
						AddVertex SC_DummySurf, sx5, sy5, 0
						AddVertex SC_DummySurf, sx6, sy6, 0
						
				; CUSTOM TRIS
						If update = False Then
							custom_tris = 6; : Dim sc_t(custom_tris,3)
							sc_t(1,1) = 1 : sc_t(1,2) = 2 : sc_t(1,3) = 5 
							sc_t(2,1) = 4 : sc_t(2,2) = 1 : sc_t(2,3) = 5 
							sc_t(3,1) = 5 : sc_t(3,2) = 2 : sc_t(3,3) = 0 
							sc_t(4,1) = 0 : sc_t(4,2) = 3 : sc_t(4,3) = 5 
							sc_t(5,1) = 3 : sc_t(5,2) = 0 : sc_t(5,3) = 4 
							sc_t(6,1) = 1 : sc_t(6,2) = 4 : sc_t(6,3) = 0 
						End If
						PositionMesh SC_DummyMesh,-w/2,-h/2,0
					End If
					
				Case 5 ; CIRCLE ------------------------------------------
					vcount = 1
					angle  = 360
					segmentsize = 360 / ShapeObj\param1
					AddVertex (SC_DummySurf,0,0,0) ; CENTER POINT
					While angle >= segmentsize
						AddVertex SC_DummySurf, SC_Sin(angle)*w, SC_Cos(angle)*h,0
						angle  = angle  - segmentsize 
						vcount = vcount + 1
					Wend
					
			; CUSTOM TRIS
					If update = False Then
						custom_tris = vcount-1; : Dim sc_t(custom_tris,3)
						For i = 1 To vcount-2  : sc_t(i,1) = i : sc_t(i,2) = i+1 : sc_t(i,3) = 0 : Next
						sc_t(i,1) = i : sc_t(i,2) = 1 : sc_t(i,3) = 0 
					End If
					
				Case 6 ; RING --------------------------------------------
					segmentsize = 360 / ShapeObj\param1
					size        = ShapeObj\param2 : If size < 1 Then size = 1
					angle       = 360
					vcount      = 0
					While angle >= segmentsize
						AddVertex SC_DummySurf, SC_Sin(angle)*(w-size), SC_Cos(angle)*(h-size), 0 ; INNER
						AddVertex SC_DummySurf, SC_Sin(angle)*w, SC_Cos(angle)*h, 0		 ; OUTER
						angle  = angle  - segmentsize 
						vcount = vcount + 2
					Wend
					
			; CUSTOM TRIS
					If update = False Then
						custom_tris = vcount; : Dim sc_t(custom_tris,3)
						j = 0
						For i = 0 To vcount-3 Step 2
							j = j + 1 : sc_t(j,1) = i : sc_t(j,2) = i+1 : sc_t(j,3) = i+3 
							j = j + 1 : sc_t(j,1) = i : sc_t(j,2) = i+3 : sc_t(j,3) = i+2 
						Next
						j = j + 1 : sc_t(j,1) = vcount-2 : sc_t(j,2) = 1 : sc_t(j,3) = 0 
						j = j + 1 : sc_t(j,1) = vcount-2 : sc_t(j,2) = vcount-1 : sc_t(j,3) = 1 
					End If
					
				Case 7 ; STAR --------------------------------------------
					flag        = 1
					segmentsize = 360 / (ShapeObj\param1*2)
					angle       = 360
					vcount      = 1
					AddVertex (SC_DummySurf,0,0,0) ; CENTER POINT
					While angle >= segmentsize
						If flag = 0 Then
							AddVertex SC_DummySurf,SC_Sin(angle)*w  ,SC_Cos(angle)*h  ,0 ; OUTER
						Else
							AddVertex SC_DummySurf,SC_Sin(angle)*w/2,SC_Cos(angle)*h/2,0 ; INNER
						End If
						vcount = vcount + 1
						flag  = Not flag : angle = angle - segmentsize 
					Wend
					
			; CUSTOM TRIS
					If update = False Then
						custom_tris = ShapeObj\param1*2
						For i = 1 To vcount-2
							j = j + 1 : sc_t(j,1) = i : sc_t(j,2) = i+1 : sc_t(j,3) = 0
						Next			
						j = j + 1 : sc_t(j,1) = i : sc_t(j,2) = 1 : sc_t(j,3) = 0 
					End If
					
				Case 8 ; HOLLOWSTAR --------------------------------------
					flag        = 1
					segmentsize = 360 / (ShapeObj\param1*2)
					size        = ShapeObj\param2 : If size < 1 Then size = 1
					angle       = 360
					vcount      = 0
					While angle >= segmentsize
						If flag = 0 Then
							AddVertex SC_DummySurf,SC_Sin(angle)*w, SC_Cos(angle)*h  ,0
							AddVertex SC_DummySurf,SC_Sin(angle)*(w-size), SC_Cos(angle)*(h-size)  ,0
							vcount = vcount + 2
						Else
							AddVertex SC_DummySurf,SC_Sin(angle)*(w/2), SC_Cos(angle)*(h/2),0
							AddVertex SC_DummySurf,SC_Sin(angle)*((w-size)/2), SC_Cos(angle)*((h-size)/2),0
							vcount = vcount + 2
						End If
						flag  = Not flag : angle = angle - segmentsize 
					Wend
					
			; CUSTOM TRIS
					If update = False Then
						custom_tris = ShapeObj\param1*4; : Dim sc_t(custom_tris,3)
						j = 0
						For i = 0 To vcount-4 Step 2
							j = j + 1 : sc_t(j,1) = i+1 : sc_t(j,2) = i   : sc_t(j,3) = i+2
							j = j + 1 : sc_t(j,1) = i+1 : sc_t(j,2) = i+2 : sc_t(j,3) = i+3
						Next			
						j = j + 1 : sc_t(j,1) = vcount-1 : sc_t(j,2) = vcount-2   : sc_t(j,3) = 0
						j = j + 1 : sc_t(j,1) = 1 : sc_t(j,2) = vcount-1 : sc_t(j,3) = 0
					End If
					
				Case 9 ; DOTRING -----------------------------------------
					segmentsize = 360 / ShapeObj\param1
					size        = ShapeObj\param2 : If size < 1 Then size = 1
					angle       = 360
					vcount      = 0
					While angle >= segmentsize
						AddVertex SC_DummySurf, SC_Sin(angle)*(w-size), SC_Cos(angle)*(h-size), 0 ; INNER
						AddVertex SC_DummySurf, SC_Sin(angle)*w, SC_Cos(angle)*h, 0		 ; OUTER
						angle  = angle  - segmentsize 
						vcount = vcount + 2
					Wend
					
			End Select ; SHAPE TYPE
			
	End Select
	
	
	; ----------------------------------------------------------------
	
	; DUMMY MESH BUILD-UP:
	; VERTEX 0 TO (vcount-1)         = OBJECT VERTICES
	; VERTEX vcount TO (vcount+3)    = OUTER CORNER VERTICES
	; VERTEX (vcount+4) TO (vcount+7) = INNER CORNERS (IF BORDER ONLY)
	; VERTEX (vcount+8) TO (vcount+8) + Col\vc-1 = COLLISION SHAPE POINTS
	
	; RIPPLE MESH?
	If Obj\ripple_width > 0 Then
		For i = 0 To vcount-1
			x = VertexX(SC_DummySurf,i)
			y = VertexY(SC_DummySurf,i)
			y = y + Sin( Obj\ripple_offset + x * Obj\ripple_width ) * Obj\ripple_height
			VertexCoords SC_DummySurf,i, x,y,0
		Next
	End If
	
	; FIND OBJECT'S OUTER CORNERS
	w = Obj\width : h = Obj\height
	x = -(w / 2)  : y = -(h / 2)
	If Obj\typ = SC_TEXT Then 
		If TextObj\text_flow$ = "LEFT"  Then x = x + (w / 2)
		If TextObj\text_flow$ = "RIGHT" Then x = x - (w / 2)
	End If
	AddVertex SC_DummySurf,x  ,y  ,0 ; TOP-LEFT
	AddVertex SC_DummySurf,x+w,y  ,0 ; TOP-RIGHT
	AddVertex SC_DummySurf,x  ,y+h,0 ; BOTTOM-LEFT
	AddVertex SC_DummySurf,x+w,y+h,0 ; BOTTOM-RIGHT
	
	; NEED INNER CORNERS FOR BORDER, TOO?
	If Obj\B_a > -1 Then
		x = x + Obj\B_size
		y = y + Obj\B_size
		w = w - Obj\B_size * 2
		h = h - Obj\B_size * 2
		AddVertex SC_DummySurf,x  ,y  ,0 ; INNER TOP-LEFT
		AddVertex SC_DummySurf,x+w,y  ,0 ; INNER TOP-RIGHT
		AddVertex SC_DummySurf,x  ,y+h,0 ; INNER BOTTOM-LEFT
		AddVertex SC_DummySurf,x+w,y+h,0 ; INNER BOTTOM-RIGHT
	End If
	
	; UPDATE COLLISON SHAPE?
	If Obj\ColID <> 0 Then
		Local Col.SC_ColShape = Object.SC_ColShape(Obj\ColID)
		; REMEMBER FIRST COLLISION SHAPE VERTEX
		w = Obj\width  / 2
		h = Obj\height / 2
		Local sv = AddVertex (SC_DummySurf, Col\x[0]-w, Col\y[0]-h,0)
		j = Col\vc - 1 : For i = 1 To j
			AddVertex SC_DummySurf, Col\x[i]-w, Col\y[i]-h,0
		Next
	End If
	
	; ORIGIN SHIFT, SCALE, ROTATION, POSITION
	PositionMesh SC_DummyMesh, -(Obj\originx * (Obj\width / 2)), -(Obj\originy * (Obj\height / 2)), 0
	ScaleMesh    SC_DummyMesh, Obj\scalex, Obj\scaley, 1
	RotateMesh   SC_DummyMesh, 0,0,Obj\rotation
	PositionMesh SC_DummyMesh, Obj\x, Obj\y, 0
	
	; REMEMBER OBJECT CORNERS
	Obj\cornersx[0] = VertexX(SC_DummySurf,vcount  ) : Obj\cornersy[0] = VertexY(SC_DummySurf, vcount  )
	Obj\cornersx[1] = VertexX(SC_DummySurf,vcount+1) : Obj\cornersy[1] = VertexY(SC_DummySurf, vcount+1)
	Obj\cornersx[3] = VertexX(SC_DummySurf,vcount+2) : Obj\cornersy[3] = VertexY(SC_DummySurf, vcount+2)
	Obj\cornersx[2] = VertexX(SC_DummySurf,vcount+3) : Obj\cornersy[2] = VertexY(SC_DummySurf, vcount+3)
	
	; REMEMBER COLLISON SHAPE POINTS?
	If Obj\ColID <> 0 Then
		j = Col\vc - 1 : For i = 0 To j
			Col\mx[i] = VertexX(SC_DummySurf,sv+i)
			Col\my[i] = VertexY(SC_DummySurf,sv+i)
		Next
	End If
	
	; (RE-)CREATE VERTICES? ------------------------------------------
	
	If update = False Then
		
		; CREATE BACKGROUND VERTICES ; ---------------
		If Obj\bg_a > -1 Then
			vx = AddVertex  (ShapeSurf,Obj\cornersx[0],Obj\cornersy[0],0, .996,.996)
			AddVertex   ShapeSurf,Obj\cornersx[1],Obj\cornersy[1],0, .996,.996
			AddVertex   ShapeSurf,Obj\cornersx[3],Obj\cornersy[3],0, .996,.996
			AddVertex   ShapeSurf,Obj\cornersx[2],Obj\cornersy[2],0, .996,.996
			     ; ADD TRIS
			AddTriangle ShapeSurf,vx,vx+1,vx+2 : AddTriangle ShapeSurf,vx+1,vx+3,vx+2
			Obj\bg_vx = vx
		End If
		
		; CREATE BORDER VERTICES ; ---------------
		If Obj\b_a > -1 Then
			vx = AddVertex  (ShapeSurf,Obj\cornersx[0],Obj\cornersy[0],0, .996,.996 )
			AddVertex   ShapeSurf,Obj\cornersx[1],Obj\cornersy[1],0, .996,.996
			AddVertex   ShapeSurf,Obj\cornersx[3],Obj\cornersy[3],0, .996,.996
			AddVertex   ShapeSurf,Obj\cornersx[2],Obj\cornersy[2],0, .996,.996
			     ; INNER CORNERS
			AddVertex   ShapeSurf,VertexX(SC_DummySurf,vcount+4),VertexY(SC_DummySurf,vcount+4),0, .996,.996
			AddVertex   ShapeSurf,VertexX(SC_DummySurf,vcount+5),VertexY(SC_DummySurf,vcount+5),0, .996,.996
			AddVertex   ShapeSurf,VertexX(SC_DummySurf,vcount+6),VertexY(SC_DummySurf,vcount+6),0, .996,.996
			AddVertex   ShapeSurf,VertexX(SC_DummySurf,vcount+7),VertexY(SC_DummySurf,vcount+7),0, .996,.996
			     ; ADD TRIS
			AddTriangle ShapeSurf,vx  ,vx+1,vx+4
			AddTriangle ShapeSurf,vx+1,vx+5,vx+4
			AddTriangle ShapeSurf,vx+1,vx+3,vx+7
			AddTriangle ShapeSurf,vx+1,vx+7,vx+5
			AddTriangle ShapeSurf,vx+7,vx+3,vx+2
			AddTriangle ShapeSurf,vx+7,vx+2,vx+6
			AddTriangle ShapeSurf,vx  ,vx+4,vx+2
			AddTriangle ShapeSurf,vx+4,vx+6,vx+2
			Obj\b_vx = vx
		End If
		
		; CREATE SHADOW VERTICES ; ---------------
		If Obj\shadow_offset <> 0 Then
			j = 0 : For i = 0 To vcount-1
				vx = AddVertex  (Surf,VertexX(SC_DummySurf,i) + Obj\shadow_offset,VertexY(SC_DummySurf,i) + Obj\shadow_offset,0 ,sc_u(i),sc_v(i) )
				
				; AUTO-TRIANGLUATE?
				j = j + 1 : If j = 4 And custom_tris = 0 Then j = 0 : AddTriangle Surf,vx-3,vx-2,vx-1 : AddTriangle Surf,vx,vx-1,vx-2
			Next
			; CUSTOM TRIANGLES?
			vx = vx - (vcount-1)
			For i = 1 To custom_tris : AddTriangle Surf, vx+sc_t(i,1), vx+sc_t(i,2), vx+sc_t(i,3) : Next
		End If
		
		; CREATE OBJECT VERTICES ; ---------------
		j = 0 : For i = 0 To vcount-1
			vx = AddVertex (Surf,VertexX(SC_DummySurf,i),VertexY(SC_DummySurf,i),0 ,sc_u(i),sc_v(i) )
			
			; AUTO-TRIANGLUATE?
			j = j + 1 : If j = 4 And custom_tris = 0 Then j = 0 : AddTriangle Surf,vx-3,vx-2,vx-1 : AddTriangle Surf,vx,vx-1,vx-2
		Next
		
		; CUSTOM TRIANGLES?
		vx = vx - (vcount-1)
		For i = 1 To custom_tris : AddTriangle Surf, vx+sc_t(i,1), vx+sc_t(i,2), vx+sc_t(i,3) : Next
		
		; REMEMBER FIRST AND LAST VERTEX
		Obj\vx = vx : Obj\lx = Obj\vx + (vcount-1)
		
	; UPDATE EXISTING VERTICES? --------------------------------------
		
	Else
		; UPDATE BACKGROUND VERTICES? ; ---------------
		If Obj\bg_a > -1 Then
			VertexCoords ShapeSurf, Obj\bg_vx  , Obj\cornersx[0], Obj\cornersy[0], 0
			VertexCoords ShapeSurf, Obj\bg_vx+1, Obj\cornersx[1], Obj\cornersy[1], 0
			VertexCoords ShapeSurf, Obj\bg_vx+2, Obj\cornersx[3], Obj\cornersy[3], 0
			VertexCoords ShapeSurf, Obj\bg_vx+3, Obj\cornersx[2], Obj\cornersy[2], 0
		End If
		
		; UPDATE BORDER VERTICES? ; ---------------
		If Obj\b_a > -1 Then
			VertexCoords ShapeSurf, Obj\b_vx  , Obj\cornersx[0], Obj\cornersy[0], 0
			VertexCoords ShapeSurf, Obj\b_vx+1, Obj\cornersx[1], Obj\cornersy[1], 0
			VertexCoords ShapeSurf, Obj\b_vx+2, Obj\cornersx[3], Obj\cornersy[3], 0
			VertexCoords ShapeSurf, Obj\b_vx+3, Obj\cornersx[2], Obj\cornersy[2], 0
			VertexCoords ShapeSurf, Obj\b_vx+4, VertexX(SC_DummySurf,vcount+4),VertexY(SC_DummySurf,vcount+4), 0
			VertexCoords ShapeSurf, Obj\b_vx+5, VertexX(SC_DummySurf,vcount+5),VertexY(SC_DummySurf,vcount+5), 0
			VertexCoords ShapeSurf, Obj\b_vx+6, VertexX(SC_DummySurf,vcount+6),VertexY(SC_DummySurf,vcount+6), 0
			VertexCoords ShapeSurf, Obj\b_vx+7, VertexX(SC_DummySurf,vcount+7),VertexY(SC_DummySurf,vcount+7), 0
		End If
		
		; UPDATE OBJECT & SHADOW VERTICES ; ---------------
		Local svx = Obj\vx-vcount ; FIRST SHADOW VERTEX
		
		For i = 0 To vcount-1
			x = VertexX(SC_DummySurf,i)
			y = VertexY(SC_DummySurf,i)
			
			; SHADOW?
			If Obj\shadow_offset <> 0 Then
				VertexCoords    Surf, svx+i, x + Obj\shadow_offset, y + Obj\shadow_offset, 0
				VertexTexCoords Surf, svx+i, sc_u(i),sc_v(i)
			End If
			
			; OBJECT
			VertexCoords    Surf, Obj\vx+i, x, y, 0
			VertexTexCoords Surf, Obj\vx+i, sc_u(i),sc_v(i)
		Next
	End If
	
	
	; SET COLORS -----------------------------------------------------
	
	If update = False Or Obj\updateColor = 1
		Obj\updateColor = 0
		
		; OBJECT ALPHA
		Local objAlpha#
		
		; INDIVIDUAL VERTEX COLOR ENABLED?
		If Obj\VColorID <> 0 Then
			Local VColor.SC_VColor = Object.SC_VColor(Obj\VColorID)
			j = 0
			For i = Obj\vx To Obj\lx
				u1 = (VColor\ARGB[j] Shr 16) And $FF ; R
				v1 = (VColor\ARGB[j] Shr  8) And $FF ; G
				u2 =  VColor\ARGB[j] And $FF         ; B
				v2 = ((VColor\ARGB[j] Shr 24) And $FF)/255.0 ; ALPHA
				objAlpha = ( HUDObj\alpha * (Layer\alpha * (Obj\alpha * v2))) * Obj\visible
				VertexColor Surf,i, u1,v1,u2,objAlpha
				j = j + 1
			Next
		Else
			objAlpha = ( HUDObj\alpha * (Layer\alpha * Obj\alpha)) * Obj\visible
			
			; OBJECT COLOR - GRADIENT 2
			If Obj\gradient = 2 Then
				Local R3% = (Obj\R2 - Obj\R1 * -1)/2
				Local G3% = (Obj\G2 - Obj\G1 * -1)/2
				Local B3% = (Obj\B2 - Obj\B1 * -1)/2
				For i = Obj\vx To Obj\lx Step 4
					VertexColor Surf,i  , Obj\R1, Obj\G1, Obj\B1, objAlpha
					VertexColor Surf,i+1,     R3,     G3,     B3, objAlpha
					VertexColor Surf,i+2,     R3,     G3,     B3, objAlpha
					VertexColor Surf,i+3, Obj\R2, Obj\G2, Obj\B2, objAlpha
				Next
			; OBJECT COLOR - GRADIENT 1 OR NORMAL
			Else
				For i = Obj\vx To Obj\lx Step 4
					VertexColor Surf,i  , Obj\R1, Obj\G1, Obj\B1, objAlpha
					VertexColor Surf,i+1, Obj\R1, Obj\G1, Obj\B1, objAlpha
					VertexColor Surf,i+2, Obj\R2, Obj\G2, Obj\B2, objAlpha
					VertexColor Surf,i+3, Obj\R2, Obj\G2, Obj\B2, objAlpha
				Next
			End If
		End If
		
		; SHADOW COLOR
		If Obj\shadow_offset <> 0 Then
			Local shadowAlpha#
			If VColor <> Null Then
				; VERTEX COLOR ENABLED?
				j = 0
				For i = Obj\vx-vcount To Obj\vx-1
					shadowAlpha = ( HUDObj\alpha * (Layer\alpha * (objAlpha * SC_SHADOWALPHA) )) * Obj\visible
					VertexColor Surf,i,0,0,0, shadowAlpha
					j = j + 1
				Next
			Else
				; NORMAL COLOR
				shadowAlpha = ( HUDObj\alpha * (Layer\alpha * (objAlpha * SC_SHADOWALPHA) )) * Obj\visible
				For i = Obj\vx-vcount To Obj\vx-1 : VertexColor Surf,i,0,0,0, shadowAlpha : Next
			End If
		End If
		
		; BACKGROUND COLOR
		If Obj\bg_a > -1 Then
			Local bgAlpha# = ((HUDObj\alpha * (Layer\alpha * Obj\bg_a )) * Obj\alpha) * Obj\visible
			VertexColor ShapeSurf,Obj\bg_vx  , Obj\bg_R, Obj\bg_G, Obj\bg_B, bgAlpha
			VertexColor ShapeSurf,Obj\bg_vx+1, Obj\bg_R, Obj\bg_G, Obj\bg_B, bgAlpha
			VertexColor ShapeSurf,Obj\bg_vx+2, Obj\bg_R, Obj\bg_G, Obj\bg_B, bgAlpha
			VertexColor ShapeSurf,Obj\bg_vx+3, Obj\bg_R, Obj\bg_G, Obj\bg_B, bgAlpha
		End If
		
		; BORDER COLOR
		If Obj\b_a > -1 Then
			Local borderAlpha# = ((HUDObj\alpha * (Layer\alpha * Obj\b_a  )) * Obj\alpha) * Obj\visible 
			VertexColor  ShapeSurf, Obj\b_vx  , Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+1, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+2, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+3, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+4 ,Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+5, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+6, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
			VertexColor  ShapeSurf, Obj\b_vx+7, Obj\b_R, Obj\b_G, Obj\b_B, borderAlpha
		End If
		
	End If ; UPDATE COLORS?
	
	; OBJECT HAS A SCROLL BAR? UPDATE BAR POSITION!
	If TextObj <> Null Then SC_UpdateScrollbar (ObjectID)
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: CONVERT ALIGN STRING TO COORDINATE
; ------------------------------------------------------------------------
Function SC_SetAlignedX% (Obj.SC_Object, xAlign$)
	
	If xAlign$ = "" Then Return
	
	Local HUDObj.SC_HUD   = Object.SC_HUD (Obj\HUD_ID)
	
	Local offset%, w# = Obj\width * Obj\scalex
	
	c$ = Left(xAlign$,1)
	Select c$
		Case "L"
			offset = Int( Mid$(xAlign$, 5, -1 ) )
			Obj\x  = Int((w / 2) + offset) + Int(Obj\originx * (w/2))
			
		Case "C"
			offset = Int( Mid$(xAlign$, 7, -1 ) )
			Obj\x  = Int(HUDObj\width / 2 + offset) + Int(Obj\originx * (w/2))
			
		Case "R"
			offset = Int( Mid$(xAlign$, 6, -1 ) )	
			Obj\x  = Int((HUDObj\width - w / 2) + offset) + Int(Obj\originx * (w/2))
	End Select	
	
	; TEXT OBJECT?
	If Obj\typ = SC_TEXT Then
		Local TextObj.SC_Text = Object.SC_Text(Obj\TextID)
		If TextObj\text_flow$ = "LEFT"  Then Obj\x = Obj\x - Int(w / 2)
		If TextObj\text_flow$ = "RIGHT" Then Obj\x = Obj\x + Int(w / 2)
	End If
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: CONVERT ALIGN STRING TO COORDINATE
; ------------------------------------------------------------------------
Function SC_SetAlignedY% (Obj.SC_Object, yAlign$)
	
	If yAlign$ = "" Then Return
	
	Local HUDObj.SC_HUD = Object.SC_HUD   (Obj\HUD_ID)
	
	Local offset%, h# = Obj\height * Obj\scaley
	
	c$ = Left(yAlign$,1)
	Select c$
		Case "T"
			offset = Int( Mid$(yAlign$, 4, -1 ) )
			Obj\y  = Int(h / 2 + offset) + Int(Obj\originy * (h/2))
			
		Case "C"
			offset = Int( Mid$(yAlign$, 7, -1 ) )
			Obj\y  = Int(HUDObj\height / 2 + offset) + Int(Obj\originy * (h/2))
			
		Case "B"
			offset = Int( Mid$(yAlign$, 7, -1 ) )
			Obj\y  = Int( (HUDObj\height - h / 2) + offset) + Int(Obj\originy * (h/2))
	End Select	
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: PROCESS EFFECTS
; ------------------------------------------------------------------------
Function SC_UpdateEffects ()
	
	Local FX.SC_FX
	Local HUDObj.SC_HUD
	Local Obj.SC_Object, Obj2.SC_Object
	Local Layer.SC_Layer, Layer1.SC_Layer, Layer2.SC_Layer
	Local typ%, a#, b#, dx%, dy%, w#, h#, x#, y#
	
	; UPDATE EFFECTS
	For FX.SC_FX = Each SC_FX
		
		typ = 0 : Obj = Null : HUDObj = Null : Layer = Null
		
		; OBJECT / LAYER / TYPE?
		Obj    = Object.SC_Object(FX\ObjID)
		Layer  = Object.SC_Layer (FX\ObjID)
		HUDObj = Object.SC_HUD   (FX\ObjID)
		If Obj    <> Null Then typ% = 1
		If Layer  <> Null Then typ% = 2
		If HUDObj <> Null Then typ% = 3
		
		; OBJECT DOES NOT EXIST ANYMORE?
		If typ = 0 Then
			HUD_ClearEffect Handle(FX)
			
		; EFFECT PAUSED?
		Else If FX\paused
			; DO NOTHING...
			
		; EFFECT FINISHED?
		Else If FX\duration > 0 And SC_Now >= FX\duration Then
			HUD_ClearEffect Handle(FX)
			
		; EFFECT HAS STARTED AND NOT PAUSED?
		Else If FX\start_time <= SC_Now
			
			Select FX\typ
					
				Case FX_STEADYMOVE ; -----------------------------
					a = SC_Dif * FX\a
					b = SC_Dif * FX\b
					HUD_MoveObject FX\ObjID, a, b, FX\flag
					
				; OUTSIDE PARENT LAYER?
					If HUD_GetObjectCoords(FX\ObjID, "MAXX") < 0 Then
						Obj\x = Obj\x + FX\c + HUD_GetObjectWidth(FX\ObjID, True)
						If FX\e Then Delete FX
					Else If HUD_GetObjectCoords(FX\ObjID, "MINX") > FX\c
						Obj\x = (Obj\x - FX\c) - HUD_GetObjectWidth(FX\ObjID, True)
						If FX\e Then Delete FX
					Else If HUD_GetObjectCoords(FX\ObjID, "MAXY") < 0
						Obj\y = Obj\y + FX\d + HUD_GetObjectHeight(FX\ObjID, True)
						If FX\e Then Delete FX
					Else If HUD_GetObjectCoords(FX\ObjID, "MINY") > FX\d
						Obj\y = (Obj\y - FX\d) - HUD_GetObjectHeight(FX\ObjID, True)
						If FX\e Then Delete FX
					End If
					
				Case FX_ALPHAFADE ; ------------------------------
					Select typ
						Case 1	If FX\a = -255 Then FX\a = HUD_GetObjectAlpha(FX\ObjID) : FX\b = (FX\c - FX\a) / FX\d
							FX\a = FX\a + SC_Dif * FX\b
							HUD_SetObjectAlpha FX\ObjID, FX\a
						Case 2	If FX\a = -255 Then FX\a = HUD_GetLayerAlpha(FX\ObjID)  : FX\b = (FX\c - FX\a) / FX\d
							FX\a = FX\a + SC_Dif * FX\b
							HUD_SetLayerAlpha FX\ObjID, FX\a
						Case 3	If FX\a = -255 Then FX\a = HUD_GetAlpha(FX\ObjID)       : FX\b = (FX\c - FX\a) / FX\d
							FX\a = FX\a + SC_Dif * FX\b
							HUD_SetAlpha FX\ObjID, FX\a
					End Select
					
				Case FX_COLORFADE ; ------------------------------
					If FX\a = -1 Then
						FX\a = Obj\R1 : FX\b = Float((FX\g - Obj\R1) / (FX\duration - FX\start_time))
						FX\c = Obj\G1 : FX\d = Float((FX\h - Obj\G1) / (FX\duration - FX\start_time))
						FX\e = Obj\B1 : FX\f = Float((FX\i - Obj\B1) / (FX\duration - FX\start_time))
					End If
					FX\a = FX\a + SC_Dif * FX\b			
					FX\c = FX\c + SC_Dif * FX\d			
					FX\e = FX\e + SC_Dif * FX\f			
					HUD_SetObjectColor FX\ObjID, FX\a,FX\c,FX\e
					
				Case FX_SHAKE ; ----------------------------------
				; JUST STARTED - SET PARAMETERS
					If FX\a = -255 Then
						Select typ
							Case 1 FX\a = HUD_GetObjectX(FX\ObjID) : FX\b = HUD_GetObjectY(FX\ObjID) ; START X, START Y
							Case 2 FX\a = HUD_GetLayerX (FX\ObjID) : FX\b = HUD_GetLayerY (FX\ObjID) ; START X, START Y
							Case 3 FX\a = HUD_GetX      (FX\ObjID) : FX\b = HUD_GetY      (FX\ObjID) ; START X, START Y
						End Select
						FX\e = FX\a + Rnd(-FX\c, FX\c) 	  ; NEXT X
						FX\f = FX\b + Rnd(-FX\c, FX\c) 	  ; NEXT Y
						FX\g = ATan2(FX\f - y, FX\e - x)  ; DIR
					End If
					
					x = Cos(FX\g) * (SC_Dif * FX\d)
					y = Sin(FX\g) * (SC_Dif * FX\d)
					
					Select typ
						Case 1 HUD_MoveObject FX\ObjID, x, y
						Case 2 HUD_MoveLayer  FX\ObjID, x, y
						Case 3 HUD_Move       FX\ObjID, x, y
					End Select
					
					Select typ
						Case 1 x = HUD_GetObjectX(FX\ObjID) : y = HUD_GetObjectY(FX\ObjID)
						Case 2 x = HUD_GetLayerX (FX\ObjID) : y = HUD_GetLayerY (FX\ObjID)
						Case 3 x = HUD_GetX      (FX\ObjID) : y = HUD_GetY      (FX\ObjID)
					End Select
					
					dx = x - FX\a : dy = y - FX\b
					If Sqr ( dx * dx + dy * dy ) > FX\c Then
						FX\e = FX\a + Rnd(-FX\c, FX\c) 	  ; NEXT X
						FX\f = FX\b + Rnd(-FX\c, FX\c) 	  ; NEXT Y
						FX\g = ATan2(FX\f - y, FX\e - x)  ; DIR
					End If
					
				Case FX_WAVE ; -----------------------------------
				; JUST STARTED - SET PARAMETERS
					If FX\a = -255 Then
						Select typ
							Case 1 FX\a = HUD_GetObjectX(FX\ObjID) : FX\b = HUD_GetObjectY(FX\ObjID) ; START X, START Y
							Case 2 FX\a = HUD_GetLayerX (FX\ObjID) : FX\b = HUD_GetLayerY (FX\ObjID) ; START X, START Y
							Case 3 FX\a = HUD_GetX      (FX\ObjID) : FX\b = HUD_GetY      (FX\ObjID) ; START X, START Y
						End Select
					End If
					
					a = ((SC_Now - FX\start_time)/100000.0) * 360.0
					b = Sin( a * FX\e ) : x = FX\a + b * FX\c			
					b = Cos( a * FX\f ) : y = FX\b + b * FX\d			
					
					Select typ
						Case 1 HUD_PositionObject FX\ObjID, x, y
						Case 2 HUD_PositionLayer  FX\ObjID, x, y
						Case 3 HUD_Position       FX\ObjID, x, y
					End Select
					
				Case FX_SCALE ; ----------------------------------
				; JUST STARTED - SET PARAMETERS
					If FX\a = -255 Then
						Select typ
							Case 1 FX\a = HUD_GetObjectScaleX(FX\ObjID) : FX\b = HUD_GetObjectScaleY(FX\ObjID) ; START SCALE X, START SCALE Y
							Case 2 FX\a = HUD_GetLayerScaleX(FX\ObjID)  : FX\b = HUD_GetLayerScaleY(FX\ObjID)  ; START SCALE X, START SCALE Y
							Case 3 FX\a = HUD_GetScaleX(FX\ObjID)       : FX\b = HUD_GetScaleY(FX\ObjID)	   ; START SCALE X, START SCALE Y
						End Select
						FX\c = FX\h - FX\a ; X-CHANGE
						FX\d = FX\i - FX\b ; Y-CHANGE
						If FX\c = 0 And FX\d = 0 Then FX\duration = 1 
					End If
					
					x = SC_Ease (FX\e, SC_Now-FX\start_time, FX\a, FX\c, FX\g)
					y = SC_Ease (FX\f, SC_Now-FX\start_time, FX\b, FX\d, FX\g)
					
					Select typ
						Case 1 HUD_SetObjectScale FX\ObjID, x, y
						Case 2 HUD_SetLayerScale  FX\ObjID, x, y
						Case 3 HUD_SetScale       FX\ObjID, x, y
					End Select
					
				Case FX_MOVETO ; ----------------------------------
				; JUST STARTED - SET PARAMETERS
					If FX\a = -255 Then
						Select typ
							Case 1 FX\a = HUD_GetObjectX(FX\ObjID) : FX\b = HUD_GetObjectY(FX\ObjID) ; START X, START Y
							Case 2 FX\a = HUD_GetLayerX (FX\ObjID) : FX\b = HUD_GetLayerY(FX\ObjID)  ; START X, START Y
							Case 3 FX\a = HUD_GetX      (FX\ObjID) : FX\b = HUD_GetY(FX\ObjID)       ; START X, START Y
						End Select
						FX\c = FX\h - FX\a ; X-CHANGE
						FX\d = FX\i - FX\b ; Y-CHANGE
						If FX\c = 0 And FX\d = 0 Then FX\duration = 1
					End If
					
					x = SC_Ease (FX\e, SC_Now-FX\start_time, FX\a, FX\c, FX\g)
					y = SC_Ease (FX\f, SC_Now-FX\start_time, FX\b, FX\d, FX\g)
					
					Select typ
						Case 1 HUD_PositionObject FX\ObjID, x, y
						Case 2 HUD_PositionLayer  FX\ObjID, x, y
						Case 3 HUD_Position       FX\ObjID, x, y
					End Select
					
				Case FX_ROTATE ; ---------------------------------
				; JUST STARTED - SET PARAMETERS
					If FX\a = -255 Then
						
						Select typ
							Case 1 FX\a = HUD_GetObjectRotation(FX\ObjID)
							Case 2 FX\a = HUD_GetLayerRotation (FX\ObjID)  
							Case 3 FX\a = HUD_GetRotation      (FX\ObjID)       
						End Select
						
					; RELATIVE -ADD TO CURRENT
						If FX\f = True Then
							FX\e = FX\a + FX\e
					; ABSOLUTE -FIND SHORTEST WAY (CONVERT To 0-360 FIRST, THEN GET SHORTEST DISTANCE)
						Else
							If FX\a < 0 Then FX\a = 360 + FX\a
							a = FX\e - FX\a
							If a > 180 Then a = a - 360 Else If a <-180 Then a = a + 360
							FX\e = FX\a + (a + Sgn(a))
						End If
						
						FX\b = FX\e - FX\a ; DIFFERENCE
					End If
					
					a = SC_Ease (FX\c, SC_Now-FX\start_time, FX\a, FX\b, FX\d)
					
					Select typ
						Case 1 HUD_SetObjectRotation FX\ObjID, a
						Case 2 HUD_SetLayerRotation  FX\ObjID, a
						Case 3 HUD_SetRotation       FX\ObjID, a
					End Select
					
				Case FX_SMOOTHBLINK ; ----------------------------
					FX\d = FX\d + SC_Dif * FX\c
					If FX\d > FX\b Then
						FX\d = FX\b - (FX\d - FX\b)
						FX\c = FX\c * -1
					Else If FX\d < FX\a Then
						FX\d = FX\a + (FX\a - FX\d)
						FX\c = FX\c * -1
					End If
					
					Select typ
						Case 1 HUD_SetObjectAlpha FX\ObjID, FX\d
						Case 2 HUD_SetLayerAlpha  FX\ObjID, FX\d 
						Case 3 HUD_SetAlpha       FX\ObjID, FX\d 
					End Select
					
				Case FX_BLINK ; ----------------------------------
					a = FX\d
					If FX\d = 1 Then
						If SC_Now - FX\a > FX\c Then FX\a = SC_Now : FX\d = 0
					Else
						If SC_Now - FX\a > FX\b Then FX\a = SC_Now : FX\d = 1
					End If
					
					If FX\d <> a Then
						Select typ
							Case 1 HUD_SetObjectVisibility FX\ObjID, FX\d
							Case 2 HUD_SetLayerVisibility  FX\ObjID, FX\d
							Case 3 HUD_SetVisibility       FX\ObjID, FX\d
						End Select
					End If
					
				Case FX_STEADYROTATE ; ---------------------------
					Select typ
						Case 1 HUD_TurnObject FX\ObjID, SC_Dif * FX\a
						Case 2 HUD_TurnLayer  FX\ObjID, SC_Dif * FX\a
						Case 3 HUD_Turn       FX\ObjID, SC_Dif * FX\a
					End Select
					
				Case FX_SINEROTATE ; ---------------------------
					a = ((SC_Now-FX\start_time) / 1000.0) * 360.0 * FX\d
					b = Sin(a)*FX\b+FX\b+FX\c 
					Select typ
						Case 1 HUD_SetObjectRotation FX\ObjID, b
						Case 2 HUD_SetLayerRotation  FX\ObjID, b
						Case 3 HUD_SetRotation       FX\ObjID, b
					End Select
					
				Case FX_STEADYSCALE ; ----------------------------
					FX\d = FX\d + SC_Dif * FX\c
					If FX\d > FX\b Then
						FX\d = FX\b - (FX\d - FX\b)
						FX\c = FX\c * -1
					Else If FX\d < FX\a Then
						FX\d = FX\a + (FX\a - FX\d)
						FX\c = FX\c * -1
					End If
					
					FX\h = FX\h + SC_Dif * FX\g
					If FX\h > FX\f Then
						FX\h = FX\f - (FX\h - FX\f)
						FX\g = FX\g * -1
					Else If FX\h < FX\e Then
						FX\h = FX\e + (FX\e - FX\h)
						FX\g = FX\g * -1
					End If
					
					Select typ
						Case 1 HUD_SetObjectScale FX\ObjID, FX\d, FX\h
						Case 2 HUD_SetLayerScale  FX\ObjID, FX\d, FX\h 
						Case 3 HUD_SetScale       FX\ObjID, FX\d, FX\h 
					End Select
					
				Case FX_AUTOREMOVE ; -----------------------------
					Select typ
						Case 1 HUD_RemoveObject FX\ObjID
						Case 2 HUD_RemoveLayer  FX\ObjID 
						Case 3 HUD_Remove       FX\ObjID 
					End Select
					
					Delete FX
					
				Case FX_FOLLOWOBJECT ; ---------------------------
					Obj2 = Null : Obj2 = Object.SC_Object(FX\a)
					
					If Obj2 <> Null Then
						a = HUD_GetObjectX(FX\a) + FX\b
						b = HUD_GetObjectY(FX\a) + FX\c
						
					; DIFFERENT LAYERS? -CONVERT
						If FX\e <> FX\f Then
							Layer1.SC_Layer = Object.SC_Layer(FX\e)
							Layer2.SC_Layer = Object.SC_Layer(FX\f)
							TFormPoint a,b,0,Layer2\Mesh,Layer1\Mesh
							a = TFormedX() : b = TFormedY()
						End If
						
						If FX\d = 0 Then
							HUD_PositionObject FX\ObjID, a, b
						Else
							a = a - Obj\x
							b = b - Obj\y
							HUD_MoveObject FX\ObjID, SC_Dif*(a / FX\d), SC_Dif*(b / FX\d)
						End If		
					Else
						Delete FX
					End If
					
				Case FX_FACEOBJECT ; -----------------------------
					Obj2 = Null : Obj2 = Object.SC_Object(FX\a)
					
					If Obj2 <> Null Then
						a = HUD_GetObjectX(FX\a)
						b = HUD_GetObjectY(FX\a)
						
					; DIFFERENT LAYERS? -CONVERT
						If FX\c <> FX\d Then
							Layer1.SC_Layer = Object.SC_Layer(FX\c)
							Layer2.SC_Layer = Object.SC_Layer(FX\d)
							TFormPoint a,b,0,Layer2\Mesh,Layer1\Mesh
							a = TFormedX() : b = TFormedY()
						End If
						
					; FIND ANGLE
						x = 90 + ATan2(b-HUD_GetObjectY(FX\ObjID), a-HUD_GetObjectX(FX\ObjID)) : If x < 0 x = x + 360
							
					; STRAIGHT OR DAMPING?
							If FX\b = 0 Then
								HUD_SetObjectRotation FX\ObjID, x
							Else
								y = Obj\rotation
								a = x - y
								If a > 180 Then a = a - 360 Else If a <-180 Then a = a + 360
								y = y + Sgn(a) * (SC_Dif * (Abs(a) / FX\b))
								HUD_SetObjectRotation FX\ObjID, y
							End If		
						Else
							Delete FX
						End If
						
					Case FX_ORBIT ; ----------------------------------
						Obj2 = Null : Obj2 = Object.SC_Object(FX\a)
						
						If Obj2 <> Null Then
							a = HUD_GetObjectX(FX\a)
							b = HUD_GetObjectY(FX\a)
							
					; DIFFERENT LAYERS? -CONVERT
							If FX\e <> FX\f Then
								Layer1.SC_Layer = Object.SC_Layer(FX\e)
								Layer2.SC_Layer = Object.SC_Layer(FX\f)
								TFormPoint a,b,0,Layer2\Mesh,Layer1\Mesh
								a = TFormedX() : b = TFormedY()
							End If
							
					; JUST STARTED? PLACE AT RADIUS
							If FX\g = -255 Then FX\g = 0 : HUD_PositionObject FX\ObjID, a, b-FX\d
							
							HUD_PositionObject FX\ObjID, a+SC_Sin(FX\b)*FX\d, b+SC_Cos(FX\b) * FX\d
							
					; PROCEED ANGLE
							FX\b = FX\b + (SC_Dif * FX\c)
							If FX\b > 360 Then FX\b = FX\b - 360 Else If FX\b < 0 Then FX\b = FX\b + 360
						Else
							Delete FX
						End If
						
					Case FX_RIPPLE ; ---------------------------------
						HUD_RippleObject FX\ObjID, FX\a, FX\b, FX\c
						FX\c = FX\c + SC_Dif * FX\d
						
					Case FX_RUMBLE ; ---------------------------------
						a = FX\c + Rnd(-FX\b, FX\b)
						b = FX\d + Rnd(-FX\b, FX\b)
						Select typ
							Case 1 HUD_PositionObject FX\ObjID, a, b
							Case 2 HUD_PositionLayer  FX\ObjID, a, b 
							Case 3 HUD_Position       FX\ObjID, a, b 
						End Select
						FX\b = FX\b - SC_Dif * FX\a
						
					Case FX_SCROLLTEXTURE ; --------------------------
						HUD_MoveImageClip FX\ObjID, FX\a * SC_Dif, FX\b * SC_Dif
						
				End Select
				
			End If ; EFFECT HAS STARTED
		Next
		
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: UPDATE ANIMATED IMAGES
; ------------------------------------------------------------------------
Function SC_AnimateImages ()
	
	Local Obj.SC_Object
	Local AnimObj.SC_Anim
	Local ImageObj.SC_Image
	Local Layer.SC_Layer
	
	; UPDATE ANIMATED IMAGES ------------------------
	For AnimObj.SC_Anim   = Each SC_Anim
		
		Obj = Null : Obj = Object.SC_Object(AnimObj\ObjID)
		
		; IMAGE DOES NOT EXIST ANYMORE?
		If Obj = Null Then
			Delete AnimObj
			
		; NOT PAUSED AND TIME TO CHANGE?
		Else If AnimObj\active = 1 And SC_Now - AnimObj\last_change >= AnimObj\speed Then
			AnimObj\last_change = SC_Now
			
			Select AnimObj\mode$
					
				Case "NORMAL" ; ---------------------------
					AnimObj\frame = AnimObj\frame + 1
			; LOOP COMPLETED?
					If AnimObj\frame > AnimObj\frames Then
						AnimObj\frame = 1
						AnimObj\loop  = AnimObj\loop + 1
				; ANIMATION FINISHED?
						If AnimObj\loop = AnimObj\loops Then
							AnimObj\frame  = AnimObj\frames
							AnimObj\loop   = 0
							AnimObj\active = 0
						End If
					End If
					
				Case "REVERSE" ; --------------------------
					AnimObj\frame = AnimObj\frame - 1
			; LOOP COMPLETED?
					If AnimObj\frame < 1 Then
						AnimObj\frame = AnimObj\frames
						AnimObj\loop  = AnimObj\loop + 1
				; ANIMATION FINISHED?
						If AnimObj\loop = AnimObj\loops Then
							AnimObj\loop   = 0
							AnimObj\active = 0
						End If
					End If
					
				Case "PENDULUM" ; -------------------------
					If AnimObj\reverse = 1 Then
						AnimObj\frame = AnimObj\frame - 1
				; LOOP COMPLETED?
						If AnimObj\frame < 1 Then
							AnimObj\reverse = 0
							AnimObj\frame   = 2
							AnimObj\loop    = AnimObj\loop + 1
					; ANIMATION FINISHED?
							If AnimObj\loop = AnimObj\loops Then
								AnimObj\loop   = 0
								AnimObj\active = 0
							End If
						End If
					Else 
						AnimObj\frame = AnimObj\frame + 1
				; END REACHED? -REVERSE!
						If AnimObj\frame > AnimObj\frames Then
							AnimObj\reverse = 1
							AnimObj\frame   = AnimObj\frames - 1
						End If
					End If
					
			End Select
			
			; SHOW CURRENT FRAME
			ImageObj =  Object.SC_Image(Obj\ImageID)
			ImageObj\clip_x = AnimObj\startx
			ImageObj\clip_y = AnimObj\starty
			Local i%
			For i = 2 To AnimObj\frame
				ImageObj\clip_x = ImageObj\clip_x + ImageObj\clip_w
				If ImageObj\clip_x >= AnimObj\startx + (AnimObj\framesH * ImageObj\clip_w)
					ImageObj\clip_x = AnimObj\startx
					ImageObj\clip_y = ImageObj\clip_y + ImageObj\clip_h
				End If
			Next
			
			; UPDATE VERTICES
			Layer = Object.SC_Layer(Obj\LayerID)
			Layer\update = 1 : Obj\update = 1
			
		End If; NOT PAUSED AND TIME TO CHANGE
	Next
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: MOVEMENT EASING EQUATIONS
; ------------------------------------------------------------------------
; t: CURRENT TIME,   b: START COORD, c: ENDCOORD-STARTCOORD
; d: TOTAL DURATION, t AND d CAN BE FRAMES OR SECONDS/MILLISECONDS
; ------------------------------------------------------------------------
Function SC_Ease# (ease_type%, t#, b#, c#, d#)
	
	Local tt#, pp#, p#, s#
	Select ease_type
		Case 0 ; LINEAR
			Return b + t / d * c
			
		Case 16 ; BOUNCE EASE-OUT
			t = t / d
			If t < 0.363636 Then
				Return c * (7.5625 * t * t ) + b
			Else If t < 0.727273 Then
				t = t - 0.545455
				Return c * (7.5625 * t * t + .75) + b
			Else If t < 0.909091 Then
				t = t - 0.818182
				Return c * (7.5625 * t * t + .9375) + b
			Else
				t = t - 0.954545
				Return c * (7.5625 * t * t + .984375) + b
			End If
			
		Case 15 ; OVERSHOOTING EASE-IN & OUT
			s = 2.59491 : t = t / (d/2) 
			If (t < 1) Then Return  c / 2 * ( t * t * ((s+1) * t - s)) + b
			t = t - 2 : Return c / 2 * (t * t * ((s + 1) * t + s) + 2) + b
			
		Case 14 ; OVERSHOOTING EASE-OUT
			s = 1.70158 : t = t / d - 1 : Return c * (t * t * ( (s + 1) * t + s) + 1) + b
			
		Case 13 ; OVERSHOOTING EASE-IN
			s = 1.70158 : t = t / d : Return c * t * t * ((s + 1) * t - s) + b
			
		Case 12 ; ELASTIC EASE-IN & OUT
			If t = 0 Then Return b
			t = t / (d/2)
			If t = 2 Then Return b + c
			p = d * .45 : s = p / 4
			If t < 1 Then
				t = t - 1 : tt = 10 * t
				pp = (((t * d - s) * (2 * Pi) / p) * 180.0) / Pi
				Return -.5 * (c * (2^tt) * Sin( pp ) ) + b
			End If
			t = t - 1 : tt = -10 * t : pp = (((t * d - s) * (2 * Pi) / p) * 180.0) / Pi
			Return c * (2^tt) * Sin( pp ) * .5 + c + b
			
		Case 11 ; ELASTIC EASE-OUT
			If t = 0 Then Return b
			t = t / d : If t = 1 Then Return b + c
			p = d * .3 : s = p / 4 : tt = -10 * t : pp = (((t * d - s) * (2 * Pi) / p ) * 180.0) / Pi
			Return c * (2^tt) * Sin( pp ) + c + b
			
		Case 10 ; ELASTIC EASE-IN
			If t = 0 Then Return b
			t = t / d
			If t = 1 Then Return b+c
			p = d * .3 : s = p / 4 : t = t - 1 : tt = 10 * t : pp = (((t * d - s)*(2 * Pi) / p) * 180.0) / Pi
			Return -(c * (2^tt) * Sin( pp ) ) + b
			
			
		Case 9 ; STRONG EASE-IN & OUT
			If t = 0 Then Return b
			If t = d Then Return b + c
			t = t / (d/2) : tt = 10 * (t - 1)
			If (t < 1) Then Return c / 2 * 2^tt + b
			t = t - 1 : tt = -10 * t : Return c / 2 * (-(2^tt) + 2) + b;		
			
		Case 8 ; STRONG EASE-OUT
			If t = d Then Return b + c
			t = -10 * t / d : Return c * (-(2^t) + 1) + b
			
		Case 7 ; STRONG EASE-IN
			If t = 0 Then Return b
			t = 10 * (t/d - 1) : Return c * (2^t) + b		
			
		Case 6 ; MEDIUM EASE-IN & OUT
			t = t / (d/2)
			If (t < 1) Then Return c / 2 * t * t * t * t * t + b
		    t = t - 2 : Return c / 2 * (t * t * t * t * t + 2) + b
			
		Case 5 ; MEDIUM EASE-OUT
			t = t / d - 1 : Return c * (t * t * t * t * t + 1) + b
			
		Case 4 ; MEDIUM EASE-IN
			t = t / d : Return c * t * t * t * t * t + b
			
		Case 3 ; LIGHT EASE-IN & OUT
			t = t / (d/2)
			If (t < 1) Then Return c / 2 * t * t * t * t + b
		    t = t - 2 : Return -c / 2 * (t * t * t * t - 2) + b
			
		Case 2 ; LIGHT EASE-OUT
			t = t / d - 1 : Return -c * (t * t * t * t - 1) + b
			
		Case 1 ; LIGHT EASE-IN
			t = t / d : Return c * t * t * t * t + b
			
	End Select
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: KEEP OBJECT TYPES SORTED BY ZORDER 
; ------------------------------------------------------------------------
Function SC_SortObjects()
	
	Local Item.SC_Object, NextItem.SC_Object, Obj1.SC_Object, Obj2.SC_Object
	Local temp% ; MUST BE SAME TYPE AS THE SORT FIELD
	
	NextItem = After First SC_Object
	While NextItem <> Null
		Item     = NextItem
		NextItem = After Item
		Obj1 = Item : temp = Item\zorder
		Repeat
			Obj2 = Before Obj1
			If Obj2 = Null Then Exit
			If temp >= Obj2\zorder Then Exit
			Obj1 = Obj2
		Forever
		Obj2 = Item : Insert Obj2 Before Obj1
	Wend
	
End Function


; ------------------------------------------------------------------------
; PRIVATE FUNCTION: ADD A NEW LINE CHAR WHEN MAXWIDTH IS EXCEEDED
; ------------------------------------------------------------------------
Function SC_WordWrap$ (FontID%, txt$, maxWidth%, kerning%=0)
	
	Local i%, j%, n%, m%, cc$
	Local c$	; CURRENT CHAR
	Local nt$	; NEW TEXT 
	Local cl$	; CURRENT LINE	
	Local cw%	; CURRENT LINE WIDTH
	Local Font.SC_Font = Object.SC_Font(FontID)
	
	; REMOVE NEW LINES AT BEGINNING
	i = 1 : While Mid(txt$,i,1) = "|" Or Mid(txt$,i,1) = Chr(13) : i = i + 1 : Wend
	txt$ = Right(txt$,Len(txt$)-(i-1))
	
	; LOOP THROUGH TEXT
	n = Len(txt$)
	For i = 1 To n
		c$ = Mid(txt$,i,1)
		cw = cw +  Font\char_widths [ Asc(c$) ] + kerning
		
		; NEW-LINE FOUND? RESET CURRENT LINE
		If c$ = "|" Or c$ = Chr(13)
			nt$ = nt$ + cl$ + Chr(13)
			cl$ = ""
			cw  = 0
		; LENGTH EXCEEDED?
		Else If maxWidth > 0 And cw > maxWidth 
			cl$ = cl$ + c$
			; SPACE OR '-' INSIDE? WRAP THERE!
			If Instr(cl$," ") > 0 Or Instr(cl$,"-") > 0
				m% = Len(cl$)
				For j = m To 1 Step-1
					cc$ = Mid(cl$,j,1)
					Select cc$
						Case " "
							nt$ = nt$ + Left(cl$,j-1) + Chr(13)
							cl$ = Mid(cl$,j+1,-1)
							cw = HUD_GetTextWidth(FontID, cl$) + (Len(cl$) * kerning)
							Exit
						Case "-"
							nt$ = nt$ + Left(cl$,j  ) + Chr(13)
							cl$ = Mid(cl$,j+1,-1)
							cw = HUD_GetTextWidth(FontID, cl$) + (Len(cl$) * kerning)
							Exit
					End Select
				Next
			End If
			
		; CONTINUE CURRENT LINE
		Else
			cl$ = cl$ + c$
		End If
	Next
	
	Return nt$ + cl$
	
End Function


; ----------------------------------------------------------
; PRIVATE FUNCTION: INSERTS LINE BREAK AFTER GIVE AMOUNT OF CHARS
; ----------------------------------------------------------
Function SC_BreakText$(txt$,lineWidth%=50)
	
	Local i%,cnt%,txt_out$, n% = Len(txt$)
	
	cnt = 1
	For i% = 1 To n
		If Mid(txt$,i,1) = "|" Or Mid(txt$,i,1) = Chr(13) Then
			cnt = 1
			txt_out$ = txt_out$ + Chr(13)
		Else
			txt_out$ = txt_out$ + Mid(txt$,i,1)
			cnt = cnt + 1
			
			If cnt > lineWidth
				If Mid(txt$,i,1) = "-" Then cnt = 1 : txt_out$ = txt_out$ + "-" + Chr(13)
				If Mid(txt$,i,1) = " " Then cnt = 1 : txt_out$ = txt_out$ + Chr(13)
			End If 
		End If
	Next
	
	Return txt_out$
	
End Function




;~IDEal Editor Parameters:
;~B#6E#81#B1#C3#DD#ED#FB#103#112#119#123#130#143#151#158#15D#16C#174#182#190
;~B#193#1A0#1AE#1C3#1DE#1E6#202#224#232#248#253#25D#266#278#27B#284#299#2A9#2B2#2C6
;~B#2D2#2DC#2E6#2F0#2FA#306#30C#312#31C#326#339#33B#369#375#3AF#3B3#3C1#3EE#3F3#40D
;~B#415#417#438#43C#456#45A#463#475#480#491#495#49F#4A9#4B3#4BF#4C5#4CB#4D7#4E3#4F7
;~B#500#502#50B#51E#521#52A#534#53D#54F#550#553#567#572#57B#58B#592#5B9#5C6#5C7#5DE
;~B#5EE#5F7#600#60F#616#644#648#670#671#679#688#6A1#6A2#6A8#6C7#6CA#6E3#6FC#711#712
;~B#730#733#739#740#75B#75F#771#789#78C#79E#7B6#7B9#7C5#7CE#7E6#7E9#7F9#7FB#804#81C
;~B#81F#82F#834#83F#857#85A#86D#872#87B#893#896#8A2#8AB#8B1#8C1#8DE#8E1#8E8#8F1#8FA
;~B#912#915#91D#923#93B#93E#94B#951#961#979#97C#98B#990#9A3#9B6#9E8#9EA#A02#A05#A0B
;~B#A19#A23#A2D#A41#A47#A6F#A76#A81#A92#AD4#AF7#AF9#B00#B15#B1C#B30#B37#B4B#B52#B5D
;~B#B66#B6F#B7E#B88#B92#BAD#BBD#BC8#BD2#BDE#BF6#BFB#C06#C2A#C2F#C4D#C59#C6C#C6D#C6F
;~B#C88#C9C#CA4#CAC#CC3#CC4#CD2#CE0#CE3#CE5#CE7#CEB#D2D#D46#D57#D5E#D70#D77#D90#D93
;~B#DBC#DCF#DE1#DE3#DF6#E00#E19#E23#E2D#E37#E48#E4D#E5E#E63#E75#E7B#E9E#EC8#EE8#EF3
;~B#F1B#F2C#F3D#F5A#F5B#F7C#F8C#F8D#F8E#F90#F91#F96#F9E#FAE#FB1#FC1#FD0#FDE#FE9#1000
;~B#1006#1024#1028#1038#104B#1074#108B#108D#108E#1091#10A2#10B2#10C8#10E3#10E8#10F2#1107#112C#112F#1147
;~B#114B#1156#117C#1184#1198#119C#11CE#11D0#11ED#11EE#11F2#1206#1208#120B#1211#1214#1222#1223#1226#1237
;~B#1238#1239#123C#1255#1258#1272#128A#128D#12A9#12C1#12C4#12DE#12F6#12F9#1317#1332#1335#1355#135F#1363
;~B#1372#1373#1376#1391#1394#13B4#13CF#13D2#13EF#1407#140A#142B#1443#1446#1460#147B#147E#1495#14B0#14B3
;~B#14CA#14E5#14E8#1505#1509#1521#1524#153A#1555#1558#1567#1582#1585#159C#15B7#15BA#15D8#15DC#15F7#15FA
;~B#1614#162F#1632#1644#165F#1662#1682#1688#168C#16A7#16AA#16C3#16ED#170D#173A#1747#1754#1762#176F#177D
;~B#1792#17A5#17B8#17BB#17D2#17D3#17D6#17FE#181D#181F#1824#1844#1855#185A#1887#18B1#1925#195E#196C#198E
;~B#1990#19A2#19BA#19C7#19D3#19E4#19F2#1A00#1A02#1A15#1A1D#1A2D#1A39#1A4D#1A5C#1A73#1A80#1A9A#1AA6#1AB3
;~B#1AB9#1AE7#1AE8#1AF9#1AFA#1B03#1B10#1B12#1B17#1B32#1B39#1B3B#1B56#1B58#1B96#1BA3#1BAA#1BB7#1BBB#1BC4
;~B#1BCA#1BD1#1BDA#1BDB#1BE5#1BEE#1BF2#1BFB#1C04#1C08#1C11#1C1B#1C26#1C29#1C31#1C3B#1C41#1C49#1C50#1C51
;~B#1C58#1C61#1C6B#1C74#1C7A#1C81#1C92#1C9A#1C9D#1CAC#1CBA#1CBD#1CCC#1CD8#1CE5#1CEB#1CED#1CF0#1D17#1D18
;~B#1D24#1D25#1D33#1D34#1D37#1D3B#1D3C#1D3E#1D4A#1D51#1D54#1D71#1D87#1DBE#1DBF#1DD8#1E09#1E0B#1E10#1E15
;~B#1E2B#1E2C#1E31
;~C#Blitz3D